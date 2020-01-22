#! /usr/bin/python

from xpcie import *
from struct import pack
import time
import random
import datetime
import netaddr
import sys

VERBOSE = True

#-------------------------------------------------------------------
#-------------------------------------------------------------------
def check_version_board():
    print("Checking build information about the FPGA and reading board temp.")
    ur = user_regs()
    build_time = datetime.datetime.fromtimestamp(ur.read(ur.build_time)).strftime('%Y-%m-%d %H:%M:%S')
    print "FPGA build at " + build_time + " (%u)" % ur.read(ur.build_time)

    build_info = ur.read(ur.build_info)
    vivado = "%u.%u" % (((build_info >> 8) & 0xffff), (build_info & 0xff))
    git_hash = "%08x" % ur.read(ur.git_hash)
    if build_info & (1<<24):
        git_hash += '-dirty'
    print "FPGA built with Vivado %s from git hash %s" % (vivado, git_hash)

    die_temp = round((ur.read(ur.die_temp) * 504.0 / 1024.0) - 273.0, 1)
    print("FPGA Die temperature is " + str(die_temp) + "C.")
    print("")


#-------------------------------------------------------------------
#-------------------------------------------------------------------
def setup_clocks():
    print("Setting up the NTP clocks.")

    # Clock A
    aa = ntp_clock('A')

    aa.get_fracs()
    aa.get_secs()

    # Set NTP clock time to system clock
    diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
    timestamp = diff.days*24*60*60+diff.seconds+1
    aa.set_secs(timestamp)

    # Clock B
    bb = ntp_clock('B')
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


#-------------------------------------------------------------------
#-------------------------------------------------------------------
def setup_network_paths():
    apis = []
    
    print("Setting up network paths")
    diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
    timestamp = diff.days*24*60*60+diff.seconds+1

    for i in range(4):
        path = network_path(i)
        api = api_extension(path)
        apis.append(api)
        
        # Assign a MAC address that hopefully won't collide with anything else
#        if VERBOSE:
#            print("MAC-address 0: 52:5A:2C:18:2E:%02x" % (0x80 + i))
#        path.set_mac( 0,'52:5A:2C:18:2E:%02x' % (0x80 + i))
#        if VERBOSE:
#            print("MAC-address 1: 52:5A:2C:18:2E:%02x" % (0x90 + i))
#        path.set_mac( 1,'52:5A:2C:18:2E:%02x' % (0x90 + i))
#        if VERBOSE:
#            print("MAC-address 2: 52:5A:2C:18:2E:%02x" % (0xa0 + i))
#        path.set_mac( 2,'52:5A:2C:18:2E:%02x' % (0xa0 + i))
#        if VERBOSE:
#            print("MAC-address 3: 52:5A:2C:18:2E:%02x" % (0xb0 + i))
#        path.set_mac( 3,'52:5A:2C:18:2E:%02x' % (0xb0 + i))
#
#        # Use an IPv4 address from a private range
#        if VERBOSE:
#            print("IPv4-address 0: 192.168.40.%d" % (1 + i))
#        path.set_ipv4(0,'192.168.40.%d' % (1 + i))
#        if VERBOSE:
#            print("IPv4-address 1: 192.168.40.%d" % (11 + i))
#        path.set_ipv4(1,'192.168.40.%d' % (11 + i))
#        if VERBOSE:
#            print("IPv4-address 2: 192.168.40.%d" % (21 + i))
#        path.set_ipv4(2,'192.168.40.%d' % (21 + i))
#        if VERBOSE:
#            print("IPv4-address 3: 192.168.40.%d" % (31 + i))
#        path.set_ipv4(3,'192.168.40.%d' % (31 + i))
#
#        # Use an IPv6 address from a private range
#        if VERBOSE:
#            print("IPv6-address: fd75:502f:e221:ddcf::%d" % (10 + i))
#        path.set_ipv6(0,'fd75:502f:e221:ddcf::%d' % (10 + i))

        config = (path.ntp4_en | path.arp_en | path.ping4_en | path.trcrt4_en |
                  path.ntp6_en | path.nd_en | path.ping6_en | path.trcrt6_en |
                  path.a_clock |
                  path.mac_check |
                  path.ip_check |
                  path.tx_en |
                  path.s10GB_LR)
        path.write(path.gen_config, config)
        print "PATH %d: gen_config 0x%08x" % (i, config)

        path.write(path.ntp_config, (-18 & 0xff)*path.precision)
        path.write(path.ntp_root_delay, 0)   # TBD
        path.write(path.ntp_root_disp, 2)
        path.write(path.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))
        path.write(path.ntp_ref_ts_0, 0)
        path.write(path.ntp_ref_ts_1, timestamp)
        path.write(path.ntp_rx_ofs, 0)
        path.write(path.ntp_tx_ofs, 0)

        time.sleep(1)

        # Check path PHY status.
        for i in range(4):
            path = network_path(i)
            print "XPHY %d status: 0x%08x" % (i, path.read(path.xphy_status))
    print("")
    return apis


