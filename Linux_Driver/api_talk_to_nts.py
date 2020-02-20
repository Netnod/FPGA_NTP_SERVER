#! /usr/bin/python

from xpcie import *
from struct import pack
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
API_DISPATCHER_ADDR_BYTES_RX           = 0x00a
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

API_ADDR_ENGINE_BASE        = 0x000
API_ADDR_ENGINE_NAME0       = API_ADDR_ENGINE_BASE
API_ADDR_ENGINE_NAME1       = API_ADDR_ENGINE_BASE + 1
API_ADDR_ENGINE_VERSION     = API_ADDR_ENGINE_BASE + 2

API_ADDR_DEBUG_BASE           = 0x180
API_ADDR_DEBUG_NTS_PROCESSED  = API_ADDR_DEBUG_BASE + 0
API_ADDR_DEBUG_NTS_BAD_COOKIE = API_ADDR_DEBUG_BASE + 2
API_ADDR_DEBUG_NTS_BAD_AUTH   = API_ADDR_DEBUG_BASE + 4
API_ADDR_DEBUG_NTS_BAD_KEYID  = API_ADDR_DEBUG_BASE + 6
API_ADDR_DEBUG_NAME           = API_ADDR_DEBUG_BASE + 8
API_ADDR_DEBUG_SYSTICK32      = API_ADDR_DEBUG_BASE + 9
API_ADDR_DEBUG_ERR_CRYPTO     = API_ADDR_DEBUG_BASE + 0x20
API_ADDR_DEBUG_ERR_TXBUF      = API_ADDR_DEBUG_BASE + 0x22

API_ADDR_CLOCK_BASE         = 0x010
API_ADDR_CLOCK_NAME0        = API_ADDR_CLOCK_BASE + 0
API_ADDR_CLOCK_NAME1        = API_ADDR_CLOCK_BASE + 1

API_ADDR_KEYMEM_BASE        = 0x080
API_ADDR_KEYMEM_NAME0       = API_ADDR_KEYMEM_BASE + 0
API_ADDR_KEYMEM_NAME1       = API_ADDR_KEYMEM_BASE + 1
API_ADDR_KEYMEM_ADDR_CTRL   = API_ADDR_KEYMEM_BASE + 0x08
API_ADDR_KEYMEM_KEY0_ID     = API_ADDR_KEYMEM_BASE + 0x10
API_ADDR_KEYMEM_KEY0_LENGTH = API_ADDR_KEYMEM_BASE + 0x11
API_ADDR_KEYMEM_KEY0_START  = API_ADDR_KEYMEM_BASE + 0x40
API_ADDR_KEYMEM_KEY0_END    = API_ADDR_KEYMEM_BASE + 0x4f
API_ADDR_KEYMEM_KEY1_ID     = API_ADDR_KEYMEM_BASE + 0x12
API_ADDR_KEYMEM_KEY1_LENGTH = API_ADDR_KEYMEM_BASE + 0x13
API_ADDR_KEYMEM_KEY1_START  = API_ADDR_KEYMEM_BASE + 0x50
API_ADDR_KEYMEM_KEY1_END    = API_ADDR_KEYMEM_BASE + 0x5f
API_ADDR_KEYMEM_KEY2_ID     = API_ADDR_KEYMEM_BASE + 0x14
API_ADDR_KEYMEM_KEY2_LENGTH = API_ADDR_KEYMEM_BASE + 0x15
API_ADDR_KEYMEM_KEY2_START  = API_ADDR_KEYMEM_BASE + 0x60
API_ADDR_KEYMEM_KEY2_END    = API_ADDR_KEYMEM_BASE + 0x6f
API_ADDR_KEYMEM_KEY3_ID     = API_ADDR_KEYMEM_BASE + 0x16
API_ADDR_KEYMEM_KEY3_LENGTH = API_ADDR_KEYMEM_BASE + 0x17
API_ADDR_KEYMEM_KEY3_START  = API_ADDR_KEYMEM_BASE + 0x70
API_ADDR_KEYMEM_KEY3_END    = API_ADDR_KEYMEM_BASE + 0x7f

API_ADDR_NONCEGEN_BASE     = 0x20
API_ADDR_NONCEGEN_NAME     = API_ADDR_NONCEGEN_BASE + 0
API_ADDR_NONCEGEN_CTRL     = API_ADDR_NONCEGEN_BASE + 0x08
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

