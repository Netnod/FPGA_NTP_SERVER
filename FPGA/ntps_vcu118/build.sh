#! /bin/bash
cd "`dirname \"$0\"`"

set -x
set -e

LANG=en_US.UTF-8
unset `env | grep LC | cut -d'=' -f1 `

(
cd xilinx
./download-and-unpack.sh
)

rm -f ntps_top.bit ntps_top.mcs -f ntps_top.prm
find . -name "*.log" | xargs rm -f --

time vivado -mode batch -source build.tcl

# Verify that all programming files exist
[ -f ntps_top.bit ]
[ -f ntps_top.mcs ]
[ -f ntps_top.prm ]
