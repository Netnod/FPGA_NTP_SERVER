#! /bin/bash

BIT_FILE=ntps_vc709_i2c.bit

if [ $# -ge 1 ]; then
    BIT_FILE="$1"
fi

if [ -f /opt/Xilinx/Vivado_Lab/2019.2/settings64.sh ]; then
    . /opt/Xilinx/Vivado_Lab/2019.2/settings64.sh
    vivado=vivado_lab
else
    . /opt/Xilinx/Vivado/2019.2/settings64.sh
    vivado=vivado
fi

set -x
set -e

if [ -z "`pgrep hw_server`" ]; then
    echo "Starting hw_server daemon"
    echo
    hw_server -d
fi

lspci -d 10ee:
PCI_NODE=`lspci -d 10ee: | awk '{print $1}'`
PCI_DEV=0000:$PCI_NODE

if [ ! -z "$PCI_NODE" ]; then
    cat /sys/bus/pci/devices/$PCI_DEV/{vendor,device}
    echo 1 >/sys/bus/pci/devices/$PCI_DEV/remove
fi

$vivado -mode batch -source program_fpga.tcl -tclargs "$BIT_FILE"

echo 1 >/sys/bus/pci/rescan

lspci -vnn -d 10ee:
