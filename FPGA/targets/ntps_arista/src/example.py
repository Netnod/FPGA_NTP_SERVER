#-------------------------------------------------------------------------------
#- Copyright (c) 2022 Netnod AB
#- Copyright (c) 2021 Arista Networks, Inc. All rights reserved.
#-------------------------------------------------------------------------------
#- Author:
#-   wingel@netnod.se
#-   fdk-support@arista.com
#-
#- Description:
#-   MOS CLI application for ntps.
#-
#-   Licensed under BSD 3-clause license:
#-     https://opensource.org/licenses/BSD-3-Clause
#-
#- Tags:
#-   license-bsd-3-clause
#-
#-------------------------------------------------------------------------------

from __future__ import absolute_import
from __future__ import print_function
import os
import time
import six.moves.configparser

from datetime import datetime

import mosapi
from .libapp import device as libapp_device
from .libapp import register_file as libapp_register_file

from . import __version__  # noqa
from . import app_name
from . import clockappdaemon
from . import applicationconfig

import netaddr
import traceback

try:
    from .Linux_Driver import libntsfpga
except:
    pass

NUM_MAC_ADDRESS = 4
NUM_IP_ADDRESS = 8
NUM_V6_ADDRESS = 8
NUM_NTS_KEY = 4

class Example(mosapi.App):
    appdir = os.path.dirname(__file__)
    name   = app_name
    fpga   = {}

    def __init__(self, *args, **kwargs):
        super(Example, self).__init__(*args, **kwargs)
        self._daemon = None

        self.hw_fpga = None
        self.hw_api = None

        # This grabs only the default/central FPGA instance....
        fpgas = libapp_device.get_fpga_devices()
        for f in fpgas:
            if f.label=='mezzanine.central' or f.label=='mezzanine.default':
                self.fpga = f

        # Quick check to make sure the application is supported on this board standard...
        self.csvfile = self.appdir + '/fpga/%s_registers.csv' %(self.name)
        if self.fpga.board_standard in ('eh_central', 'l', 'lb2'):
            self.fpgaRegisters = libapp_register_file.RegisterFile(self.csvfile, self.fpga.communicator)
        else:
            raise RuntimeError('This Application is not compatible with the current Device Board Standard.')

        try:
            module = mosapi.device_info.get_device_by_label("clock_module")
        except Exception:
            module = None
        self.clock_module = module and module.device_name

        self.config = applicationconfig.config
        self.config.conf_filename = self.conf_filename

        # Set the default config items
        self.config.write_default_config()

    @property
    def reg(self):
        return self.fpgaRegisters

    # Method called by sync daemon when time has been initialized
    def time_is_init(self):
        pass

    #---------------------------------------------------------------------------
    def program_fpga(self, quiet=True):
        """
        Program the FPGA with the appropriate bitstream file.
        """
        bit = self.appdir + '/fpga/%s-%s.bit' %(self.name, self.fpga.board_standard)
        if os.path.exists(bit):
            print(("Programming %s FPGA ..." % self.fpga.label))
            self.fpga.load_image(bit)
        else:
            raise RuntimeError('No compatible image found for this board standard')

    def clear_fpga(self, quiet=True):
        """
        Clears the current FPGA bitstream.
        """
        print(("Clearing %s FPGA..." % self.fpga.label))
        self.fpga.unload_image()

    def get_config(self, key, section='user'):
        v = super(Example, self).get_config(key, section=section)
        d = self.config.default.get(key, None)
        return v or d

    @property
    def daemon(self):
        if self._daemon is None:
            self._daemon = clockappdaemon.ClockAppDaemon(self.name,
                                          os.path.join(self.appdir, "daemon", "clockapp"))
        return self._daemon

    def zap_daemon(self):
        self.stop_daemon()
        self.start_daemon()

    def start_daemon(self):
        print("Starting daemon...")
        self.daemon.start()

    def stop_daemon(self):
        print("Stopping daemon...")
        self.daemon.stop()

    #---------------------------------------------------------------------------
    def no_shutdown(self, ctx=None):
        self.program_fpga()
        self.config.update_all_config(ignore_is_shutdown=True)
        super(Example, self).no_shutdown(ctx)
        self.start_daemon()
        self.daemon.wait()

        self.hw_configure()

    def shutdown(self, ctx=None, remove=False):
        self.stop_daemon()
        self.clear_fpga(quiet=False)
        super(Example, self).shutdown(ctx)

        if remove:
            self.remove_config(None)

    def hw_get_fpga(self):
        if self.hw_fpga is None:
            self.hw_fpga = libntsfpga.NtsFpga()
        return self.hw_fpga

    def hw_get_api(self):
        if self.hw_api is None:
            self.hw_api = libntsfpga.NtsApi(0)
        return self.hw_api

    def hw_configure(self):
        try:
            fpga = self.hw_get_fpga()
            fpga.check_version_board()

            self.hw_pps_adjust()

            fpga.setup_clocks()

            api = self.hw_get_api()

            if 0:
                api.check_api()
                api.check_pp_api()

        except:
            print(traceback.format_exc())
            return

        self.hw_configure_api()

        try:
            api.setup_network_path()

            for i in range(1, 4):
                libntsfpga.NtsApi(i, path_only = True).setup_network_path()

        except:
            print(traceback.format_exc())

    def hw_pps_adjust(self):
        if self.is_shutdown():
            print("FPGA is shut down")
            return

        for i in range(5):
            # Sleep until the middle of the next second
            t = time.time()
            time.sleep(int(t) + 1.5 - t)

            external_pps = self.fpgaRegisters.read_reg('macphy_ts_0/timestamp_low')
            internal_pps = self.fpgaRegisters.read_reg('macphy_ts_1/timestamp_low')

            shift = (internal_pps - external_pps) % 1000000000
            print("external pps to internal pps offset %u ns" % shift)

            shift //= 100
            if not shift:
                print("offset is within limits")
                break

            print("shifting internal pps by %u cycles" % shift)
            self.hw_pps_shift(shift)
        else:
            raise IOError("failed to shift internal pps")

    def hw_configure_api(self):
        try:
            api = self.hw_get_api()

            api.clear_arp()

            api.nts_disable_keys()
            api.nts_init_noncegen()

            self.hw_set_mac()

            for i in range(NUM_IP_ADDRESS):
                self.hw_set_ip(i)

            for i in range(NUM_IP_ADDRESS):
                self.hw_set_ipv6(i)

            self.hw_set_config()
            self.hw_set_refid()
            self.hw_set_root_delay()
            self.hw_set_root_dispersion()
            self.hw_set_tx_offset()

            if 0:
                api.init_gre(
                    "FF:FF:FF:FF:FF:FF", # gre_dst_mac
                    "192.168.40.1",      # gre_dst_ip
                    "CF:CE:CD:CC:CB:CA", # gre_src_mac
                    "192.168.40.98",     # gre_src_ip
                    )

            api.parser_configure(
                'true', # parser_ctrl_csum_verify
                'true', # parser_ctrl_nts
                'true', # parser_ctrl_ntp
                'true', # parser_ctrl_ntp_md5
                'true', # parser_ctrl_ntp_sha1
                None, # parser_ctrl_gre
            )

            if 1:
                for i in range(NUM_NTS_KEY):
                    self.hw_set_nts_key(i)
                self.hw_set_active_nts_key()

            api.nts_engine_enable()
            api.nts_dispatcher_enable()

            if 0:
                api.check_nts_dispatcher_apis()
                api.check_nts_extractor_apis()
                api.check_nts_engine_apis()

        except:
            print(traceback.format_exc())

    def hw_set_mac(self):
        if self.is_shutdown():
            return
        try:
            mac = self.get_config('mac address')
            self.hw_get_api().set_mac(mac)
        except:
            print(traceback.format_exc())

    def hw_set_ip(self, i):
        if self.is_shutdown():
            return
        try:
            ipv4 = self.get_config('ip address %u' % i)
            self.hw_get_api().set_ipv4(i, ipv4)
        except:
            print(traceback.format_exc())

    def hw_set_ipv6(self, i):
        if self.is_shutdown():
            return
        try:
            ipv6 = self.get_config('v6 address %u' % i)
            self.hw_get_api().set_ipv6(i, ipv6)
        except:
            print(traceback.format_exc())

    def hw_set_nts_key(self, i):
        if self.is_shutdown():
            return
        try:
            s = self.get_config('nts key %u' % i)
            if s is None:
                self.hw_get_api().clear_nts_key(i)
            else:
                key_id, key_value = s.split()
                self.hw_get_api().set_nts_key(i, key_id, key_value)
        except:
            print(traceback.format_exc())

    def hw_set_active_nts_key(self):
        if self.is_shutdown():
            return
        v = self.get_config('active nts key')
        if v is None:
            pass
        else:
            v = int(v)
            self.hw_get_api().nts_set_current_key(v)

    def hw_set_config(self):
        if self.is_shutdown():
            return
        try:
            poll = self.get_config('ntp poll')
            if poll is None:
                poll = 0 # 1 second
            else:
                poll = int(poll)
            precision = self.get_config('ntp precision')
            if precision is None:
                precision = -24
            else:
                precision = int(precision)
            self.hw_get_api().set_ntp_config(poll, precision)
        except:
            print(traceback.format_exc())

    def hw_set_refid(self):
        if self.is_shutdown():
            return
        try:
            refid = self.get_config('ntp refid')
            if refid is None:
                refid = 'PPS'
            self.hw_get_api().set_refid(refid)
        except:
            print(traceback.format_exc())

    def hw_set_root_delay(self):
        if self.is_shutdown():
            return
        try:
            delay = self.get_config('ntp root delay')
            if delay is None:
                delay = 0
            else:
                delay = int(delay)
            self.hw_get_api().set_root_delay_raw(delay)
        except:
            print(traceback.format_exc())

    def hw_set_root_dispersion(self):
        if self.is_shutdown():
            return
        try:
            dispersion = self.get_config('ntp root dispersion')
            if dispersion is None:
                dispersion = 0
            else:
                dispersion = int(dispersion)
            self.hw_get_api().set_root_disp_raw(dispersion)
        except:
            print(traceback.format_exc())

    def hw_set_tx_offset(self):
        if self.is_shutdown():
            return
        try:
            offset = self.get_config('ntp tx offset')
            if offset is None:
                offset = 0
            else:
                offset = float(offset)
            self.hw_get_api().set_tx_ofs(offset)
        except:
            print(traceback.format_exc())

    def hw_pps_shift(self, shift):
        if self.is_shutdown():
            return
        try:
            self.hw_get_fpga().pps_shift(shift)
        except:
            print(traceback.format_exc())

    #---------------------------------------------------------------------------
    def read_timestamp_pps(self):
        timestamp_high = self.reg.ts.spartan_pps.timestamp_high
        timestamp_low  = self.reg.ts.spartan_pps.timestamp_low
        r = "The timestamp time is {}.{:09d}".format(datetime.utcfromtimestamp(timestamp_high),timestamp_low)
        return r

    def read_timestamp_ptp(self):
        timestamp_high = self.reg.ts.host_gpio.timestamp_high
        timestamp_low  = self.reg.ts.host_gpio.timestamp_low
        r = "The timestamp time is {}.{:09d}".format(datetime.utcfromtimestamp(timestamp_high), timestamp_low)
        return r

    def read_timestamp_macphy(self):
        ts0_high = self.reg.macphy_ts_0.timestamp_high
        ts0_low  = self.reg.macphy_ts_0.timestamp_low
        r0 = "Timestamp for the last received packet at the Rx-AXI(0) interface is {}.{:09d}\n".format(datetime.utcfromtimestamp(ts0_high), ts0_low)
        ts1_high = self.reg.macphy_ts_1.timestamp_high
        ts1_low  = self.reg.macphy_ts_1.timestamp_low
        r1 = "Timestamp for the last received packet at the Rx-AXI(1) interface is {}.{:09d}\n".format(datetime.utcfromtimestamp(ts1_high), ts1_low)
        ts2_high = self.reg.macphy_ts_2.timestamp_high
        ts2_low  = self.reg.macphy_ts_2.timestamp_low
        r2 = "Timestamp for the last received packet at the Rx-AXI(2) interface is {}.{:09d}\n".format(datetime.utcfromtimestamp(ts2_high), ts2_low)
        ts3_high = self.reg.macphy_ts_3.timestamp_high
        ts3_low  = self.reg.macphy_ts_3.timestamp_low
        r3 = "Timestamp for the last received packet at the Rx-AXI(3) interface is {}.{:09d}".format(datetime.utcfromtimestamp(ts3_high), ts3_low)
        return r0+r1+r2+r3

