from xpcie import *
import time
import random

aa = ntp_clock('A')

aa.get_fracs()
aa.get_secs()

p0 = network_path(0)
p1 = network_path(1)
p2 = network_path(2)
p3 = network_path(3)

p3.set_ip('192.168.2.100')
p3.set_mac('00:1B:77:49:54:FD')
p3.write(0,63)



# Test setting of time "secs" it will automatically synchronize to pps in FPGA.
def test_set_secs():
    for i in range (0, 100):
        time.sleep(random.random())
        aa.set_secs(99)
        time.sleep(2.0)
        secs = aa.read_secs()
        print "test = ", i, "secs = ", secs
        if secs <> 101: print "error in set_secs"
        if aa.read(aa.sec_ctrl) <> 0: 
            print "error in sec_ctrl"
            break

def test_set_leap_inc():
    aa.set_secs(100)
    aa.set_leap(110, False)
    for i in range (0, 20):
        time.sleep(1)
        print aa.read_secs()

def test_set_leap_dec():
    aa.set_secs(99999)
    aa.set_leap(99999+20, True)
    for i in range (0, 40):
        time.sleep(1)
        print aa.read_secs()

i = 0
while True:
    aa.set_leds(i)
    time.sleep(.5)
    i = (i + 1 ) % 4