API_ADDR_PRASER_BASE         = 0x200;
API_ADDR_PARSER_NAME0        = API_ADDR_PRASER_BASE + 0x00;
API_ADDR_PARSER_NAME1        = API_ADDR_PRASER_BASE + 0x01;
API_ADDR_PARSER_VERSION      = API_ADDR_PRASER_BASE + 0x02;
API_ADDR_PARSER_STATE        = API_ADDR_PRASER_BASE + 0x10;
API_ADDR_PARSER_STATE_CRYPTO = API_ADDR_PRASER_BASE + 0x12;
API_ADDR_PARSER_ERROR_STATE  = API_ADDR_PRASER_BASE + 0x13;
API_ADDR_PARSER_ERROR_COUNT  = API_ADDR_PRASER_BASE + 0x14;

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
      raise Exception("WARNING: invalid dispatcher name: {}" % disp_name)
    if (disp_version < 0x302e3032L):
      raise Exception("WARNING: invalid dispatcher version: {}" % disp_version)
    if (disp_engines < 1):
      raise Exception("WARNING: invalid dispatcher engine count: {}" % disp_engines)
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
    print("Checking access to APIs in NTS")
    print("")
    print("")
    print("")
    print("Core:    %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print("Version: %s" % human32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION))
    print("")
    print("NTP_TIME:    0x%016x" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NTPTIME))
    print("")
    print("DUMMY:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0xdeadbeef)
    print("DUMMY:       0x%08x (expected: deadbeef)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0x1cec001d)
    print("DUMMY:       0x%08x (expected: 1cec001d)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    print("")
    print("BYTES_RX:    %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BYTES_RX))
    print("SYSTICK32:   %d" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_SYSTICK32))
    print("")
    print("FRAMES:");
    print(" - DETECTED:   %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_FRAMES))
    print(" - GOOD:       %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_GOOD))
    print(" - BAD:        %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print(" - DISPATCHED: %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_DISPATCHED))
    print("")

def check_nts_engine_apis(api, engine):
    print("ENGINE %x:" % engine);
    print("  - Cores:")
    print("   - Core:  %s" % engine_human64(api, engine, API_ADDR_ENGINE_NAME0))
    print("   - Core:  %s" % engine_human64(api, engine, API_ADDR_CLOCK_NAME0))
    print("   - Core:  %s" % engine_human32(api, engine, API_ADDR_DEBUG_NAME))
    print("   - Core:  %s" % engine_human64(api, engine, API_ADDR_KEYMEM_NAME0))
    print("   - Core:  %s" % engine_human64(api, engine, API_ADDR_NONCEGEN_NAME))
    print("   - Core:  %s" % engine_human64(api, engine, API_ADDR_PARSER_NAME0))
    print("  - Debug");
    print("   - NTS");
    print("     - Processed:  %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_PROCESSED))
    print("     - Bad cookie: %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_COOKIE))
    print("     - Bad auth:   %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_AUTH))
    print("     - Bad keyid:  %d" % engine_read64(api, engine, API_ADDR_DEBUG_NTS_BAD_KEYID))
    print("   - Error counters");
    print("     - Crypto:     %d" % engine_read64(api, engine, API_ADDR_DEBUG_ERR_CRYPTO))
    print("     - TxBuf:      %d" % engine_read64(api, engine, API_ADDR_DEBUG_ERR_TXBUF))
    print("   - Other debug messurements:")
    print("     - Systick32:  %d" % engine_read32(api, engine, API_ADDR_DEBUG_SYSTICK32))
    print("  - Parser");
    print("    - State:         0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_STATE));
    print("    - State Crypto:  0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_STATE_CRYPTO))
    print("    - Error State:   0x%0x" % engine_read32(api, engine, API_ADDR_PARSER_ERROR_STATE))
    print("    - Error Counter: %0d" % engine_read32(api, engine, API_ADDR_PARSER_ERROR_COUNT))
    print("")

def nts_init_noncegen(api, engine):
    print("Init nonce generator")
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY0, 0x5eb63bbb); # TODO: Seed noncegen with Randomness
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY1, 0xe01eeed0);
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY2, 0x93cb22bb);
    engine_write32( api, engine, API_ADDR_NONCEGEN_KEY3, 0x8f5acdc3);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT0, 0x6adfb183);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT1, 0xa4a2c94a);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT2, 0x2f92dab5);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT3, 0xade762a4);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT4, 0x7889a5a1);
    engine_write32( api, engine, API_ADDR_NONCEGEN_CONTEXT5, 0xdeadbeef);
    engine_write32( api, engine, API_ADDR_NONCEGEN_LABEL, 0x00000000); # TODO: Use 16B engine counter as nonce label
    engine_write32( api, engine, API_ADDR_NONCEGEN_CTRL, 0x00000001);

def nts_disable_keys(api, engine):
    print("Engine %d - Disable NTS keys" % engine)
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_ADDR_CTRL, 0 )

