#!/bin/bash
rmmod xpcie.ko
rm -f /dev/xpcie
insmod xpcie.ko
major=`grep xpcie </proc/devices | head -1 | awk '{print $1}'`
echo "xpcie at major $major"
mknod /dev/xpcie c $major 1
sudo chmod 0666 /dev/xpcie
ls -al /dev/xpcie
