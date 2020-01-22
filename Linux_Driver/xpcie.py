#! /usr/bin/python

import fcntl
import array
import time
import struct
import netaddr

DEBUG = 0

# Globals
xpcie = open("/dev/xpcie")

# Note: "home cooked" iotcl stuff.
magix = ord('X') << 24 # to generate unique IOTCL values
iow   =  1 << 23       # enable register write

class xpcie_class:

    no_regs    = 0
    p_ofs      = 0

    # Read a register
    def read(self, reg):
        if (reg >= 0 and reg < self.no_regs):
            res = array.array('L', [0])
            fcntl.ioctl(xpcie, magix + self.p_ofs + reg*4, res)
            return res.tolist()[0]
        else:
            raise ValueError

    # Write a register
    def write(self, reg, val):
        if (reg >= 0 and reg < self.no_regs):
            val = val & (2**32-1) # truncate to 32 bits
            if val < 2**31:
                fcntl.ioctl(xpcie, magix + self.p_ofs + iow + reg*4, val)
            else:
                fcntl.ioctl(xpcie, magix + self.p_ofs + iow + reg*4, val-2**32) # unsigned to signed
        else:
            raise ValueError


class ntp_clock(xpcie_class):
    # offsets need to match xpcie.h/c

    axi_base     =  0 # Byte address
    a_ofs        =  0
    b_ofs        =  0x1000

    time_frac  = 0  # Word offset
    time_sec   = 1
    new_sec    = 2
    sec_ctrl   = 3
    leap_sec   = 4
    leap_ctrl  = 5
    pll_status = 6
    led_ctrl   = 7

    no_regs    = 8

    def __init__(self, port):
        if port == 'A':
            self.p_ofs = self.axi_base + self.a_ofs
        elif port == 'B':
            self.p_ofs = self.axi_base + self.b_ofs
        else:
            raise ValueError

    # Read binary fractions of second
    def get_fracs(self):
        return self.read(self.time_frac)

    # Read seconds
    def get_secs(self):
        return self.read(self.time_sec)

    # Set seconds
    def set_secs(self, val):
        # make sure there is some margin in time
        if (self.get_fracs() >> 28) < 14:
            self.write(self.new_sec, val)
            self.write(self.sec_ctrl, 1)
            time.sleep(1.0)
        else:
            # skip over second
            #print "skip"
            time.sleep(3.0/16)
            self.write(self.new_sec, val+1)
            self.write(self.sec_ctrl, 1)

    # Set leap second. nothing fancy here
    def set_leap(self, val, inc):
        if inc in (0,1):
            self.write(self.leap_sec, val)
            self.write(self.leap_ctrl, inc*2 + 1)
        else:
            raise ValueError

    # PLL lock status
    def pll_locked(self):
        return ((self.read(self.pll_status) >> 30 ) & 1) == 1

    #  pps pulses in sync
    def pps_sync_ok(self):
        return ((self.read(self.pll_status) >> 31 ) & 1) == 1

    # PLL/PPS sync status Note each step corresponds to 1/56 of PLL vco period => 640MHz => 28ps.
    def sync_status(self):
        return self.read(self.pll_status) % 1024

    # Control some leds
    def set_leds(self, val):
        if val > 3:
            raise ValueError
        self.write(self.led_ctrl, val)

#-------------------------------------------------------------------------------------------------------#