#-------------------------------------------------------------------------------
# Timestamp IPCore CLI Commands
#-------------------------------------------------------------------------------
@mosapi.cli_command
def zap_daemon(ctx=None):
    """zap daemon - restart the synchronisation daemon
    Usage: zap daemon
    Group: Application ntps
    Mode: config-app-ntps
    Hidden: hidden - debug
    """
    app = ctx.mode_ctx['app']
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))
    app.zap_daemon()

@mosapi.cli_command
def read_timestamp(ctx=None):
    """read timestamp - read the timestamp from the tyme sync module
    Usage: read timestamp
    Group: Application ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx['app']
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))
    if app.get_config('timesource') == 'freerun':
        raise Exception("Application {} is freerunning, timestamp is not in sync.".format(app.name))
    elif app.get_config('timesource') == 'pps':
        return app.read_timestamp_pps()
    else:
        return app.read_timestamp_ptp()

@mosapi.cli_command
def read_packet_timestamp(ctx=None):
    """read packet timestamp - read the packet timestamps for all AXI Interfaces
    Usage: read packet timestamp
    Group: Application ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx['app']
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))
    return app.read_timestamp_macphy()

#-------------------------------------------------------------------------------
# RAW Register Interface CLI Commands
#-------------------------------------------------------------------------------
@mosapi.cli_command
def show_registers(ctx):
    """show registers - Show all registers
    Usage: show registers
    Group: Application ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx['app']
    if not app.is_shutdown():
        print("Default/Central Registers -")
        app.fpgaRegisters.dump()
    return None

@mosapi.cli_command
def read_register(ctx, name=''):
    """read register - read from register by name
    Usage: read register NAME
    Group: Application ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx['app']
    if not app.is_shutdown():
        return format(app.fpgaRegisters.read_reg(name), '#08x')
    return None

