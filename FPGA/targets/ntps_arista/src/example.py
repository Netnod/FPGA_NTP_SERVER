# -------------------------------------------------------------------------------
# - Copyright (c) 2022 Netnod AB
# - Copyright (c) 2021-2022 Arista Networks, Inc. All rights reserved.
# -------------------------------------------------------------------------------
# - Author:
# -   Christer Weinigel <wingel@netnod.se>
# -   fdk-support@arista.com
# -
# - Description:
# -   Example application for tscore.
# -
# -   Licensed under BSD 3-clause license:
# -     https://opensource.org/licenses/BSD-3-Clause
# -
# - Tags:
# -   license-bsd-3-clause
# -
# -------------------------------------------------------------------------------

from __future__ import absolute_import, print_function

import os
from datetime import datetime

import mosapi

from . import __version__  # noqa
from . import app_name, applicationconfig, clockappdaemon
from .libapp import device as libapp_device
from .libapp import register_file as libapp_register_file


class Example(mosapi.App):
    appdir = os.path.dirname(__file__)
    name = app_name
    fpga = {}

    def __init__(self, *args, **kwargs):
        super(Example, self).__init__(*args, **kwargs)
        self._daemon = None

        # This grabs only the default/central FPGA instance....
        fpgas = libapp_device.get_fpga_devices()
        for f in fpgas:
            if f.label in ("mezzanine.central", "mezzanine.default"):
                self.fpga = f

        # Quick check to make sure the application is supported on this board standard...
        self.csvfile = self.appdir + "/fpga/%s_registers.csv" % (self.name)
        if self.fpga.board_standard in ("eh_central", "l", "lb2"):
            self.fpgaRegisters = libapp_register_file.RegisterFile(
                self.csvfile, self.fpga.communicator
            )
        else:
            raise RuntimeError(
                "This Application is not compatible with the current Device Board Standard."
            )

        try:
            module = mosapi.device_info.get_device_by_label("clock_module")
        except Exception:  # pylint: disable=broad-except
            module = None
        self.clock_module = module and module.device_name

        self.config = applicationconfig.appconfig
        self.config.conf_filename = self.conf_filename

        # Set the default config items
        self.config.write_default_config()

    @property
    def reg(self):
        return self.fpgaRegisters

    # Method called by sync daemon when time has been initialized
    def time_is_init(self):
        pass

    # ---------------------------------------------------------------------------
    def program_fpga(self):
        """
        Program the FPGA with the appropriate bitstream file.
        """
        bit = self.appdir + "/fpga/%s-%s.bit" % (self.name, self.fpga.board_standard)
        if os.path.exists(bit):
            print(("Programming %s FPGA ..." % self.fpga.label))
            self.fpga.load_image(bit)
        else:
            raise RuntimeError("No compatible image found for this board standard")

    def clear_fpga(self):
        """
        Clears the current FPGA bitstream.
        """
        print(("Clearing %s FPGA..." % self.fpga.label))
        self.fpga.unload_image()

    def get_config(self, key, section="user"):
        v = super(Example, self).get_config(key, section=section)
        d = self.config.default.get(key, None)
        return v or d

    @property
    def daemon(self):
        if self._daemon is None:
            self._daemon = clockappdaemon.ClockAppDaemon(
                self.name, os.path.join(self.appdir, "daemon", "clockapp")
            )
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

    # ---------------------------------------------------------------------------
    def no_shutdown(self, ctx=None):
        self.program_fpga()
        self.config.update_all_config(ignore_is_shutdown=True)
        super(Example, self).no_shutdown(ctx)
        self.start_daemon()
        self.daemon.wait()

    def shutdown(self, ctx=None, remove=False):
        self.stop_daemon()
        self.clear_fpga()
        super(Example, self).shutdown(ctx)

        if remove:
            self.remove_config(None)

    # ---------------------------------------------------------------------------
    def read_timestamp_pps(self):
        timestamp_high = self.reg.ts.spartan_pps.timestamp_high
        timestamp_low = self.reg.ts.spartan_pps.timestamp_low
        r = "The timestamp time is {}.{:09d}".format(
            datetime.utcfromtimestamp(timestamp_high), timestamp_low
        )
        return r

    def read_timestamp_ptp(self):
        timestamp_high = self.reg.ts.host_gpio.timestamp_high
        timestamp_low = self.reg.ts.host_gpio.timestamp_low
        r = "The timestamp time is {}.{:09d}".format(
            datetime.utcfromtimestamp(timestamp_high), timestamp_low
        )
        return r

    def read_timestamp_macphy(self):
        ts0_high = self.reg.macphy_ts_0.timestamp_high
        ts0_low = self.reg.macphy_ts_0.timestamp_low
        r0 = "Timestamp for the last received packet at the Rx-AXI(0) interface is {}.{:09d}\n".format(
            datetime.utcfromtimestamp(ts0_high), ts0_low
        )
        ts1_high = self.reg.macphy_ts_1.timestamp_high
        ts1_low = self.reg.macphy_ts_1.timestamp_low
        r1 = "Timestamp for the last received packet at the Rx-AXI(1) interface is {}.{:09d}\n".format(
            datetime.utcfromtimestamp(ts1_high), ts1_low
        )
        ts2_high = self.reg.macphy_ts_2.timestamp_high
        ts2_low = self.reg.macphy_ts_2.timestamp_low
        r2 = "Timestamp for the last received packet at the Rx-AXI(2) interface is {}.{:09d}\n".format(
            datetime.utcfromtimestamp(ts2_high), ts2_low
        )
        ts3_high = self.reg.macphy_ts_3.timestamp_high
        ts3_low = self.reg.macphy_ts_3.timestamp_low
        r3 = "Timestamp for the last received packet at the Rx-AXI(3) interface is {}.{:09d}".format(
            datetime.utcfromtimestamp(ts3_high), ts3_low
        )
        return r0 + r1 + r2 + r3


