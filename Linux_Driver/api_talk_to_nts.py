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

def read32(api, base, offset):
    return api.read(base + offset)

def read64(api, base, offset):
    msb = read32(api, base, offset)
    lsb = read32(api, base, offset + 1)
    word = (msb<<32) | lsb
    return word

def humanL(a):
    return hex(a)[2:][:-1].decode("hex")

def human64(api, base, offset):
    machine = read64(api, base, offset)
    return humanL(machine)

def check_nts_dispatcher_apis(api):
    print("Checking access to APIs in NTS")
    print("NAME0:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print("NAME1:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME + 1))
    print("VERSION:     0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION))
    print("")
    print("Core:    %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_NAME))
    print("Version: %s" % human64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_VERSION))
    print("")
    print("DUMMY:       0x%08x" % read32(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_DUMMY))
    print("BYTES_RX:    0x%08x" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_BYTES_RX))
    print("")
    print("FRAMES:        %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_FRAMES))
    print(" - GOOD:       %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_GOOD))
    print(" - BAD:        %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print(" - DISPATCHED: %d" % read64(api, DISPATCHER_BASE, API_DISPATCHER_ADDR_COUNTER_BAD))
    print("")

#-------------------------------------------------------------------
if __name__=="__main__":
    print("Setting up the server FPGA based NTP server.")
    print("============================================")
    check_version_board()

    path = network_path(0)
    api = api_extension(path)

    check_nts_dispatcher_apis(api)

    sys.exit(0)