@mosapi.cli_command
def write_register(ctx, name='', value=''):
    """write register - write to register by name
    Usage: write register NAME STRING
    Group: Application ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx['app']
    val = eval(value)
    if type(val) is not int and type(val) is not int:
        raise ValueError('value "{}" is not a valid python integer/long number'.format(value))

    if not app.is_shutdown():
        app.fpgaRegisters.write_reg(name, val)

@mosapi.cli_command
def hwconfig(ctx):
    """hwconfig - configure ntp fpga
    Usage: hwconfig
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.hw_configure()

@mosapi.cli_command
def reconfig(ctx):
    """reconfig - configure ntp fpga
    Usage: reconfig
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.hw_configure_api()

@mosapi.cli_command
def default_mac_adress(ctx):
    """default mac address - default (clear) ntp server mac addresses
    Usage: default mac address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    print("Clearing mac addresses")
    app.remove_config('mac address')
    app.hw_set_mac()

@mosapi.cli_command
def no_mac_adress(ctx):
    """no mac address - clear ntp server mac address
    Usage: no mac address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    print("Clearing ntp server mac address")
    app.remove_config('mac address')
    app.hw_set_mac()

@mosapi.cli_command
def mac_adress(ctx, address = ''):
    """mac address - set ntp server mac address
    Usage: mac address MACADDR
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    print("Setting ntp server mac addresss to %s" % (address))
    app.set_config('mac address', address)
    app.hw_set_mac()

