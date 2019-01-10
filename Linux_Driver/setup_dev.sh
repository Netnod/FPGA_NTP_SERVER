#!/bin/bash
lsmod |grep xpcie && sudo rmmod xpcie.ko
sudo rm -rf /dev/xpcie
sudo mknod /dev/xpcie c 240 1
sudo chmod 0666 /dev/xpcie
sudo insmod xpcie.ko
ls -al /dev/xpcie
