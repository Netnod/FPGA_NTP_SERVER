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
API_DISPATCHER_ADDR_BYTES_RX           = 0x00a
API_DISPATCHER_ADDR_COUNTER_FRAMES     = 0x020
API_DISPATCHER_ADDR_COUNTER_GOOD       = 0x022
API_DISPATCHER_ADDR_COUNTER_BAD        = 0x024
API_DISPATCHER_ADDR_COUNTER_DISPATCHED = 0x026
API_DISPATCHER_ADDR_COUNTER_ERROR      = 0x028
API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR    = 80
API_DISPATCHER_ADDR_BUS_STATUS         = 81
API_DISPATCHER_ADDR_BUS_DATA           = 82

API_ADDR_ENGINE_BASE        = 0x000
API_ADDR_ENGINE_NAME0       = API_ADDR_ENGINE_BASE
API_ADDR_ENGINE_NAME1       = API_ADDR_ENGINE_BASE + 1
API_ADDR_ENGINE_VERSION     = API_ADDR_ENGINE_BASE + 2

API_ADDR_DEBUG_BASE           = 0x180
API_ADDR_DEBUG_NTS_PROCESSED  = API_ADDR_DEBUG_BASE + 0
API_ADDR_DEBUG_NTS_BAD_COOKIE = API_ADDR_DEBUG_BASE + 2
API_ADDR_DEBUG_NTS_BAD_AUTH   = API_ADDR_DEBUG_BASE + 4
API_ADDR_DEBUG_NTS_BAD_KEYID  = API_ADDR_DEBUG_BASE + 6
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

BUS_READ  = 0x55
BUS_WRITE = 0xAA

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

def human64(api, base, offset):
    machine = read64(api, base, offset)
    return humanL(machine)

def engine_read32(api, addr):
    engine = 0 # TODO add as a parameter
    id_cmd_addr = (engine<<20) | (BUS_READ<<12) | (addr & 0xFFF)
    #print ("id_cmd_addr: %x" % id_cmd_addr );

    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_ID_CMD_ADDR, id_cmd_addr )
    write32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS, 1 )

    status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )
    while status:
          status = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_STATUS )

    result = read32( api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BUS_DATA )

    return result

def engine_read64(api, addr):
    msb = engine_read32(api, addr)
    lsb = engine_read32(api, addr + 1)
    word = (msb<<32) | lsb
    #print word
    #print hex(word)
    return word

def human_engine64(api, addr):
    return humanL(engine_read64(api, addr))

def check_nts_dispatcher_apis(api):
    print("Checking access to APIs in NTS")
    print("NAME0:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print("NAME1:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME + 1))
    print("VERSION:     0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION))
    print("")
    print("Core:    %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print("Version: %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION)) # bug :) version is 32bit...
    print("")
    print("DUMMY:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0xdeadbeef)
    print("DUMMY:       0x%08x (expected: deadbeef)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    write32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY, 0x1cec001d)
    print("DUMMY:       0x%08x (expected: 1cec001d)" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    print("")
    print("BYTES_RX:    0x%08x" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BYTES_RX))
    print("")
    print("FRAMES:        %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_FRAMES))
    print(" - GOOD:       %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_GOOD))
    print(" - BAD:        %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print(" - DISPATCHED: %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print("")
    print("ENGINE:");
    print(" Core:    %016x" % engine_read64(api, API_ADDR_ENGINE_NAME0));
    print(" Core:    %016x" % engine_read64(api, API_ADDR_CLOCK_NAME0));
    print(" Core:    %016x" % engine_read64(api, API_ADDR_KEYMEM_NAME0));


#-------------------------------------------------------------------
if __name__=="__main__":
    print("Setting up the server FPGA based NTP server.")
    print("============================================")
    check_version_board()

    path = network_path(0)
    api = api_extension(path)

    check_nts_dispatcher_apis(api)

    sys.exit(0)
