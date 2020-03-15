#! /usr/bin/python

from xpcie import *
import getopt
import struct
import time
import random
import datetime
import netaddr
import sys


#-------------------------------------------------------------------
def check_version_board():
    print("Checking build information about the FPGA and reading board temp.")
    ur = user_regs()
    build_time = datetime.datetime.fromtimestamp(ur.read(ur.build_time)).strftime('%Y-%m-%d %H:%M:%S')
    print("FPGA build at " + build_time + " (%u)" % ur.read(ur.build_time))

    build_info = ur.read(ur.build_info)
    vivado = "%u.%u" % (((build_info >> 8) & 0xffff), (build_info & 0xff))
    git_hash = "%08x" % ur.read(ur.git_hash)
    if build_info & (1<<24):
        git_hash += '-dirty'
    print( "FPGA built with Vivado %s from git hash %s" % (vivado, git_hash))

    die_temp = round((ur.read(ur.die_temp) * 504.0 / 1024.0) - 273.0, 1)
    print("FPGA Die temperature is " + str(die_temp) + "C.")
    print("")


#-------------------------------------------------------------------
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
API_ADDR_PARSER_STATE        = API_ADDR_PARSER_BASE + 0x10
API_ADDR_PARSER_STATE_CRYPTO = API_ADDR_PARSER_BASE + 0x12
API_ADDR_PARSER_ERROR_STATE  = API_ADDR_PARSER_BASE + 0x13
API_ADDR_PARSER_ERROR_COUNT  = API_ADDR_PARSER_BASE + 0x14
API_ADDR_PARSER_MAC_CTRL     = API_ADDR_PARSER_BASE + 0x30
API_ADDR_PARSER_IPV4_CTRL    = API_ADDR_PARSER_BASE + 0x31
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

def read32(api, base, offset):
    return api.read(base + offset)

def read64(api, base, offset):
    msb = read32(api, base, offset)
    lsb = read32(api, base, offset + 1)
    word = (msb<<32) | lsb
    return word

def write32(api, base, offset, value):
    api.write(base + offset, value)

def humanL(a):
    return hex(a)[2:][:-1].decode("hex")

def human32(api, base, offset):
    machine = read32(api, base, offset)
    return humanL(machine)

def human64(api, base, offset):
    machine = read64(api, base, offset)
    return humanL(machine)

def engine_read32(api, engine, addr):
    id_cmd_addr = (engine<<20) | (BUS_READ<<12) | (addr & 0xFFF)

    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, id_cmd_addr )
    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS, 1 )

    status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )
    while status:
          status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )

    result = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_DATA )

    return result

def engine_write32(api, engine, addr, value):
    id_cmd_addr = (engine<<20) | (BUS_WRITE<<12) | (addr & 0xFFF)

    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, id_cmd_addr )
    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_DATA, value )
    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS, 1 )

    status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )
    while status:
          status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )

def engine_write64(api, engine, addr, value):
    engine_write32(api, engine, addr, (value>>32) & 0xffffffff)
    engine_write32(api, engine, addr + 1, value & 0xffffffff)

def engine_write32_checkreadback(api, engine, addr, value):
    engine_write32(api, engine, addr, value)
    readback = engine_read32(api, engine, addr)
    if (value != readback):
      raise Exception("WARNING: Write engine[{}]={}, read back was: {}".format(hex(addr), hex(value), hex(readback)));

def engine_read64(api, engine, addr):
    msb = engine_read32(api, engine, addr)
    lsb = engine_read32(api, engine, addr + 1)
    word = (msb<<32) | lsb
    return word

def engine_human32(api, engine, addr):
    return humanL(engine_read32(api, engine, addr))

def engine_human64(api, engine, addr):
    return humanL(engine_read64(api, engine, addr))

def detect_engines(api):
    disp_name = read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME)
    disp_version = read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION)
    disp_engines = read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_ENGINES_ALL)
    if (disp_name != 0x4e54532d44495350L):
      raise Exception("WARNING: invalid dispatcher name: {}".format(disp_name))
    if (disp_version < 0x302e3032L):
      raise Exception("WARNING: invalid dispatcher version: {}".format(disp_version))
    if (disp_engines < 1):
      raise Exception("WARNING: invalid dispatcher engine count: {}".format(disp_engines))
    return disp_engines

def dump_nts_dispatcher_api(api):
    for addr in range(0, 0x1000):
        value = read32(api, DISPATCHER_BASE, addr)
        if (value != 0):
            print("dispatcher[%03x] = %08x" % (addr, value) );

