#! /bin/bash
set -e

if [ -z "`pgrep hw_server`" ]; then
    echo "Starting hw_server daemon"
    echo
    hw_server -d
fi

echo "Programming flash with ntps_top.mcs and ntps_top.prm"
echo
vivado -mode batch -source program_flash_mt28gu01gaax1e-bpi-x16.tcl
echo
echo "Success"