#-------------------------------------------------------------------
#-------------------------------------------------------------------
def check_apis(apis):
    print("Checking APIs")
    for i in range(len(apis)):
        api = apis[i]
        print("API %d Name and version:" % i)
        print("NAME0:   0x%08x" % api.read(0x00000000))
        print("NAME1:   0x%08x" % api.read(0x00000001))
        print("VERSION: 0x%08x" % api.read(0x00000002))
        print("")
    print("")

    print("Testing read and write access using the sum.")
    api0 = apis[0]
    # For API0 we want to test that we can read and write.
    a = random.randrange(1<<32)
    b = random.randrange(1<<32)

    api0.write(0x00000010, a)
    api0.write(0x00000011, b)

    # Read back and compare with expected values.
    ra = api0.read(0x00000010)
    rb = api0.read(0x00000011)
    rc = api0.read(0x00000012)
    print("0x%08x + 0x%08x = 0x%08x" % (ra, rb, rc))
    print("")


#-------------------------------------------------------------------
#-------------------------------------------------------------------
def check_pp_apis(apis):
    print("Checking access to APIs in PP")
    for i in range(len(apis)):
        api = apis[i]
        print("API %d Name and version:" % i)
        print("NAME0:   0x%08x" % api.read(0x10000000))
        print("NAME1:   0x%08x" % api.read(0x10000001))
        print("VERSION: 0x%08x" % api.read(0x10000002))
        print("")
    print("")

    
#-------------------------------------------------------------------
# Set all MAC-, IPV4- and IPv6-addresses via the API extension.
#-------------------------------------------------------------------
def set_api_addr(apis):
    for p in range(4):
        print("Setting upp addresses for port%d:" % p)
        print("MAC addresses: 52:5A:2C:18:2E:%02x -- 52:5A:2C:18:2E:%02x" %((0x80 + 0x10*p), (0x83 + 0x10*p)))
        for i in range(4):
            apis[0].write((0x10000040 + 2*i), (0x2C182E80 + (0x10*p + i)))
            apis[0].write((0x10000041 + 2*i), 0x0000525A)
        print("IPv4 192.168.%d.20 -- 192.168.%d.27" % ((40 + p), (40 + p)))
        for i in range(8):
            apis[p].write((0x10000050 + i), int(netaddr.IPAddress("192.168.%d.%d" % ((40 + p), (20 + i)))))
        print("")

        
#-------------------------------------------------------------------
# Access the ROSC and then dump loads of entropy for testing.
#-------------------------------------------------------------------
def test_entropy(apis, num_words, ent_file):
    print("Testing the entropy source in API0")
    api0 = apis[0]
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
    
    
#-------------------------------------------------------------------
#-------------------------------------------------------------------
if __name__=="__main__":
    print("Setting up the server FPGA based NTP server.")
    print("============================================")
    check_version_board()
    setup_clocks()    
    my_apis = setup_network_paths()
    check_apis(my_apis)
    check_pp_apis(my_apis)
    set_api_addr(my_apis)
    
#    test_entropy(my_apis, 100000000, "ent_data.bin")
    sys.exit(0)    
