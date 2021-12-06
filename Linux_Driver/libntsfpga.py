#! /usr/bin/python3
from __future__ import division, print_function, unicode_literals

import getopt
import struct
import time
import random
import datetime
import netaddr
import sys

import io
try:
    sys.stdout = io.TextIOWrapper(open(sys.stdout.fileno(), 'wb', 0),
                                  write_through = True)
except TypeError:
    pass

import xpcie

class NtsFpga(object):
    def check_version_board(self):
        print("Checking build information about the FPGA and reading board temp.")
        ur = xpcie.user_regs()
        build_time = datetime.datetime.fromtimestamp(ur.read(ur.build_time)).strftime('%Y-%m-%d %H:%M:%S')
        print("FPGA build at " + build_time + " (%u)" % ur.read(ur.build_time))

        build_info = ur.read(ur.build_info)
        vivado = "%u.%u" % (((build_info >> 8) & 0xffff), (build_info & 0xff))
        git_hash = "%08x" % ur.read(ur.git_hash)
        if build_info & (1<<24):
            git_hash += '-dirty'
        print( "FPGA built with Vivado %s from git hash %s" % (vivado, git_hash))

        print("MAGIC 0x%08x" % ur.read(ur.magic))
        ctr156_0 = ur.read(ur.ctr156)
        ctr50_0 = ur.read(ur.ctr50)
        ctraxi_0 = ur.read(ur.ctraxi)
        time.sleep(0.999)
        ctr156_1 = ur.read(ur.ctr156)
        ctr50_1 = ur.read(ur.ctr50)
        ctraxi_1 = ur.read(ur.ctraxi)
        print("ctr156 0x%08x .. 0x%08lx %.3fM" % (ctr156_0, ctr156_1, (ctr156_1-ctr156_0) / 1E6))
        print("ctr50 0x%08x .. 0x%08lx %.3fM" % (ctr50_0, ctr50_1, (ctr50_1-ctr50_0) / 1E6))
        print("ctraxi 0x%08x .. 0x%08lx %.3fM" % (ctraxi_0, ctraxi_1, (ctraxi_1-ctraxi_0) / 1E6))

        die_temp = round((ur.read(ur.die_temp) * 504.0 / 1024.0) - 273.0, 1)
        print("FPGA Die temperature is " + str(die_temp) + "C.")
        print("")

    def setup_clocks(self):
        print("Setting up the NTP clocks.")

        # Clock A
        aa = xpcie.ntp_clock('A')

        aa.get_fracs()
        aa.get_secs()

        # Set NTP clock time to system clock
        diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
        timestamp = diff.days*24*60*60+diff.seconds+1
        aa.set_secs(timestamp)

        # Clock B
        bb = xpcie.ntp_clock('B')
        bb.get_fracs()
        bb.get_secs()

        # Set NTP clock time to system clock
        diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
        timestamp = diff.days*24*60*60+diff.seconds+1
        bb.set_secs(timestamp)

        # Check the clocks plls
        for i in range(3):
            print("pll_status A:0x%08x B:0x%08x" %
                  (aa.read(aa.pll_status), bb.read(bb.pll_status)))
            time.sleep(0.1)
        print("")

