#! /bin/bash
set -x
set -e

(
cd FPGA/xilinx/
./download-and-unpack.sh
)

(
cd FPGA/vivado/
time vivado -mode batch -source ntps.tcl
time vivado -mode batch -source build.tcl
)

# Verify that all programming files exist
[ -f FPGA/vivado/ntps_top.bit ]
[ -f FPGA/vivado/ntps_top.mcs ]
[ -f FPGA/vivado/ntps_top.prm ]