def dump_nts_engine_api(api, engine):
    for addr in range(0, 0x1000):
        value = engine_read32(api, engine, addr)
        if (value != 0):
            print("engine%d[%03x] = %08x" % (engine, addr, value) );

def check_nts_dispatcher_apis(api):
    print("Checking access to Dispatcher APIs in NTS")
    print("")
    print("Dispatcher")
    print(" - Core:    %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print(" - Version: %s" % human32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION))
    print("")
    print(" - Unofficial undocumented debug registers (behaivor subject to change)")
    print("   - NTP_TIME:  0x%016x" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTPTIME))
    print("   - DUMMY:     0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0xdeadbeef)
    print("   - DUMMY:     0x%08x (expected: deadbeef)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0x1cec001d)
    print("   - DUMMY:     0x%08x (expected: 1cec001d)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    print("   - SYSTICK32: %d (dec)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_SYSTICK32))
    print("   - FRAMES:");
    print("     - DETECTED:   %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_FRAMES))
    print("     - GOOD:       %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_GOOD))
    print("     - BAD:        %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print("     - DISPATCHED: %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_DISPATCHED))
    print(" - Official documented APIs")
    print("  - Control:  0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_CTRL))
    print("  - Status:   0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_STATUS))
    print("  - Received (bytes):    %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BYTES_RX))
    print("  - Received (packets):  %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_REC))
    print("  - Discarded (packets): %d (dec)" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_DISCARDED))
    print("  - Engines ready/idle:  %d (dec)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_ENGINES_READY))
    print("  - Engines (all):       %d (dec)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_ENGINES_READY))
    print("")

def check_nts_extractor_apis(api):
    print("Checking access to Extractor APIs in NTS")
    print("")
    print("Extractor")
    print(" - Core:    %s" % human64(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_NAME))
    print(" - Version: %s" % human32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_VERSION))
    print("")
    print(" - Unofficial undocumented debug registers (behaivor subject to change)")
    dummy = read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_DUMMY)
    print("   - DUMMY:          0x%08x" % dummy)
    write32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_DUMMY, dummy + 1)
    dummy2 = read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_DUMMY)
    print("   - DUMMY:          0x%08x (line above + 1)" % dummy2)
    print("   - MUX_STATE:      0x%08x" % read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_MUX_STATE))
    print("   - MUX_INDEX:      0x%08x" % read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_MUX_INDEX))
    print("   - DEBUG_TX:       0x%08x" % read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_DEBUG_TX))
    print("   - ERROR_STARTS:   %d (dec)" % read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_ERROR_STARTS))
    print("   - ERROR_DISCARDS: %d (dec)" % read32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_ERROR_DISCARDS))
    print(" - Official documented APIs")
    print("   - Transmitted (bytes):   %d (dec)" % read64(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_BYTES))
    print("   - Transmitted (packets): %d (dec)" % read64(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_PACKETS))