def nts_set_current_key(api, engine, keynum):
    print("Engine %d - Set current NTS key: %x" % (engine, keynum))
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL ))
    CTRL_CURR_LOW = 16
    ctrl = 0
    mask1 = 0x3<<CTRL_CURR_LOW
    mask2 = 0xffffffff ^ mask1;
    k = 0
    k = (keynum & 0x3) << CTRL_CURR_LOW
    ctrl = engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL )
    ctrl = ctrl & mask2
    ctrl = ctrl | k
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_ADDR_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL ))

def nts_install_key_256bit(api, engine, key_index, keyid, key=[]):
    addr_key = 0
    addr_keyid = 0
    addr_length = 0
    ctrl = 0
    dictionary = {
      0: ( API_ADDR_KEYMEM_KEY0_START, API_ADDR_KEYMEM_KEY0_ID, API_ADDR_KEYMEM_KEY0_LENGTH ),
      1: ( API_ADDR_KEYMEM_KEY1_START, API_ADDR_KEYMEM_KEY1_ID, API_ADDR_KEYMEM_KEY1_LENGTH ),
      2: ( API_ADDR_KEYMEM_KEY2_START, API_ADDR_KEYMEM_KEY2_ID, API_ADDR_KEYMEM_KEY2_LENGTH ),
      3: ( API_ADDR_KEYMEM_KEY3_START, API_ADDR_KEYMEM_KEY3_ID, API_ADDR_KEYMEM_KEY3_LENGTH ),
    }

    ( addr_key, addr_keyid, addr_length ) = dictionary.get( key_index )

    print("Engine %d - Install key, index = %x, address key = %x, address key id = %x, address key length = %x" % (engine, key_index, addr_key, addr_keyid, addr_length))

    ctrl = engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL )
    ctrl = ctrl & ~ (1<<key_index);

    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_ADDR_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL ))

    engine_write32_checkreadback( api, engine, addr_keyid, keyid )
    engine_write32_checkreadback( api, engine, addr_length, 0 )

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
    engine_write32_checkreadback( api, engine, API_ADDR_KEYMEM_ADDR_CTRL, ctrl )
    print(" * key ctrl: %08x" % engine_read32( api, engine, API_ADDR_KEYMEM_ADDR_CTRL ))


#-------------------------------------------------------------------
if __name__=="__main__":
    path = network_path(0)
    api = api_extension(path)

    dump_nts_dispatcher_api(api)
    engines = detect_engines(api)

    for engine in range(0, engines):
      dump_nts_engine_api(api, engine)

    check_version_board()

    for engine in range(0, engines):
      nts_disable_keys(api, engine)
      nts_init_noncegen(api, engine)
      nts_install_key_256bit(api, engine, 0, 0x12345678, [ 0x9b71d224, 0xbd62f378, 0x5d96d46a, 0xd3ea3d73, 0x319bfbc2, 0x890caada, 0xe2dff725, 0x19673ca7 ] )
      nts_install_key_256bit(api, engine, 1, 0xb01dface, [ 0x2323c3d9, 0x9ba5c11d, 0x7c7acc6e, 0x14b8c5da, 0x0c466347, 0x5c2e5c3a, 0xdef46f73, 0xbcdec043 ] )
      nts_install_key_256bit(api, engine, 2, 0x13fe78e9, [ 0xfeb10c69, 0x9c6435be, 0x5a9ee521, 0xe40e420c, 0xf665d8f7, 0xa969302a, 0x63b9385d, 0x353ae43e ] )
      nts_set_current_key(api, engine, 1)

    check_nts_dispatcher_apis(api)
    for engine in range(0, engines):
      check_nts_engine_apis(api, engine)

    sys.exit(0)
