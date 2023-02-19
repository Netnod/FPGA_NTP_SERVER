#! /usr/bin/python3
import sys
import os
import struct
import smbus2
import time

if not sys.argv[0]:
    print()

class I2CRegs:
    DEBUG = 9

    def __init__(self, i2c_addr = 0x4a):
        for fn in os.listdir('/dev'):
            if not fn.startswith('i2c-'):
                continue

            try:
                name = open('/sys/class/i2c-adapter/%s/name' % fn).read().strip()
            except IOError:
                continue

            if name != 'xi2c':
                continue

            print("found %s, using xi2c driver" % fn)
            n = int(fn[4:])

            self.bus = smbus2.SMBus(n)

            break

        else:
            raise IOError("no compatible i2c device found")

        self.i2c_addr = i2c_addr

    def write(self, addr, *values):
        if self.DEBUG >= 9:
            print("%02x:%08x <- %s" % (self.i2c_addr, addr, ' '.join(["%08x" % v for v in values])))
            sys.stdout.flush()
        addr_buf = struct.pack('>L', addr)
        data_buf = struct.pack('<%uL' % len(values), *values)
        w = smbus2.i2c_msg.write(self.i2c_addr, addr_buf + data_buf)
        self.bus.i2c_rdwr(w)

    def read(self, addr, count = 0):
        if self.DEBUG >= 9:
            print("%02x:%08x -> " % (self.i2c_addr, addr), end = '')
            sys.stdout.flush()
        n = count or 1
        addr_buf = struct.pack('>L', addr)
        w = smbus2.i2c_msg.write(self.i2c_addr, addr_buf)
        r = smbus2.i2c_msg.read(self.i2c_addr, 4 * n)
        self.bus.i2c_rdwr(w, r)
        values = struct.unpack('<%uL' % n, bytearray(list(r)))
        if self.DEBUG >= 9:
            print(' '.join(["%08x" % v for v in values]))
            sys.stdout.flush()
        if count:
            return values
        else:
            return values[0]

def main():
    regs = I2CRegs()
    regs.read(0x00000000)
    regs.write(0x12345678, 0x9abcdef0)
    regs.read(0x88888888)
    regs.read(0x44444444)
    regs.write(0x44444444, 0x55555555, 0x66666666, 0x77777777)
    regs.write(0x88888888, 0x99999999, 0xaaaaaaaa, 0xbbbbbbbb)
    regs.read(0xcccccccc)
    regs.read(0x40404040)
#    regs.read(0x30303030, 3)
    regs.read(0x20202020)

    for i in range(0, 16, 4):
        regs.read(i, 1)

if __name__ == '__main__':
    main()