def check_nts_engine_apis(api, engine):
    print("ENGINE %x:" % engine);
    print("  - Cores:")
    print("   - Core:  %s %s" % (engine_human64(api, engine, API_ADDR_ENGINE_NAME0), engine_human32(api, engine, API_ADDR_ENGINE_VERSION)))
    print("   - Core:  %s %s" % (engine_human64(api, engine, API_ADDR_CLOCK_NAME0), engine_human32(api, engine, API_ADDR_ENGINE_VERSION)))
    print("   - Core:  %s" % engine_human32(api, engine, API_ADDR_DEBUG_NAME))
    print("   - Core:  %s %s" % (engine_human64(api, engine, API_ADDR_KEYMEM_NAME0), engine_human32(api, engine, API_ADDR_KEYMEM_VERSION)))
    print("   - Core:  %s %s" % (engine_human64(api, engine, API_ADDR_NONCEGEN_NAME), engine_human32(api, engine, API_ADDR_NONCEGEN_VERSION)))
    print("   - Core:  %s %s" % (engine_human64(api, engine, API_ADDR_PARSER_NAME0), engine_human32(api, engine, API_ADDR_PARSER_VERSION)))
    print("  - Debug");
    print("    - NTS");
    print("      - Processed:  %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_PROCESSED))
    print("      - Bad cookie: %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_COOKIE))
    print("      - Bad auth:   %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_AUTH))
    print("      - Bad keyid:  %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_KEYID))
    print("    - Error counters");
    print("      - Crypto:     %d" % engine_read64(api, engine, API_ADDR_DEBUG_ERR_CRYPTO))
    print("      - TxBuf:      %d" % engine_read64(api, engine, API_ADDR_DEBUG_ERR_TXBUF))
    print("    - Other debug messurements:")
    print("      - Systick32:  %d" % engine_read32(api, engine, API_ADDR_DEBUG_SYSTICK32))
    print("  - Clock / Timestamper")
    print("     - NTP Configuration:   0x%08x" % engine_read32(api, engine, API_ADDR_CLOCK_CONFIG))
    print("     - NTP Root Delay:      0x%08x" % engine_read32(api, engine, API_ADDR_CLOCK_ROOT_DELAY))
    print("     - NTP Root Dispersion: 0x%08x" % engine_read32(api, engine, API_ADDR_CLOCK_ROOT_DISP))
    print("     - NTP Reference Id:    0x%08x" % engine_read32(api, engine, API_ADDR_CLOCK_REF_ID))
    print("     - NTP Transmit Offset: 0x%08x" % engine_read32(api, engine, API_ADDR_CLOCK_TX_OFS))
    print("  - Key Memory (32 bit counters)")
    print("    - Control: 0x%08x" % engine_read32(api, engine, API_ADDR_KEYMEM_CTRL))
    print("    - KeyId: 0x%08x Counter: %d (dec)" % (engine_read32(api, engine, API_ADDR_KEYMEM_KEY0_ID), engine_read64(api, engine, API_ADDR_KEYMEM_KEY0_COUNTER)))
    print("    - KeyId: 0x%08x Counter: %d (dec)" % (engine_read32(api, engine, API_ADDR_KEYMEM_KEY1_ID), engine_read64(api, engine, API_ADDR_KEYMEM_KEY1_COUNTER)))
    print("    - KeyId: 0x%08x Counter: %d (dec)" % (engine_read32(api, engine, API_ADDR_KEYMEM_KEY2_ID), engine_read64(api, engine, API_ADDR_KEYMEM_KEY2_COUNTER)))
    print("    - KeyId: 0x%08x Counter: %d (dec)" % (engine_read32(api, engine, API_ADDR_KEYMEM_KEY3_ID), engine_read64(api, engine, API_ADDR_KEYMEM_KEY3_COUNTER)))
    print("    - Errors: %d (dec)" % engine_read64(api, engine, API_ADDR_KEYMEM_ERROR_COUNTER))
    print("  - Nonce Generator")
    print("    - Control: %08x" % engine_read32(api, engine, API_ADDR_NONCEGEN_CTRL))
    print("    - Status:  %08x" % engine_read32(api, engine, API_ADDR_NONCEGEN_STATUS))
    print("    - Config:  %08x" % engine_read32(api, engine, API_ADDR_NONCEGEN_CONFIG))
    print("  - Parser");
    print("    - State:         0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_STATE));
    print("    - State Crypto:  0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_STATE_CRYPTO))
    print("    - Error State:   0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_ERROR_STATE))
    print("    - Error Counter: %0d" % engine_read32(api, engine, API_ADDR_PARSER_ERROR_COUNT))
    print("")

def init_arp(api, engine):
    print("Engine %d - init ARP" % engine)
    engine_write64( api, engine, API_ADDR_PARSER_MAC_0, 0xFFFEFDFCFBFA );
    engine_write64( api, engine, API_ADDR_PARSER_MAC_1, 0xEFEEEDECEBEA );
    engine_write64( api, engine, API_ADDR_PARSER_MAC_2, 0xDFDEDDDCDBDA );
    engine_write64( api, engine, API_ADDR_PARSER_MAC_3, 0xCFCECDCCCBCA );
    for i in range(0,8):
       string = "192.168.%d.%d" % (40, (30 + i))
       print(" - IP: %s" % string)
       ip = int(netaddr.IPAddress(string))
       engine_write32( api, engine, API_ADDR_PARSER_IPV4_0 + i, ip )
    engine_write32( api, engine, API_ADDR_PARSER_MAC_CTRL, 0x0f )
    engine_write32( api, engine, API_ADDR_PARSER_IPV4_CTRL, 0xff )

def nts_engine_enable(api, engine):
    print("Engine %d - Enable engine" % engine)
    engine_write32( api, engine, API_ADDR_ENGINE_CTRL, 0x1)

def nts_reset_dispatcher_api(api):
    print("Dispatcher - Reset counters")
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BYTES_RX, 0)
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_REC, 0)
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTS_DISCARDED,0 )

def nts_reset_extractor_api(api):
    print("Extractor - Reset counters")
    write32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_BYTES, 0)
    write32(api, EXTRACTOR_BASE, API_EXTRACTOR_ADDR_PACKETS, 0)

def nts_dispatcher_enable(api):
    print("Dispatcher - Enable")
    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_CTRL, 0x1)

def random32(f):
    b = f.read(4)
    if (len(b) != 4):
      raise Exception("WARNING: Read 4 bytes, returned length was: {}".format(len(b)))
    l = struct.unpack('I', b)
    if (len(l) != 1):
      raise Exception("WARNING: , returned length was: {}".format(len(b)))
    ll = l[0]
    return ll

def nts_init_noncegen(api, engine):
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
      key0 = random32(f)
      key1 = random32(f)
      key2 = random32(f)
      key3 = random32(f)
      context0 = random32(f)
      context1 = random32(f)
      context2 = random32(f)
      context3 = random32(f)
      context4 = random32(f)
      context5 = random32(f)
      f.close()
    print(" * Key: %08x%08x%08x%08x" % (key0, key1, key2, key3))
    print(" * Context %08x%08x%08x%08x%08x%08x" % (context0, context1, context2, context3, context4, context5))
    print(" * Label: %03x" % label)
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY0, key0)
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY1, key1)
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY2, key2)
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY3, key3)
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT0, context0 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT1, context1 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT2, context2 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT3, context3 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT4, context4 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT5, context5 )
    engine_write32( api, engine, API_ADDR_NONCEGEN_LABEL, label)
    engine_write32( api, engine, API_ADDR_NONCEGEN_CTRL, 0x00000001);