@mosapi.cli_command
def show_mac_address(ctx):
    """show mac address - show ntp server mac addresses
    Usage: show mac address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    empty = True
    print("mac address: %s" % app.get_config('mac address'))

@mosapi.cli_command
def default_ip_adress(ctx):
    """default ip address - clear all ntp server ip addresses
    Usage: default ip address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    print("Clearing all ntp server ip addresses")
    for i in range(NUM_IP_ADDRESS):
        app.remove_config('ip address %u' % i)
        app.hw_set_ip(i)

@mosapi.cli_command
def no_ip_adress(ctx, number = ''):
    """no ip address - clear ntp server ip address
    Usage: no ip address NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_IP_ADDRESS:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            (NUM_IP_ADDRESS-1)))
    print("Clearing ntp server ip address in slot %u" % i)
    app.remove_config('ip address %u' % i)
    app.hw_set_ip(i)

@mosapi.cli_command
def ip_adress(ctx, number = '', address = ''):
    """ip address - set ntp server ip address
    Usage: ip address NUMBER ADDRESS
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_IP_ADDRESS:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            (NUM_IP_ADDRESS-1)))
    print("Setting ntp server ip addresss in slot %u to %s" % (i, address))
    app.set_config('ip address %u' % i, address)
    app.hw_set_ip(i)

