#! /bin/bash
set -e

if [ -z "`pgrep hw_server`" ]; then
    echo "Starting hw_server daemon"
    echo
    hw_server -d
fi

echo "Programming FPGA with ntps_top.bit"
echo
vivado -mode batch -source program_fpga.tcl