def nts_disable_keys(api, engine):
    print("Engine %d - Disable NTS keys" % engine)
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_CTRL, 0 )

def nts_set_current_key(api, engine, keynum):
    print("Engine %d - Set current NTS key: %x" % (engine, keynum))
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_CTRL ))
    CTRL_CURR_LOW = 16
    ctrl = 0
    mask1 = 0x3<<CTRL_CURR_LOW
    mask2 = 0xffffffff ^ mask1;
    k = 0
    k = (keynum & 0x3) << CTRL_CURR_LOW
    ctrl = engine_read32( api, engine, API_ADDR_KEYMEM_CTRL )
    ctrl = ctrl & mask2
    ctrl = ctrl | k
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_CTRL ))

def nts_install_key_256bit(api, engine, key_index, keyid, key=[]):
    addr_key = 0
    addr_keyid = 0
    ctrl = 0
    dictionary = {
      0: ( API_ADDR_KEYMEM_KEY0_START, API_ADDR_KEYMEM_KEY0_ID ),
      1: ( API_ADDR_KEYMEM_KEY1_START, API_ADDR_KEYMEM_KEY1_ID ),
      2: ( API_ADDR_KEYMEM_KEY2_START, API_ADDR_KEYMEM_KEY2_ID ),
      3: ( API_ADDR_KEYMEM_KEY3_START, API_ADDR_KEYMEM_KEY3_ID ),
    }

    ( addr_key, addr_keyid ) = dictionary.get( key_index )

    print("Engine %d - Install key, index = %x, address key = %x, address key id = %x" % (engine, key_index, addr_key, addr_keyid))

    ctrl = engine_read32( api, engine, API_ADDR_KEYMEM_CTRL )
    ctrl = ctrl & ~ (1<<key_index);

    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_CTRL ))

    engine_write32_checkreadback( api, engine, addr_keyid, keyid )

    for i in range(0, 8):
       addr = addr_key + i
       value = key[7-i]
       print(" * key[%x,%x]=engine[%x]=%x" % (key_index, i, addr, value))
       engine_write32_checkreadback( api, engine, addr,       value ) #256bit LSB
       engine_write32_checkreadback( api, engine, addr + 0x8, 0     ) #256bit MSB, all zeros

   #for i in range(7, -1, -1):
   #   addr = addr_key + i
   #   print(" * key[%d]: %08x" % (i, engine_read32( api, addr )))

    ctrl = ctrl | (1<<key_index)
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_CTRL ))