@mosapi.cli_command
def show_ip_address(ctx):
    """show ip address - show ntp server ip addresses
    Usage: show ip address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    empty = True
    for i in range(NUM_IP_ADDRESS):
        v = app.get_config('ip address %u' % i)
        if v:
            print("slot %u ip address: %s" % (i, v))
            empty = False
    if empty:
        print("No ntp server ip addresses configured")

@mosapi.cli_command
def default_v6_adress(ctx):
    """default v6 address - clear all ntp server ipv6 addresses
    Usage: default v6 address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('address')
    print("Clearing all ntp server ipv6 addresses")
    for i in range(NUM_V6_ADDRESS):
        app.remove_config('v6 address %u' % i)
        app.hw_set_ipv6(i)

@mosapi.cli_command
def no_v6_adress(ctx, number = ''):
    """no v6 address - clear ipv6 address
    Usage: no v6 address NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_V6_ADDRESS:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            (NUM_V6_ADDRESS-1)))
    print("Clearing ipv6 address in slot %u" % i)
    app.remove_config('v6 address %u' % i)
    app.hw_set_ipv6(i)

@mosapi.cli_command
def v6_adress(ctx, number = '', address = ''):
    """v6 address - set ipv6 address
    Usage: v6 address NUMBER STRING
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_V6_ADDRESS:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            (NUM_V6_ADDRESS-1)))
    ip = netaddr.IPAddress(address, version = 6)
    print("Setting ipv6 addresss in slot %u to %s" % (i, str(ip)))
    app.set_config('v6 address %u' % i, str(ip))
    app.hw_set_ipv6(i)

@mosapi.cli_command
def show_v6_address(ctx):
    """show v6 address - show ntp server ipv6 addresses
    Usage: show v6 address
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    empty = True
    for i in range(NUM_V6_ADDRESS):
        v = app.get_config('v6 address %u' % i)
        if v:
            print("slot %u ipv6 address: %s" % (i, v))
            empty = False
    if empty:
        print("No ntp server ipv6 addresses configured")

@mosapi.cli_command
def default_nts_key(ctx):
    """default nts key - clear nts keys
    Usage: default nts key
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    print("Clearing all nts keys")
    for i in range(NUM_NTS_KEY):
        app.remove_config('nts key %u' % i)
        self.hw_set_nts_key(i)

@mosapi.cli_command
def no_nts_key(ctx, number = ''):
    """no nts key - clear nts key
    Usage: no nts key NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_NTS_KEY:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            NUM_NTS_KEY-1))
    print("Clearing nts key in slot %u" % i)
    app.remove_config('nts key %u' % i)
    self.hw_set_nts_key(i)

@mosapi.cli_command
def nts_key(ctx, number = '', key_id = '', key_value = ''):
    """nts key - set ntp server nts key
    Usage: nts key NUMBER STRING STRING
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_NTS_KEY:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            NUM_NTS_KEY-1))
    if len(key_id) != 8:
        raise ValueError("nts key id must be 8 hexadecimal digits")
    int(key_id, 16)
    if len(key_value) != 64:
        raise ValueError("nts key value must be 64 hexadecimal digits")
    int(key_value, 16)
    print("Setting nts key in slot %u to %s %s" % (i, key_id, key_value))
    app.set_config('nts key %u' % i, "%s %s" % (key_id, key_value))
    app.hw_set_nts_key(i)

@mosapi.cli_command
def show_nts_keys(ctx):
    """show nts key - show ntp server nts keys
    Usage: show nts key
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    active = app.get_config('active nts key')
    empty = True
    for i in range(NUM_NTS_KEY):
        v = app.get_config('nts key %u' % i)
        if v:
            empty = False
            s = "slot %u: %s" % (i, v)
            if active == '%u' % i:
                s += " (active)"
            print(s)
    if empty:
        print("No ntp server nts keys configured")

@mosapi.cli_command
def active_nts_key(ctx, number = ''):
    """nts key - set ntp server active nts key slot
    Usage: active nts key NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    i = int(number)
    if i >= NUM_NTS_KEY:
        raise ValueError("invalid slot number, valid numbers are 0..%u" % (
            NUM_NTS_KEY-1))
    print("Setting active nts key number %u" % (i))
    app.set_config('active nts key', i)
    app.hw_set_active_nts_key()