class NtsApi(object):
    DISPATCHER_BASE = 0x20000000

    API_DISPATCHER_ADDR_NAME               = 0x000
    API_DISPATCHER_ADDR_VERSION            = 0x002
    API_DISPATCHER_ADDR_DUMMY              = 0x003
    API_DISPATCHER_ADDR_SYSTICK32          = 0x004
    API_DISPATCHER_ADDR_NTPTIME            = 0x006
    API_DISPATCHER_ADDR_CTRL               = 0x008
    API_DISPATCHER_ADDR_STATUS             = 0x009
    API_DISPATCHER_ADDR_BYTES_RX           = 0x00a
    API_DISPATCHER_ADDR_NTS_REC            = 0x00c
    API_DISPATCHER_ADDR_NTS_DISCARDED      = 0x00e
    API_DISPATCHER_ADDR_NTS_ENGINES_READY  = 0x010
    API_DISPATCHER_ADDR_NTS_ENGINES_ALL    = 0x011
    API_DISPATCHER_ADDR_COUNTER_FRAMES     = 0x020
    API_DISPATCHER_ADDR_COUNTER_GOOD       = 0x022
    API_DISPATCHER_ADDR_COUNTER_BAD        = 0x024
    API_DISPATCHER_ADDR_COUNTER_DISPATCHED = 0x026
    API_DISPATCHER_ADDR_COUNTER_ERROR      = 0x028
    API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR    = 80
    API_DISPATCHER_ADDR_BUS_STATUS         = 81
    API_DISPATCHER_ADDR_BUS_DATA           = 82

    EXPECTED_DISPATCHER_ADDR_NAME = 0x4e54532d44495350
    EXPECTED_DISPATCHER_VERSION = 0x302e3032

    BUS_READ  = 0x55
    BUS_WRITE = 0xAA

    EXTRACTOR_BASE = DISPATCHER_BASE + 0x400

    API_EXTRACTOR_ADDR_NAME           = 0
    API_EXTRACTOR_ADDR_VERSION        = 2
    API_EXTRACTOR_ADDR_DUMMY          = 3
    API_EXTRACTOR_ADDR_BYTES          = 0x0a
    API_EXTRACTOR_ADDR_PACKETS        = 0x0c
    API_EXTRACTOR_ADDR_MUX_STATE      = 0x20
    API_EXTRACTOR_ADDR_MUX_INDEX      = 0x21
    API_EXTRACTOR_ADDR_DEBUG_TX       = 0x30
    API_EXTRACTOR_ADDR_ERROR_STARTS   = 0x40
    API_EXTRACTOR_ADDR_ERROR_DISCARDS = 0x41

    API_ADDR_ENGINE_BASE        = 0x000
    API_ADDR_ENGINE_NAME0       = API_ADDR_ENGINE_BASE
    API_ADDR_ENGINE_NAME1       = API_ADDR_ENGINE_BASE + 1
    API_ADDR_ENGINE_VERSION     = API_ADDR_ENGINE_BASE + 2
    API_ADDR_ENGINE_CTRL        = API_ADDR_ENGINE_BASE + 8

    API_ADDR_DEBUG_BASE           = 0x180
    API_ADDR_DEBUG_NTS_PROCESSED  = API_ADDR_DEBUG_BASE + 0
    API_ADDR_DEBUG_NTS_BAD_COOKIE = API_ADDR_DEBUG_BASE + 2
    API_ADDR_DEBUG_NTS_BAD_AUTH   = API_ADDR_DEBUG_BASE + 4
    API_ADDR_DEBUG_NTS_BAD_KEYID  = API_ADDR_DEBUG_BASE + 6
    API_ADDR_DEBUG_NAME           = API_ADDR_DEBUG_BASE + 8
    API_ADDR_DEBUG_SYSTICK32      = API_ADDR_DEBUG_BASE + 9
    API_ADDR_DEBUG_ERR_CRYPTO     = API_ADDR_DEBUG_BASE + 0x20
    API_ADDR_DEBUG_ERR_TXBUF      = API_ADDR_DEBUG_BASE + 0x22

    API_ADDR_CLOCK_BASE       = 0x010
    API_ADDR_CLOCK_NAME0      = API_ADDR_CLOCK_BASE + 0
    API_ADDR_CLOCK_NAME1      = API_ADDR_CLOCK_BASE + 1
    API_ADDR_CLOCK_VERSION    = API_ADDR_CLOCK_BASE + 2
    API_ADDR_CLOCK_CONFIG     = API_ADDR_CLOCK_BASE + 10
    API_ADDR_CLOCK_ROOT_DELAY = API_ADDR_CLOCK_BASE + 11
    API_ADDR_CLOCK_ROOT_DISP  = API_ADDR_CLOCK_BASE + 12
    API_ADDR_CLOCK_REF_ID     = API_ADDR_CLOCK_BASE + 13
    API_ADDR_CLOCK_TX_OFS     = API_ADDR_CLOCK_BASE + 14

    API_ADDR_KEYMEM_BASE          = 0x080
    API_ADDR_KEYMEM_NAME0         = API_ADDR_KEYMEM_BASE + 0
    API_ADDR_KEYMEM_NAME1         = API_ADDR_KEYMEM_BASE + 1
    API_ADDR_KEYMEM_VERSION       = API_ADDR_KEYMEM_BASE + 2
    API_ADDR_KEYMEM_CTRL          = API_ADDR_KEYMEM_BASE + 0x08
    API_ADDR_KEYMEM_KEY0_ID       = API_ADDR_KEYMEM_BASE + 0x10
    API_ADDR_KEYMEM_KEY1_ID       = API_ADDR_KEYMEM_BASE + 0x12
    API_ADDR_KEYMEM_KEY2_ID       = API_ADDR_KEYMEM_BASE + 0x14
    API_ADDR_KEYMEM_KEY3_ID       = API_ADDR_KEYMEM_BASE + 0x16
    API_ADDR_KEYMEM_KEY0_COUNTER  = API_ADDR_KEYMEM_BASE + 0x30
    API_ADDR_KEYMEM_KEY1_COUNTER  = API_ADDR_KEYMEM_BASE + 0x32
    API_ADDR_KEYMEM_KEY2_COUNTER  = API_ADDR_KEYMEM_BASE + 0x34
    API_ADDR_KEYMEM_KEY3_COUNTER  = API_ADDR_KEYMEM_BASE + 0x36
    API_ADDR_KEYMEM_ERROR_COUNTER = API_ADDR_KEYMEM_BASE + 0x38
    API_ADDR_KEYMEM_KEY0_START    = API_ADDR_KEYMEM_BASE + 0x40
    API_ADDR_KEYMEM_KEY0_END      = API_ADDR_KEYMEM_BASE + 0x4f
    API_ADDR_KEYMEM_KEY1_START    = API_ADDR_KEYMEM_BASE + 0x50
    API_ADDR_KEYMEM_KEY1_END      = API_ADDR_KEYMEM_BASE + 0x5f
    API_ADDR_KEYMEM_KEY2_START    = API_ADDR_KEYMEM_BASE + 0x60
    API_ADDR_KEYMEM_KEY2_END      = API_ADDR_KEYMEM_BASE + 0x6f
    API_ADDR_KEYMEM_KEY3_START    = API_ADDR_KEYMEM_BASE + 0x70
    API_ADDR_KEYMEM_KEY3_END      = API_ADDR_KEYMEM_BASE + 0x7f

    API_ADDR_NONCEGEN_BASE     = 0x20
    API_ADDR_NONCEGEN_NAME     = API_ADDR_NONCEGEN_BASE + 0
    API_ADDR_NONCEGEN_VERSION  = API_ADDR_NONCEGEN_BASE + 2
    API_ADDR_NONCEGEN_CTRL     = API_ADDR_NONCEGEN_BASE + 0x08
    API_ADDR_NONCEGEN_STATUS   = API_ADDR_NONCEGEN_BASE + 0x09
    API_ADDR_NONCEGEN_CONFIG   = API_ADDR_NONCEGEN_BASE + 0x0a
    API_ADDR_NONCEGEN_KEY0     = API_ADDR_NONCEGEN_BASE + 0x10
    API_ADDR_NONCEGEN_KEY1     = API_ADDR_NONCEGEN_BASE + 0x11
    API_ADDR_NONCEGEN_KEY2     = API_ADDR_NONCEGEN_BASE + 0x12
    API_ADDR_NONCEGEN_KEY3     = API_ADDR_NONCEGEN_BASE + 0x13
    API_ADDR_NONCEGEN_LABEL    = API_ADDR_NONCEGEN_BASE + 0x20
    API_ADDR_NONCEGEN_CONTEXT0 = API_ADDR_NONCEGEN_BASE + 0x40
    API_ADDR_NONCEGEN_CONTEXT1 = API_ADDR_NONCEGEN_BASE + 0x41
    API_ADDR_NONCEGEN_CONTEXT2 = API_ADDR_NONCEGEN_BASE + 0x42
    API_ADDR_NONCEGEN_CONTEXT3 = API_ADDR_NONCEGEN_BASE + 0x43
    API_ADDR_NONCEGEN_CONTEXT4 = API_ADDR_NONCEGEN_BASE + 0x44
    API_ADDR_NONCEGEN_CONTEXT5 = API_ADDR_NONCEGEN_BASE + 0x45

    API_ADDR_PARSER_BASE         = 0x200
    API_ADDR_PARSER_NAME0        = API_ADDR_PARSER_BASE + 0x00
    API_ADDR_PARSER_NAME1        = API_ADDR_PARSER_BASE + 0x01
    API_ADDR_PARSER_VERSION      = API_ADDR_PARSER_BASE + 0x02
    API_ADDR_PARSER_CTRL         = API_ADDR_PARSER_BASE + 0x04
    API_ADDR_PARSER_STATE        = API_ADDR_PARSER_BASE + 0x10
    API_ADDR_PARSER_STATE_CRYPTO = API_ADDR_PARSER_BASE + 0x12
    API_ADDR_PARSER_ERROR_STATE  = API_ADDR_PARSER_BASE + 0x13
    API_ADDR_PARSER_ERROR_COUNT  = API_ADDR_PARSER_BASE + 0x14
    API_ADDR_PARSER_ERROR_CAUSE  = API_ADDR_PARSER_BASE + 0x15
    API_ADDR_PARSER_MAC_CTRL     = API_ADDR_PARSER_BASE + 0x30
    API_ADDR_PARSER_IPV4_CTRL    = API_ADDR_PARSER_BASE + 0x31
    API_ADDR_PARSER_IPV6_CTRL    = API_ADDR_PARSER_BASE + 0x32
    API_ADDR_GRE_DST_MAC_MSB     = API_ADDR_PARSER_BASE + 0x33
    API_ADDR_GRE_DST_MAC_LSB     = API_ADDR_PARSER_BASE + 0x34
    API_ADDR_GRE_DST_IP          = API_ADDR_PARSER_BASE + 0x35
    API_ADDR_GRE_SRC_MAC_MSB     = API_ADDR_PARSER_BASE + 0x36
    API_ADDR_GRE_SRC_MAC_LSB     = API_ADDR_PARSER_BASE + 0x37
    API_ADDR_GRE_SRC_IP          = API_ADDR_PARSER_BASE + 0x39
    API_ADDR_PARSER_MAC_0        = API_ADDR_PARSER_BASE + 0x40
    API_ADDR_PARSER_MAC_1        = API_ADDR_PARSER_BASE + 0x42
    API_ADDR_PARSER_MAC_2        = API_ADDR_PARSER_BASE + 0x44
    API_ADDR_PARSER_MAC_3        = API_ADDR_PARSER_BASE + 0x46
    API_ADDR_PARSER_IPV4_0       = API_ADDR_PARSER_BASE + 0x50
    API_ADDR_PARSER_IPV4_1       = API_ADDR_PARSER_BASE + 0x51
    API_ADDR_PARSER_IPV4_2       = API_ADDR_PARSER_BASE + 0x52
    API_ADDR_PARSER_IPV4_3       = API_ADDR_PARSER_BASE + 0x53
    API_ADDR_PARSER_IPV4_4       = API_ADDR_PARSER_BASE + 0x54
    API_ADDR_PARSER_IPV4_5       = API_ADDR_PARSER_BASE + 0x55
    API_ADDR_PARSER_IPV4_6       = API_ADDR_PARSER_BASE + 0x56
    API_ADDR_PARSER_IPV4_7       = API_ADDR_PARSER_BASE + 0x57
    API_ADDR_PARSER_IPV6_0       = API_ADDR_PARSER_BASE + 0x60
    API_ADDR_PARSER_IPV6_1       = API_ADDR_PARSER_BASE + 0x64
    API_ADDR_PARSER_IPV6_2       = API_ADDR_PARSER_BASE + 0x68
    API_ADDR_PARSER_IPV6_3       = API_ADDR_PARSER_BASE + 0x6C
    API_ADDR_PARSER_IPV6_4       = API_ADDR_PARSER_BASE + 0x70
    API_ADDR_PARSER_IPV6_5       = API_ADDR_PARSER_BASE + 0x74
    API_ADDR_PARSER_IPV6_6       = API_ADDR_PARSER_BASE + 0x78
    API_ADDR_PARSER_IPV6_7       = API_ADDR_PARSER_BASE + 0x7C


    API_ADDR_NTPAUTH_KEYMEM_BASE          = 0x300
    API_ADDR_NTPAUTH_KEYMEM_NAME0         = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x00
    API_ADDR_NTPAUTH_KEYMEM_NAME1         = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x01
    API_ADDR_NTPAUTH_KEYMEM_VERSION       = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x02
    API_ADDR_NTPAUTH_KEYMEM_SLOTS         = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x03
    API_ADDR_NTPAUTH_KEYMEM_ACTIVE_SLOT   = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x10
    API_ADDR_NTPAUTH_KEYMEM_LOAD          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x11
    API_ADDR_NTPAUTH_KEYMEM_BUSY          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x12
    API_ADDR_NTPAUTH_KEYMEM_MD5_SHA1      = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x13
    API_ADDR_NTPAUTH_KEYMEM_KEYID         = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x20
    API_ADDR_NTPAUTH_KEYMEM_COUNTER_MSB   = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x21
    API_ADDR_NTPAUTH_KEYMEM_COUNTER_LSB   = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x22
    API_ADDR_NTPAUTH_KEYMEM_KEY0          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x23
    API_ADDR_NTPAUTH_KEYMEM_KEY1          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x24
    API_ADDR_NTPAUTH_KEYMEM_KEY2          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x25
    API_ADDR_NTPAUTH_KEYMEM_KEY3          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x26
    API_ADDR_NTPAUTH_KEYMEM_KEY4          = API_ADDR_NTPAUTH_KEYMEM_BASE + 0x27


    def __init__(self, idx, path_only = False):
        self.idx = idx
        self.path = xpcie.network_path(idx)
        if not path_only:
            self.api = xpcie.api_extension(self.path)
            self.engines = self.detect_engines()

    def check_api(self):
        print("Checking APIs")
        print("API %d Name and version:" % self.idx)
        print("NAME0:   0x%08x" % self.api.read(0x00000000))
        print("NAME1:   0x%08x" % self.api.read(0x00000001))
        print("VERSION: 0x%08x" % self.api.read(0x00000002))
        print()

    def check_pp_api(self):
        print("Checking access to APIs in PP")
        print("API %d Name and version:" % self.idx)
        print("NAME0:   0x%08x" % self.api.read(0x10000000))
        print("NAME1:   0x%08x" % self.api.read(0x10000001))
        print("VERSION: 0x%08x" % self.api.read(0x10000002))
        print("")

    def setup_network_path(self):
        print("Setting up network path %u" % self.idx)

        diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
        timestamp = diff.days*24*60*60+diff.seconds+1

        config = (self.path.ntp4_en | self.path.arp_en | self.path.ping4_en | self.path.trcrt4_en |
                  self.path.ntp6_en | self.path.nd_en | self.path.ping6_en | self.path.trcrt6_en |
                  self.path.a_clock |
                  self.path.mac_check |
                  self.path.ip_check |
                  self.path.tx_en |
                  self.path.s10GB_LR)
        self.path.write(self.path.gen_config, config)
        print("PATH %d: gen_config 0x%08x" % (self.idx, config))

        self.path.write(self.path.ntp_config, (-18 & 0xff) * self.path.precision)
        self.path.write(self.path.ntp_root_delay, 0)   # TBD
        self.path.write(self.path.ntp_root_disp, 2)
        self.path.write(self.path.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))
        self.path.write(self.path.ntp_ref_ts_0, 0)
        self.path.write(self.path.ntp_ref_ts_1, timestamp)
        self.path.write(self.path.ntp_rx_ofs, 0)
        self.path.write(self.path.ntp_tx_ofs, 0)

        time.sleep(1)

        # Check path PHY status.
        print("XPHY %d status: 0x%08x" % (self.idx, self.path.read(self.path.xphy_status)))
        print()

    #-------------------------------------------------------------------
    # Access the ROSC and then dump loads of entropy for testing.
    #-------------------------------------------------------------------
    def test_entropy(self, num_words, ent_file):
        from struct import pack

        path0 = network_path(0)
        api0 = api_extension(path0)

        print("Testing the entropy source in API0")
        print("Name and version of rosc_entropy core:")
        print("NAME0:   0x%08x" % api0.read(0xfe000000))
        print("NAME1:   0x%08x" % api0.read(0xfe000001))
        print("VERSION: 0x%08x" % api0.read(0xfe000002))
        print("")

        print("Extracting %d words to file %s" % (num_words, ent_file))
        with open(ent_file, "wb") as fp:
            for i in range(num_words):
                while api0.read(0xfe000009) == 0:
                    time.sleep(0.001)
                    ent = api0.read(0xfe000020)
                    fp.write(pack(">I", ent))
                    if (i % 1000 == 0):
                        print("entropy word %d: 0x%08x" % (i, ent))
                        print("Extraction done.\n")

    def read32(self, base, offset):
        return self.api.read(base + offset)

    def read64(self, base, offset):
        msb = self.read32(base, offset)
        lsb = self.read32(base, offset + 1)
        word = (msb<<32) | lsb
        return word

    def write32(self, base, offset, value):
        self.api.write(base + offset, value)

    @staticmethod
    def humanL(a):
        if (a == 0):
            return "<0>"
        else:
            try:
                return bytes.fromhex(hex(a)[2:]).decode('ASCII')
            except AttributeError:
                return hex(a)[2:].decode('hex')

    def human32(self, base, offset):
        machine = self.read32(base, offset)
        return self.humanL(machine)

    def human64(self, base, offset):
        machine = self.read64(base, offset)
        return self.humanL(machine)

    def engine_read32(self, engine, addr):
        if self.path.KERNEL_API:
            return self.path.read_engine(self.path.port, engine, addr)
        else:
            id_cmd_addr = (engine<<20) | (self.BUS_READ<<12) | (addr & 0xFFF)

            self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, id_cmd_addr )
            self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS, 1 )

            status = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS )
            while status:
                status = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS )

            result = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_DATA )

            return result

    def engine_write32(self, engine, addr, value):
        if self.path.KERNEL_API:
            return self.path.write_engine(self.path.port, engine, addr, value)
        else:
            id_cmd_addr = (engine<<20) | (self.BUS_WRITE<<12) | (addr & 0xFFF)

            self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, id_cmd_addr )
            self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_DATA, value )
            self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS, 1 )

            status = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS )
            while status:
                status = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BUS_STATUS )

    def engine_write64(self, engine, addr, value):
        self.engine_write32(engine, addr, (value>>32) & 0xffffffff)
        self.engine_write32(engine, addr + 1, value & 0xffffffff)

    def engine_write32_checkreadback(self, engine, addr, value):
        self.engine_write32(engine, addr, value)
        readback = self.engine_read32(engine, addr)
        if (value != readback):
            raise IOError("WARNING: Write engine[{}]={}, read back was: {}".format(hex(addr), hex(value), hex(readback)))

    def engine_read64(self, engine, addr):
        msb = self.engine_read32(engine, addr)
        lsb = self.engine_read32(engine, addr + 1)
        word = (msb<<32) | lsb
        return word

    def engine_human32(self, engine, addr):
        return self.humanL(self.engine_read32(engine, addr))

    def engine_human64(self, engine, addr):
        return self.humanL(self.engine_read64(engine, addr))

    def detect_engines(self):
        disp_name = self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NAME)
        disp_version = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_VERSION)
        disp_engines = self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_ENGINES_ALL)
        if (disp_name != self.EXPECTED_DISPATCHER_ADDR_NAME):
            raise ValueError("WARNING: invalid dispatcher name: {}".format(disp_name))
        if (disp_version < self.EXPECTED_DISPATCHER_VERSION):
            raise ValueError("WARNING: invalid dispatcher version: {}".format(disp_version))
        if (disp_engines < 1):
            raise ValueError("WARNING: invalid dispatcher engine count: {}".format(disp_engines))
        return disp_engines

    def dump_nts_dispatcher_api(self):
        for addr in range(0, 0x1000):
            value = self.read32(self.DISPATCHER_BASE, addr)
            if (value != 0):
                print("dispatcher[%03x] = %08x" % (addr, value) )

    def dump_nts_engine_api(self):
        for engine in range(self.engines):
            for addr in range(0, 0x1000):
                value = self.engine_read32(engine, addr)
                if (value != 0):
                    print("engine%d[%03x] = %08x" % (engine, addr, value) )

    def check_nts_dispatcher_apis(self):
        print("Checking access to Dispatcher APIs in NTS")
        print("")
        print("Dispatcher")
        print(" - Core:    %s" % self.human64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NAME))
        print(" - Version: %s" % self.human32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_VERSION))
        print("")
        print(" - Unofficial undocumented debug registers (behaivor subject to change)")
        print("   - NTP_TIME:  0x%016x" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTPTIME))
        print("   - DUMMY:     0x%08x" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_DUMMY))
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_DUMMY, 0xdeadbeef)
        print("   - DUMMY:     0x%08x (expected: deadbeef)" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_DUMMY))
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_DUMMY, 0x1cec001d)
        print("   - DUMMY:     0x%08x (expected: 1cec001d)" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_DUMMY))
        print("   - SYSTICK32: %d (dec)" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_SYSTICK32))
        print("   - FRAMES:")
        print("     - DETECTED:   %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_COUNTER_FRAMES))
        print("     - GOOD:       %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_COUNTER_GOOD))
        print("     - BAD:        %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_COUNTER_BAD))
        print("     - DISPATCHED: %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_COUNTER_DISPATCHED))
        print(" - Official documented APIs")
        print("  - Control:  0x%08x" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_CTRL))
        print("  - Status:   0x%08x" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_STATUS))
        print("  - Received (bytes):    %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BYTES_RX))
        print("  - Received (packets):  %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_REC))
        print("  - Discarded (packets): %d (dec)" % self.read64(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_DISCARDED))
        print("  - Engines ready/idle:  %d (dec)" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_ENGINES_READY))
        print("  - Engines (all):       %d (dec)" % self.read32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_ENGINES_READY))
        print("")

    def check_nts_extractor_apis(self):
        print("Checking access to Extractor APIs in NTS")
        print("")
        print("Extractor")
        print(" - Core:    %s" % self.human64(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_NAME))
        print(" - Version: %s" % self.human32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_VERSION))
        print("")
        print(" - Unofficial undocumented debug registers (behaivor subject to change)")
        dummy = self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_DUMMY)
        print("   - DUMMY:          0x%08x" % dummy)
        self.write32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_DUMMY, dummy + 1)
        dummy2 = self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_DUMMY)
        print("   - DUMMY:          0x%08x (line above + 1)" % dummy2)
        print("   - MUX_STATE:      0x%08x" % self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_MUX_STATE))
        print("   - MUX_INDEX:      0x%08x" % self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_MUX_INDEX))
        print("   - DEBUG_TX:       0x%08x" % self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_DEBUG_TX))
        print("   - ERROR_STARTS:   %d (dec)" % self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_ERROR_STARTS))
        print("   - ERROR_DISCARDS: %d (dec)" % self.read32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_ERROR_DISCARDS))
        print(" - Official documented APIs")
        print("   - Transmitted (bytes):   %d (dec)" % self.read64(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_BYTES))
        print("   - Transmitted (packets): %d (dec)" % self.read64(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_PACKETS))

    def check_nts_engine_apis(self):
        for engine in range(self.engines):
            print("ENGINE %d:" % engine)
            print("  - Cores:")
            print("   - Core:  %s %s" % (self.engine_human64(engine, self.API_ADDR_ENGINE_NAME0), self.engine_human32(engine, self.API_ADDR_ENGINE_VERSION)))
            print("   - Core:  %s %s" % (self.engine_human64(engine, self.API_ADDR_CLOCK_NAME0), self.engine_human32(engine, self.API_ADDR_ENGINE_VERSION)))
            print("   - Core:  %s" % self.engine_human32(engine, self.API_ADDR_DEBUG_NAME))
            print("   - Core:  %s %s" % (self.engine_human64(engine, self.API_ADDR_KEYMEM_NAME0), self.engine_human32(engine, self.API_ADDR_KEYMEM_VERSION)))
            print("   - Core:  %s %s" % (self.engine_human64(engine, self.API_ADDR_NONCEGEN_NAME), self.engine_human32(engine, self.API_ADDR_NONCEGEN_VERSION)))
            print("   - Core:  %s %s" % (self.engine_human64(engine, self.API_ADDR_PARSER_NAME0), self.engine_human32(engine, self.API_ADDR_PARSER_VERSION)))
            print("  - Debug")
            print("    - NTS")
            print("      - Processed:  %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_NTS_PROCESSED))
            print("      - Bad cookie: %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_NTS_BAD_COOKIE))
            print("      - Bad auth:   %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_NTS_BAD_AUTH))
            print("      - Bad keyid:  %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_NTS_BAD_KEYID))
            print("    - Error counters")
            print("      - Crypto:     %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_ERR_CRYPTO))
            print("      - TxBuf:      %d" % self.engine_read64(engine, self.API_ADDR_DEBUG_ERR_TXBUF))
            print("    - Other debug messurements:")
            print("      - Systick32:  %d" % self.engine_read32(engine, self.API_ADDR_DEBUG_SYSTICK32))
            print("  - Clock / Timestamper")
            print("     - NTP Configuration:   0x%08x" % self.engine_read32(engine, self.API_ADDR_CLOCK_CONFIG))
            print("     - NTP Root Delay:      0x%08x" % self.engine_read32(engine, self.API_ADDR_CLOCK_ROOT_DELAY))
            print("     - NTP Root Dispersion: 0x%08x" % self.engine_read32(engine, self.API_ADDR_CLOCK_ROOT_DISP))
            print("     - NTP Reference Id:    0x%08x" % self.engine_read32(engine, self.API_ADDR_CLOCK_REF_ID))
            print("     - NTP Transmit Offset: 0x%08x" % self.engine_read32(engine, self.API_ADDR_CLOCK_TX_OFS))
            print("  - Key Memory (32 bit counters)")
            print("    - Control: 0x%08x" % self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL))
            print("    - KeyId: 0x%08x Counter: %d (dec)" % (self.engine_read32(engine, self.API_ADDR_KEYMEM_KEY0_ID), self.engine_read64(engine, self.API_ADDR_KEYMEM_KEY0_COUNTER)))
            print("    - KeyId: 0x%08x Counter: %d (dec)" % (self.engine_read32(engine, self.API_ADDR_KEYMEM_KEY1_ID), self.engine_read64(engine, self.API_ADDR_KEYMEM_KEY1_COUNTER)))
            print("    - KeyId: 0x%08x Counter: %d (dec)" % (self.engine_read32(engine, self.API_ADDR_KEYMEM_KEY2_ID), self.engine_read64(engine, self.API_ADDR_KEYMEM_KEY2_COUNTER)))
            print("    - KeyId: 0x%08x Counter: %d (dec)" % (self.engine_read32(engine, self.API_ADDR_KEYMEM_KEY3_ID), self.engine_read64(engine, self.API_ADDR_KEYMEM_KEY3_COUNTER)))
            print("    - Errors: %d (dec)" % self.engine_read64(engine, self.API_ADDR_KEYMEM_ERROR_COUNTER))
            print("  - Nonce Generator")
            print("    - Control: %08x" % self.engine_read32(engine, self.API_ADDR_NONCEGEN_CTRL))
            print("    - Status:  %08x" % self.engine_read32(engine, self.API_ADDR_NONCEGEN_STATUS))
            print("    - Config:  %08x" % self.engine_read32(engine, self.API_ADDR_NONCEGEN_CONFIG))
            print("  - Parser")
            print("    - State:         0x%0x" % self.engine_read32(engine, self.API_ADDR_PARSER_STATE))
            print("    - State Crypto:  0x%0x" % self.engine_read32(engine, self.API_ADDR_PARSER_STATE_CRYPTO))
            print("    - Error State:   0x%0x" % self.engine_read32(engine, self.API_ADDR_PARSER_ERROR_STATE))
            print("    - Error Cause:   0x%0x" % self.engine_read32(engine, self.API_ADDR_PARSER_ERROR_CAUSE))
            print("    - Error Counter: %0d" % self.engine_read32(engine, self.API_ADDR_PARSER_ERROR_COUNT))
            print("")

    def clear_arp(self):
        print("Clear ARP")

        for engine in range(self.engines):
            # Disable all MAC addresses and IP addresses
            self.engine_write32(engine, self.API_ADDR_PARSER_MAC_CTRL, 0x00 )
            self.engine_write32(engine, self.API_ADDR_PARSER_IPV4_CTRL, 0x00 )
            self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_CTRL, 0x00 )

    def init_gre(self, gre_dst_mac, gre_dst_ip, gre_src_mac, gre_src_ip):
        for engine in range(self.engines):
            print("Engine %d - init GRE" % engine)

            dst_mac = int(gre_dst_mac.replace(":","",5), 16)
            src_mac = int(gre_src_mac.replace(":","",5), 16)
            dst_ip = int(netaddr.IPAddress(gre_dst_ip))
            src_ip = int(netaddr.IPAddress(gre_src_ip))
            self.engine_write64(engine, self.API_ADDR_GRE_DST_MAC_MSB, dst_mac)
            self.engine_write32(engine, self.API_ADDR_GRE_DST_IP, dst_ip)
            self.engine_write64(engine, self.API_ADDR_GRE_SRC_MAC_MSB, src_mac)
            self.engine_write32(engine, self.API_ADDR_GRE_SRC_IP, src_ip)

    def init_arp(self, mac, ipv4, ipv6):
        for engine in range(self.engines):
            print("Engine %d - init ARP" % engine)

            mac_ctrl = self.engine_read32(engine, self.API_ADDR_PARSER_MAC_CTRL )
            ipv4_ctrl = self.engine_read32(engine, self.API_ADDR_PARSER_IPV4_CTRL )
            ipv6_ctrl = self.engine_read32(engine, self.API_ADDR_PARSER_IPV6_CTRL )

            for i in range(4):
                if mac[i] is not None:
                    print(" - MAC: %6x" % mac[i])
                    self.engine_write64(engine, self.API_ADDR_PARSER_MAC_0 + i * 2, mac[i] )
                    mac_ctrl |= 1 << i

            for i in range(8):
                if ipv4[i] is not None:
                    print(" - IP: %s" % ipv4[i])
                    ip = int(netaddr.IPAddress(ipv4[i]))
                    self.engine_write32(engine, self.API_ADDR_PARSER_IPV4_0 + i, ip )
                    ipv4_ctrl |= 1 << i

            for i in range(8):
                if ipv6[i] is not None:
                    words = ipv6[i]
                    print(" - IPv6 %04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x" % (words[0], words[1], words[2], words[3], words[4], words[5], words[6], words[7]))
                    u0 = ((words[0] & 0xfffffff) <<16) | (words[1] & 0xffffffff)
                    u1 = ((words[2] & 0xfffffff) <<16) | (words[3] & 0xffffffff)
                    u2 = ((words[4] & 0xfffffff) <<16) | (words[5] & 0xffffffff)
                    u3 = ((words[6] & 0xfffffff) <<16) | (words[7] & 0xffffffff)
                    self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_0 + i * 4 + 0, u0 )
                    self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_0 + i * 4 + 1, u1 )
                    self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_0 + i * 4 + 2, u2 )
                    self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_0 + i * 4 + 3, u3 )
                    ipv6_ctrl |= 1 << i

            self.engine_write32(engine, self.API_ADDR_PARSER_MAC_CTRL, mac_ctrl )
            self.engine_write32(engine, self.API_ADDR_PARSER_IPV4_CTRL, ipv4_ctrl )
            self.engine_write32(engine, self.API_ADDR_PARSER_IPV6_CTRL, ipv6_ctrl )

    def nts_engine_enable(self):
        for engine in range(self.engines):
            print("Engine %d - Enable engine" % engine)
            self.engine_write32(engine, self.API_ADDR_ENGINE_CTRL, 0x1)

    def nts_reset_dispatcher_api(self):
        print("Dispatcher - Reset counters")
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_BYTES_RX, 0)
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_REC, 0)
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_NTS_DISCARDED,0 )

    def nts_reset_extractor_api(self):
        print("Extractor - Reset counters")
        self.write32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_BYTES, 0)
        self.write32(self.EXTRACTOR_BASE, self.API_EXTRACTOR_ADDR_PACKETS, 0)

    def nts_dispatcher_enable(self):
        print("Dispatcher - Enable")
        self.write32(self.DISPATCHER_BASE, self.API_DISPATCHER_ADDR_CTRL, 0x1)

    def random32(self, f):
        b = f.read(4)
        if (len(b) != 4):
            raise IOError("WARNING: Read 4 bytes, returned length was: {}".format(len(b)))
        l = struct.unpack(b'I', b)
        if (len(l) != 1):
            raise IOError("WARNING: , returned length was: {}".format(len(b)))
        ll = l[0]
        return ll

    def nts_init_noncegen(self):
        for engine in range(self.engines):
            print("Engine %d - Init nonce generator" % engine)

            label = 0xffffffff & engine
            key0 = 0
            key1 = 0
            key1 = 0
            key3 = 0
            context0 = 0
            context1 = 0
            context2 = 0
            context3 = 0
            context4 = 0
            context5 = 0

            with open("/dev/urandom", 'rb') as f:
                key0 = self.random32(f)
                key1 = self.random32(f)
                key2 = self.random32(f)
                key3 = self.random32(f)
                context0 = self.random32(f)
                context1 = self.random32(f)
                context2 = self.random32(f)
                context3 = self.random32(f)
                context4 = self.random32(f)
                context5 = self.random32(f)

            print(" * Key: %08x%08x%08x%08x" % (key0, key1, key2, key3))
            print(" * Context %08x%08x%08x%08x%08x%08x" % (context0, context1, context2, context3, context4, context5))
            print(" * Label: %03x" % label)

            self.engine_write32(engine, self.API_ADDR_NONCEGEN_KEY0, key0)
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_KEY1, key1)
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_KEY2, key2)
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_KEY3, key3)
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT0, context0 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT1, context1 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT2, context2 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT3, context3 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT4, context4 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CONTEXT5, context5 )
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_LABEL, label)
            self.engine_write32(engine, self.API_ADDR_NONCEGEN_CTRL, 0x00000001)

    def nts_disable_keys(self):
        for engine in range(self.engines):
            print("Engine %d - Disable NTS keys" % engine)
            self.engine_write32(engine, self.API_ADDR_KEYMEM_CTRL, 0 )

    def nts_set_current_key(self, keynum):
        for engine in range(self.engines):
            print("Engine %d - Set current NTS key: %x" % (engine, keynum))
            print(" * key ctrl: %08x" % self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL ))
            CTRL_CURR_LOW = 16
            ctrl = 0
            mask1 = 0x3<<CTRL_CURR_LOW
            mask2 = 0xffffffff ^ mask1
            k = 0
            k = (keynum & 0x3) << CTRL_CURR_LOW
            ctrl = self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL )
            ctrl = ctrl & mask2
            ctrl = ctrl | k
            self.engine_write32(engine, self.API_ADDR_KEYMEM_CTRL, ctrl )
            print(" * key ctrl: %08x" % self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL ))

    def nts_install_key_256bit(self, key_index, keyid, key=[]):
        for engine in range(self.engines):
            addr_key = 0
            addr_keyid = 0
            ctrl = 0
            dictionary = {
                0: ( self.API_ADDR_KEYMEM_KEY0_START, self.API_ADDR_KEYMEM_KEY0_ID ),
                1: ( self.API_ADDR_KEYMEM_KEY1_START, self.API_ADDR_KEYMEM_KEY1_ID ),
                2: ( self.API_ADDR_KEYMEM_KEY2_START, self.API_ADDR_KEYMEM_KEY2_ID ),
                3: ( self.API_ADDR_KEYMEM_KEY3_START, self.API_ADDR_KEYMEM_KEY3_ID ),
            }

            ( addr_key, addr_keyid ) = dictionary.get( key_index )

            print("Engine %d - Install key, index = %x, address key = %x, address key id = %x" % (engine, key_index, addr_key, addr_keyid))

            ctrl = self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL )
            ctrl = ctrl & ~ (1<<key_index)

            self.engine_write32(engine, self.API_ADDR_KEYMEM_CTRL, ctrl )
            print(" * key ctrl: %08x" % self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL ))

            self.engine_write32(engine, addr_keyid, keyid )

            for i in range(0, 8):
                addr = addr_key + i
                value = key[7-i]
                print(" * key[%x,%x]=engine[%x]=%x" % (key_index, i, addr, value))
                self.engine_write32(engine, addr,       value ) #256bit LSB
                self.engine_write32(engine, addr + 0x8, 0     ) #256bit MSB, all zeros

            ctrl = ctrl | (1<<key_index)
            self.engine_write32(engine, self.API_ADDR_KEYMEM_CTRL, ctrl )
            print(" * key ctrl: %08x" % self.engine_read32(engine, self.API_ADDR_KEYMEM_CTRL ))

    def nts_install_test_keys(self):
        self.nts_install_key_256bit(0, 0x12345678, [ 0x9b71d224, 0xbd62f378, 0x5d96d46a, 0xd3ea3d73, 0x319bfbc2, 0x890caada, 0xe2dff725, 0x19673ca7 ] )
        self.nts_install_key_256bit(1, 0xb01dface, [ 0x2323c3d9, 0x9ba5c11d, 0x7c7acc6e, 0x14b8c5da, 0x0c466347, 0x5c2e5c3a, 0xdef46f73, 0xbcdec043 ] )
        self.nts_install_key_256bit(2, 0x13fe78e9, [ 0xfeb10c69, 0x9c6435be, 0x5a9ee521, 0xe40e420c, 0xf665d8f7, 0xa969302a, 0x63b9385d, 0x353ae43e ] )
        self.nts_set_current_key(1)

    def ntp_auth_install_key(self, slot, md5, sha1, keyid, key):
        for engine in range(self.engines):
            slots = self.engine_read32(engine, self.API_ADDR_NTPAUTH_KEYMEM_SLOTS)
            print(" * Slots: %0d" % slots)
            if (slots == 0):
                print(" * WARNING: NTP AUTH support not present")
                continue

            print(" * Slot %d - Install install key keyid=%08x MD5=%s SHA1=%s" % (slot, keyid, md5, sha1))

            keytype = 0
            if (md5 and sha1):
                keytype = 3
                print(" * WARNING: Key is MD5 and SHA1, probably unwise")
            elif (md5):
                keytype = 1
            elif (sha1):
                keytype = 2

            if (slot >= slots):
                raise ValueError("WARNING: Slots: %0d, slot %0d is out of range".format(slots, slot))

            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_ACTIVE_SLOT, slot)
            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_MD5_SHA1, 0) # disable slot during install
            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_COUNTER_MSB, 0)
            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_COUNTER_LSB, 0)
            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_KEYID, keyid)

            for i in range (0, 5):
                self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_KEY0 + i, key[4-i] )
            self.engine_write32(engine, self.API_ADDR_NTPAUTH_KEYMEM_MD5_SHA1, keytype )

    def ntp_auth_install_test_keys(self):
        print("Engine - Install NTP AUTH install test keys")
        self.ntp_auth_install_key(5, 0, 1, 0xbaad, [ 0xbaad4444, 0xbaad3333, 0xbaad2222, 0xbaad1111, 0xbaad0000 ])
        self.ntp_auth_install_key(7, 1, 0, 0xf00d, [ 0xf00d4444, 0xf00d3333, 0xf00d2222, 0xf00d1111, 0xf00d0000 ])

    def nts_configure_ntp(self, refid, rootdelay, rootdisp, tx_ofs, config):
        v_config = int(config, 16)
        v_refid = 0 # refid is zero-padded if length<4
        v_rootdelay = int(rootdelay, 16)
        v_rootdisp = int(rootdisp, 16)
        v_tx_ofs = int(tx_ofs, 16)

        if (len(refid) > 4):
            raise ValueError("WARNING: refid {}: illegal length greater than 4".format(refid))

        for i in range(len(refid)):
            a = ord(refid[i])
            if ((a < 31) or (a > 127)):
                raise ValueError("WARNING: refid {}: illegal character {} at position {}".format(refid, a, i))
            v_refid |= a << ((3-i)*8)

        for engine in range(self.engines):
            self.engine_write32(engine, self.API_ADDR_CLOCK_CONFIG, v_config)
            self.engine_write32(engine, self.API_ADDR_CLOCK_ROOT_DELAY, v_rootdelay)
            self.engine_write32(engine, self.API_ADDR_CLOCK_ROOT_DISP, v_rootdisp)
            self.engine_write32(engine, self.API_ADDR_CLOCK_REF_ID, v_refid)
            self.engine_write32(engine, self.API_ADDR_CLOCK_TX_OFS, v_tx_ofs)

    def parser_configure_helper (self, e, d, bit, value ):
        if (value is None):
            return (e, d)

        disable = False
        enable = False

        disable_words = [ "0", "no", "false" ]
        enable_words = [ "1", "yes", "true" ]

        for word in disable_words:
            if (value.lower() == word):
                disable = True

        for word in enable_words:
            if (value.lower() == word):
                enable = True

        if (disable):
            return (e, d + (1<<bit))
        elif (enable):
            return (e + (1<<bit), d)
        else:
            raise ValueError("WARNING: configuration argument {} is not a proper boolean, valid values: {}".format(value, disable_words + enable_words))

    def parser_configure(self, csum_verify, nts, ntp, ntp_md5, ntp_sha1, gre ):
        for engine in range(self.engines):
            enable_bits = 0
            disable_bits = 0

            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 0, csum_verify)
            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 1, nts)
            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 2, ntp)
            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 3, ntp_md5)
            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 4, ntp_sha1)
            (enable_bits, disable_bits) = self.parser_configure_helper( enable_bits, disable_bits, 5, gre)

            print("Engine %d - configuring parser" % engine)
            print("  * enable  bits: %08x" % enable_bits )
            print("  * disable bits: %08x" % disable_bits )
            if (enable_bits or disable_bits):
                ctrl_old = self.engine_read32(engine, self.API_ADDR_PARSER_CTRL)
                ctrl_new = (ctrl_old | enable_bits) & ( ~ disable_bits )
                self.engine_write32(engine, self.API_ADDR_PARSER_CTRL, ctrl_new)
                print("  * ctrl old: %08x" % ctrl_old)
                print("  * ctrl new: %08x" % ctrl_new)

