from xpcie import *

k3 = key_mem(3)

first_key = 0
last_key = 100

for key in range (first_key, last_key):
    print "key", key, "=",hex(k3.get_key(key))

