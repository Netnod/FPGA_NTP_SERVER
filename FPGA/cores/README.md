Cores
=====

This directory contains third party cores that are used by this
project.

v7_xt_conn_trd
==============

This core is copyrighted by Xilinx and can't be distributed.

The script "download-and-unpack.sh" will automatically download and
unpack the core.  It can also be done manually.

To do that download the rdf0285-vc709-connectivity-trd-2014-3.zip
archive from the Xilinx home page:

 wget https://www.xilinx.com/support/documentation/boards_and_kits/vc709/2014_3/rdf0285-vc709-connectivity-trd-2014-3.zip

unpack the archive with:

 unzip rdf0285-vc709-connectivity-trd-2014-3.zip

Clock domain crossers

- v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v
- v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v

Power monitor

- v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control_program.v
- v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control.v
- v7_xt_conn_trd/hardware/sources/hdl/pvtmon/vc709_power_monitor.v

External 156.25 MHz clock control (initializing)

- v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control_program.v
- v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control.v

Picoblaze CPU (same as in PVTMON)

- v7_xt_conn_trd/hardware/sources/hdl/clock_control/kcpsm6.v

Note that power monitor and clock controller each contains one jtag
loader.  Neither is included (generated) so no risk for conflict.
