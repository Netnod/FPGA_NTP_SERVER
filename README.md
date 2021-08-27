# FPGA_NTP_SERVER

## Introduction
This repository contains the source code for a complete, FPGA based
hardware implementation of a Network Time Protocol (NTP) server. The
implementation includes hardware support for [Network Time security
(NTS)](https://datatracker.ietf.org/doc/html/rfc8915).

The server implements the complete network stack in hardware, which
allows high performance, low latency and low jiter. The design supports
scalability through parallel, independent network engines.

The repository contains setup and build targets to implement the
server on existing FPPGA boards. The currently supported FPGA boards ar:

* [Xilinx VC709 Connectivity
Kit](https://www.xilinx.com/products/boards-and-kits/dk-v7-vc709-g.html). A
reference board with a Virtex 7 FPGA device.

* [Xilinx VCU-118 Evaluation
Kit](https://www.xilinx.com/products/boards-and-kits/vcu118.html). A
reference board with a Virtex Ultrascale+ FGPA device.


Look at README.md in the respective target directories for more
information on how to build an FPGA image and for the two FPGA
reference boards.  The VC709 project has the most complete
instructions on how to use it, the VCU118 project lacks documentation
on how to set up the hardware, but is is fairly similar.


## Status
The design is complete, verified and tested in real hardware and
systems. The server is used to operate the [Swedish Distributed Time
Service](http://www.ntp.se/).