#-------------------------------------------------------------------
if __name__=="__main__":
    dump = False
    human = True
    gre_dst_mac = "FF:FF:FF:FF:FF:FF"
    gre_dst_ip = "192.168.40.1"
    gre_src_mac = "CF:CE:CD:CC:CB:CA"
    gre_src_ip = "192.168.40.99"
    ntp_refid = 'PPS'
    ntp_rootdelay = '1'
    ntp_rootdisp = '2'
    ntp_tx_ofs = '3'
    ntp_config = '00000000'
    parser_ctrl_csum_verify = None
    parser_ctrl_gre = None
    parser_ctrl_nts = None
    parser_ctrl_ntp = None
    parser_ctrl_ntp_md5 = None
    parser_ctrl_ntp_sha1 = None
    reset_api_dispatcher = False
    reset_api_extractor = False
    init = None
    setup = True
    opt_test_entropy = 0
    install_keys = []
    activate_key = None
    mac = [ 0x525a2c182ef0, 0x525a2c182ef1, 0x525a2c182ef2, 0x525a2c182ef3 ]
    ipv4 = []
    for i in range(8):
        ipv4.append(("192.168.%d.%d" % (40, (30 + i))))

    ipv6 = []
    for i in range(8):
        ipv6.append(( 0xfd75, 0x502f, 0xe221, 0xddcf, 0x0000, 0x0000, 0x0000, i + 16 ))

    options, remainder = getopt.getopt(sys.argv[1:], '', [
        'dump',
        'nohuman',
        'init',
        'noinit',
        'setup',
        'nosetup',
        'gre_dst_ip=',
        'gre_dst_mac=',
        'gre_src_ip=',
        'gre_src_mac=',
        'parser_ctrl_csum_verify=',
        'parser_ctrl_gre=',
        'parser_ctrl_ntp=',
        'parser_ctrl_ntp_md5=',
        'parser_ctrl_ntp_sha1=',
        'parser_ctrl_nts=',
        'ntp_config=',
        'ntp_refid=',
        'ntp_rootdisp=',
        'ntp_tx_ofs=',
        'reset-api-dispatcher',
        'reset-api-extractor',
        'test-entropy=',
        'install-key=',
        'activate-key=',
    ])
    for opt, arg in options:
        if (opt == '--dump'): dump = True
        if (opt == '--nohuman'): human = False
        if (opt == '--init'): init = True
        if (opt == '--noinit'): init = False
        if (opt == '--setup'): setup = True
        if (opt == '--nosetup'): setup = False
        if (opt == '--gre_dst_ip'): gre_dst_ip = arg
        if (opt == '--gre_dst_mac'): gre_dst_mac = arg
        if (opt == '--gre_src_ip'): gre_src_ip = arg
        if (opt == '--gre_src_mac'): gre_src_mac = arg
        if (opt == '--ntp_config'): ntp_config = arg
        if (opt == '--ntp_refid'): ntp_refid = arg
        if (opt == '--ntp_rootdisp'): ntp_rootdisp = arg
        if (opt == '--ntp_tx_ofs'): ntp_tx_ofs = arg
        if (opt == '--parser_ctrl_csum_verify'): parser_ctrl_csum_verify = arg
        if (opt == '--parser_ctrl_gre'): parser_ctrl_gre = arg
        if (opt == '--parser_ctrl_ntp'): parser_ctrl_ntp = arg
        if (opt == '--parser_ctrl_ntp_md5'): parser_ctrl_ntp_md5 = arg
        if (opt == '--parser_ctrl_ntp_sha1'): parser_ctrl_ntp_sha1 = arg
        if (opt == '--parser_ctrl_nts'): parser_ctrl_nts = arg
        if (opt == '--reset-api-dispatcher'): reset_api_dispatcher = True
        if (opt == '--reset-api-extractor'): reset_api_extractor = True
        if (opt == '--test-entropy'): opt_test_entropy = int(arg)
        if (opt == '--install-key'):
            parts = arg.split(',')
            print( "install key", parts)
            print(len(parts[2]))
            if (len(parts) != 3):
                print( "Usage: --install-key=slot,id,data")
                sys.exit(1)

            if (parts[0] not in [ '0', '1', '2', '3' ]):
                print( "--install-key slot must be 0..3")
                sys.exit(1)

            if (len(parts[1]) != 8):
                print( "--install-key id must be 32 bits")
                sys.exit(1)

            if (len(parts[2]) != 64):
                print( "--install-key data must be 256 bits")
                sys.exit(1)

            install_keys.append((
                int(parts[0]), int(parts[1],16),
                [ int(parts[2][i:i+8],16) for i in range(0,64,8) ]))
        if (opt == '--activate-key'): activate_key = int(arg)

    fpga = NtsFpga()

    if (human):
        fpga.check_version_board()

    if (setup):
        if init is None:
            init = True

    if (init):
        fpga.setup_clocks()

    api = NtsApi(0)

    if (dump):
        api.dump_nts_dispatcher_api()

    if (dump):
        api.dump_nts_engine_api()

    if (human):
        api.check_api()
        api.check_pp_api()

    if (init):
        api.setup_network_path()
        for i in range(1, 4):
            NtsApi(i, path_only = True).setup_network_path()

    if (opt_test_entropy):
        test_entropy(opt_test_entropy, "ent_data.bin")

    if (init):
        api.clear_arp()

    if (setup):
        api.init_arp(mac, ipv4, ipv6)
        api.init_gre(gre_dst_mac, gre_dst_ip, gre_src_mac, gre_src_ip)
        api.nts_configure_ntp(ntp_refid, ntp_rootdelay, ntp_rootdisp, ntp_tx_ofs, ntp_config)
        api.nts_disable_keys()
        api.nts_init_noncegen()
        api.nts_install_test_keys()
        api.ntp_auth_install_test_keys()
        api.parser_configure( parser_ctrl_csum_verify, parser_ctrl_nts, parser_ctrl_ntp, parser_ctrl_ntp_md5, parser_ctrl_ntp_sha1, parser_ctrl_gre)
        api.nts_engine_enable()
        api.nts_dispatcher_enable()

    if (reset_api_dispatcher):
        api.nts_reset_dispatcher_api()

    if (reset_api_extractor):
        api.nts_reset_extractor_api()

    for keyslot, keyid, keydata in install_keys:
        for engine in range(0, engines):
            nts_install_key_256bit(api, engine, keyslot, keyid, keydata)

    if (activate_key is not None):
        for engine in range(0, engines):
            nts_set_current_key(api, engine, activate_key)

    if (human):
        api.check_nts_dispatcher_apis()
        api.check_nts_extractor_apis()
        api.check_nts_engine_apis()

    sys.exit(0)
