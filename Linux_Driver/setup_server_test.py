from xpcie import *
import time
import random
import datetime

ur = user_regs()
build_time = datetime.datetime.fromtimestamp(ur.read(ur.build_time)).strftime('%Y-%m-%d %H:%M:%S')
print "FPGA build at " + build_time

die_temp = round((ur.read(ur.die_temp) * 504.0 / 1024.0) - 273.0, 1)
print "FPGA Die temperature is " + str(die_temp) + "C."

aa = ntp_clock('A')


aa.get_fracs()
aa.get_secs()

# Set NTP clock time to system clock
diff = datetime.datetime.utcnow() - datetime.datetime(1900, 1, 1, 0, 0, 0)
timestamp = diff.days*24*60*60+diff.seconds+1
aa.set_secs(timestamp)

p0 = network_path(0)
p1 = network_path(1)
p2 = network_path(2)
p3 = network_path(3)

p0.set_mac( 0, '00:1B:77:49:54:F0')
p0.set_ipv4(0, '192.168.2.100')
p0.set_ipv6(0, '1234::192.168.2.100')
p0.write(p0.gen_config, p0.mac_check + p0.ip_check + p0.arp_en + p0.ntp4_en + p0.nd_en + p0.ntp6_en + p0.ping4_en + p0.ping6_en +64*p0.ttl + p0.a_clock + p0.tx_en + p0.s10GB_SR)
p0.write(p0.ntp_config, (-13 & 0xff)*p0.precision) 
p0.write(p0.ntp_root_delay, 0)   # TBD
p0.write(p0.ntp_root_disp, 2)
p0.write(p0.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))

p1.set_mac( 0, '00:1B:77:49:54:F1')
p1.set_ipv4(0, '192.168.2.101')
p1.set_ipv6(0, '1234::192.168.2.101')
p1.write(p1.gen_config, p1.mac_check + p1.ip_check + p1.arp_en + p1.ntp4_en + p1.nd_en + p1.ntp6_en + p1.ping4_en + p1.ping6_en + 64*p1.ttl + p1.a_clock + p1.tx_en + p1.s10GB_SR)
p1.write(p1.ntp_config, (-13 & 0xff)*p1.precision) 
p1.write(p1.ntp_root_delay, 0)   # TBD
p1.write(p1.ntp_root_disp, 2)
p1.write(p1.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))

p2.set_mac( 0, '00:1B:77:49:54:F2')
p2.set_ipv4(0, '192.168.2.102')
p2.set_ipv6(0, '1234::192.168.2.102')
p2.set_mac( 1, '00:1B:77:49:54:F0')
p2.set_ipv4(1, '192.168.2.101')
p2.set_ipv6(1, '1234::192.168.2.101')
p2.set_mac( 2, '00:1B:77:49:54:F0')
p2.set_ipv4(2, '192.168.2.103')
p2.set_ipv6(2, '1234::192.168.2.103')
p2.set_mac( 3, '00:1B:77:49:54:F3')
p2.set_ipv4(3, '192.168.2.100')
p2.set_ipv6(3, '1234::192.168.2.100')
p2.write(p2.gen_config, p2.mac_check + p2.ip_check + p2.arp_en + p2.ntp4_en + p2.nd_en + p2.ntp6_en + p2.ping4_en + p2.ping6_en + 64*p2.ttl + p2.a_clock + p2.tx_en + p2.s10GB_SR)
p2.write(p2.ntp_config, (-13 & 0xff)*p2.precision) 
p2.write(p2.ntp_root_delay, 0)   # TBD
p2.write(p2.ntp_root_disp, 2)
p2.write(p2.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))

p3.set_mac( 0, '00:1B:77:49:54:F0')
p3.set_ipv4(0, '192.168.2.100')
p3.set_ipv6(0, '1234::192.168.2.100')
p3.set_mac( 1, '00:1B:77:49:54:F0')
p3.set_ipv4(1, '192.168.2.101')
p3.set_ipv6(1, '1234::192.168.2.101')
p3.set_mac( 2, '00:1B:77:49:54:F0')
p3.set_ipv4(2, '192.168.2.102')
p3.set_ipv6(2, '1234::192.168.2.102')
p3.set_mac( 3, '00:1B:77:49:54:F3')
p3.set_ipv4(3, '192.168.2.103')
p3.set_ipv6(3, '1234::192.168.2.103')
p3.write(p3.gen_config, p3.mac_check + p3.ip_check + p3.arp_en + p3.ntp4_en + p3.nd_en + p3.ntp6_en + p3.ping4_en + p3.trcrt4_en + p3.ping6_en + p3.trcrt6_en  + 64*p3.ttl + p3.a_clock + p3.tx_en + p3.s10GB_SR)
p3.write(p3.ntp_config, (-13 & 0xff)*p3.precision) 
p3.write(p3.ntp_root_delay, 0)   # TBD
p3.write(p3.ntp_root_disp, 2)
p3.write(p3.ntp_ref_id,  (ord('P') << 24) + (ord('P') << 16) + (ord('S') << 8))
  
p3.write(p3.ntp_rx_ofs, 0)   
p3.write(p3.ntp_tx_ofs, 0) 

