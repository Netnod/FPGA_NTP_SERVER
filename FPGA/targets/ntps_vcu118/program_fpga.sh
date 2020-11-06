#! /bin/bash

BIT_FILE=ntps_top.bit

echo "num" $#

if [ $# -gt 1 ]; then
    BIT_FILE="$1"
fi

. /opt/Xilinx/Vivado_Lab/2019.2/settings64.sh

set -x
set -e

lspci -d 10ee:
PCI_NODE=`lspci -d 10ee: | awk '{print $1}'`
PCI_DEV=0000:$PCI_NODE

if [ ! -z "$PCI_NODE" ]; then
    cat /sys/bus/pci/devices/$PCI_DEV/{vendor,device}
    echo 1 >/sys/bus/pci/devices/$PCI_DEV/remove
fi

vivado_lab -mode batch -source program_fpga.tcl -tclargs "$BIT_FILE"

echo 1 >/sys/bus/pci/rescan

lspci -vnn -d 10ee:
