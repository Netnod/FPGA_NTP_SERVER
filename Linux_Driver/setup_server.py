#! /usr/bin/python
from xpcie import *
import time
import random
import datetime

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
print "FPGA Die temperature is " + str(die_temp) + "C."

aa = ntp_clock('A')

aa.get_fracs()
aa.get_secs()

# Set NTP clock time to system clock
diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
timestamp = diff.days*24*60*60+diff.seconds+1
aa.set_secs(timestamp)

bb = ntp_clock('B')

bb.get_fracs()
bb.get_secs()

# Set NTP clock time to system clock
diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
timestamp = diff.days*24*60*60+diff.seconds+1
bb.set_secs(timestamp)

for i in range(3):
    print "pll_status 0x%08x 0x%08x" % (
        aa.read(aa.pll_status), bb.read(bb.pll_status))
    time.sleep(0.1)

paths = [ ]

for i in range(4):
    path = network_path(i)
    # Assign a MAC address that hopefully won't collide with anything else
    path.set_mac( 0,'52:5A:2C:18:2E:%02x' % (0xf0 + i))
    # Use an IPv4 address from a private range
    path.set_ipv4(0,'192.168.%d.2' % (40 + i))
    # Use an IPv6 address from a private range
    path.set_ipv6(0,'fd75:502f:e221:ddcf::%d' % (10 + i))

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
for i in range(4):
    path = network_path(i)
    print "XPHY %d status: 0x%08x" % (i, path.read(path.xphy_status))
