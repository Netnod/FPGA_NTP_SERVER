// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Sep 26 15:32:13 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0_stub.v
// Design      : ntps_top_axi_pcie3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ntps_top_axi_pcie3_0_0_core_top,Vivado 2015.2" *)
module ntps_top_axi_pcie3_0_0(sys_rst_n, user_link_up, axi_ctl_aclk, intx_msi_request, msi_vector_num, m_axi_awready, m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_ruser, m_axi_rresp, m_axi_rlast, m_axi_rvalid, pci_exp_rxp, pci_exp_rxn, refclk, s_axi_ctl_awaddr, s_axi_ctl_awvalid, s_axi_ctl_wdata, s_axi_ctl_wstrb, s_axi_ctl_wvalid, s_axi_ctl_bready, s_axi_ctl_araddr, s_axi_ctl_arvalid, s_axi_ctl_rready, axi_aclk, axi_aresetn, interrupt_out, intx_msi_grant, msi_enable, msi_vector_width, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, m_axi_awvalid, m_axi_awlock, m_axi_awcache, m_axi_wdata, m_axi_wuser, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arvalid, m_axi_arlock, m_axi_arcache, m_axi_rready, pci_exp_txp, pci_exp_txn, s_axi_ctl_awready, s_axi_ctl_wready, s_axi_ctl_bresp, s_axi_ctl_bvalid, s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rresp, s_axi_ctl_rvalid)
/* synthesis syn_black_box black_box_pad_pin="sys_rst_n,user_link_up,axi_ctl_aclk,intx_msi_request,msi_vector_num[4:0],m_axi_awready,m_axi_wready,m_axi_bid[2:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_arready,m_axi_rid[2:0],m_axi_rdata[255:0],m_axi_ruser[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,pci_exp_rxp[7:0],pci_exp_rxn[7:0],refclk,s_axi_ctl_awaddr[31:0],s_axi_ctl_awvalid,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_bready,s_axi_ctl_araddr[31:0],s_axi_ctl_arvalid,s_axi_ctl_rready,axi_aclk,axi_aresetn,interrupt_out,intx_msi_grant,msi_enable,msi_vector_width[2:0],m_axi_awid[2:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[255:0],m_axi_wuser[31:0],m_axi_wstrb[31:0],m_axi_wlast,m_axi_wvalid,m_axi_bready,m_axi_arid[2:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arlock,m_axi_arcache[3:0],m_axi_rready,pci_exp_txp[7:0],pci_exp_txn[7:0],s_axi_ctl_awready,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid" */;
  input sys_rst_n;
  output user_link_up;
  input axi_ctl_aclk;
  input intx_msi_request;
  input [4:0]msi_vector_num;
  input m_axi_awready;
  input m_axi_wready;
  input [2:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input m_axi_arready;
  input [2:0]m_axi_rid;
  input [255:0]m_axi_rdata;
  input [31:0]m_axi_ruser;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  input [7:0]pci_exp_rxp;
  input [7:0]pci_exp_rxn;
  input refclk;
  input [31:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  input s_axi_ctl_bready;
  input [31:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  input s_axi_ctl_rready;
  output axi_aclk;
  output axi_aresetn;
  output interrupt_out;
  output intx_msi_grant;
  output msi_enable;
  output [2:0]msi_vector_width;
  output [2:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wuser;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [2:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  output [7:0]pci_exp_txp;
  output [7:0]pci_exp_txn;
  output s_axi_ctl_awready;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
endmodule
