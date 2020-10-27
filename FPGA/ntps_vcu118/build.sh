#! /bin/bash
cd "`dirname \"$0\"`"

set -x
set -e

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