def nts_install_test_keys(api, engine):
    nts_install_key_256bit(api, engine, 0, 0x12345678, [ 0x9b71d224, 0xbd62f378, 0x5d96d46a, 0xd3ea3d73, 0x319bfbc2, 0x890caada, 0xe2dff725, 0x19673ca7 ] )
    nts_install_key_256bit(api, engine, 1, 0xb01dface, [ 0x2323c3d9, 0x9ba5c11d, 0x7c7acc6e, 0x14b8c5da, 0x0c466347, 0x5c2e5c3a, 0xdef46f73, 0xbcdec043 ] )
    nts_install_key_256bit(api, engine, 2, 0x13fe78e9, [ 0xfeb10c69, 0x9c6435be, 0x5a9ee521, 0xe40e420c, 0xf665d8f7, 0xa969302a, 0x63b9385d, 0x353ae43e ] )
    nts_set_current_key(api, engine, 1)


def nts_configure_ntp(api, engine, refid, rootdelay, rootdisp, tx_ofs, config):
    v_config = int(config, 16)
    v_refid = 0 # refid is zero-padded if length<4
    v_rootdelay = int(rootdelay, 16)
    v_rootdisp = int(rootdisp, 16)
    v_tx_ofs = int(tx_ofs, 16)

    if (len(refid) > 4):
      raise Exception("WARNING: refid {}: illegal length greater than 4".format(refid))

    for i in range(len(refid)):
      a = ord(refid[i])
      if ((a < 31) or (a > 127)):
        raise Exception("WARNING: refid {}: illegal character {} at position {}".format(refid, a, i))
      v_refid |= a << ((3-i)*8)

    engine_write32(api, engine, API_ADDR_CLOCK_CONFIG, v_config)
    engine_write32(api, engine, API_ADDR_CLOCK_ROOT_DELAY, v_rootdelay)
    engine_write32(api, engine, API_ADDR_CLOCK_ROOT_DISP, v_rootdisp)
    engine_write32(api, engine, API_ADDR_CLOCK_REF_ID, v_refid)
    engine_write32(api, engine, API_ADDR_CLOCK_TX_OFS, v_tx_ofs)

#-------------------------------------------------------------------
if __name__=="__main__":
    dump = False
    human = True
    ntp_refid = 'PPS'
    ntp_rootdelay = '1'
    ntp_rootdisp = '2'
    ntp_tx_ofs = '3'
    ntp_config = '00000000'
    reset_api_dispatcher = False
    reset_api_extractor = False
    setup = True

    options, remainder = getopt.getopt(sys.argv[1:], '', [
        'dump',
        'nohuman',
        'nosetup',
        'ntp_config=',
        'ntp_refid=',
        'ntp_rootdisp=',
        'ntp_tx_ofs=',
        'reset-api-dispatcher',
        'reset-api-extractor'
      ])
    for opt, arg in options:
      if (opt == '--dump'): dump = True
      if (opt == '--nohuman'): human = False
      if (opt == '--nosetup'): setup = False
      if (opt == '--ntp_config'): ntp_config = arg
      if (opt == '--ntp_refid'): ntp_refid = arg
      if (opt == '--ntp_rootdisp'): ntp_rootdisp = arg
      if (opt == '--ntp_tx_ofs'): ntp_tx_ofs = arg
      if (opt == '--reset-api-dispatcher'): reset_api_dispatcher = True
      if (opt == '--reset-api-extractor'): reset_api_extractor = True

    path = network_path(0)
    api = api_extension(path)

    if (dump):
      dump_nts_dispatcher_api(api)

    engines = detect_engines(api)

    if (dump):
      for engine in range(0, engines):
        dump_nts_engine_api(api, engine)

    if (human):
       check_version_board()

    if (setup):
      for engine in range(0, engines):
        init_arp(api, engine)
        nts_configure_ntp(api, engine, ntp_refid, ntp_rootdelay, ntp_rootdisp, ntp_tx_ofs, ntp_config)
        nts_disable_keys(api, engine)
        nts_init_noncegen(api, engine)
        nts_install_test_keys(api, engine)
      for engine in range(0, engines):
        nts_engine_enable(api, engine)
      nts_dispatcher_enable(api)

    if (reset_api_dispatcher):
      nts_reset_dispatcher_api(api)

    if (reset_api_extractor):
      nts_reset_extractor_api(api)

    if (human):
      check_nts_dispatcher_apis(api)

      check_nts_extractor_apis(api)

      for engine in range(0, engines):
        check_nts_engine_apis(api, engine)

    sys.exit(0)