@mosapi.cli_command
def default_ntp_refid(ctx):
    """default ntp refid - default ntp refid
    Usage: default ntp refid
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp refid')
    app.hw_set_refid()

@mosapi.cli_command
def ntp_refid(ctx, refid = ''):
    """ntp refid - set ntp refid
    Usage: ntp refid STRING
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    for c in refid:
        if ord(c) < 32 or ord(c) > 126:
            raise ValueError('invalid refid "{}", must be an ASCII string'.format(refid))

    if len(refid) > 4:
        raise ValueError('invalid refid "{}", length must be 4 or less'.format(refid))

    app.set_config('ntp refid', refid)
    app.hw_set_refid()

@mosapi.cli_command
def default_ntp_poll(ctx):
    """default ntp poll - default ntp poll value
    Usage: default ntp poll
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp poll')
    app.hw_set_config()

@mosapi.cli_command
def ntp_poll(ctx, poll = ''):
    """ntp poll - set ntp poll value in units of log2(seconds)
    Usage: ntp poll NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    poll = int(poll)
    if poll < 0 or poll > 255:
        raise ValueError('invalid poll value "{}", must be a number from 0 to 255'.format(poll))

    app.set_config('ntp poll', poll)
    app.hw_set_config()

@mosapi.cli_command
def default_ntp_precision(ctx):
    """default ntp precision - default ntp precision value
    Usage: default ntp precision
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp precision')
    app.hw_set_config()

@mosapi.cli_command
def ntp_precision(ctx, precision = ''):
    """ntp precision - set ntp precision value in units of log2(seconds)
    Usage: ntp precision NEGNUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    precision = int(precision)
    if precision < -128 or precision > 127:
        raise ValueError('invalid precision value "{}", must be a number from -128 to 127'.format(precision))

    app.set_config('ntp precision', precision)
    app.hw_set_config()

@mosapi.cli_command
def default_ntp_root_delay(ctx):
    """default root delay - default ntp root delay value
    Usage: default ntp root delay
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp root delay')
    app.hw_set_root_delay()

@mosapi.cli_command
def ntp_root_delay(ctx, delay = ''):
    """ntp precision - set ntp root delay value in seconds
    Usage: ntp root delay NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    delay = int(delay)
    if delay < 0 or delay > 0xffffffff:
        raise ValueError('invalid delay value "{}", must be a positive integer below 2**32 seconds'.format(delay))

    app.set_config('ntp root delay', delay)
    app.hw_set_root_delay()

@mosapi.cli_command
def default_ntp_root_dispersion(ctx):
    """default root dispersion - default ntp root dispersion value
    Usage: default ntp root dispersion
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp root dispersion')
    app.hw_set_root_dispersion()

@mosapi.cli_command
def ntp_root_dispersion(ctx, dispersion = ''):
    """ntp precision - set ntp root dispersion value in seconds
    Usage: ntp root dispersion NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    dispersion = int(dispersion)
    if dispersion < 0 or dispersion > 0xffffffff:
        raise ValueError('invalid dispersion value "{}", must be a positive integer below 2**32'.format(dispersion))

    app.set_config('ntp root dispersion', dispersion)
    app.hw_set_root_dispersion()

@mosapi.cli_command
def default_ntp_tx_offset(ctx):
    """default ntp tx offset - default ntp tx offset value
    Usage: default ntp tx offset
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.remove_config('ntp tx offset')
    app.hw_set_tx_offset()

@mosapi.cli_command
def ntp_tx_offset(ctx, offset = ''):
    """ntp tx offset - set ntp tx offset value in seconds
    Usage: ntp tx offset FLOAT
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    offset = float(offset)
    if offset < 0 or offset >= 0.999:
        raise ValueError('invalid tx offset value "{}", must be a positive floating point number below 1 second'.format(offset))

    app.set_config('ntp tx offset', offset)
    app.hw_set_tx_offset()

@mosapi.cli_command
def ntp_pps_addjust(ctx, shift = ''):
    """ntp pps adjust - adjust internal pps to match external pps"
    Usage: ntp pps adjust
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    app.hw_pps_adjust()

@mosapi.cli_command
def ntp_pps_shift(ctx, shift = ''):
    """ntp pps shift - shift ntp pps by N 10MHz cycles
    Usage: ntp pps shift NUMBER
    Group: Application ntps
    Mode: config-app-ntps
    """

    app = ctx.mode_ctx['app']
    shift = int(shift)
    app.hw_pps_shift(shift)
