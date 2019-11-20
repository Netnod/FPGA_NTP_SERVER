// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 20 14:05:50 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/joachim/Sandbox/repos/FPGA_NTP_SERVER/FPGA/network_path/packet_proc/ip/pp_fifo/pp_fifo_stub.v
// Design      : pp_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *)
module pp_fifo(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[843:0],wr_en,rd_en,dout[843:0],full,empty" */;
  input clk;
  input rst;
  input [843:0]din;
  input wr_en;
  input rd_en;
  output [843:0]dout;
  output full;
  output empty;
endmodule