# -------------------------------------------------------------------------------
# Timestamp IP core CLI Commands
# -------------------------------------------------------------------------------
@mosapi.cli_command
def zap_daemon(ctx=None):
    """zap daemon - restart the synchronisation daemon
    Usage: zap daemon
    Group: Application Ntps
    Mode: config-app-ntps
    Hidden: hidden - debug
    """
    app = ctx.mode_ctx["app"]
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))
    app.zap_daemon()


@mosapi.cli_command
def read_timestamp(ctx=None):
    """read timestamp - read the timestamp from the tyme sync module
    Usage: read timestamp
    Group: Application Ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx["app"]
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))

    if app.get_config("timesource") == "freerun":
        raise Exception(
            "Application {} is freerunning, timestamp is not in sync.".format(app.name)
        )

    if app.get_config("timesource") == "pps":
        return app.read_timestamp_pps()

    return app.read_timestamp_ptp()


@mosapi.cli_command
def read_packet_timestamp(ctx=None):
    """read packet timestamp - read the packet timestamps for all AXI Interfaces
    Usage: read packet timestamp
    Group: Application Ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx["app"]
    if app.is_shutdown():
        raise Exception("Application {} is not running.".format(app.name))
    return app.read_timestamp_macphy()


# -------------------------------------------------------------------------------
# RAW Register Interface CLI Commands
# -------------------------------------------------------------------------------
@mosapi.cli_command
def show_registers(ctx):
    """show registers - Show all registers
    Usage: show registers
    Group: Application Ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx["app"]
    if not app.is_shutdown():
        print("Default/Central Registers -")
        app.fpgaRegisters.dump()


@mosapi.cli_command
def read_register(ctx, name=""):
    """read register - read from register by name
    Usage: read register NAME
    Group: Application Ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx["app"]
    if not app.is_shutdown():
        return format(app.fpgaRegisters.read_reg(name), "#08x")
    return None


@mosapi.cli_command
def write_register(ctx, name="", value=""):
    """write register - write to register by name
    Usage: write register NAME HEXNUMBER
    Group: Application Ntps
    Mode: config-app-ntps
    """
    app = ctx.mode_ctx["app"]
    val = int(value, 0)

    if not app.is_shutdown():
        app.fpgaRegisters.write_reg(name, val)