class network_path(xpcie_class):
    # offsets need to match xpcie.h/c
    net_path_axi_base =  0x2000  # Byte address
    net_path_ofs      =  0x1000

    gen_config             =  0 # Word offset
    mac_addr0_0            =  1
    mac_addr0_1            =  2
    mac_addr1_0            =  3
    mac_addr1_1            =  4
    mac_addr2_0            =  5
    mac_addr2_1            =  6
    mac_addr3_0            =  7
    mac_addr3_1            =  8
    ipv4_addr0             =  9
    ipv4_addr1             = 10
    ipv4_addr2             = 11
    ipv4_addr3             = 12
    ipv6_addr0_0           = 13
    ipv6_addr0_1           = 14
    ipv6_addr0_2           = 15
    ipv6_addr0_3           = 16
    ipv6_addr1_0           = 17
    ipv6_addr1_1           = 18
    ipv6_addr1_2           = 19
    ipv6_addr1_3           = 20
    ipv6_addr2_0           = 21
    ipv6_addr2_1           = 22
    ipv6_addr2_2           = 23
    ipv6_addr2_3           = 24
    ipv6_addr3_0           = 25
    ipv6_addr3_1           = 26
    ipv6_addr3_2           = 27
    ipv6_addr3_3           = 28
    ntp_config             = 29
    ntp_root_delay         = 30
    ntp_root_disp          = 31
    ntp_ref_id             = 32
    ntp_ref_ts_0           = 33
    ntp_ref_ts_1           = 34
    ntp_rx_ofs             = 35
    ntp_tx_ofs             = 36
    ipv4_arp_pass_cnt      = 37
    ipv4_ntp_pass_cnt      = 38
    ipv6_nd_pass_cnt       = 39
    ipv6_ntp_pass_cnt      = 40
    ipv4_arp_drop_cnt      = 41
    ipv4_ntp_drop_cnt      = 42
    ipv4_gen_drop_cnt      = 43
    ipv6_nd_drop_cnt       = 44
    ipv6_ntp_drop_cnt      = 45
    ipv6_gen_drop_cnt      = 46
    bad_mac_drop_cnt       = 47
    eth_gen_drop_cnt       = 48
    bad_ipv4_nbr_cnt       = 49
    bad_ipv6_nbr_cnt       = 50
    bad_eth_frame_cnt      = 51
    tx_blocked_cnt         = 52
    bad_md5_key_cnt        = 53
    bad_sha1_key_cnt       = 54
    ipv4_ntp_md5_pass_cnt  = 55
    ipv4_ntp_sha1_pass_cnt = 56
    ipv6_ntp_md5_pass_cnt  = 57
    ipv6_ntp_sha1_pass_cnt = 58
    bad_md5_dgst_cnt       = 59   # packets dropped due to bad signature
    bad_sha1_dgst_cnt      = 60
    ping4_pass_cnt         = 61
    ping6_pass_cnt         = 62
    ping4_drop_cnt         = 63
    ping6_drop_cnt         = 64
    trcrt4_pass_cnt        = 65
    trcrt6_pass_cnt        = 66
    trcrt4_drop_cnt        = 67
    trcrt6_drop_cnt        = 68
    xphy_status            = 69
    nts_api_command        = 70
    nts_api_status         = 71
    nts_api_address        = 72
    nts_api_write_data     = 73
    nts_api_read_data      = 74

    no_regs =  75

    # gen config bits
    arp_en    =  2**0
    ntp4_en   =  2**1
    nd_en     =  2**2
    ntp6_en   =  2**3
    mac_check =  2**4
    ip_check  =  2**5
    ping4_en  =  2**6
    ping6_en  =  2**7
    trcrt4_en =  2**8
    trcrt6_en =  2**9
    ttl       =  2**16     # TTL 8 bits
    a_clock   =  0*2**24   # 0=>clock A or 1=>B
    b_clock   =  1*2**24
    tx_en     =  2**29     # TX (laser output) enable
    s10GB_ER  =  0*2**30   # PMA PMD type
    s10GB_LR  =  1*2**30
    s10GB_SR  =  2*2**30
    # ntp config bits
    precision =  2**0
    poll      =  2**8
    stratum   =  2**16
    mode      =  2**24
    VN        =  2**27
    LI        =  2**30

    #--------------------

    def __init__(self, port):
        if port < 4 and port >= 0:
            self.p_ofs = self.net_path_axi_base + port*self.net_path_ofs
        else:
            raise ValueError

    def set_ipv4(self, N, ip_no):
        self.write(self.ipv4_addr0+N, int(netaddr.IPAddress(ip_no)))

    def get_ipv4(self, N):
        return str(netaddr.IPAddress(self.read(self.ipv4_addr0+N)))

    def set_ipv6(self, N, ip_no):
        long_ip = int(netaddr.IPAddress(ip_no,6))
        self.write(self.ipv6_addr0_0+N*4, long_ip & 0xffffffff)
        self.write(self.ipv6_addr0_1+N*4, (long_ip >> 32) & 0xffffffff)
        self.write(self.ipv6_addr0_2+N*4, (long_ip >> 64) & 0xffffffff)
        self.write(self.ipv6_addr0_3+N*4, (long_ip >> 96) & 0xffffffff)

    def get_ipv6(self, N):
        return str(netaddr.IPAddress((self.read(self.ipv6_addr0_3+N*4)<<96)+(self.read(self.ipv6_addr0_2+N*4)<<64)+
                                     (self.read(self.ipv6_addr0_1+N*4)<<32)+self.read(self.ipv6_addr0_0+N*4),6))

    def set_mac(self, N, mac):
        long_mac = int(netaddr.EUI(mac)) # 48 bits
        self.write(self.mac_addr0_0+N*2, long_mac & 0xffffffff)
        self.write(self.mac_addr0_1+N*2, long_mac >> 32)

    def get_mac(self, N):
        return str(netaddr.EUI((self.read(self.mac_addr0_1+N*2) << 32) + self.read(self.mac_addr0_0+N*2)))


#-------------------------------------------------------------------------------------------------------#
# The MDIO master is implemented in a Xilinx etherlite block.

class mdio(xpcie_class):

    axi_base =  0x107E4 # Byte address

    mdioaddr = 0 # Word offset
    mdiowr   = 1
    mdiord   = 2
    mdioctrl = 3

    no_regs =  4


    #--------------------

    def __init__(self):
        self.p_ofs = self.axi_base


#-------------------------------------------------------------------------------------------------------#

class user_regs(xpcie_class):
    # offsets need to match xpcie.h/c
    axi_base =  0x6000  # Byte address

    VCCINT_power      =  0 # Word offset
    VCCAUX_power      =  1
    VCC3v3_power      =  2
#   reserved          =  3
    VCC2v5_power      =  4
    VCC1v5_power      =  5
    MGT_AVCC_power    =  6
    MGT_AVTT_power    =  7
    VCC_AUXIO_power   =  8
#   reserved          =  9
    MGT_VCCAUX_power  = 10
    VCC1v8_power      = 11
    die_temp          = 12
    build_time        = 13
    pcie_link         = 14
    build_info        = 15
    git_hash          = 16

    no_regs =  17

    def __init__(self):
        self.p_ofs = self.axi_base


#-------------------------------------------------------------------------------------------------------#

class key_mem(xpcie_class):
    # offsets need to match xpcie.h/c
    net_path_axi_base =  0x20000  # Byte address
    net_path_ofs      =  0x10000

    no_regs =  8192       # words in keymem
    no_keys =  no_regs/8  # 256 bits

    #--------------------

    def __init__(self, port):
        if port < 4 and port >= 0:
            self.p_ofs = self.net_path_axi_base + port*self.net_path_ofs
        else:
            raise ValueError

    def set_key(self, key_id, int_key):
        if key_id >= self.no_keys:
            raise ValueError

        for i in range(5):
            #print (int_key >> (32*i)) & 0xffffffff
            self.write(key_id*8 + i, (int_key >> (32*i)) &  0xffffffff)
        self.write(key_id*8 + 5, 0)
        self.write(key_id*8 + 6, 0)

    def set_md5_key(self, key_id, key):
        # note key must be in raw format

        if len(key) != 20:
            raise ValueError

        int_key = 0
        for x in key:
            int_key = (int_key << 8) + ord(x)

        self.set_key(key_id, int_key)
        self.write(key_id*8 + 7, 1<<31)  # set Key valid and MD5

    def set_sha1_key(self, key_id, key):
        # note key must be in hex format

        if len(key) != 40:
            raise ValueError

        int_key = int(key,16)

        self.set_key(key_id, int_key)
        self.write(key_id*8 + 7, 3<<30)  # set Key valid and SHA1

    def get_key(self, key_id):
        if key_id >= self.no_keys:
            raise ValueError

        int_key = 0
        for i in range(8):
            int_key = (int_key << 32) + self.read(key_id*8 + 7-i)
        return int_key

    def del_key(self, key_id):
        if key_id >= self.no_keys:
            raise ValueError
        for i in range(8):
            self.write(key_id*8+i, 0)

#-------------------------------------------------------------------------------------------------------#

class api_extension(object):
    COMMAND_IDLE = 0x0
    COMMAND_READ = 0x1
    COMMAND_WRITE = 0x3

    STATUS_BUSY  = 0x0
    STATUS_READY = 0x1
    
    def __init__(self, path):
        self.path = path
        self.path.write(self.path.nts_api_command, 0)

        
    def read(self, address):
        if DEBUG:
            print "api[0x%08x] ->" % address,
        self.path.write(self.path.nts_api_address, address)
        self.path.write(self.path.nts_api_command, self.COMMAND_READ)
        for i in range(10):
            status = self.path.read(self.path.nts_api_status)
            if status & self.STATUS_READY:
                break
            if DEBUG:
                print status,
            time.sleep(0.001)
        else:
            print "read timeout"
            return

        data = self.path.read(self.path.nts_api_read_data)
        self.path.write(self.path.nts_api_command, self.COMMAND_IDLE)
        if DEBUG:
            print "0x%08x" % data
        return data

    
    def write(self, address, data):
        if DEBUG:
            print "api[0x%04x] <-" % address,
        self.path.write(self.path.nts_api_address, address)
        self.path.write(self.path.nts_api_write_data, data)
        self.path.write(self.path.nts_api_command, self.COMMAND_WRITE)
        for i in range(10):
            status = self.path.read(self.path.nts_api_status)
            if status & self.STATUS_READY:
                break
            if DEBUG:
                print status,
            time.sleep(0.001)
        else:
            print "write timeout"
            return
        self.path.write(self.path.nts_api_command, self.COMMAND_IDLE)
        if DEBUG:
            print "0x%08x" % data
