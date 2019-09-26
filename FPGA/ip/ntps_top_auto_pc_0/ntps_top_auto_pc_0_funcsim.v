// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Sep 26 15:22:41 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0_funcsim.v
// Design      : ntps_top_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ntps_top_auto_pc_0,axi_protocol_converter_v2_1_axi_protocol_converter,{}" *) (* CORE_GENERATION_INFO = "ntps_top_auto_pc_0,axi_protocol_converter_v2_1_axi_protocol_converter,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_protocol_converter,x_ipVersion=2.1,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_M_AXI_PROTOCOL=2,C_S_AXI_PROTOCOL=0,C_IGNORE_ID=1,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=32,C_AXI_SUPPORTS_WRITE=1,C_AXI_SUPPORTS_READ=1,C_AXI_SUPPORTS_USER_SIGNALS=0,C_AXI_AWUSER_WIDTH=1,C_AXI_ARUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_TRANSLATION_MODE=2}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "axi_protocol_converter_v2_1_axi_protocol_converter,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module ntps_top_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "2" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* DONT_TOUCH *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) 
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "2" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const1> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const1> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const1> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = s_axi_wvalid;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = m_axi_wready;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s \gen_axilite.gen_b2s_conv.axilite_b2s 
       (.Q({m_axi_awprot,m_axi_awaddr[31:12]}),
        .UNCONN_OUT({s_axi_rid,s_axi_rlast,s_axi_rresp,s_axi_rdata}),
        .aclk(aclk),
        .aresetn(aresetn),
        .in({m_axi_rresp,m_axi_rdata}),
        .m_axi_araddr(m_axi_araddr[11:0]),
        .\m_axi_arprot[2] ({m_axi_arprot,m_axi_araddr[31:12]}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr[11:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize[1:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize[1:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s
   (s_axi_awready,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_arready,
    Q,
    s_axi_bid,
    s_axi_bresp,
    \m_axi_arprot[2] ,
    UNCONN_OUT,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_arvalid,
    m_axi_rready,
    m_axi_awaddr,
    m_axi_araddr,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_arvalid,
    aclk,
    in,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    m_axi_bresp,
    m_axi_arready,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_rvalid,
    aresetn);
  output s_axi_awready;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_arready;
  output [22:0]Q;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [22:0]\m_axi_arprot[2] ;
  output [35:0]UNCONN_OUT;
  output m_axi_awvalid;
  output m_axi_bready;
  output m_axi_arvalid;
  output m_axi_rready;
  output [11:0]m_axi_awaddr;
  output [11:0]m_axi_araddr;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_arvalid;
  input aclk;
  input [33:0]in;
  input [0:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [31:0]s_axi_awaddr;
  input [0:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input [1:0]m_axi_bresp;
  input m_axi_arready;
  input m_axi_awready;
  input m_axi_bvalid;
  input m_axi_rvalid;
  input aresetn;

  wire [22:0]Q;
  wire \RD.ar_channel_0_n_4 ;
  wire \RD.ar_channel_0_n_5 ;
  wire \RD.ar_channel_0_n_6 ;
  wire \RD.ar_channel_0_n_9 ;
  wire \RD.r_channel_0_n_0 ;
  wire \RD.r_channel_0_n_1 ;
  wire SI_REG_n_10;
  wire SI_REG_n_11;
  wire SI_REG_n_114;
  wire SI_REG_n_115;
  wire SI_REG_n_116;
  wire SI_REG_n_117;
  wire SI_REG_n_120;
  wire SI_REG_n_124;
  wire SI_REG_n_125;
  wire SI_REG_n_126;
  wire SI_REG_n_127;
  wire SI_REG_n_128;
  wire SI_REG_n_13;
  wire SI_REG_n_130;
  wire SI_REG_n_132;
  wire SI_REG_n_136;
  wire SI_REG_n_137;
  wire SI_REG_n_138;
  wire SI_REG_n_139;
  wire SI_REG_n_14;
  wire SI_REG_n_140;
  wire SI_REG_n_141;
  wire SI_REG_n_142;
  wire SI_REG_n_143;
  wire SI_REG_n_144;
  wire SI_REG_n_145;
  wire SI_REG_n_146;
  wire SI_REG_n_147;
  wire SI_REG_n_148;
  wire SI_REG_n_149;
  wire SI_REG_n_15;
  wire SI_REG_n_150;
  wire SI_REG_n_151;
  wire SI_REG_n_152;
  wire SI_REG_n_153;
  wire SI_REG_n_154;
  wire SI_REG_n_155;
  wire SI_REG_n_156;
  wire SI_REG_n_157;
  wire SI_REG_n_158;
  wire SI_REG_n_159;
  wire SI_REG_n_16;
  wire SI_REG_n_160;
  wire SI_REG_n_161;
  wire SI_REG_n_162;
  wire SI_REG_n_163;
  wire SI_REG_n_164;
  wire SI_REG_n_165;
  wire SI_REG_n_166;
  wire SI_REG_n_167;
  wire SI_REG_n_168;
  wire SI_REG_n_169;
  wire SI_REG_n_170;
  wire SI_REG_n_171;
  wire SI_REG_n_172;
  wire SI_REG_n_173;
  wire SI_REG_n_59;
  wire SI_REG_n_60;
  wire SI_REG_n_61;
  wire SI_REG_n_62;
  wire SI_REG_n_63;
  wire SI_REG_n_64;
  wire SI_REG_n_65;
  wire SI_REG_n_66;
  wire SI_REG_n_68;
  wire SI_REG_n_69;
  wire SI_REG_n_70;
  wire SI_REG_n_71;
  wire SI_REG_n_8;
  wire SI_REG_n_9;
  wire [35:0]UNCONN_OUT;
  wire \WR.aw_channel_0_n_12 ;
  wire \WR.aw_channel_0_n_13 ;
  wire \WR.aw_channel_0_n_14 ;
  wire \WR.aw_channel_0_n_20 ;
  wire \WR.b_channel_0_n_0 ;
  wire \WR.b_channel_0_n_2 ;
  wire \WR.b_channel_0_n_3 ;
  wire \WR.b_channel_0_n_5 ;
  wire aclk;
  wire [1:0]\ar_cmd_fsm_0/state ;
  wire \ar_pipe/p_1_in ;
  wire areset_d1;
  wire aresetn;
  wire [1:1]\aw_cmd_fsm_0/next_state ;
  wire [1:0]\aw_cmd_fsm_0/state ;
  wire \aw_pipe/p_1_in ;
  wire b_awid;
  wire [7:0]b_awlen;
  wire b_push;
  wire \cmd_translator_0/incr_cmd_0/sel_first ;
  wire \cmd_translator_0/incr_cmd_0/sel_first_2 ;
  wire \cmd_translator_0/s_axburst_eq0 ;
  wire \cmd_translator_0/s_axburst_eq1 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3 ;
  wire [2:1]\cmd_translator_0/wrap_cmd_0/wrap_second_len ;
  wire [2:1]\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 ;
  wire [2:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ;
  wire [2:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4 ;
  wire [33:0]in;
  wire [11:0]m_axi_araddr;
  wire [22:0]\m_axi_arprot[2] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire r_push;
  wire r_rlast;
  wire s_arid;
  wire s_arid_r;
  wire s_awid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire shandshake;
  wire [11:0]si_rs_araddr;
  wire [1:1]si_rs_arburst;
  wire [3:0]si_rs_arlen;
  wire [1:0]si_rs_arsize;
  wire si_rs_arvalid;
  wire [11:0]si_rs_awaddr;
  wire [1:1]si_rs_awburst;
  wire [3:0]si_rs_awlen;
  wire [1:0]si_rs_awsize;
  wire si_rs_awvalid;
  wire si_rs_bid;
  wire si_rs_bready;
  wire [1:0]si_rs_bresp;
  wire si_rs_bvalid;
  wire [31:0]si_rs_rdata;
  wire si_rs_rid;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [1:0]si_rs_rresp;
  wire [2:2]wrap_cnt;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel \RD.ar_channel_0 
       (.D(\cmd_translator_0/wrap_cmd_0/wrap_second_len [2]),
        .E(\ar_pipe/p_1_in ),
        .I26({SI_REG_n_149,SI_REG_n_150,SI_REG_n_151}),
        .Q({s_arid,SI_REG_n_68,SI_REG_n_69,SI_REG_n_70,SI_REG_n_71,si_rs_arlen,si_rs_arburst,si_rs_arsize,si_rs_araddr}),
        .S({SI_REG_n_63,SI_REG_n_64,SI_REG_n_65,SI_REG_n_66}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_offset_r_reg[2] (\RD.ar_channel_0_n_9 ),
        .\axaddr_offset_r_reg[3] ({\cmd_translator_0/wrap_cmd_0/axaddr_offset_r [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_r [1:0]}),
        .\cnt_read_reg[4] (\RD.r_channel_0_n_1 ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[0] (SI_REG_n_136),
        .\m_payload_i_reg[11] ({SI_REG_n_114,SI_REG_n_115,SI_REG_n_116,SI_REG_n_117}),
        .\m_payload_i_reg[35] (SI_REG_n_148),
        .\m_payload_i_reg[35]_0 (SI_REG_n_153),
        .\m_payload_i_reg[35]_1 (SI_REG_n_154),
        .\m_payload_i_reg[35]_2 (SI_REG_n_137),
        .\m_payload_i_reg[36] (SI_REG_n_152),
        .\m_payload_i_reg[38] (SI_REG_n_172),
        .\m_payload_i_reg[44] (SI_REG_n_132),
        .\m_payload_i_reg[46] (SI_REG_n_140),
        .\m_payload_i_reg[47] (SI_REG_n_138),
        .\m_payload_i_reg[47]_0 ({\cmd_translator_0/wrap_cmd_0/axaddr_offset [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset [1:0]}),
        .\m_payload_i_reg[48] (SI_REG_n_139),
        .\m_payload_i_reg[5] (SI_REG_n_163),
        .\m_payload_i_reg[6] ({SI_REG_n_164,SI_REG_n_165,SI_REG_n_166,SI_REG_n_167,SI_REG_n_168,SI_REG_n_169,SI_REG_n_170}),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .s_arid_r(s_arid_r),
        .sel_first(\cmd_translator_0/incr_cmd_0/sel_first ),
        .si_rs_arvalid(si_rs_arvalid),
        .\state_reg[0]_rep (\RD.ar_channel_0_n_5 ),
        .\state_reg[0]_rep_0 (\RD.ar_channel_0_n_6 ),
        .\state_reg[1] (\ar_cmd_fsm_0/state ),
        .\wrap_boundary_axaddr_r_reg[0] (\RD.ar_channel_0_n_4 ),
        .\wrap_second_len_r_reg[1] (\cmd_translator_0/wrap_cmd_0/wrap_second_len [1]),
        .\wrap_second_len_r_reg[2] ({\cmd_translator_0/wrap_cmd_0/wrap_second_len_r [2],\cmd_translator_0/wrap_cmd_0/wrap_second_len_r [0]}),
        .\wrap_second_len_r_reg[2]_0 (SI_REG_n_130));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel \RD.r_channel_0 
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[0]_rep__2_rep__0 (\RD.r_channel_0_n_0 ),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out({si_rs_rresp,si_rs_rdata}),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .s_arid_r(s_arid_r),
        .si_rs_rready(si_rs_rready),
        .\skid_buffer_reg[35] ({si_rs_rid,si_rs_rlast}),
        .\state_reg[0]_rep (\RD.r_channel_0_n_1 ));
  ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice SI_REG
       (.D(wrap_cnt),
        .E(\aw_pipe/p_1_in ),
        .I26({SI_REG_n_149,SI_REG_n_150,SI_REG_n_151}),
        .Q({s_awid,SI_REG_n_13,SI_REG_n_14,SI_REG_n_15,SI_REG_n_16,si_rs_awlen,si_rs_awburst,si_rs_awsize,Q,si_rs_awaddr}),
        .S({SI_REG_n_8,SI_REG_n_9,SI_REG_n_10,SI_REG_n_11}),
        .SR(SI_REG_n_173),
        .UNCONN_OUT(UNCONN_OUT),
        .aclk(aclk),
        .aresetn(aresetn),
        .axaddr_incr0({SI_REG_n_142,SI_REG_n_143,SI_REG_n_144}),
        .\axaddr_incr_reg[11] ({SI_REG_n_59,SI_REG_n_60,SI_REG_n_61,SI_REG_n_62}),
        .\axaddr_incr_reg[11]_0 ({SI_REG_n_114,SI_REG_n_115,SI_REG_n_116,SI_REG_n_117}),
        .\axaddr_incr_reg[1] (SI_REG_n_141),
        .\axaddr_incr_reg[1]_0 (SI_REG_n_148),
        .\axaddr_incr_reg[2] (SI_REG_n_145),
        .\axaddr_incr_reg[2]_0 (SI_REG_n_152),
        .\axaddr_incr_reg[3] (SI_REG_n_146),
        .\axaddr_incr_reg[3]_0 (SI_REG_n_153),
        .\axaddr_incr_reg[4] (SI_REG_n_147),
        .\axaddr_incr_reg[4]_0 (SI_REG_n_154),
        .\axaddr_incr_reg[7] ({SI_REG_n_63,SI_REG_n_64,SI_REG_n_65,SI_REG_n_66}),
        .axaddr_offset({\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 [1:0]}),
        .\axaddr_offset_r_reg[2] (SI_REG_n_155),
        .\axaddr_offset_r_reg[2]_0 (SI_REG_n_163),
        .\axaddr_offset_r_reg[2]_1 (\WR.aw_channel_0_n_20 ),
        .\axaddr_offset_r_reg[2]_2 (\RD.ar_channel_0_n_9 ),
        .\axaddr_offset_r_reg[3] ({\cmd_translator_0/wrap_cmd_0/axaddr_offset [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset [1:0]}),
        .\axaddr_offset_r_reg[3]_0 ({\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3 [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3 [1:0]}),
        .\axaddr_offset_r_reg[3]_1 ({\cmd_translator_0/wrap_cmd_0/axaddr_offset_r [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_r [1:0]}),
        .\axlen_cnt_reg[3] (SI_REG_n_126),
        .\axlen_cnt_reg[3]_0 (SI_REG_n_138),
        .b_push(b_push),
        .\cnt_read_reg[3]_rep__3_rep (\RD.r_channel_0_n_0 ),
        .\cnt_read_reg[4] ({si_rs_rresp,si_rs_rdata}),
        .\m_axi_araddr[10] (SI_REG_n_172),
        .\m_axi_awaddr[10] (SI_REG_n_171),
        .next_pending_r_reg(SI_REG_n_127),
        .next_pending_r_reg_0(SI_REG_n_128),
        .next_pending_r_reg_1(SI_REG_n_139),
        .next_pending_r_reg_2(SI_REG_n_140),
        .out(si_rs_bid),
        .r_push_r_reg({si_rs_rid,si_rs_rlast}),
        .\s_arid_r_reg[0] ({s_arid,SI_REG_n_68,SI_REG_n_69,SI_REG_n_70,SI_REG_n_71,si_rs_arlen,si_rs_arburst,si_rs_arsize,\m_axi_arprot[2] ,si_rs_araddr}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_bresp_acc_reg[1] (si_rs_bresp),
        .sel_first(\cmd_translator_0/incr_cmd_0/sel_first_2 ),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first ),
        .shandshake(shandshake),
        .si_rs_arvalid(si_rs_arvalid),
        .si_rs_awvalid(si_rs_awvalid),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid),
        .si_rs_rready(si_rs_rready),
        .\state_reg[0]_rep (\RD.ar_channel_0_n_6 ),
        .\state_reg[1] (\aw_cmd_fsm_0/state ),
        .\state_reg[1]_0 (\ar_cmd_fsm_0/state ),
        .\state_reg[1]_rep (\RD.ar_channel_0_n_5 ),
        .\state_reg[1]_rep_0 (\WR.aw_channel_0_n_12 ),
        .\state_reg[1]_rep_1 (\RD.ar_channel_0_n_4 ),
        .\state_reg[1]_rep_2 (\ar_pipe/p_1_in ),
        .\wrap_boundary_axaddr_r_reg[6] ({SI_REG_n_156,SI_REG_n_157,SI_REG_n_158,SI_REG_n_159,SI_REG_n_160,SI_REG_n_161,SI_REG_n_162}),
        .\wrap_boundary_axaddr_r_reg[6]_0 ({SI_REG_n_164,SI_REG_n_165,SI_REG_n_166,SI_REG_n_167,SI_REG_n_168,SI_REG_n_169,SI_REG_n_170}),
        .\wrap_cnt_r_reg[2] (SI_REG_n_120),
        .\wrap_cnt_r_reg[2]_0 (SI_REG_n_130),
        .\wrap_cnt_r_reg[2]_1 (SI_REG_n_132),
        .wrap_second_len(\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 [1]),
        .\wrap_second_len_r_reg[0] (SI_REG_n_124),
        .\wrap_second_len_r_reg[0]_0 (SI_REG_n_136),
        .\wrap_second_len_r_reg[1] (\cmd_translator_0/wrap_cmd_0/wrap_second_len [1]),
        .\wrap_second_len_r_reg[2] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 [2]),
        .\wrap_second_len_r_reg[2]_0 (\cmd_translator_0/wrap_cmd_0/wrap_second_len [2]),
        .\wrap_second_len_r_reg[2]_1 ({\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4 [2],\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4 [0]}),
        .\wrap_second_len_r_reg[2]_2 ({\cmd_translator_0/wrap_cmd_0/wrap_second_len_r [2],\cmd_translator_0/wrap_cmd_0/wrap_second_len_r [0]}),
        .\wrap_second_len_r_reg[3] (SI_REG_n_125),
        .\wrap_second_len_r_reg[3]_0 (SI_REG_n_137));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel \WR.aw_channel_0 
       (.D(wrap_cnt),
        .E(\aw_pipe/p_1_in ),
        .Q({s_awid,SI_REG_n_13,SI_REG_n_14,SI_REG_n_15,SI_REG_n_16,si_rs_awlen,si_rs_awburst,si_rs_awsize,si_rs_awaddr}),
        .S({SI_REG_n_8,SI_REG_n_9,SI_REG_n_10,SI_REG_n_11}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr0({SI_REG_n_142,SI_REG_n_143,SI_REG_n_144}),
        .\axaddr_offset_r_reg[2] (\WR.aw_channel_0_n_20 ),
        .\axaddr_offset_r_reg[3] ({\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3 [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3 [1:0]}),
        .b_push(b_push),
        .\cnt_read_reg[0]_rep__0 (\WR.b_channel_0_n_0 ),
        .\cnt_read_reg[1]_rep (\WR.b_channel_0_n_3 ),
        .\cnt_read_reg[1]_rep_0 (\WR.b_channel_0_n_2 ),
        .in({b_awid,b_awlen}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[0] (SI_REG_n_124),
        .\m_payload_i_reg[11] ({SI_REG_n_59,SI_REG_n_60,SI_REG_n_61,SI_REG_n_62}),
        .\m_payload_i_reg[35] (SI_REG_n_141),
        .\m_payload_i_reg[35]_0 (SI_REG_n_146),
        .\m_payload_i_reg[35]_1 (SI_REG_n_147),
        .\m_payload_i_reg[35]_2 (SI_REG_n_125),
        .\m_payload_i_reg[36] (SI_REG_n_145),
        .\m_payload_i_reg[38] (SI_REG_n_171),
        .\m_payload_i_reg[44] (SI_REG_n_120),
        .\m_payload_i_reg[46] (SI_REG_n_128),
        .\m_payload_i_reg[47] ({\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 [3],\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 [1:0]}),
        .\m_payload_i_reg[47]_0 (SI_REG_n_126),
        .\m_payload_i_reg[48] (SI_REG_n_127),
        .\m_payload_i_reg[5] (SI_REG_n_155),
        .\m_payload_i_reg[6] ({SI_REG_n_156,SI_REG_n_157,SI_REG_n_158,SI_REG_n_159,SI_REG_n_160,SI_REG_n_161,SI_REG_n_162}),
        .s_axburst_eq0(\cmd_translator_0/s_axburst_eq0 ),
        .s_axburst_eq1(\cmd_translator_0/s_axburst_eq1 ),
        .sel_first(\cmd_translator_0/incr_cmd_0/sel_first_2 ),
        .si_rs_awvalid(si_rs_awvalid),
        .\state_reg[0]_rep (\WR.aw_channel_0_n_13 ),
        .\state_reg[0]_rep_0 (\WR.aw_channel_0_n_14 ),
        .\state_reg[1] (\aw_cmd_fsm_0/next_state ),
        .\state_reg[1]_rep (\WR.b_channel_0_n_5 ),
        .\wrap_boundary_axaddr_r_reg[0] (\WR.aw_channel_0_n_12 ),
        .\wrap_cnt_r_reg[0] (\aw_cmd_fsm_0/state ),
        .\wrap_second_len_r_reg[1] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 [1]),
        .\wrap_second_len_r_reg[2] ({\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4 [2],\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4 [0]}),
        .\wrap_second_len_r_reg[2]_0 (\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 [2]));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel \WR.b_channel_0 
       (.Q(si_rs_awburst),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .\cnt_read_reg[0]_rep__0 (\WR.b_channel_0_n_0 ),
        .in({b_awid,b_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(si_rs_bid),
        .s_axburst_eq0(\cmd_translator_0/s_axburst_eq0 ),
        .s_axburst_eq1(\cmd_translator_0/s_axburst_eq1 ),
        .shandshake(shandshake),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid),
        .\skid_buffer_reg[1] (si_rs_bresp),
        .\state_reg[0]_rep (\WR.b_channel_0_n_3 ),
        .\state_reg[0]_rep_0 (\WR.aw_channel_0_n_14 ),
        .\state_reg[1] (\aw_cmd_fsm_0/next_state ),
        .\state_reg[1]_0 (\aw_cmd_fsm_0/state ),
        .\state_reg[1]_rep (\WR.b_channel_0_n_2 ),
        .\state_reg[1]_rep_0 (\WR.b_channel_0_n_5 ),
        .\state_reg[1]_rep_1 (\WR.aw_channel_0_n_13 ));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SI_REG_n_173),
        .Q(areset_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_ar_channel" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel
   (s_arid_r,
    \wrap_second_len_r_reg[1] ,
    \state_reg[1] ,
    \wrap_boundary_axaddr_r_reg[0] ,
    \state_reg[0]_rep ,
    \state_reg[0]_rep_0 ,
    \wrap_second_len_r_reg[2] ,
    \axaddr_offset_r_reg[2] ,
    \axaddr_offset_r_reg[3] ,
    r_push,
    sel_first,
    m_axi_arvalid,
    r_rlast,
    E,
    m_axi_araddr,
    aclk,
    Q,
    \m_payload_i_reg[44] ,
    si_rs_arvalid,
    \m_payload_i_reg[47] ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    D,
    \m_payload_i_reg[0] ,
    \m_payload_i_reg[47]_0 ,
    \m_payload_i_reg[35]_2 ,
    \m_payload_i_reg[5] ,
    \m_payload_i_reg[46] ,
    \m_payload_i_reg[48] ,
    m_axi_arready,
    areset_d1,
    \cnt_read_reg[4] ,
    \m_payload_i_reg[38] ,
    \wrap_second_len_r_reg[2]_0 ,
    \m_payload_i_reg[6] ,
    I26,
    S,
    \m_payload_i_reg[11] );
  output s_arid_r;
  output [0:0]\wrap_second_len_r_reg[1] ;
  output [1:0]\state_reg[1] ;
  output \wrap_boundary_axaddr_r_reg[0] ;
  output \state_reg[0]_rep ;
  output \state_reg[0]_rep_0 ;
  output [1:0]\wrap_second_len_r_reg[2] ;
  output \axaddr_offset_r_reg[2] ;
  output [2:0]\axaddr_offset_r_reg[3] ;
  output r_push;
  output sel_first;
  output m_axi_arvalid;
  output r_rlast;
  output [0:0]E;
  output [11:0]m_axi_araddr;
  input aclk;
  input [23:0]Q;
  input \m_payload_i_reg[44] ;
  input si_rs_arvalid;
  input \m_payload_i_reg[47] ;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input [0:0]D;
  input \m_payload_i_reg[0] ;
  input [2:0]\m_payload_i_reg[47]_0 ;
  input \m_payload_i_reg[35]_2 ;
  input \m_payload_i_reg[5] ;
  input \m_payload_i_reg[46] ;
  input \m_payload_i_reg[48] ;
  input m_axi_arready;
  input areset_d1;
  input \cnt_read_reg[4] ;
  input \m_payload_i_reg[38] ;
  input [0:0]\wrap_second_len_r_reg[2]_0 ;
  input [6:0]\m_payload_i_reg[6] ;
  input [2:0]I26;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[11] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]I26;
  wire [23:0]Q;
  wire [3:0]S;
  wire aclk;
  wire ar_cmd_fsm_0_n_0;
  wire ar_cmd_fsm_0_n_1;
  wire ar_cmd_fsm_0_n_10;
  wire ar_cmd_fsm_0_n_18;
  wire ar_cmd_fsm_0_n_2;
  wire ar_cmd_fsm_0_n_22;
  wire ar_cmd_fsm_0_n_24;
  wire ar_cmd_fsm_0_n_25;
  wire ar_cmd_fsm_0_n_26;
  wire ar_cmd_fsm_0_n_27;
  wire ar_cmd_fsm_0_n_6;
  wire ar_cmd_fsm_0_n_7;
  wire ar_cmd_fsm_0_n_8;
  wire ar_cmd_fsm_0_n_9;
  wire areset_d1;
  wire \axaddr_offset_r_reg[2] ;
  wire [2:0]\axaddr_offset_r_reg[3] ;
  wire cmd_translator_0_n_0;
  wire cmd_translator_0_n_1;
  wire cmd_translator_0_n_12;
  wire cmd_translator_0_n_13;
  wire cmd_translator_0_n_2;
  wire cmd_translator_0_n_3;
  wire cmd_translator_0_n_4;
  wire cmd_translator_0_n_5;
  wire cmd_translator_0_n_6;
  wire cmd_translator_0_n_7;
  wire cmd_translator_0_n_8;
  wire cmd_translator_0_n_9;
  wire \cnt_read_reg[4] ;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire \m_payload_i_reg[0] ;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[35]_2 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[38] ;
  wire \m_payload_i_reg[44] ;
  wire \m_payload_i_reg[46] ;
  wire \m_payload_i_reg[47] ;
  wire [2:0]\m_payload_i_reg[47]_0 ;
  wire \m_payload_i_reg[48] ;
  wire \m_payload_i_reg[5] ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire r_push;
  wire r_rlast;
  wire s_arid_r;
  wire sel_first;
  wire sel_first_i;
  wire si_rs_arvalid;
  wire \state_reg[0]_rep ;
  wire \state_reg[0]_rep_0 ;
  wire [1:0]\state_reg[1] ;
  wire \wrap_boundary_axaddr_r_reg[0] ;
  wire [2:2]\wrap_cmd_0/axaddr_offset ;
  wire [2:2]\wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\wrap_cmd_0/wrap_second_len ;
  wire [3:1]\wrap_cmd_0/wrap_second_len_r ;
  wire wrap_next_pending;
  wire [0:0]\wrap_second_len_r_reg[1] ;
  wire [1:0]\wrap_second_len_r_reg[2] ;
  wire [0:0]\wrap_second_len_r_reg[2]_0 ;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm ar_cmd_fsm_0
       (.D({ar_cmd_fsm_0_n_0,ar_cmd_fsm_0_n_1,ar_cmd_fsm_0_n_2}),
        .E(\wrap_boundary_axaddr_r_reg[0] ),
        .Q({cmd_translator_0_n_3,cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[0] (ar_cmd_fsm_0_n_27),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2] ),
        .\axaddr_offset_r_reg[2]_0 (\wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[3] ({\axaddr_offset_r_reg[3] [2],\wrap_cmd_0/axaddr_offset_r }),
        .\axaddr_wrap_reg[0] (ar_cmd_fsm_0_n_25),
        .\axlen_cnt_reg[0] (ar_cmd_fsm_0_n_24),
        .\axlen_cnt_reg[0]_0 (ar_cmd_fsm_0_n_26),
        .\axlen_cnt_reg[3] (cmd_translator_0_n_13),
        .\axlen_cnt_reg[3]_0 (cmd_translator_0_n_9),
        .\axlen_cnt_reg[4] (ar_cmd_fsm_0_n_10),
        .\axlen_cnt_reg[4]_0 (cmd_translator_0_n_7),
        .\axlen_cnt_reg[5] ({ar_cmd_fsm_0_n_6,ar_cmd_fsm_0_n_7,ar_cmd_fsm_0_n_8,ar_cmd_fsm_0_n_9}),
        .\cnt_read_reg[4] (\cnt_read_reg[4] ),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[0] (E),
        .\m_payload_i_reg[0]_0 (\m_payload_i_reg[0] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35]_2 ),
        .\m_payload_i_reg[44] (\m_payload_i_reg[44] ),
        .\m_payload_i_reg[46] (\m_payload_i_reg[46] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47]_0 ),
        .\m_payload_i_reg[48] (\m_payload_i_reg[48] ),
        .\m_payload_i_reg[49] ({Q[20:19],Q[17:14]}),
        .\m_payload_i_reg[5] (\m_payload_i_reg[5] ),
        .next_pending_r_reg(cmd_translator_0_n_1),
        .next_pending_r_reg_0(cmd_translator_0_n_0),
        .r_push_r_reg(r_push),
        .s_axburst_eq0_reg(ar_cmd_fsm_0_n_18),
        .s_axburst_eq1_reg(ar_cmd_fsm_0_n_22),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_12),
        .sel_first_i(sel_first_i),
        .sel_first_reg(cmd_translator_0_n_2),
        .sel_first_reg_0(sel_first),
        .si_rs_arvalid(si_rs_arvalid),
        .\state_reg[0]_rep_0 (\state_reg[0]_rep ),
        .\state_reg[0]_rep_1 (\state_reg[0]_rep_0 ),
        .\state_reg[0]_rep_2 (cmd_translator_0_n_8),
        .\state_reg[1]_0 (\state_reg[1] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[2] (D),
        .\wrap_second_len_r_reg[3] ({\wrap_cmd_0/wrap_second_len [3],\wrap_second_len_r_reg[1] ,\wrap_cmd_0/wrap_second_len [0]}),
        .\wrap_second_len_r_reg[3]_0 ({\wrap_cmd_0/wrap_second_len_r [3],\wrap_cmd_0/wrap_second_len_r [1],\wrap_second_len_r_reg[2] [0]}));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1 cmd_translator_0
       (.D({ar_cmd_fsm_0_n_6,ar_cmd_fsm_0_n_7,ar_cmd_fsm_0_n_8,ar_cmd_fsm_0_n_9}),
        .E(\wrap_boundary_axaddr_r_reg[0] ),
        .I26(I26),
        .Q({cmd_translator_0_n_3,cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6}),
        .S(S),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_offset_r_reg[3] ({\axaddr_offset_r_reg[3] [2],\wrap_cmd_0/axaddr_offset_r ,\axaddr_offset_r_reg[3] [1:0]}),
        .\axlen_cnt_reg[4] (cmd_translator_0_n_13),
        .\axlen_cnt_reg[7] (cmd_translator_0_n_7),
        .incr_next_pending(incr_next_pending),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[11] (\m_payload_i_reg[11] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35]_0 ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_1 ),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[38] (\m_payload_i_reg[38] ),
        .\m_payload_i_reg[39] (ar_cmd_fsm_0_n_18),
        .\m_payload_i_reg[39]_0 (ar_cmd_fsm_0_n_22),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47] ),
        .\m_payload_i_reg[47]_0 ({\m_payload_i_reg[47]_0 [2],\wrap_cmd_0/axaddr_offset ,\m_payload_i_reg[47]_0 [1:0]}),
        .\m_payload_i_reg[51] ({Q[22:21],Q[18:0]}),
        .\m_payload_i_reg[6] (\m_payload_i_reg[6] ),
        .m_valid_i_reg(ar_cmd_fsm_0_n_26),
        .m_valid_i_reg_0(ar_cmd_fsm_0_n_24),
        .m_valid_i_reg_1(ar_cmd_fsm_0_n_25),
        .next_pending_r_reg(cmd_translator_0_n_0),
        .next_pending_r_reg_0(cmd_translator_0_n_1),
        .next_pending_r_reg_1(cmd_translator_0_n_8),
        .next_pending_r_reg_2(cmd_translator_0_n_9),
        .r_rlast(r_rlast),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_2),
        .sel_first_reg_1(sel_first),
        .sel_first_reg_2(ar_cmd_fsm_0_n_27),
        .si_rs_arvalid(si_rs_arvalid),
        .\state_reg[0] (ar_cmd_fsm_0_n_10),
        .\state_reg[0]_rep (\state_reg[0]_rep_0 ),
        .\state_reg[1] (cmd_translator_0_n_12),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[1]_rep (\state_reg[0]_rep ),
        .\state_reg[1]_rep_0 (r_push),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3] ({\wrap_cmd_0/wrap_second_len_r [3],\wrap_second_len_r_reg[2] [1],\wrap_cmd_0/wrap_second_len_r [1],\wrap_second_len_r_reg[2] [0]}),
        .\wrap_second_len_r_reg[3]_0 ({\wrap_cmd_0/wrap_second_len [3],D,\wrap_second_len_r_reg[1] ,\wrap_cmd_0/wrap_second_len [0]}),
        .\wrap_second_len_r_reg[3]_1 ({ar_cmd_fsm_0_n_0,\wrap_second_len_r_reg[2]_0 ,ar_cmd_fsm_0_n_1,ar_cmd_fsm_0_n_2}));
  FDRE \s_arid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(s_arid_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_aw_channel" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel
   (s_axburst_eq0,
    s_axburst_eq1,
    in,
    \wrap_second_len_r_reg[1] ,
    \wrap_boundary_axaddr_r_reg[0] ,
    \state_reg[0]_rep ,
    \state_reg[0]_rep_0 ,
    b_push,
    \wrap_cnt_r_reg[0] ,
    \wrap_second_len_r_reg[2] ,
    \axaddr_offset_r_reg[2] ,
    \axaddr_offset_r_reg[3] ,
    sel_first,
    E,
    m_axi_awvalid,
    m_axi_awaddr,
    aclk,
    Q,
    \m_payload_i_reg[44] ,
    si_rs_awvalid,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    \m_payload_i_reg[48] ,
    D,
    \wrap_second_len_r_reg[2]_0 ,
    \m_payload_i_reg[0] ,
    \m_payload_i_reg[47] ,
    \m_payload_i_reg[35]_2 ,
    \m_payload_i_reg[47]_0 ,
    \m_payload_i_reg[5] ,
    \m_payload_i_reg[46] ,
    areset_d1,
    \state_reg[1] ,
    m_axi_awready,
    \cnt_read_reg[1]_rep ,
    \cnt_read_reg[1]_rep_0 ,
    \cnt_read_reg[0]_rep__0 ,
    \m_payload_i_reg[38] ,
    \m_payload_i_reg[6] ,
    \state_reg[1]_rep ,
    axaddr_incr0,
    S,
    \m_payload_i_reg[11] );
  output s_axburst_eq0;
  output s_axburst_eq1;
  output [8:0]in;
  output [0:0]\wrap_second_len_r_reg[1] ;
  output \wrap_boundary_axaddr_r_reg[0] ;
  output \state_reg[0]_rep ;
  output \state_reg[0]_rep_0 ;
  output b_push;
  output [1:0]\wrap_cnt_r_reg[0] ;
  output [1:0]\wrap_second_len_r_reg[2] ;
  output \axaddr_offset_r_reg[2] ;
  output [2:0]\axaddr_offset_r_reg[3] ;
  output sel_first;
  output [0:0]E;
  output m_axi_awvalid;
  output [11:0]m_axi_awaddr;
  input aclk;
  input [23:0]Q;
  input \m_payload_i_reg[44] ;
  input si_rs_awvalid;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input \m_payload_i_reg[48] ;
  input [0:0]D;
  input [0:0]\wrap_second_len_r_reg[2]_0 ;
  input \m_payload_i_reg[0] ;
  input [2:0]\m_payload_i_reg[47] ;
  input \m_payload_i_reg[35]_2 ;
  input \m_payload_i_reg[47]_0 ;
  input \m_payload_i_reg[5] ;
  input \m_payload_i_reg[46] ;
  input areset_d1;
  input [0:0]\state_reg[1] ;
  input m_axi_awready;
  input \cnt_read_reg[1]_rep ;
  input \cnt_read_reg[1]_rep_0 ;
  input \cnt_read_reg[0]_rep__0 ;
  input \m_payload_i_reg[38] ;
  input [6:0]\m_payload_i_reg[6] ;
  input \state_reg[1]_rep ;
  input [2:0]axaddr_incr0;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[11] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire aw_cmd_fsm_0_n_1;
  wire aw_cmd_fsm_0_n_10;
  wire aw_cmd_fsm_0_n_11;
  wire aw_cmd_fsm_0_n_12;
  wire aw_cmd_fsm_0_n_14;
  wire aw_cmd_fsm_0_n_18;
  wire aw_cmd_fsm_0_n_19;
  wire aw_cmd_fsm_0_n_23;
  wire aw_cmd_fsm_0_n_25;
  wire aw_cmd_fsm_0_n_26;
  wire aw_cmd_fsm_0_n_27;
  wire aw_cmd_fsm_0_n_28;
  wire aw_cmd_fsm_0_n_9;
  wire [2:0]axaddr_incr0;
  wire \axaddr_offset_r_reg[2] ;
  wire [2:0]\axaddr_offset_r_reg[3] ;
  wire b_push;
  wire cmd_translator_0_n_0;
  wire cmd_translator_0_n_1;
  wire cmd_translator_0_n_2;
  wire cmd_translator_0_n_5;
  wire cmd_translator_0_n_6;
  wire cmd_translator_0_n_7;
  wire cmd_translator_0_n_8;
  wire cmd_translator_0_n_9;
  wire \cnt_read_reg[0]_rep__0 ;
  wire \cnt_read_reg[1]_rep ;
  wire \cnt_read_reg[1]_rep_0 ;
  wire [8:0]in;
  wire incr_next_pending;
  wire [11:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire \m_payload_i_reg[0] ;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[35]_2 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[38] ;
  wire \m_payload_i_reg[44] ;
  wire \m_payload_i_reg[46] ;
  wire [2:0]\m_payload_i_reg[47] ;
  wire \m_payload_i_reg[47]_0 ;
  wire \m_payload_i_reg[48] ;
  wire \m_payload_i_reg[5] ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire sel_first;
  wire sel_first_i;
  wire si_rs_awvalid;
  wire \state_reg[0]_rep ;
  wire \state_reg[0]_rep_0 ;
  wire [0:0]\state_reg[1] ;
  wire \state_reg[1]_rep ;
  wire \wrap_boundary_axaddr_r_reg[0] ;
  wire [2:2]\wrap_cmd_0/axaddr_offset ;
  wire [2:2]\wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\wrap_cmd_0/wrap_second_len ;
  wire [3:1]\wrap_cmd_0/wrap_second_len_r ;
  wire [3:0]wrap_cnt;
  wire [1:0]\wrap_cnt_r_reg[0] ;
  wire wrap_next_pending;
  wire [0:0]\wrap_second_len_r_reg[1] ;
  wire [1:0]\wrap_second_len_r_reg[2] ;
  wire [0:0]\wrap_second_len_r_reg[2]_0 ;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm aw_cmd_fsm_0
       (.D({wrap_cnt[3],aw_cmd_fsm_0_n_1,wrap_cnt[0]}),
        .E(\wrap_boundary_axaddr_r_reg[0] ),
        .Q({Q[17],Q[15:12],Q[3:0]}),
        .S({aw_cmd_fsm_0_n_9,aw_cmd_fsm_0_n_10,aw_cmd_fsm_0_n_11,aw_cmd_fsm_0_n_12}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[0] (aw_cmd_fsm_0_n_28),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2] ),
        .\axaddr_offset_r_reg[2]_0 (\wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[3] ({\axaddr_offset_r_reg[3] [2],\wrap_cmd_0/axaddr_offset_r }),
        .\axaddr_wrap_reg[0] (aw_cmd_fsm_0_n_26),
        .\axlen_cnt_reg[0] (aw_cmd_fsm_0_n_23),
        .\axlen_cnt_reg[0]_0 (aw_cmd_fsm_0_n_25),
        .\axlen_cnt_reg[0]_1 (aw_cmd_fsm_0_n_27),
        .\axlen_cnt_reg[0]_2 (cmd_translator_0_n_6),
        .\axlen_cnt_reg[3] (cmd_translator_0_n_9),
        .\axlen_cnt_reg[4] (cmd_translator_0_n_7),
        .\axlen_cnt_reg[4]_0 (cmd_translator_0_n_5),
        .\cnt_read_reg[0]_rep__0 (\cnt_read_reg[0]_rep__0 ),
        .\cnt_read_reg[1]_rep (\cnt_read_reg[1]_rep ),
        .\cnt_read_reg[1]_rep_0 (\cnt_read_reg[1]_rep_0 ),
        .incr_next_pending(incr_next_pending),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[0] (b_push),
        .\m_payload_i_reg[0]_0 (E),
        .\m_payload_i_reg[0]_1 (\m_payload_i_reg[0] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35]_2 ),
        .\m_payload_i_reg[44] (\m_payload_i_reg[44] ),
        .\m_payload_i_reg[46] (\m_payload_i_reg[46] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47] ),
        .\m_payload_i_reg[48] (\m_payload_i_reg[48] ),
        .\m_payload_i_reg[5] (\m_payload_i_reg[5] ),
        .next_pending_r_reg(aw_cmd_fsm_0_n_19),
        .next_pending_r_reg_0(cmd_translator_0_n_0),
        .next_pending_r_reg_1(cmd_translator_0_n_1),
        .s_axburst_eq0_reg(aw_cmd_fsm_0_n_14),
        .s_axburst_eq1_reg(aw_cmd_fsm_0_n_18),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_8),
        .sel_first_i(sel_first_i),
        .sel_first_reg(cmd_translator_0_n_2),
        .sel_first_reg_0(sel_first),
        .si_rs_awvalid(si_rs_awvalid),
        .\state_reg[0]_rep_0 (\state_reg[0]_rep ),
        .\state_reg[0]_rep_1 (\state_reg[0]_rep_0 ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[1]_rep_0 (\state_reg[1]_rep ),
        .\wrap_cnt_r_reg[0] (\wrap_cnt_r_reg[0] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[2] (\wrap_second_len_r_reg[2]_0 ),
        .\wrap_second_len_r_reg[3] ({\wrap_cmd_0/wrap_second_len [3],\wrap_second_len_r_reg[1] ,\wrap_cmd_0/wrap_second_len [0]}),
        .\wrap_second_len_r_reg[3]_0 ({\wrap_cmd_0/wrap_second_len_r [3],\wrap_cmd_0/wrap_second_len_r [1],\wrap_second_len_r_reg[2] [0]}));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator cmd_translator_0
       (.D(aw_cmd_fsm_0_n_23),
        .E(\wrap_boundary_axaddr_r_reg[0] ),
        .Q(Q[22:0]),
        .S({aw_cmd_fsm_0_n_9,aw_cmd_fsm_0_n_10,aw_cmd_fsm_0_n_11,aw_cmd_fsm_0_n_12}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr0(axaddr_incr0),
        .\axaddr_offset_r_reg[3] ({\axaddr_offset_r_reg[3] [2],\wrap_cmd_0/axaddr_offset_r ,\axaddr_offset_r_reg[3] [1:0]}),
        .\axlen_cnt_reg[2] (cmd_translator_0_n_6),
        .\axlen_cnt_reg[3] (cmd_translator_0_n_5),
        .\axlen_cnt_reg[5] (cmd_translator_0_n_7),
        .b_push(b_push),
        .incr_next_pending(incr_next_pending),
        .m_axi_awaddr(m_axi_awaddr),
        .\m_payload_i_reg[11] (\m_payload_i_reg[11] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35]_0 ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_1 ),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[38] (\m_payload_i_reg[38] ),
        .\m_payload_i_reg[39] (aw_cmd_fsm_0_n_14),
        .\m_payload_i_reg[39]_0 (aw_cmd_fsm_0_n_18),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47]_0 ),
        .\m_payload_i_reg[47]_0 ({\m_payload_i_reg[47] [2],\wrap_cmd_0/axaddr_offset ,\m_payload_i_reg[47] [1:0]}),
        .\m_payload_i_reg[6] (\m_payload_i_reg[6] ),
        .\m_payload_i_reg[7] (S),
        .m_valid_i_reg(aw_cmd_fsm_0_n_27),
        .m_valid_i_reg_0(aw_cmd_fsm_0_n_25),
        .m_valid_i_reg_1(aw_cmd_fsm_0_n_26),
        .next_pending_r_reg(cmd_translator_0_n_0),
        .next_pending_r_reg_0(cmd_translator_0_n_1),
        .next_pending_r_reg_1(cmd_translator_0_n_9),
        .s_axburst_eq0(s_axburst_eq0),
        .s_axburst_eq1(s_axburst_eq1),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_2),
        .sel_first_reg_1(sel_first),
        .sel_first_reg_2(aw_cmd_fsm_0_n_28),
        .si_rs_awvalid(si_rs_awvalid),
        .\state_reg[0] (cmd_translator_0_n_8),
        .\state_reg[0]_rep (aw_cmd_fsm_0_n_19),
        .\state_reg[1] (\wrap_cnt_r_reg[0] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3] ({\wrap_cmd_0/wrap_second_len_r [3],\wrap_second_len_r_reg[2] [1],\wrap_cmd_0/wrap_second_len_r [1],\wrap_second_len_r_reg[2] [0]}),
        .\wrap_second_len_r_reg[3]_0 ({\wrap_cmd_0/wrap_second_len [3],\wrap_second_len_r_reg[2]_0 ,\wrap_second_len_r_reg[1] ,\wrap_cmd_0/wrap_second_len [0]}),
        .\wrap_second_len_r_reg[3]_1 ({wrap_cnt[3],D,aw_cmd_fsm_0_n_1,wrap_cnt[0]}));
  FDRE \s_awid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(in[8]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(in[0]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(in[1]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(in[2]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(in[3]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(in[4]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(in[5]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(in[6]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(in[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_b_channel" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel
   (\cnt_read_reg[0]_rep__0 ,
    \state_reg[1] ,
    \state_reg[1]_rep ,
    \state_reg[0]_rep ,
    m_axi_bready,
    \state_reg[1]_rep_0 ,
    out,
    \skid_buffer_reg[1] ,
    si_rs_bvalid,
    shandshake,
    aclk,
    b_push,
    m_axi_awready,
    \state_reg[1]_0 ,
    \state_reg[0]_rep_0 ,
    s_axburst_eq0,
    Q,
    s_axburst_eq1,
    m_axi_bvalid,
    areset_d1,
    \state_reg[1]_rep_1 ,
    in,
    si_rs_bready,
    m_axi_bresp);
  output \cnt_read_reg[0]_rep__0 ;
  output [0:0]\state_reg[1] ;
  output \state_reg[1]_rep ;
  output \state_reg[0]_rep ;
  output m_axi_bready;
  output \state_reg[1]_rep_0 ;
  output [0:0]out;
  output [1:0]\skid_buffer_reg[1] ;
  output si_rs_bvalid;
  input shandshake;
  input aclk;
  input b_push;
  input m_axi_awready;
  input [1:0]\state_reg[1]_0 ;
  input \state_reg[0]_rep_0 ;
  input s_axburst_eq0;
  input [0:0]Q;
  input s_axburst_eq1;
  input m_axi_bvalid;
  input areset_d1;
  input \state_reg[1]_rep_1 ;
  input [8:0]in;
  input si_rs_bready;
  input [1:0]m_axi_bresp;

  wire [0:0]Q;
  wire aclk;
  wire areset_d1;
  wire b_push;
  wire bid_fifo_0_n_2;
  wire \bresp_cnt[7]_i_3_n_0 ;
  wire [7:0]bresp_cnt_reg__0;
  wire bresp_fifo_0_n_0;
  wire bresp_push;
  wire bvalid_i_i_1_n_0;
  wire \cnt_read_reg[0]_rep__0 ;
  wire [8:0]in;
  wire m_axi_awready;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire mhandshake;
  wire mhandshake_r;
  wire [0:0]out;
  wire [7:0]p_0_in;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire s_bresp_acc0;
  wire \s_bresp_acc[0]_i_1_n_0 ;
  wire \s_bresp_acc[1]_i_1_n_0 ;
  wire \s_bresp_acc_reg_n_0_[0] ;
  wire \s_bresp_acc_reg_n_0_[1] ;
  wire shandshake;
  wire shandshake_r;
  wire si_rs_bready;
  wire si_rs_bvalid;
  wire [1:0]\skid_buffer_reg[1] ;
  wire \state_reg[0]_rep ;
  wire \state_reg[0]_rep_0 ;
  wire [0:0]\state_reg[1] ;
  wire [1:0]\state_reg[1]_0 ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire \state_reg[1]_rep_1 ;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo bid_fifo_0
       (.Q(bresp_cnt_reg__0),
        .SR(s_bresp_acc0),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .bresp_push(bresp_push),
        .\cnt_read_reg[0]_rep__0_0 (\cnt_read_reg[0]_rep__0 ),
        .in(in),
        .m_axi_awready(m_axi_awready),
        .\m_payload_i_reg[39] (Q),
        .mhandshake_r(mhandshake_r),
        .out(out),
        .s_axburst_eq0(s_axburst_eq0),
        .s_axburst_eq1(s_axburst_eq1),
        .shandshake_r(shandshake_r),
        .\state_reg[0]_rep (\state_reg[0]_rep ),
        .\state_reg[0]_rep_0 (\state_reg[0]_rep_0 ),
        .\state_reg[1] (bid_fifo_0_n_2),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[1]_1 (\state_reg[1]_0 ),
        .\state_reg[1]_rep (\state_reg[1]_rep ),
        .\state_reg[1]_rep_0 (\state_reg[1]_rep_0 ),
        .\state_reg[1]_rep_1 (\state_reg[1]_rep_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bresp_cnt[0]_i_1 
       (.I0(bresp_cnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bresp_cnt[1]_i_1 
       (.I0(bresp_cnt_reg__0[0]),
        .I1(bresp_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bresp_cnt[2]_i_1 
       (.I0(bresp_cnt_reg__0[2]),
        .I1(bresp_cnt_reg__0[1]),
        .I2(bresp_cnt_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bresp_cnt[3]_i_1 
       (.I0(bresp_cnt_reg__0[3]),
        .I1(bresp_cnt_reg__0[0]),
        .I2(bresp_cnt_reg__0[1]),
        .I3(bresp_cnt_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bresp_cnt[4]_i_1 
       (.I0(bresp_cnt_reg__0[4]),
        .I1(bresp_cnt_reg__0[2]),
        .I2(bresp_cnt_reg__0[1]),
        .I3(bresp_cnt_reg__0[0]),
        .I4(bresp_cnt_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \bresp_cnt[5]_i_1 
       (.I0(bresp_cnt_reg__0[5]),
        .I1(bresp_cnt_reg__0[3]),
        .I2(bresp_cnt_reg__0[0]),
        .I3(bresp_cnt_reg__0[1]),
        .I4(bresp_cnt_reg__0[2]),
        .I5(bresp_cnt_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bresp_cnt[6]_i_1 
       (.I0(bresp_cnt_reg__0[6]),
        .I1(\bresp_cnt[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bresp_cnt[7]_i_2 
       (.I0(bresp_cnt_reg__0[7]),
        .I1(\bresp_cnt[7]_i_3_n_0 ),
        .I2(bresp_cnt_reg__0[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bresp_cnt[7]_i_3 
       (.I0(bresp_cnt_reg__0[5]),
        .I1(bresp_cnt_reg__0[3]),
        .I2(bresp_cnt_reg__0[0]),
        .I3(bresp_cnt_reg__0[1]),
        .I4(bresp_cnt_reg__0[2]),
        .I5(bresp_cnt_reg__0[4]),
        .O(\bresp_cnt[7]_i_3_n_0 ));
  FDRE \bresp_cnt_reg[0] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[0]),
        .Q(bresp_cnt_reg__0[0]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[1] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[1]),
        .Q(bresp_cnt_reg__0[1]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[2] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[2]),
        .Q(bresp_cnt_reg__0[2]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[3] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[3]),
        .Q(bresp_cnt_reg__0[3]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[4] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[4]),
        .Q(bresp_cnt_reg__0[4]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[5] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[5]),
        .Q(bresp_cnt_reg__0[5]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[6] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[6]),
        .Q(bresp_cnt_reg__0[6]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[7] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[7]),
        .Q(bresp_cnt_reg__0[7]),
        .R(s_bresp_acc0));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0 bresp_fifo_0
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .bresp_push(bresp_push),
        .bvalid_i_reg(bresp_fifo_0_n_0),
        .\cnt_read_reg[0]_rep__1 (bid_fifo_0_n_2),
        .\cnt_read_reg[1]_rep (\state_reg[1]_rep ),
        .in({\s_bresp_acc_reg_n_0_[1] ,\s_bresp_acc_reg_n_0_[0] }),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .mhandshake(mhandshake),
        .mhandshake_r(mhandshake_r),
        .shandshake_r(shandshake_r),
        .\skid_buffer_reg[1] (\skid_buffer_reg[1] ));
  LUT4 #(
    .INIT(16'h003A)) 
    bvalid_i_i_1
       (.I0(bresp_fifo_0_n_0),
        .I1(si_rs_bready),
        .I2(si_rs_bvalid),
        .I3(areset_d1),
        .O(bvalid_i_i_1_n_0));
  FDRE bvalid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_i_i_1_n_0),
        .Q(si_rs_bvalid),
        .R(1'b0));
  FDRE mhandshake_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(mhandshake),
        .Q(mhandshake_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EACECCCC)) 
    \s_bresp_acc[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(\s_bresp_acc_reg_n_0_[0] ),
        .I2(\s_bresp_acc_reg_n_0_[1] ),
        .I3(m_axi_bresp[1]),
        .I4(mhandshake),
        .I5(s_bresp_acc0),
        .O(\s_bresp_acc[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00EA)) 
    \s_bresp_acc[1]_i_1 
       (.I0(\s_bresp_acc_reg_n_0_[1] ),
        .I1(m_axi_bresp[1]),
        .I2(mhandshake),
        .I3(s_bresp_acc0),
        .O(\s_bresp_acc[1]_i_1_n_0 ));
  FDRE \s_bresp_acc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_bresp_acc[0]_i_1_n_0 ),
        .Q(\s_bresp_acc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \s_bresp_acc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_bresp_acc[1]_i_1_n_0 ),
        .Q(\s_bresp_acc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE shandshake_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(shandshake),
        .Q(shandshake_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_cmd_translator" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator
   (next_pending_r_reg,
    next_pending_r_reg_0,
    sel_first_reg_0,
    s_axburst_eq0,
    s_axburst_eq1,
    \axlen_cnt_reg[3] ,
    \axlen_cnt_reg[2] ,
    \axlen_cnt_reg[5] ,
    \state_reg[0] ,
    next_pending_r_reg_1,
    sel_first_reg_1,
    m_axi_awaddr,
    \axaddr_offset_r_reg[3] ,
    \wrap_second_len_r_reg[3] ,
    incr_next_pending,
    aclk,
    wrap_next_pending,
    sel_first_i,
    \m_payload_i_reg[39] ,
    \m_payload_i_reg[39]_0 ,
    sel_first_reg_2,
    E,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    Q,
    \m_payload_i_reg[47] ,
    \state_reg[0]_rep ,
    \m_payload_i_reg[38] ,
    b_push,
    \state_reg[1] ,
    si_rs_awvalid,
    areset_d1,
    m_valid_i_reg,
    D,
    \m_payload_i_reg[47]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    m_valid_i_reg_0,
    \wrap_second_len_r_reg[3]_1 ,
    \m_payload_i_reg[6] ,
    m_valid_i_reg_1,
    axaddr_incr0,
    S,
    \m_payload_i_reg[7] ,
    \m_payload_i_reg[11] );
  output next_pending_r_reg;
  output next_pending_r_reg_0;
  output sel_first_reg_0;
  output s_axburst_eq0;
  output s_axburst_eq1;
  output \axlen_cnt_reg[3] ;
  output [0:0]\axlen_cnt_reg[2] ;
  output \axlen_cnt_reg[5] ;
  output \state_reg[0] ;
  output next_pending_r_reg_1;
  output sel_first_reg_1;
  output [11:0]m_axi_awaddr;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [3:0]\wrap_second_len_r_reg[3] ;
  input incr_next_pending;
  input aclk;
  input wrap_next_pending;
  input sel_first_i;
  input \m_payload_i_reg[39] ;
  input \m_payload_i_reg[39]_0 ;
  input sel_first_reg_2;
  input [0:0]E;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input [22:0]Q;
  input \m_payload_i_reg[47] ;
  input \state_reg[0]_rep ;
  input \m_payload_i_reg[38] ;
  input b_push;
  input [1:0]\state_reg[1] ;
  input si_rs_awvalid;
  input areset_d1;
  input [0:0]m_valid_i_reg;
  input [0:0]D;
  input [3:0]\m_payload_i_reg[47]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [0:0]m_valid_i_reg_0;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [6:0]\m_payload_i_reg[6] ;
  input [0:0]m_valid_i_reg_1;
  input [2:0]axaddr_incr0;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[7] ;
  input [3:0]\m_payload_i_reg[11] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [22:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire [2:0]axaddr_incr0;
  wire [11:0]axaddr_incr_reg;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [0:0]\axlen_cnt_reg[2] ;
  wire \axlen_cnt_reg[3] ;
  wire \axlen_cnt_reg[5] ;
  wire b_push;
  wire incr_next_pending;
  wire [11:0]m_axi_awaddr;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[38] ;
  wire \m_payload_i_reg[39] ;
  wire \m_payload_i_reg[39]_0 ;
  wire \m_payload_i_reg[47] ;
  wire [3:0]\m_payload_i_reg[47]_0 ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire [3:0]\m_payload_i_reg[7] ;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire [0:0]m_valid_i_reg_1;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire si_rs_awvalid;
  wire \state_reg[0] ;
  wire \state_reg[0]_rep ;
  wire [1:0]\state_reg[1] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd incr_cmd_0
       (.D(D),
        .E(E),
        .Q({Q[22:19],Q[17:16],Q[13:12],Q[3]}),
        .S(S),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr0(axaddr_incr0),
        .axaddr_incr_reg(axaddr_incr_reg),
        .\axlen_cnt_reg[2]_0 (\axlen_cnt_reg[2] ),
        .\axlen_cnt_reg[3]_0 (\axlen_cnt_reg[3] ),
        .\axlen_cnt_reg[5]_0 (\axlen_cnt_reg[5] ),
        .b_push(b_push),
        .incr_next_pending(incr_next_pending),
        .\m_payload_i_reg[11] (\m_payload_i_reg[11] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35]_0 ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_1 ),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47] ),
        .\m_payload_i_reg[7] (\m_payload_i_reg[7] ),
        .m_valid_i_reg(m_valid_i_reg),
        .next_pending_r_reg_0(next_pending_r_reg),
        .sel_first_reg_0(sel_first_reg_1),
        .sel_first_reg_1(sel_first_reg_2),
        .si_rs_awvalid(si_rs_awvalid),
        .\state_reg[1] (\state_reg[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \memory_reg[3][0]_srl4_i_2 
       (.I0(s_axburst_eq1),
        .I1(Q[14]),
        .I2(s_axburst_eq0),
        .O(\state_reg[0] ));
  FDRE s_axburst_eq0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[39] ),
        .Q(s_axburst_eq0),
        .R(1'b0));
  FDRE s_axburst_eq1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[39]_0 ),
        .Q(s_axburst_eq1),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i),
        .Q(sel_first_reg_0),
        .R(1'b0));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd wrap_cmd_0
       (.E(E),
        .Q(Q[18:0]),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr_reg(axaddr_incr_reg),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3] ),
        .b_push(b_push),
        .m_axi_awaddr(m_axi_awaddr),
        .\m_payload_i_reg[38] (\m_payload_i_reg[38] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47]_0 ),
        .\m_payload_i_reg[6] (\m_payload_i_reg[6] ),
        .m_valid_i_reg(m_valid_i_reg_0),
        .m_valid_i_reg_0(m_valid_i_reg_1),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .next_pending_r_reg_1(next_pending_r_reg_1),
        .si_rs_awvalid(si_rs_awvalid),
        .\state_reg[0]_rep (\state_reg[0]_rep ),
        .\state_reg[1] (\state_reg[1] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_0 ),
        .\wrap_second_len_r_reg[3]_2 (\wrap_second_len_r_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_cmd_translator" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1
   (next_pending_r_reg,
    next_pending_r_reg_0,
    sel_first_reg_0,
    Q,
    \axlen_cnt_reg[7] ,
    next_pending_r_reg_1,
    next_pending_r_reg_2,
    sel_first_reg_1,
    r_rlast,
    \state_reg[1] ,
    \axlen_cnt_reg[4] ,
    m_axi_araddr,
    \axaddr_offset_r_reg[3] ,
    \wrap_second_len_r_reg[3] ,
    incr_next_pending,
    aclk,
    wrap_next_pending,
    sel_first_i,
    \m_payload_i_reg[39] ,
    \m_payload_i_reg[39]_0 ,
    sel_first_reg_2,
    \state_reg[0] ,
    \m_payload_i_reg[47] ,
    E,
    \m_payload_i_reg[51] ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    \state_reg[0]_rep ,
    si_rs_arvalid,
    \state_reg[1]_rep ,
    \state_reg[1]_rep_0 ,
    \m_payload_i_reg[38] ,
    m_axi_arready,
    \state_reg[1]_0 ,
    areset_d1,
    m_valid_i_reg,
    D,
    \m_payload_i_reg[47]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    m_valid_i_reg_0,
    \wrap_second_len_r_reg[3]_1 ,
    \m_payload_i_reg[6] ,
    m_valid_i_reg_1,
    I26,
    S,
    \m_payload_i_reg[11] );
  output next_pending_r_reg;
  output next_pending_r_reg_0;
  output sel_first_reg_0;
  output [3:0]Q;
  output \axlen_cnt_reg[7] ;
  output next_pending_r_reg_1;
  output next_pending_r_reg_2;
  output sel_first_reg_1;
  output r_rlast;
  output \state_reg[1] ;
  output \axlen_cnt_reg[4] ;
  output [11:0]m_axi_araddr;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [3:0]\wrap_second_len_r_reg[3] ;
  input incr_next_pending;
  input aclk;
  input wrap_next_pending;
  input sel_first_i;
  input \m_payload_i_reg[39] ;
  input \m_payload_i_reg[39]_0 ;
  input sel_first_reg_2;
  input \state_reg[0] ;
  input \m_payload_i_reg[47] ;
  input [0:0]E;
  input [20:0]\m_payload_i_reg[51] ;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input \state_reg[0]_rep ;
  input si_rs_arvalid;
  input \state_reg[1]_rep ;
  input \state_reg[1]_rep_0 ;
  input \m_payload_i_reg[38] ;
  input m_axi_arready;
  input [1:0]\state_reg[1]_0 ;
  input areset_d1;
  input [0:0]m_valid_i_reg;
  input [3:0]D;
  input [3:0]\m_payload_i_reg[47]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [0:0]m_valid_i_reg_0;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [6:0]\m_payload_i_reg[6] ;
  input [0:0]m_valid_i_reg_1;
  input [2:0]I26;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[11] ;

  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]I26;
  wire [3:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire [11:0]axaddr_incr_reg;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire \axlen_cnt_reg[4] ;
  wire \axlen_cnt_reg[7] ;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire m_axi_arready;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[38] ;
  wire \m_payload_i_reg[39] ;
  wire \m_payload_i_reg[39]_0 ;
  wire \m_payload_i_reg[47] ;
  wire [3:0]\m_payload_i_reg[47]_0 ;
  wire [20:0]\m_payload_i_reg[51] ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire [0:0]m_valid_i_reg_1;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire next_pending_r_reg_2;
  wire r_rlast;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire si_rs_arvalid;
  wire \state_reg[0] ;
  wire \state_reg[0]_rep ;
  wire \state_reg[1] ;
  wire [1:0]\state_reg[1]_0 ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;

  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2 incr_cmd_0
       (.D(D),
        .E(E),
        .I26(I26),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr_reg(axaddr_incr_reg),
        .\axlen_cnt_reg[4]_0 (\axlen_cnt_reg[4] ),
        .\axlen_cnt_reg[7]_0 (\axlen_cnt_reg[7] ),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[11] (\m_payload_i_reg[11] ),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35]_0 ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_1 ),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[47] ),
        .\m_payload_i_reg[51] ({\m_payload_i_reg[51] [20:19],\m_payload_i_reg[51] [17],\m_payload_i_reg[51] [13:12],\m_payload_i_reg[51] [3:0]}),
        .m_valid_i_reg(m_valid_i_reg),
        .next_pending_r_reg_0(next_pending_r_reg),
        .next_pending_r_reg_1(next_pending_r_reg_2),
        .sel_first_reg_0(sel_first_reg_1),
        .sel_first_reg_1(sel_first_reg_2),
        .si_rs_arvalid(si_rs_arvalid),
        .\state_reg[0] (\state_reg[0] ),
        .\state_reg[1] (\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    r_rlast_r_i_1
       (.I0(s_axburst_eq0),
        .I1(\m_payload_i_reg[51] [14]),
        .I2(s_axburst_eq1),
        .O(r_rlast));
  FDRE s_axburst_eq0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[39] ),
        .Q(s_axburst_eq0),
        .R(1'b0));
  FDRE s_axburst_eq1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[39]_0 ),
        .Q(s_axburst_eq1),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i),
        .Q(sel_first_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[1]_i_2__0 
       (.I0(s_axburst_eq1),
        .I1(\m_payload_i_reg[51] [14]),
        .I2(s_axburst_eq0),
        .O(\state_reg[1] ));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3 wrap_cmd_0
       (.E(E),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr_reg(axaddr_incr_reg),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3] ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[38] (\m_payload_i_reg[38] ),
        .\m_payload_i_reg[47] (\m_payload_i_reg[51] [18:0]),
        .\m_payload_i_reg[47]_0 (\m_payload_i_reg[47]_0 ),
        .\m_payload_i_reg[6] (\m_payload_i_reg[6] ),
        .m_valid_i_reg(m_valid_i_reg_0),
        .m_valid_i_reg_0(m_valid_i_reg_1),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .next_pending_r_reg_1(next_pending_r_reg_1),
        .si_rs_arvalid(si_rs_arvalid),
        .\state_reg[0]_rep (\state_reg[0]_rep ),
        .\state_reg[1] (\state_reg[1]_0 ),
        .\state_reg[1]_rep (\state_reg[1]_rep ),
        .\state_reg[1]_rep_0 (\state_reg[1]_rep_0 ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_0 ),
        .\wrap_second_len_r_reg[3]_2 (\wrap_second_len_r_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_incr_cmd" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd
   (next_pending_r_reg_0,
    axaddr_incr_reg,
    \axlen_cnt_reg[3]_0 ,
    \axlen_cnt_reg[2]_0 ,
    \axlen_cnt_reg[5]_0 ,
    sel_first_reg_0,
    incr_next_pending,
    aclk,
    sel_first_reg_1,
    E,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    Q,
    \m_payload_i_reg[47] ,
    b_push,
    \state_reg[1] ,
    si_rs_awvalid,
    areset_d1,
    m_valid_i_reg,
    D,
    axaddr_incr0,
    S,
    \m_payload_i_reg[7] ,
    \m_payload_i_reg[11] );
  output next_pending_r_reg_0;
  output [11:0]axaddr_incr_reg;
  output \axlen_cnt_reg[3]_0 ;
  output [0:0]\axlen_cnt_reg[2]_0 ;
  output \axlen_cnt_reg[5]_0 ;
  output sel_first_reg_0;
  input incr_next_pending;
  input aclk;
  input sel_first_reg_1;
  input [0:0]E;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input [8:0]Q;
  input \m_payload_i_reg[47] ;
  input b_push;
  input [1:0]\state_reg[1] ;
  input si_rs_awvalid;
  input areset_d1;
  input [0:0]m_valid_i_reg;
  input [0:0]D;
  input [2:0]axaddr_incr0;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[7] ;
  input [3:0]\m_payload_i_reg[11] ;

  wire [11:0]C;
  wire [0:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire [2:0]axaddr_incr0;
  wire \axaddr_incr[0]_i_3_n_0 ;
  wire \axaddr_incr[10]_i_2_n_0 ;
  wire \axaddr_incr[11]_i_2_n_0 ;
  wire \axaddr_incr[1]_i_2_n_0 ;
  wire \axaddr_incr[2]_i_2_n_0 ;
  wire \axaddr_incr[3]_i_2_n_0 ;
  wire \axaddr_incr[4]_i_2_n_0 ;
  wire \axaddr_incr[5]_i_2_n_0 ;
  wire \axaddr_incr[6]_i_2_n_0 ;
  wire \axaddr_incr[7]_i_2_n_0 ;
  wire \axaddr_incr[8]_i_2_n_0 ;
  wire \axaddr_incr[9]_i_2_n_0 ;
  wire [11:0]axaddr_incr_reg;
  wire \axaddr_incr_reg[0]_i_2_n_0 ;
  wire \axaddr_incr_reg[0]_i_4_n_0 ;
  wire \axaddr_incr_reg[0]_i_4_n_1 ;
  wire \axaddr_incr_reg[0]_i_4_n_2 ;
  wire \axaddr_incr_reg[0]_i_4_n_3 ;
  wire \axaddr_incr_reg[10]_i_1_n_0 ;
  wire \axaddr_incr_reg[10]_i_3_n_0 ;
  wire \axaddr_incr_reg[11]_i_1_n_0 ;
  wire \axaddr_incr_reg[1]_i_1_n_0 ;
  wire \axaddr_incr_reg[1]_i_3_n_0 ;
  wire \axaddr_incr_reg[2]_i_1_n_0 ;
  wire \axaddr_incr_reg[2]_i_3_n_0 ;
  wire \axaddr_incr_reg[3]_i_1_n_0 ;
  wire \axaddr_incr_reg[3]_i_3_n_0 ;
  wire \axaddr_incr_reg[4]_i_1_n_0 ;
  wire \axaddr_incr_reg[4]_i_3_n_0 ;
  wire \axaddr_incr_reg[4]_i_4_n_0 ;
  wire \axaddr_incr_reg[4]_i_4_n_1 ;
  wire \axaddr_incr_reg[4]_i_4_n_2 ;
  wire \axaddr_incr_reg[4]_i_4_n_3 ;
  wire \axaddr_incr_reg[5]_i_1_n_0 ;
  wire \axaddr_incr_reg[5]_i_3_n_0 ;
  wire \axaddr_incr_reg[6]_i_1_n_0 ;
  wire \axaddr_incr_reg[6]_i_3_n_0 ;
  wire \axaddr_incr_reg[7]_i_1_n_0 ;
  wire \axaddr_incr_reg[7]_i_3_n_0 ;
  wire \axaddr_incr_reg[8]_i_1_n_0 ;
  wire \axaddr_incr_reg[8]_i_3_n_0 ;
  wire \axaddr_incr_reg[8]_i_4_n_1 ;
  wire \axaddr_incr_reg[8]_i_4_n_2 ;
  wire \axaddr_incr_reg[8]_i_4_n_3 ;
  wire \axaddr_incr_reg[9]_i_1_n_0 ;
  wire \axaddr_incr_reg[9]_i_3_n_0 ;
  wire \axlen_cnt[1]_i_1_n_0 ;
  wire \axlen_cnt[2]_i_1_n_0 ;
  wire \axlen_cnt[3]_i_1_n_0 ;
  wire \axlen_cnt[4]_i_1_n_0 ;
  wire \axlen_cnt[4]_i_2_n_0 ;
  wire \axlen_cnt[5]_i_1_n_0 ;
  wire \axlen_cnt[6]_i_1_n_0 ;
  wire \axlen_cnt[7]_i_2_n_0 ;
  wire \axlen_cnt[7]_i_3_n_0 ;
  wire \axlen_cnt[7]_i_4_n_0 ;
  wire \axlen_cnt[7]_i_6_n_0 ;
  wire [0:0]\axlen_cnt_reg[2]_0 ;
  wire \axlen_cnt_reg[3]_0 ;
  wire \axlen_cnt_reg[5]_0 ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[4] ;
  wire \axlen_cnt_reg_n_0_[5] ;
  wire \axlen_cnt_reg_n_0_[6] ;
  wire \axlen_cnt_reg_n_0_[7] ;
  wire b_push;
  wire incr_next_pending;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[47] ;
  wire [3:0]\m_payload_i_reg[7] ;
  wire [0:0]m_valid_i_reg;
  wire next_pending_r_i_5_n_0;
  wire next_pending_r_reg_0;
  wire sel_first_i_1_n_0;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_awvalid;
  wire [1:0]\state_reg[1] ;
  wire [3:3]\NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_axaddr_incr_reg[9]_i_3_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_axaddr_incr_reg[9]_i_3_CARRY4_DI_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \axaddr_incr[0]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(axaddr_incr_reg[0]),
        .I3(sel_first_reg_0),
        .I4(C[0]),
        .O(\axaddr_incr[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[10]_i_2 
       (.I0(C[10]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[10]),
        .O(\axaddr_incr[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[11]_i_2 
       (.I0(C[11]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[11]),
        .O(\axaddr_incr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD200D2)) 
    \axaddr_incr[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(axaddr_incr_reg[1]),
        .I3(sel_first_reg_0),
        .I4(C[1]),
        .O(\axaddr_incr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFD200D2)) 
    \axaddr_incr[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(axaddr_incr_reg[2]),
        .I3(sel_first_reg_0),
        .I4(C[2]),
        .O(\axaddr_incr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF780078)) 
    \axaddr_incr[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(axaddr_incr_reg[3]),
        .I3(sel_first_reg_0),
        .I4(C[3]),
        .O(\axaddr_incr[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[4]_i_2 
       (.I0(C[4]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[4]),
        .O(\axaddr_incr[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[5]_i_2 
       (.I0(C[5]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[5]),
        .O(\axaddr_incr[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[6]_i_2 
       (.I0(C[6]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[6]),
        .O(\axaddr_incr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[7]_i_2 
       (.I0(C[7]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[7]),
        .O(\axaddr_incr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[8]_i_2 
       (.I0(C[8]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[8]),
        .O(\axaddr_incr[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[9]_i_2 
       (.I0(C[9]),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[9]),
        .O(\axaddr_incr[9]_i_2_n_0 ));
  FDRE \axaddr_incr_reg[0] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[0]_i_2_n_0 ),
        .Q(axaddr_incr_reg[0]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[0]_i_4_n_0 ,\axaddr_incr_reg[0]_i_4_n_1 ,\axaddr_incr_reg[0]_i_4_n_2 ,\axaddr_incr_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[0],axaddr_incr0}),
        .O(C[3:0]),
        .S(S));
  FDRE \axaddr_incr_reg[10] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[10]_i_1_n_0 ),
        .Q(axaddr_incr_reg[10]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[11] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[11]_i_1_n_0 ),
        .Q(axaddr_incr_reg[11]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[1] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[1]_i_1_n_0 ),
        .Q(axaddr_incr_reg[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[1]_i_3_CARRY4 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[4]_i_3_n_0 ,\axaddr_incr_reg[3]_i_3_n_0 ,\axaddr_incr_reg[2]_i_3_n_0 ,\axaddr_incr_reg[1]_i_3_n_0 }),
        .CYINIT(1'b0),
        .DI({\m_payload_i_reg[35]_1 ,\m_payload_i_reg[35]_0 ,\m_payload_i_reg[36] ,\m_payload_i_reg[35] }),
        .O({\axaddr_incr_reg[3]_i_1_n_0 ,\axaddr_incr_reg[2]_i_1_n_0 ,\axaddr_incr_reg[1]_i_1_n_0 ,\axaddr_incr_reg[0]_i_2_n_0 }),
        .S({\axaddr_incr[3]_i_2_n_0 ,\axaddr_incr[2]_i_2_n_0 ,\axaddr_incr[1]_i_2_n_0 ,\axaddr_incr[0]_i_3_n_0 }));
  FDRE \axaddr_incr_reg[2] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[2]_i_1_n_0 ),
        .Q(axaddr_incr_reg[2]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[3] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[3]_i_1_n_0 ),
        .Q(axaddr_incr_reg[3]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[4] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[4]_i_1_n_0 ),
        .Q(axaddr_incr_reg[4]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[4]_i_4 
       (.CI(\axaddr_incr_reg[0]_i_4_n_0 ),
        .CO({\axaddr_incr_reg[4]_i_4_n_0 ,\axaddr_incr_reg[4]_i_4_n_1 ,\axaddr_incr_reg[4]_i_4_n_2 ,\axaddr_incr_reg[4]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[7:4]),
        .S(\m_payload_i_reg[7] ));
  FDRE \axaddr_incr_reg[5] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[5]_i_1_n_0 ),
        .Q(axaddr_incr_reg[5]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[5]_i_3_CARRY4 
       (.CI(\axaddr_incr_reg[4]_i_3_n_0 ),
        .CO({\axaddr_incr_reg[8]_i_3_n_0 ,\axaddr_incr_reg[7]_i_3_n_0 ,\axaddr_incr_reg[6]_i_3_n_0 ,\axaddr_incr_reg[5]_i_3_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[7]_i_1_n_0 ,\axaddr_incr_reg[6]_i_1_n_0 ,\axaddr_incr_reg[5]_i_1_n_0 ,\axaddr_incr_reg[4]_i_1_n_0 }),
        .S({\axaddr_incr[7]_i_2_n_0 ,\axaddr_incr[6]_i_2_n_0 ,\axaddr_incr[5]_i_2_n_0 ,\axaddr_incr[4]_i_2_n_0 }));
  FDRE \axaddr_incr_reg[6] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[6]_i_1_n_0 ),
        .Q(axaddr_incr_reg[6]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[7] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[7]_i_1_n_0 ),
        .Q(axaddr_incr_reg[7]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[8] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[8]_i_1_n_0 ),
        .Q(axaddr_incr_reg[8]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[8]_i_4 
       (.CI(\axaddr_incr_reg[4]_i_4_n_0 ),
        .CO({\NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED [3],\axaddr_incr_reg[8]_i_4_n_1 ,\axaddr_incr_reg[8]_i_4_n_2 ,\axaddr_incr_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(C[11:8]),
        .S(\m_payload_i_reg[11] ));
  FDRE \axaddr_incr_reg[9] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[9]_i_1_n_0 ),
        .Q(axaddr_incr_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[9]_i_3_CARRY4 
       (.CI(\axaddr_incr_reg[8]_i_3_n_0 ),
        .CO({\NLW_axaddr_incr_reg[9]_i_3_CARRY4_CO_UNCONNECTED [3:2],\axaddr_incr_reg[10]_i_3_n_0 ,\axaddr_incr_reg[9]_i_3_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_axaddr_incr_reg[9]_i_3_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[11]_i_1_n_0 ,\axaddr_incr_reg[10]_i_1_n_0 ,\axaddr_incr_reg[9]_i_1_n_0 ,\axaddr_incr_reg[8]_i_1_n_0 }),
        .S({\axaddr_incr[11]_i_2_n_0 ,\axaddr_incr[10]_i_2_n_0 ,\axaddr_incr[9]_i_2_n_0 ,\axaddr_incr[8]_i_2_n_0 }));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \axlen_cnt[1]_i_1 
       (.I0(Q[3]),
        .I1(E),
        .I2(\axlen_cnt_reg[5]_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg[2]_0 ),
        .O(\axlen_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B888888888B8)) 
    \axlen_cnt[2]_i_1 
       (.I0(Q[4]),
        .I1(E),
        .I2(\axlen_cnt_reg[5]_0 ),
        .I3(\axlen_cnt_reg[2]_0 ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D5D5D5D55D)) 
    \axlen_cnt[3]_i_1 
       (.I0(\m_payload_i_reg[47] ),
        .I1(\axlen_cnt_reg[3]_0 ),
        .I2(\axlen_cnt_reg_n_0_[3] ),
        .I3(\axlen_cnt_reg[2]_0 ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \axlen_cnt[4]_i_1 
       (.I0(Q[5]),
        .I1(E),
        .I2(\axlen_cnt_reg[5]_0 ),
        .I3(\axlen_cnt[4]_i_2_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \axlen_cnt[4]_i_2 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg[2]_0 ),
        .O(\axlen_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \axlen_cnt[5]_i_1 
       (.I0(Q[6]),
        .I1(E),
        .I2(\axlen_cnt_reg[5]_0 ),
        .I3(\axlen_cnt[7]_i_4_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[5] ),
        .O(\axlen_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF88FF8F888888888)) 
    \axlen_cnt[6]_i_1 
       (.I0(E),
        .I1(Q[7]),
        .I2(\axlen_cnt_reg_n_0_[6] ),
        .I3(\axlen_cnt_reg_n_0_[5] ),
        .I4(\axlen_cnt[7]_i_4_n_0 ),
        .I5(\axlen_cnt_reg[3]_0 ),
        .O(\axlen_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF88FF8F888888888)) 
    \axlen_cnt[7]_i_2 
       (.I0(E),
        .I1(Q[8]),
        .I2(\axlen_cnt_reg_n_0_[7] ),
        .I3(\axlen_cnt[7]_i_3_n_0 ),
        .I4(\axlen_cnt[7]_i_4_n_0 ),
        .I5(\axlen_cnt_reg[3]_0 ),
        .O(\axlen_cnt[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axlen_cnt[7]_i_3 
       (.I0(\axlen_cnt_reg_n_0_[5] ),
        .I1(\axlen_cnt_reg_n_0_[6] ),
        .O(\axlen_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \axlen_cnt[7]_i_4 
       (.I0(\axlen_cnt_reg[2]_0 ),
        .I1(\axlen_cnt_reg_n_0_[1] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .I4(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \axlen_cnt[7]_i_5__0 
       (.I0(E),
        .I1(\axlen_cnt[7]_i_6_n_0 ),
        .I2(\axlen_cnt_reg_n_0_[4] ),
        .I3(\axlen_cnt_reg_n_0_[5] ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .O(\axlen_cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[7]_i_6 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[7] ),
        .I3(\axlen_cnt_reg_n_0_[6] ),
        .O(\axlen_cnt[7]_i_6_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(D),
        .Q(\axlen_cnt_reg[2]_0 ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[1]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[2]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[3]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[4]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[5] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[5]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[6] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[6]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[7] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[7]_i_2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    next_pending_r_i_4__0
       (.I0(\axlen_cnt_reg_n_0_[4] ),
        .I1(next_pending_r_i_5_n_0),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[7] ),
        .I4(\axlen_cnt_reg_n_0_[5] ),
        .I5(\axlen_cnt_reg_n_0_[6] ),
        .O(\axlen_cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    next_pending_r_i_5
       (.I0(\axlen_cnt_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg_n_0_[3] ),
        .O(next_pending_r_i_5_n_0));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_next_pending),
        .Q(next_pending_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44440F04)) 
    sel_first_i_1
       (.I0(b_push),
        .I1(sel_first_reg_0),
        .I2(\state_reg[1] [1]),
        .I3(si_rs_awvalid),
        .I4(\state_reg[1] [0]),
        .I5(areset_d1),
        .O(sel_first_i_1_n_0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i_1_n_0),
        .Q(sel_first_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_incr_cmd" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2
   (next_pending_r_reg_0,
    axaddr_incr_reg,
    Q,
    \axlen_cnt_reg[7]_0 ,
    next_pending_r_reg_1,
    sel_first_reg_0,
    \axlen_cnt_reg[4]_0 ,
    incr_next_pending,
    aclk,
    sel_first_reg_1,
    \state_reg[0] ,
    \m_payload_i_reg[47] ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[35]_1 ,
    E,
    \m_payload_i_reg[51] ,
    m_axi_arready,
    \state_reg[1] ,
    si_rs_arvalid,
    areset_d1,
    m_valid_i_reg,
    D,
    I26,
    S,
    \m_payload_i_reg[11] );
  output next_pending_r_reg_0;
  output [11:0]axaddr_incr_reg;
  output [3:0]Q;
  output \axlen_cnt_reg[7]_0 ;
  output next_pending_r_reg_1;
  output sel_first_reg_0;
  output \axlen_cnt_reg[4]_0 ;
  input incr_next_pending;
  input aclk;
  input sel_first_reg_1;
  input \state_reg[0] ;
  input \m_payload_i_reg[47] ;
  input \m_payload_i_reg[35] ;
  input \m_payload_i_reg[36] ;
  input \m_payload_i_reg[35]_0 ;
  input \m_payload_i_reg[35]_1 ;
  input [0:0]E;
  input [8:0]\m_payload_i_reg[51] ;
  input m_axi_arready;
  input [1:0]\state_reg[1] ;
  input si_rs_arvalid;
  input areset_d1;
  input [0:0]m_valid_i_reg;
  input [3:0]D;
  input [2:0]I26;
  input [3:0]S;
  input [3:0]\m_payload_i_reg[11] ;

  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]I26;
  wire [3:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire \axaddr_incr[0]_i_10_n_0 ;
  wire \axaddr_incr[0]_i_11_n_0 ;
  wire \axaddr_incr[0]_i_3__0_n_0 ;
  wire \axaddr_incr[0]_i_8_n_0 ;
  wire \axaddr_incr[0]_i_9_n_0 ;
  wire \axaddr_incr[10]_i_2__0_n_0 ;
  wire \axaddr_incr[11]_i_2__0_n_0 ;
  wire \axaddr_incr[1]_i_2__0_n_0 ;
  wire \axaddr_incr[2]_i_2__0_n_0 ;
  wire \axaddr_incr[3]_i_2__0_n_0 ;
  wire \axaddr_incr[4]_i_2__0_n_0 ;
  wire \axaddr_incr[5]_i_2__0_n_0 ;
  wire \axaddr_incr[6]_i_2__0_n_0 ;
  wire \axaddr_incr[7]_i_2__0_n_0 ;
  wire \axaddr_incr[8]_i_2__0_n_0 ;
  wire \axaddr_incr[9]_i_2__0_n_0 ;
  wire [11:0]axaddr_incr_reg;
  wire \axaddr_incr_reg[0]_i_2__0_n_0 ;
  wire \axaddr_incr_reg[0]_i_4_n_0 ;
  wire \axaddr_incr_reg[0]_i_4_n_1 ;
  wire \axaddr_incr_reg[0]_i_4_n_2 ;
  wire \axaddr_incr_reg[0]_i_4_n_3 ;
  wire \axaddr_incr_reg[0]_i_4_n_4 ;
  wire \axaddr_incr_reg[0]_i_4_n_5 ;
  wire \axaddr_incr_reg[0]_i_4_n_6 ;
  wire \axaddr_incr_reg[0]_i_4_n_7 ;
  wire \axaddr_incr_reg[10]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[10]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[11]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[1]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[1]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[2]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[2]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[3]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[4]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[4]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[4]_i_4_n_0 ;
  wire \axaddr_incr_reg[4]_i_4_n_1 ;
  wire \axaddr_incr_reg[4]_i_4_n_2 ;
  wire \axaddr_incr_reg[4]_i_4_n_3 ;
  wire \axaddr_incr_reg[4]_i_4_n_4 ;
  wire \axaddr_incr_reg[4]_i_4_n_5 ;
  wire \axaddr_incr_reg[4]_i_4_n_6 ;
  wire \axaddr_incr_reg[4]_i_4_n_7 ;
  wire \axaddr_incr_reg[5]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[5]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[6]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[6]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[7]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[8]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[8]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[8]_i_4_n_1 ;
  wire \axaddr_incr_reg[8]_i_4_n_2 ;
  wire \axaddr_incr_reg[8]_i_4_n_3 ;
  wire \axaddr_incr_reg[8]_i_4_n_4 ;
  wire \axaddr_incr_reg[8]_i_4_n_5 ;
  wire \axaddr_incr_reg[8]_i_4_n_6 ;
  wire \axaddr_incr_reg[8]_i_4_n_7 ;
  wire \axaddr_incr_reg[9]_i_1__0_n_0 ;
  wire \axaddr_incr_reg[9]_i_3__0_n_0 ;
  wire \axlen_cnt[2]_i_1__1_n_0 ;
  wire \axlen_cnt[3]_i_1__2_n_0 ;
  wire \axlen_cnt[6]_i_1__0_n_0 ;
  wire \axlen_cnt[7]_i_2__0_n_0 ;
  wire \axlen_cnt[7]_i_4__0_n_0 ;
  wire \axlen_cnt_reg[4]_0 ;
  wire \axlen_cnt_reg[7]_0 ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[6] ;
  wire \axlen_cnt_reg_n_0_[7] ;
  wire incr_next_pending;
  wire m_axi_arready;
  wire [3:0]\m_payload_i_reg[11] ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[35]_1 ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[47] ;
  wire [8:0]\m_payload_i_reg[51] ;
  wire [0:0]m_valid_i_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire sel_first_i_1_n_0;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_arvalid;
  wire \state_reg[0] ;
  wire [1:0]\state_reg[1] ;
  wire [3:3]\NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_DI_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0A0A060A0A0A0A0A)) 
    \axaddr_incr[0]_i_10 
       (.I0(\m_payload_i_reg[51] [1]),
        .I1(\m_payload_i_reg[51] [4]),
        .I2(\m_payload_i_reg[51] [5]),
        .I3(m_axi_arready),
        .I4(\state_reg[1] [1]),
        .I5(\state_reg[1] [0]),
        .O(\axaddr_incr[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0202010202020202)) 
    \axaddr_incr[0]_i_11 
       (.I0(\m_payload_i_reg[51] [0]),
        .I1(\m_payload_i_reg[51] [5]),
        .I2(\m_payload_i_reg[51] [4]),
        .I3(m_axi_arready),
        .I4(\state_reg[1] [1]),
        .I5(\state_reg[1] [0]),
        .O(\axaddr_incr[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFE100E1)) 
    \axaddr_incr[0]_i_3__0 
       (.I0(\m_payload_i_reg[51] [5]),
        .I1(\m_payload_i_reg[51] [4]),
        .I2(axaddr_incr_reg[0]),
        .I3(sel_first_reg_0),
        .I4(\axaddr_incr_reg[0]_i_4_n_7 ),
        .O(\axaddr_incr[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \axaddr_incr[0]_i_8 
       (.I0(\m_payload_i_reg[51] [3]),
        .I1(\m_payload_i_reg[51] [5]),
        .I2(\m_payload_i_reg[51] [4]),
        .I3(m_axi_arready),
        .I4(\state_reg[1] [1]),
        .I5(\state_reg[1] [0]),
        .O(\axaddr_incr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A262A2A2A2A2A)) 
    \axaddr_incr[0]_i_9 
       (.I0(\m_payload_i_reg[51] [2]),
        .I1(\m_payload_i_reg[51] [5]),
        .I2(\m_payload_i_reg[51] [4]),
        .I3(m_axi_arready),
        .I4(\state_reg[1] [1]),
        .I5(\state_reg[1] [0]),
        .O(\axaddr_incr[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[10]_i_2__0 
       (.I0(\axaddr_incr_reg[8]_i_4_n_5 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[10]),
        .O(\axaddr_incr[10]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[11]_i_2__0 
       (.I0(\axaddr_incr_reg[8]_i_4_n_4 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[11]),
        .O(\axaddr_incr[11]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFD200D2)) 
    \axaddr_incr[1]_i_2__0 
       (.I0(\m_payload_i_reg[51] [4]),
        .I1(\m_payload_i_reg[51] [5]),
        .I2(axaddr_incr_reg[1]),
        .I3(sel_first_reg_0),
        .I4(\axaddr_incr_reg[0]_i_4_n_6 ),
        .O(\axaddr_incr[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFD200D2)) 
    \axaddr_incr[2]_i_2__0 
       (.I0(\m_payload_i_reg[51] [5]),
        .I1(\m_payload_i_reg[51] [4]),
        .I2(axaddr_incr_reg[2]),
        .I3(sel_first_reg_0),
        .I4(\axaddr_incr_reg[0]_i_4_n_5 ),
        .O(\axaddr_incr[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF780078)) 
    \axaddr_incr[3]_i_2__0 
       (.I0(\m_payload_i_reg[51] [5]),
        .I1(\m_payload_i_reg[51] [4]),
        .I2(axaddr_incr_reg[3]),
        .I3(sel_first_reg_0),
        .I4(\axaddr_incr_reg[0]_i_4_n_4 ),
        .O(\axaddr_incr[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[4]_i_2__0 
       (.I0(\axaddr_incr_reg[4]_i_4_n_7 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[4]),
        .O(\axaddr_incr[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[5]_i_2__0 
       (.I0(\axaddr_incr_reg[4]_i_4_n_6 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[5]),
        .O(\axaddr_incr[5]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[6]_i_2__0 
       (.I0(\axaddr_incr_reg[4]_i_4_n_5 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[6]),
        .O(\axaddr_incr[6]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[7]_i_2__0 
       (.I0(\axaddr_incr_reg[4]_i_4_n_4 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[7]),
        .O(\axaddr_incr[7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[8]_i_2__0 
       (.I0(\axaddr_incr_reg[8]_i_4_n_7 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[8]),
        .O(\axaddr_incr[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[9]_i_2__0 
       (.I0(\axaddr_incr_reg[8]_i_4_n_6 ),
        .I1(sel_first_reg_0),
        .I2(axaddr_incr_reg[9]),
        .O(\axaddr_incr[9]_i_2__0_n_0 ));
  FDRE \axaddr_incr_reg[0] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[0]_i_2__0_n_0 ),
        .Q(axaddr_incr_reg[0]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[0]_i_4_n_0 ,\axaddr_incr_reg[0]_i_4_n_1 ,\axaddr_incr_reg[0]_i_4_n_2 ,\axaddr_incr_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_payload_i_reg[51] [3],I26}),
        .O({\axaddr_incr_reg[0]_i_4_n_4 ,\axaddr_incr_reg[0]_i_4_n_5 ,\axaddr_incr_reg[0]_i_4_n_6 ,\axaddr_incr_reg[0]_i_4_n_7 }),
        .S({\axaddr_incr[0]_i_8_n_0 ,\axaddr_incr[0]_i_9_n_0 ,\axaddr_incr[0]_i_10_n_0 ,\axaddr_incr[0]_i_11_n_0 }));
  FDRE \axaddr_incr_reg[10] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[10]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[10]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[11] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[11]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[11]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[1] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[1]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[1]_i_3__0_CARRY4 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[4]_i_3__0_n_0 ,\axaddr_incr_reg[3]_i_3__0_n_0 ,\axaddr_incr_reg[2]_i_3__0_n_0 ,\axaddr_incr_reg[1]_i_3__0_n_0 }),
        .CYINIT(1'b0),
        .DI({\m_payload_i_reg[35]_1 ,\m_payload_i_reg[35]_0 ,\m_payload_i_reg[36] ,\m_payload_i_reg[35] }),
        .O({\axaddr_incr_reg[3]_i_1__0_n_0 ,\axaddr_incr_reg[2]_i_1__0_n_0 ,\axaddr_incr_reg[1]_i_1__0_n_0 ,\axaddr_incr_reg[0]_i_2__0_n_0 }),
        .S({\axaddr_incr[3]_i_2__0_n_0 ,\axaddr_incr[2]_i_2__0_n_0 ,\axaddr_incr[1]_i_2__0_n_0 ,\axaddr_incr[0]_i_3__0_n_0 }));
  FDRE \axaddr_incr_reg[2] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[2]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[2]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[3] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[3]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[3]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[4] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[4]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[4]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[4]_i_4 
       (.CI(\axaddr_incr_reg[0]_i_4_n_0 ),
        .CO({\axaddr_incr_reg[4]_i_4_n_0 ,\axaddr_incr_reg[4]_i_4_n_1 ,\axaddr_incr_reg[4]_i_4_n_2 ,\axaddr_incr_reg[4]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[4]_i_4_n_4 ,\axaddr_incr_reg[4]_i_4_n_5 ,\axaddr_incr_reg[4]_i_4_n_6 ,\axaddr_incr_reg[4]_i_4_n_7 }),
        .S(S));
  FDRE \axaddr_incr_reg[5] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[5]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[5]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[5]_i_3__0_CARRY4 
       (.CI(\axaddr_incr_reg[4]_i_3__0_n_0 ),
        .CO({\axaddr_incr_reg[8]_i_3__0_n_0 ,\axaddr_incr_reg[7]_i_3__0_n_0 ,\axaddr_incr_reg[6]_i_3__0_n_0 ,\axaddr_incr_reg[5]_i_3__0_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[7]_i_1__0_n_0 ,\axaddr_incr_reg[6]_i_1__0_n_0 ,\axaddr_incr_reg[5]_i_1__0_n_0 ,\axaddr_incr_reg[4]_i_1__0_n_0 }),
        .S({\axaddr_incr[7]_i_2__0_n_0 ,\axaddr_incr[6]_i_2__0_n_0 ,\axaddr_incr[5]_i_2__0_n_0 ,\axaddr_incr[4]_i_2__0_n_0 }));
  FDRE \axaddr_incr_reg[6] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[6]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[6]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[7] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[7]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[7]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[8] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[8]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[8]),
        .R(1'b0));
  CARRY4 \axaddr_incr_reg[8]_i_4 
       (.CI(\axaddr_incr_reg[4]_i_4_n_0 ),
        .CO({\NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED [3],\axaddr_incr_reg[8]_i_4_n_1 ,\axaddr_incr_reg[8]_i_4_n_2 ,\axaddr_incr_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[8]_i_4_n_4 ,\axaddr_incr_reg[8]_i_4_n_5 ,\axaddr_incr_reg[8]_i_4_n_6 ,\axaddr_incr_reg[8]_i_4_n_7 }),
        .S(\m_payload_i_reg[11] ));
  FDRE \axaddr_incr_reg[9] 
       (.C(aclk),
        .CE(sel_first_reg_1),
        .D(\axaddr_incr_reg[9]_i_1__0_n_0 ),
        .Q(axaddr_incr_reg[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \axaddr_incr_reg[9]_i_3__0_CARRY4 
       (.CI(\axaddr_incr_reg[8]_i_3__0_n_0 ),
        .CO({\NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_CO_UNCONNECTED [3:2],\axaddr_incr_reg[10]_i_3__0_n_0 ,\axaddr_incr_reg[9]_i_3__0_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[11]_i_1__0_n_0 ,\axaddr_incr_reg[10]_i_1__0_n_0 ,\axaddr_incr_reg[9]_i_1__0_n_0 ,\axaddr_incr_reg[8]_i_1__0_n_0 }),
        .S({\axaddr_incr[11]_i_2__0_n_0 ,\axaddr_incr[10]_i_2__0_n_0 ,\axaddr_incr[9]_i_2__0_n_0 ,\axaddr_incr[8]_i_2__0_n_0 }));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \axlen_cnt[2]_i_1__1 
       (.I0(E),
        .I1(\m_payload_i_reg[51] [6]),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\state_reg[0] ),
        .O(\axlen_cnt[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA90000FFFFFFFF)) 
    \axlen_cnt[3]_i_1__2 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(\state_reg[0] ),
        .I5(\m_payload_i_reg[47] ),
        .O(\axlen_cnt[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[4]_i_2__0 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \axlen_cnt[6]_i_1__0 
       (.I0(E),
        .I1(\m_payload_i_reg[51] [7]),
        .I2(\axlen_cnt_reg_n_0_[6] ),
        .I3(\axlen_cnt_reg[7]_0 ),
        .I4(Q[3]),
        .I5(\state_reg[0] ),
        .O(\axlen_cnt[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \axlen_cnt[7]_i_2__0 
       (.I0(E),
        .I1(\m_payload_i_reg[51] [8]),
        .I2(\axlen_cnt_reg_n_0_[7] ),
        .I3(\axlen_cnt_reg[7]_0 ),
        .I4(\axlen_cnt[7]_i_4__0_n_0 ),
        .I5(\state_reg[0] ),
        .O(\axlen_cnt[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axlen_cnt[7]_i_3__0 
       (.I0(Q[2]),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt_reg[7]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axlen_cnt[7]_i_4__0 
       (.I0(Q[3]),
        .I1(\axlen_cnt_reg_n_0_[6] ),
        .O(\axlen_cnt[7]_i_4__0_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[2]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[3]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[5] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[6] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[6]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[7] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[7]_i_2__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    next_pending_r_i_3__2
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(\axlen_cnt_reg_n_0_[7] ),
        .I5(\axlen_cnt[7]_i_4__0_n_0 ),
        .O(next_pending_r_reg_1));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_next_pending),
        .Q(next_pending_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC4C4CFCC)) 
    sel_first_i_1
       (.I0(m_axi_arready),
        .I1(sel_first_reg_0),
        .I2(\state_reg[1] [1]),
        .I3(si_rs_arvalid),
        .I4(\state_reg[1] [0]),
        .I5(areset_d1),
        .O(sel_first_i_1_n_0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i_1_n_0),
        .Q(sel_first_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_r_channel" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel
   (\cnt_read_reg[0]_rep__2_rep__0 ,
    \state_reg[0]_rep ,
    m_axi_rready,
    out,
    \skid_buffer_reg[35] ,
    r_push,
    aclk,
    r_rlast,
    s_arid_r,
    si_rs_rready,
    m_axi_rvalid,
    in,
    areset_d1);
  output \cnt_read_reg[0]_rep__2_rep__0 ;
  output \state_reg[0]_rep ;
  output m_axi_rready;
  output [33:0]out;
  output [1:0]\skid_buffer_reg[35] ;
  input r_push;
  input aclk;
  input r_rlast;
  input s_arid_r;
  input si_rs_rready;
  input m_axi_rvalid;
  input [33:0]in;
  input areset_d1;

  wire aclk;
  wire areset_d1;
  wire \cnt_read_reg[0]_rep__2_rep__0 ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire r_push;
  wire r_push_r;
  wire r_rlast;
  wire rd_data_fifo_0_n_2;
  wire s_arid_r;
  wire si_rs_rready;
  wire [1:0]\skid_buffer_reg[35] ;
  wire \state_reg[0]_rep ;
  wire [1:0]trans_in;
  wire transaction_fifo_0_n_1;

  FDRE \r_arid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_arid_r),
        .Q(trans_in[1]),
        .R(1'b0));
  FDRE r_push_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_push),
        .Q(r_push_r),
        .R(1'b0));
  FDRE r_rlast_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_rlast),
        .Q(trans_in[0]),
        .R(1'b0));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1 rd_data_fifo_0
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[0]_rep__2_rep__0_0 (\cnt_read_reg[0]_rep__2_rep__0 ),
        .\cnt_read_reg[4]_0 (transaction_fifo_0_n_1),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .si_rs_rready(si_rs_rready),
        .\state_reg[0]_rep (rd_data_fifo_0_n_2));
  ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2 transaction_fifo_0
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[0]_rep__2_rep (rd_data_fifo_0_n_2),
        .\cnt_read_reg[0]_rep__2_rep__0 (transaction_fifo_0_n_1),
        .\cnt_read_reg[3]_rep__3_rep (\cnt_read_reg[0]_rep__2_rep__0 ),
        .in(trans_in),
        .r_push_r(r_push_r),
        .si_rs_rready(si_rs_rready),
        .\skid_buffer_reg[35] (\skid_buffer_reg[35] ),
        .\state_reg[0]_rep (\state_reg[0]_rep ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_rd_cmd_fsm" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm
   (D,
    \wrap_second_len_r_reg[3] ,
    \axlen_cnt_reg[5] ,
    \axlen_cnt_reg[4] ,
    \state_reg[1]_0 ,
    E,
    \state_reg[0]_rep_0 ,
    \state_reg[0]_rep_1 ,
    \axaddr_offset_r_reg[2] ,
    \axaddr_offset_r_reg[2]_0 ,
    s_axburst_eq0_reg,
    wrap_next_pending,
    sel_first_i,
    incr_next_pending,
    s_axburst_eq1_reg,
    r_push_r_reg,
    \axlen_cnt_reg[0] ,
    \axaddr_wrap_reg[0] ,
    \axlen_cnt_reg[0]_0 ,
    \axaddr_incr_reg[0] ,
    m_axi_arvalid,
    \m_payload_i_reg[0] ,
    \m_payload_i_reg[44] ,
    Q,
    si_rs_arvalid,
    \m_payload_i_reg[49] ,
    \wrap_second_len_r_reg[2] ,
    \m_payload_i_reg[0]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    \m_payload_i_reg[47] ,
    \axaddr_offset_r_reg[3] ,
    \m_payload_i_reg[35] ,
    \axlen_cnt_reg[3] ,
    \axlen_cnt_reg[4]_0 ,
    \axlen_cnt_reg[3]_0 ,
    \m_payload_i_reg[5] ,
    \m_payload_i_reg[46] ,
    \state_reg[0]_rep_2 ,
    next_pending_r_reg,
    \m_payload_i_reg[48] ,
    next_pending_r_reg_0,
    m_axi_arready,
    areset_d1,
    sel_first_reg,
    sel_first_reg_0,
    s_axburst_eq1_reg_0,
    \cnt_read_reg[4] ,
    aclk);
  output [2:0]D;
  output [2:0]\wrap_second_len_r_reg[3] ;
  output [3:0]\axlen_cnt_reg[5] ;
  output \axlen_cnt_reg[4] ;
  output [1:0]\state_reg[1]_0 ;
  output [0:0]E;
  output \state_reg[0]_rep_0 ;
  output \state_reg[0]_rep_1 ;
  output \axaddr_offset_r_reg[2] ;
  output [0:0]\axaddr_offset_r_reg[2]_0 ;
  output s_axburst_eq0_reg;
  output wrap_next_pending;
  output sel_first_i;
  output incr_next_pending;
  output s_axburst_eq1_reg;
  output r_push_r_reg;
  output [0:0]\axlen_cnt_reg[0] ;
  output [0:0]\axaddr_wrap_reg[0] ;
  output [0:0]\axlen_cnt_reg[0]_0 ;
  output \axaddr_incr_reg[0] ;
  output m_axi_arvalid;
  output [0:0]\m_payload_i_reg[0] ;
  input \m_payload_i_reg[44] ;
  input [3:0]Q;
  input si_rs_arvalid;
  input [5:0]\m_payload_i_reg[49] ;
  input [0:0]\wrap_second_len_r_reg[2] ;
  input \m_payload_i_reg[0]_0 ;
  input [2:0]\wrap_second_len_r_reg[3]_0 ;
  input [2:0]\m_payload_i_reg[47] ;
  input [1:0]\axaddr_offset_r_reg[3] ;
  input \m_payload_i_reg[35] ;
  input \axlen_cnt_reg[3] ;
  input \axlen_cnt_reg[4]_0 ;
  input \axlen_cnt_reg[3]_0 ;
  input \m_payload_i_reg[5] ;
  input \m_payload_i_reg[46] ;
  input \state_reg[0]_rep_2 ;
  input next_pending_r_reg;
  input \m_payload_i_reg[48] ;
  input next_pending_r_reg_0;
  input m_axi_arready;
  input areset_d1;
  input sel_first_reg;
  input sel_first_reg_0;
  input s_axburst_eq1_reg_0;
  input \cnt_read_reg[4] ;
  input aclk;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire aclk;
  wire areset_d1;
  wire \axaddr_incr_reg[0] ;
  wire \axaddr_offset_r_reg[2] ;
  wire [0:0]\axaddr_offset_r_reg[2]_0 ;
  wire [1:0]\axaddr_offset_r_reg[3] ;
  wire [0:0]\axaddr_wrap_reg[0] ;
  wire [0:0]\axlen_cnt_reg[0] ;
  wire [0:0]\axlen_cnt_reg[0]_0 ;
  wire \axlen_cnt_reg[3] ;
  wire \axlen_cnt_reg[3]_0 ;
  wire \axlen_cnt_reg[4] ;
  wire \axlen_cnt_reg[4]_0 ;
  wire [3:0]\axlen_cnt_reg[5] ;
  wire \cnt_read_reg[4] ;
  wire incr_next_pending;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [0:0]\m_payload_i_reg[0] ;
  wire \m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[44] ;
  wire \m_payload_i_reg[46] ;
  wire [2:0]\m_payload_i_reg[47] ;
  wire \m_payload_i_reg[48] ;
  wire [5:0]\m_payload_i_reg[49] ;
  wire \m_payload_i_reg[5] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire [1:0]next_state;
  wire r_push_r_reg;
  wire s_axburst_eq0_reg;
  wire s_axburst_eq1_reg;
  wire s_axburst_eq1_reg_0;
  wire sel_first_i;
  wire sel_first_reg;
  wire sel_first_reg_0;
  wire si_rs_arvalid;
  wire \state[0]_rep_i_1_n_0 ;
  wire \state[1]_rep_i_1_n_0 ;
  wire \state_reg[0]_rep_0 ;
  wire \state_reg[0]_rep_1 ;
  wire \state_reg[0]_rep_2 ;
  wire [1:0]\state_reg[1]_0 ;
  wire wrap_next_pending;
  wire \wrap_second_len_r[0]_i_2__0_n_0 ;
  wire [0:0]\wrap_second_len_r_reg[2] ;
  wire [2:0]\wrap_second_len_r_reg[3] ;
  wire [2:0]\wrap_second_len_r_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \axaddr_incr[0]_i_1__0 
       (.I0(sel_first_reg_0),
        .I1(\state_reg[0]_rep_1 ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_arready),
        .O(\axaddr_incr_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \axaddr_offset_r[2]_i_1__0 
       (.I0(\axaddr_offset_r_reg[2] ),
        .O(\axaddr_offset_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h55555555553F5555)) 
    \axaddr_offset_r[2]_i_2__0 
       (.I0(\axaddr_offset_r_reg[3] [0]),
        .I1(\m_payload_i_reg[49] [3]),
        .I2(\m_payload_i_reg[5] ),
        .I3(\state_reg[1]_0 [1]),
        .I4(si_rs_arvalid),
        .I5(\state_reg[1]_0 [0]),
        .O(\axaddr_offset_r_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0E02)) 
    \axaddr_wrap[11]_i_1__0 
       (.I0(si_rs_arvalid),
        .I1(\state_reg[0]_rep_1 ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_arready),
        .O(\axaddr_wrap_reg[0] ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \axlen_cnt[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\axlen_cnt_reg[4] ),
        .I2(\state_reg[1]_0 [1]),
        .I3(si_rs_arvalid),
        .I4(\state_reg[1]_0 [0]),
        .I5(\m_payload_i_reg[49] [1]),
        .O(\axlen_cnt_reg[5] [0]));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \axlen_cnt[1]_i_1__1 
       (.I0(E),
        .I1(\m_payload_i_reg[49] [2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\axlen_cnt_reg[4] ),
        .O(\axlen_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0E02)) 
    \axlen_cnt[3]_i_1__1 
       (.I0(si_rs_arvalid),
        .I1(\state_reg[0]_rep_1 ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_arready),
        .O(\axlen_cnt_reg[0] ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \axlen_cnt[4]_i_1__0 
       (.I0(E),
        .I1(\m_payload_i_reg[49] [4]),
        .I2(Q[2]),
        .I3(\axlen_cnt_reg[3] ),
        .I4(\axlen_cnt_reg[4] ),
        .O(\axlen_cnt_reg[5] [2]));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \axlen_cnt[5]_i_1__0 
       (.I0(E),
        .I1(\m_payload_i_reg[49] [5]),
        .I2(Q[3]),
        .I3(\axlen_cnt_reg[4]_0 ),
        .I4(\axlen_cnt_reg[4] ),
        .O(\axlen_cnt_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0E02)) 
    \axlen_cnt[7]_i_1__0 
       (.I0(si_rs_arvalid),
        .I1(\state_reg[0]_rep_1 ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_arready),
        .O(\axlen_cnt_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \axlen_cnt[7]_i_5 
       (.I0(\axlen_cnt_reg[3]_0 ),
        .I1(\state_reg[1]_0 [0]),
        .I2(si_rs_arvalid),
        .I3(\state_reg[1]_0 [1]),
        .O(\axlen_cnt_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_arvalid_INST_0
       (.I0(\state_reg[0]_rep_1 ),
        .I1(\state_reg[0]_rep_0 ),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \m_payload_i[31]_i_1__0 
       (.I0(\state_reg[0]_rep_0 ),
        .I1(\state_reg[0]_rep_1 ),
        .I2(si_rs_arvalid),
        .O(\m_payload_i_reg[0] ));
  LUT5 #(
    .INIT(32'hFF53DC50)) 
    next_pending_r_i_1__1
       (.I0(\m_payload_i_reg[46] ),
        .I1(r_push_r_reg),
        .I2(E),
        .I3(\state_reg[0]_rep_2 ),
        .I4(next_pending_r_reg),
        .O(wrap_next_pending));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    next_pending_r_i_1__2
       (.I0(\m_payload_i_reg[48] ),
        .I1(E),
        .I2(\axlen_cnt_reg[3]_0 ),
        .I3(r_push_r_reg),
        .I4(next_pending_r_reg_0),
        .O(incr_next_pending));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    r_push_r_i_1
       (.I0(m_axi_arready),
        .I1(\state_reg[0]_rep_0 ),
        .I2(\state_reg[0]_rep_1 ),
        .O(r_push_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    s_axburst_eq0_i_1__0
       (.I0(wrap_next_pending),
        .I1(\m_payload_i_reg[49] [0]),
        .I2(sel_first_i),
        .I3(incr_next_pending),
        .O(s_axburst_eq0_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    s_axburst_eq1_i_1__0
       (.I0(wrap_next_pending),
        .I1(\m_payload_i_reg[49] [0]),
        .I2(sel_first_i),
        .I3(incr_next_pending),
        .O(s_axburst_eq1_reg));
  LUT6 #(
    .INIT(64'hFFCFFFFFCCCCCCEE)) 
    sel_first_i_1__0
       (.I0(si_rs_arvalid),
        .I1(areset_d1),
        .I2(m_axi_arready),
        .I3(\state_reg[0]_rep_0 ),
        .I4(\state_reg[0]_rep_1 ),
        .I5(sel_first_reg),
        .O(sel_first_i));
  LUT6 #(
    .INIT(64'h0F000F00FF70F070)) 
    \state[0]_i_1__0 
       (.I0(m_axi_arready),
        .I1(s_axburst_eq1_reg_0),
        .I2(\state_reg[1]_0 [0]),
        .I3(\cnt_read_reg[4] ),
        .I4(si_rs_arvalid),
        .I5(\state_reg[0]_rep_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h0F000F00FF70F070)) 
    \state[0]_rep_i_1 
       (.I0(m_axi_arready),
        .I1(s_axburst_eq1_reg_0),
        .I2(\state_reg[0]_rep_1 ),
        .I3(\cnt_read_reg[4] ),
        .I4(si_rs_arvalid),
        .I5(\state_reg[0]_rep_0 ),
        .O(\state[0]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00337000)) 
    \state[1]_i_1__0 
       (.I0(s_axburst_eq1_reg_0),
        .I1(\cnt_read_reg[4] ),
        .I2(m_axi_arready),
        .I3(\state_reg[0]_rep_1 ),
        .I4(\state_reg[1]_0 [1]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'h00337000)) 
    \state[1]_rep_i_1 
       (.I0(s_axburst_eq1_reg_0),
        .I1(\cnt_read_reg[4] ),
        .I2(m_axi_arready),
        .I3(\state_reg[1]_0 [0]),
        .I4(\state_reg[0]_rep_0 ),
        .O(\state[1]_rep_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(\state_reg[1]_0 [0]),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_rep_i_1_n_0 ),
        .Q(\state_reg[0]_rep_1 ),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[1]" *) 
  FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(\state_reg[1]_0 [1]),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[1]" *) 
  FDRE \state_reg[1]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_rep_i_1_n_0 ),
        .Q(\state_reg[0]_rep_0 ),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wrap_boundary_axaddr_r[11]_i_1__0 
       (.I0(\state_reg[0]_rep_0 ),
        .I1(si_rs_arvalid),
        .I2(\state_reg[0]_rep_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hDDDDD8DDAAAAA8AA)) 
    \wrap_cnt_r[0]_i_1__0 
       (.I0(\wrap_second_len_r[0]_i_2__0_n_0 ),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(\state_reg[1]_0 [1]),
        .I3(si_rs_arvalid),
        .I4(\state_reg[1]_0 [0]),
        .I5(\wrap_second_len_r_reg[3]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_cnt_r[1]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3] [1]),
        .I1(\m_payload_i_reg[44] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \wrap_cnt_r[3]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3] [2]),
        .I1(\wrap_second_len_r_reg[3] [1]),
        .I2(\m_payload_i_reg[44] ),
        .I3(\wrap_second_len_r_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000CCCCCACC)) 
    \wrap_second_len_r[0]_i_1__0 
       (.I0(\wrap_second_len_r[0]_i_2__0_n_0 ),
        .I1(\wrap_second_len_r_reg[3]_0 [0]),
        .I2(\state_reg[1]_0 [0]),
        .I3(si_rs_arvalid),
        .I4(\state_reg[1]_0 [1]),
        .I5(\m_payload_i_reg[0]_0 ),
        .O(\wrap_second_len_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFFFFFFF)) 
    \wrap_second_len_r[0]_i_2__0 
       (.I0(\axaddr_offset_r_reg[3] [1]),
        .I1(E),
        .I2(\m_payload_i_reg[35] ),
        .I3(\m_payload_i_reg[47] [1]),
        .I4(\m_payload_i_reg[47] [0]),
        .I5(\axaddr_offset_r_reg[2] ),
        .O(\wrap_second_len_r[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC0AAC3AAC3AA)) 
    \wrap_second_len_r[1]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_0 [1]),
        .I1(\m_payload_i_reg[47] [0]),
        .I2(\m_payload_i_reg[47] [1]),
        .I3(E),
        .I4(\m_payload_i_reg[47] [2]),
        .I5(\axaddr_offset_r_reg[2] ),
        .O(\wrap_second_len_r_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \wrap_second_len_r[3]_i_1__0 
       (.I0(\axaddr_offset_r_reg[2] ),
        .I1(\m_payload_i_reg[47] [0]),
        .I2(\m_payload_i_reg[47] [1]),
        .I3(\m_payload_i_reg[35] ),
        .I4(E),
        .I5(\wrap_second_len_r_reg[3]_0 [2]),
        .O(\wrap_second_len_r_reg[3] [2]));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_simple_fifo" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo
   (bresp_push,
    \cnt_read_reg[0]_rep__0_0 ,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \state_reg[1]_rep ,
    \state_reg[0]_rep ,
    SR,
    \state_reg[1]_rep_0 ,
    out,
    b_push,
    shandshake_r,
    Q,
    mhandshake_r,
    m_axi_awready,
    \state_reg[1]_1 ,
    \state_reg[0]_rep_0 ,
    s_axburst_eq0,
    \m_payload_i_reg[39] ,
    s_axburst_eq1,
    areset_d1,
    \state_reg[1]_rep_1 ,
    in,
    aclk);
  output bresp_push;
  output \cnt_read_reg[0]_rep__0_0 ;
  output \state_reg[1] ;
  output [0:0]\state_reg[1]_0 ;
  output \state_reg[1]_rep ;
  output \state_reg[0]_rep ;
  output [0:0]SR;
  output \state_reg[1]_rep_0 ;
  output [0:0]out;
  input b_push;
  input shandshake_r;
  input [7:0]Q;
  input mhandshake_r;
  input m_axi_awready;
  input [1:0]\state_reg[1]_1 ;
  input \state_reg[0]_rep_0 ;
  input s_axburst_eq0;
  input [0:0]\m_payload_i_reg[39] ;
  input s_axburst_eq1;
  input areset_d1;
  input \state_reg[1]_rep_1 ;
  input [8:0]in;
  input aclk;

  wire [7:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire b_push;
  wire bresp_push;
  wire [1:1]cnt_read;
  wire \cnt_read[0]_i_1_n_0 ;
  wire \cnt_read[0]_rep__0_i_1_n_0 ;
  wire \cnt_read[0]_rep__1_i_1_n_0 ;
  wire \cnt_read[0]_rep_i_1_n_0 ;
  wire \cnt_read[1]_rep_i_1_n_0 ;
  wire [1:0]cnt_read_0;
  wire \cnt_read_reg[0]_rep__0_0 ;
  wire \cnt_read_reg[0]_rep_n_0 ;
  wire [8:0]in;
  wire m_axi_awready;
  wire [0:0]\m_payload_i_reg[39] ;
  wire \memory_reg[3][0]_srl4_i_2__0_n_0 ;
  wire \memory_reg[3][0]_srl4_i_3_n_0 ;
  wire \memory_reg[3][0]_srl4_i_4_n_0 ;
  wire \memory_reg[3][0]_srl4_i_5_n_0 ;
  wire \memory_reg[3][0]_srl4_i_6_n_0 ;
  wire \memory_reg[3][0]_srl4_n_0 ;
  wire \memory_reg[3][1]_srl4_n_0 ;
  wire \memory_reg[3][2]_srl4_n_0 ;
  wire \memory_reg[3][3]_srl4_n_0 ;
  wire \memory_reg[3][4]_srl4_n_0 ;
  wire \memory_reg[3][5]_srl4_n_0 ;
  wire \memory_reg[3][6]_srl4_n_0 ;
  wire \memory_reg[3][7]_srl4_n_0 ;
  wire mhandshake_r;
  wire [0:0]out;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire shandshake_r;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg[0]_rep ;
  wire \state_reg[0]_rep_0 ;
  wire \state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire [1:0]\state_reg[1]_1 ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire \state_reg[1]_rep_1 ;

  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \bresp_cnt[7]_i_1 
       (.I0(areset_d1),
        .I1(\memory_reg[3][0]_srl4_i_5_n_0 ),
        .I2(\memory_reg[3][0]_srl4_i_4_n_0 ),
        .I3(\memory_reg[3][0]_srl4_i_3_n_0 ),
        .I4(\memory_reg[3][0]_srl4_i_2__0_n_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_i_1 
       (.I0(cnt_read_0[0]),
        .I1(b_push),
        .I2(shandshake_r),
        .O(\cnt_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_rep__0_i_1 
       (.I0(\cnt_read_reg[0]_rep__0_0 ),
        .I1(b_push),
        .I2(shandshake_r),
        .O(\cnt_read[0]_rep__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_rep__1_i_1 
       (.I0(\state_reg[1] ),
        .I1(b_push),
        .I2(shandshake_r),
        .O(\cnt_read[0]_rep__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_rep_i_1 
       (.I0(\cnt_read_reg[0]_rep_n_0 ),
        .I1(b_push),
        .I2(shandshake_r),
        .O(\cnt_read[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \cnt_read[1]_i_1 
       (.I0(\cnt_read_reg[0]_rep__0_0 ),
        .I1(b_push),
        .I2(shandshake_r),
        .I3(cnt_read_0[1]),
        .O(cnt_read));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \cnt_read[1]_rep_i_1 
       (.I0(\cnt_read_reg[0]_rep__0_0 ),
        .I1(b_push),
        .I2(shandshake_r),
        .I3(\state_reg[1]_rep ),
        .O(\cnt_read[1]_rep_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1_n_0 ),
        .Q(cnt_read_0[0]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[0]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[0]_rep__0_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__1_i_1_n_0 ),
        .Q(\state_reg[1] ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_read),
        .Q(cnt_read_0[1]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep_i_1_n_0 ),
        .Q(\state_reg[1]_rep ),
        .S(areset_d1));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][0]_srl4 
       (.A0(\cnt_read_reg[0]_rep_n_0 ),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[0]),
        .Q(\memory_reg[3][0]_srl4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \memory_reg[3][0]_srl4_i_1__0 
       (.I0(\memory_reg[3][0]_srl4_i_2__0_n_0 ),
        .I1(\memory_reg[3][0]_srl4_i_3_n_0 ),
        .I2(\memory_reg[3][0]_srl4_i_4_n_0 ),
        .I3(\memory_reg[3][0]_srl4_i_5_n_0 ),
        .O(bresp_push));
  LUT6 #(
    .INIT(64'hD00DD00D0000D00D)) 
    \memory_reg[3][0]_srl4_i_2__0 
       (.I0(Q[1]),
        .I1(\memory_reg[3][1]_srl4_n_0 ),
        .I2(\memory_reg[3][3]_srl4_n_0 ),
        .I3(Q[3]),
        .I4(\memory_reg[3][4]_srl4_n_0 ),
        .I5(Q[4]),
        .O(\memory_reg[3][0]_srl4_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hD00D00000000D00D)) 
    \memory_reg[3][0]_srl4_i_3 
       (.I0(Q[7]),
        .I1(\memory_reg[3][7]_srl4_n_0 ),
        .I2(Q[5]),
        .I3(\memory_reg[3][5]_srl4_n_0 ),
        .I4(\memory_reg[3][2]_srl4_n_0 ),
        .I5(Q[2]),
        .O(\memory_reg[3][0]_srl4_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D00D0000)) 
    \memory_reg[3][0]_srl4_i_4 
       (.I0(\memory_reg[3][7]_srl4_n_0 ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\memory_reg[3][6]_srl4_n_0 ),
        .I4(mhandshake_r),
        .I5(\memory_reg[3][0]_srl4_i_6_n_0 ),
        .O(\memory_reg[3][0]_srl4_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD0D00000000DD0D)) 
    \memory_reg[3][0]_srl4_i_5 
       (.I0(Q[4]),
        .I1(\memory_reg[3][4]_srl4_n_0 ),
        .I2(\memory_reg[3][1]_srl4_n_0 ),
        .I3(Q[1]),
        .I4(\memory_reg[3][0]_srl4_n_0 ),
        .I5(Q[0]),
        .O(\memory_reg[3][0]_srl4_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \memory_reg[3][0]_srl4_i_6 
       (.I0(\state_reg[1] ),
        .I1(\state_reg[1]_rep ),
        .O(\memory_reg[3][0]_srl4_i_6_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][1]_srl4 
       (.A0(\cnt_read_reg[0]_rep_n_0 ),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[1]),
        .Q(\memory_reg[3][1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][2]_srl4 
       (.A0(\cnt_read_reg[0]_rep_n_0 ),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[2]),
        .Q(\memory_reg[3][2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][3]_srl4 
       (.A0(\cnt_read_reg[0]_rep_n_0 ),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[3]),
        .Q(\memory_reg[3][3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][4]_srl4 
       (.A0(cnt_read_0[0]),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[4]),
        .Q(\memory_reg[3][4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][5]_srl4 
       (.A0(cnt_read_0[0]),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[5]),
        .Q(\memory_reg[3][5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][6]_srl4 
       (.A0(cnt_read_0[0]),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[6]),
        .Q(\memory_reg[3][6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][7]_srl4 
       (.A0(cnt_read_0[0]),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[7]),
        .Q(\memory_reg[3][7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][8]_srl4 
       (.A0(cnt_read_0[0]),
        .A1(cnt_read_0[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[8]),
        .Q(out));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_2 
       (.I0(\state_reg[1]_rep ),
        .I1(\state_reg[1] ),
        .O(\state_reg[0]_rep ));
  LUT6 #(
    .INIT(64'h000000002E220000)) 
    \state[1]_i_1 
       (.I0(m_axi_awready),
        .I1(\state_reg[1]_1 [1]),
        .I2(\state_reg[1] ),
        .I3(\state_reg[1]_rep ),
        .I4(\state_reg[0]_rep_0 ),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h000BBB0B)) 
    \state[1]_i_2 
       (.I0(\state_reg[1] ),
        .I1(\state_reg[1]_rep ),
        .I2(s_axburst_eq0),
        .I3(\m_payload_i_reg[39] ),
        .I4(s_axburst_eq1),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002E220000)) 
    \state[1]_rep_i_1__0 
       (.I0(m_axi_awready),
        .I1(\state_reg[1]_rep_1 ),
        .I2(\state_reg[1] ),
        .I3(\state_reg[1]_rep ),
        .I4(\state_reg[1]_1 [0]),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state_reg[1]_rep_0 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_simple_fifo" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0
   (bvalid_i_reg,
    mhandshake,
    m_axi_bready,
    \skid_buffer_reg[1] ,
    bresp_push,
    shandshake_r,
    \cnt_read_reg[1]_rep ,
    \cnt_read_reg[0]_rep__1 ,
    m_axi_bvalid,
    mhandshake_r,
    in,
    aclk,
    areset_d1);
  output bvalid_i_reg;
  output mhandshake;
  output m_axi_bready;
  output [1:0]\skid_buffer_reg[1] ;
  input bresp_push;
  input shandshake_r;
  input \cnt_read_reg[1]_rep ;
  input \cnt_read_reg[0]_rep__1 ;
  input m_axi_bvalid;
  input mhandshake_r;
  input [1:0]in;
  input aclk;
  input areset_d1;

  wire aclk;
  wire areset_d1;
  wire bresp_push;
  wire bvalid_i_reg;
  wire [1:0]cnt_read;
  wire \cnt_read[0]_i_1__0_n_0 ;
  wire \cnt_read[1]_i_1__0_n_0 ;
  wire \cnt_read_reg[0]_rep__1 ;
  wire \cnt_read_reg[1]_rep ;
  wire [1:0]in;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire mhandshake;
  wire mhandshake_r;
  wire shandshake_r;
  wire [1:0]\skid_buffer_reg[1] ;

  LUT5 #(
    .INIT(32'h00070707)) 
    bvalid_i_i_2
       (.I0(cnt_read[0]),
        .I1(cnt_read[1]),
        .I2(shandshake_r),
        .I3(\cnt_read_reg[1]_rep ),
        .I4(\cnt_read_reg[0]_rep__1 ),
        .O(bvalid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_i_1__0 
       (.I0(cnt_read[0]),
        .I1(bresp_push),
        .I2(shandshake_r),
        .O(\cnt_read[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \cnt_read[1]_i_1__0 
       (.I0(cnt_read[0]),
        .I1(bresp_push),
        .I2(shandshake_r),
        .I3(cnt_read[1]),
        .O(\cnt_read[1]_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1__0_n_0 ),
        .Q(cnt_read[0]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_i_1__0_n_0 ),
        .Q(cnt_read[1]),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_bready_INST_0
       (.I0(cnt_read[1]),
        .I1(cnt_read[0]),
        .I2(mhandshake_r),
        .O(m_axi_bready));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][0]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(bresp_push),
        .CLK(aclk),
        .D(in[0]),
        .Q(\skid_buffer_reg[1] [0]));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][1]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(bresp_push),
        .CLK(aclk),
        .D(in[1]),
        .Q(\skid_buffer_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    mhandshake_r_i_1
       (.I0(m_axi_bvalid),
        .I1(mhandshake_r),
        .I2(cnt_read[0]),
        .I3(cnt_read[1]),
        .O(mhandshake));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_simple_fifo" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1
   (\cnt_read_reg[0]_rep__2_rep__0_0 ,
    m_axi_rready,
    \state_reg[0]_rep ,
    out,
    si_rs_rready,
    m_axi_rvalid,
    \cnt_read_reg[4]_0 ,
    in,
    aclk,
    areset_d1);
  output \cnt_read_reg[0]_rep__2_rep__0_0 ;
  output m_axi_rready;
  output \state_reg[0]_rep ;
  output [33:0]out;
  input si_rs_rready;
  input m_axi_rvalid;
  input \cnt_read_reg[4]_0 ;
  input [33:0]in;
  input aclk;
  input areset_d1;

  wire aclk;
  wire areset_d1;
  wire [4:0]cnt_read;
  wire \cnt_read[0]_i_1__1_n_0 ;
  wire \cnt_read[0]_rep__0_i_1__0_n_0 ;
  wire \cnt_read[0]_rep__1_i_1__0_n_0 ;
  wire \cnt_read[0]_rep__2_i_1_n_0 ;
  wire \cnt_read[0]_rep__2_rep__0_i_1_n_0 ;
  wire \cnt_read[0]_rep__2_rep_i_1_n_0 ;
  wire \cnt_read[0]_rep_i_1__0_n_0 ;
  wire \cnt_read[1]_i_1__1_n_0 ;
  wire \cnt_read[1]_rep__0_i_1_n_0 ;
  wire \cnt_read[1]_rep__1_i_1_n_0 ;
  wire \cnt_read[1]_rep__2_i_1_n_0 ;
  wire \cnt_read[1]_rep__3_i_1_n_0 ;
  wire \cnt_read[1]_rep_i_1__0_n_0 ;
  wire \cnt_read[2]_i_1_n_0 ;
  wire \cnt_read[2]_rep__0_i_1_n_0 ;
  wire \cnt_read[2]_rep__1_i_1_n_0 ;
  wire \cnt_read[2]_rep__2_i_1_n_0 ;
  wire \cnt_read[2]_rep__2_rep__0_i_1_n_0 ;
  wire \cnt_read[2]_rep__2_rep_i_1_n_0 ;
  wire \cnt_read[2]_rep_i_1_n_0 ;
  wire \cnt_read[3]_i_1_n_0 ;
  wire \cnt_read[3]_rep__0_i_1_n_0 ;
  wire \cnt_read[3]_rep__1_i_1_n_0 ;
  wire \cnt_read[3]_rep__2_i_1_n_0 ;
  wire \cnt_read[3]_rep__3_i_1_n_0 ;
  wire \cnt_read[3]_rep__3_rep_i_1_n_0 ;
  wire \cnt_read[3]_rep_i_1_n_0 ;
  wire \cnt_read[4]_i_1_n_0 ;
  wire \cnt_read[4]_i_2_n_0 ;
  wire \cnt_read[4]_i_3_n_0 ;
  wire \cnt_read[4]_rep__0_i_1_n_0 ;
  wire \cnt_read[4]_rep__1_i_1_n_0 ;
  wire \cnt_read[4]_rep__2_i_1_n_0 ;
  wire \cnt_read[4]_rep__3_i_1_n_0 ;
  wire \cnt_read[4]_rep_i_1_n_0 ;
  wire \cnt_read_reg[0]_rep__0_n_0 ;
  wire \cnt_read_reg[0]_rep__1_n_0 ;
  wire \cnt_read_reg[0]_rep__2_n_0 ;
  wire \cnt_read_reg[0]_rep__2_rep__0_0 ;
  wire \cnt_read_reg[0]_rep__2_rep__0_n_0 ;
  wire \cnt_read_reg[0]_rep__2_rep_n_0 ;
  wire \cnt_read_reg[0]_rep_n_0 ;
  wire \cnt_read_reg[1]_rep__0_n_0 ;
  wire \cnt_read_reg[1]_rep__1_n_0 ;
  wire \cnt_read_reg[1]_rep__2_n_0 ;
  wire \cnt_read_reg[1]_rep__3_n_0 ;
  wire \cnt_read_reg[1]_rep_n_0 ;
  wire \cnt_read_reg[2]_rep__0_n_0 ;
  wire \cnt_read_reg[2]_rep__1_n_0 ;
  wire \cnt_read_reg[2]_rep__2_n_0 ;
  wire \cnt_read_reg[2]_rep__2_rep__0_n_0 ;
  wire \cnt_read_reg[2]_rep__2_rep_n_0 ;
  wire \cnt_read_reg[2]_rep_n_0 ;
  wire \cnt_read_reg[3]_rep__0_n_0 ;
  wire \cnt_read_reg[3]_rep__1_n_0 ;
  wire \cnt_read_reg[3]_rep__2_n_0 ;
  wire \cnt_read_reg[3]_rep__3_n_0 ;
  wire \cnt_read_reg[3]_rep__3_rep_n_0 ;
  wire \cnt_read_reg[3]_rep_n_0 ;
  wire \cnt_read_reg[4]_0 ;
  wire \cnt_read_reg[4]_rep__0_n_0 ;
  wire \cnt_read_reg[4]_rep__1_n_0 ;
  wire \cnt_read_reg[4]_rep__2_n_0 ;
  wire \cnt_read_reg[4]_rep__3_n_0 ;
  wire \cnt_read_reg[4]_rep_n_0 ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire si_rs_rready;
  wire \state_reg[0]_rep ;
  wire wr_en0;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_i_1__1 
       (.I0(cnt_read[0]),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep__0_i_1__0 
       (.I0(\cnt_read_reg[0]_rep__0_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep__0_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep__1_i_1__0 
       (.I0(\cnt_read_reg[0]_rep__1_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep__1_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep__2_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep__2_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep__2_rep__0_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep__2_rep__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep__2_rep_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep__2_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    \cnt_read[0]_rep_i_1__0 
       (.I0(\cnt_read_reg[0]_rep_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .O(\cnt_read[0]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_i_1__1 
       (.I0(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(cnt_read[1]),
        .O(\cnt_read[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_rep__0_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep__0_n_0 ),
        .O(\cnt_read[1]_rep__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_rep__1_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep__1_n_0 ),
        .O(\cnt_read[1]_rep__1_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_rep__2_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep__2_n_0 ),
        .O(\cnt_read[1]_rep__2_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_rep__3_i_1 
       (.I0(\cnt_read_reg[0]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep__3_n_0 ),
        .O(\cnt_read[1]_rep__3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \cnt_read[1]_rep_i_1__0 
       (.I0(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep_n_0 ),
        .O(\cnt_read[1]_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_i_1 
       (.I0(\cnt_read_reg[1]_rep__3_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(cnt_read[2]),
        .O(\cnt_read[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep__0_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep__0_n_0 ),
        .O(\cnt_read[2]_rep__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep__1_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep__1_n_0 ),
        .O(\cnt_read[2]_rep__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep__2_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep__2_n_0 ),
        .O(\cnt_read[2]_rep__2_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep__2_rep__0_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .O(\cnt_read[2]_rep__2_rep__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep__2_rep_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .O(\cnt_read[2]_rep__2_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F77FEFF80880100)) 
    \cnt_read[2]_rep_i_1 
       (.I0(\cnt_read_reg[1]_rep__2_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I3(si_rs_rready),
        .I4(wr_en0),
        .I5(\cnt_read_reg[2]_rep_n_0 ),
        .O(\cnt_read[2]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(cnt_read[3]),
        .I2(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .O(\cnt_read[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep__0_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__0_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .O(\cnt_read[3]_rep__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep__1_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__1_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .O(\cnt_read[3]_rep__1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep__2_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__2_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .O(\cnt_read[3]_rep__2_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep__3_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__3_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .O(\cnt_read[3]_rep__3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep__3_rep_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_n_0 ),
        .O(\cnt_read[3]_rep__3_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_rep_i_1 
       (.I0(\cnt_read[4]_i_3_n_0 ),
        .I1(\cnt_read_reg[3]_rep_n_0 ),
        .I2(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .O(\cnt_read[3]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_i_1 
       (.I0(cnt_read[4]),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75FFFFFF)) 
    \cnt_read[4]_i_2 
       (.I0(\cnt_read_reg[1]_rep__3_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .O(\cnt_read[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF00000010)) 
    \cnt_read[4]_i_3 
       (.I0(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I1(\cnt_read_reg[0]_rep__2_rep__0_0 ),
        .I2(si_rs_rready),
        .I3(wr_en0),
        .I4(\cnt_read_reg[1]_rep__2_n_0 ),
        .I5(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .O(\cnt_read[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_rep__0_i_1 
       (.I0(\cnt_read_reg[4]_rep__0_n_0 ),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_rep__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_rep__1_i_1 
       (.I0(\cnt_read_reg[4]_rep__1_n_0 ),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_rep__1_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_rep__2_i_1 
       (.I0(\cnt_read_reg[4]_rep__2_n_0 ),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_rep__2_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_rep__3_i_1 
       (.I0(\cnt_read_reg[4]_rep__3_n_0 ),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_rep__3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_rep_i_1 
       (.I0(\cnt_read_reg[4]_rep_n_0 ),
        .I1(\cnt_read[4]_i_2_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .I4(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[4]_rep_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1__1_n_0 ),
        .Q(cnt_read[0]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep_i_1__0_n_0 ),
        .Q(\cnt_read_reg[0]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__0_i_1__0_n_0 ),
        .Q(\cnt_read_reg[0]_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__1_i_1__0_n_0 ),
        .Q(\cnt_read_reg[0]_rep__1_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__2 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__2_i_1_n_0 ),
        .Q(\cnt_read_reg[0]_rep__2_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__2_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__2_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[0]" *) 
  FDSE \cnt_read_reg[0]_rep__2_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_rep__2_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[0]_rep__2_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_i_1__1_n_0 ),
        .Q(cnt_read[1]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep_i_1__0_n_0 ),
        .Q(\cnt_read_reg[1]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[1]_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep__1_i_1_n_0 ),
        .Q(\cnt_read_reg[1]_rep__1_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep__2 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep__2_i_1_n_0 ),
        .Q(\cnt_read_reg[1]_rep__2_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[1]" *) 
  FDSE \cnt_read_reg[1]_rep__3 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_rep__3_i_1_n_0 ),
        .Q(\cnt_read_reg[1]_rep__3_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_i_1_n_0 ),
        .Q(cnt_read[2]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep__1_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep__1_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep__2 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep__2_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep__2_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep__2_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep__2_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[2]" *) 
  FDSE \cnt_read_reg[2]_rep__2_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_rep__2_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[2]_rep__2_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_i_1_n_0 ),
        .Q(cnt_read[3]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep__1_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep__1_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep__2 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep__2_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep__2_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep__3 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep__3_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep__3_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[3]" *) 
  FDSE \cnt_read_reg[3]_rep__3_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_rep__3_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_i_1_n_0 ),
        .Q(cnt_read[4]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_rep_i_1_n_0 ),
        .Q(\cnt_read_reg[4]_rep_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4]_rep__0 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_rep__0_i_1_n_0 ),
        .Q(\cnt_read_reg[4]_rep__0_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4]_rep__1 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_rep__1_i_1_n_0 ),
        .Q(\cnt_read_reg[4]_rep__1_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4]_rep__2 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_rep__2_i_1_n_0 ),
        .Q(\cnt_read_reg[4]_rep__2_n_0 ),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "cnt_read_reg[4]" *) 
  FDSE \cnt_read_reg[4]_rep__3 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_rep__3_i_1_n_0 ),
        .Q(\cnt_read_reg[4]_rep__3_n_0 ),
        .S(areset_d1));
  LUT5 #(
    .INIT(32'hF77F777F)) 
    m_axi_rready_INST_0
       (.I0(\cnt_read_reg[4]_rep__3_n_0 ),
        .I1(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I2(\cnt_read_reg[1]_rep__2_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .I4(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .O(m_axi_rready));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    m_valid_i_i_2
       (.I0(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I1(\cnt_read_reg[4]_rep__3_n_0 ),
        .I2(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I3(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .I4(\cnt_read_reg[1]_rep__3_n_0 ),
        .I5(\cnt_read_reg[4]_0 ),
        .O(\cnt_read_reg[0]_rep__2_rep__0_0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hAA2A2AAA2A2A2AAA)) 
    \memory_reg[31][0]_srl32_i_1 
       (.I0(m_axi_rvalid),
        .I1(\cnt_read_reg[4]_rep__3_n_0 ),
        .I2(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I3(\cnt_read_reg[1]_rep__3_n_0 ),
        .I4(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .I5(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .O(wr_en0));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][10]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]),
        .Q31(\NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][11]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]),
        .Q31(\NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][12]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]),
        .Q31(\NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][13]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]),
        .Q31(\NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][14]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]),
        .Q31(\NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][15]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]),
        .Q31(\NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][16]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[16]),
        .Q(out[16]),
        .Q31(\NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][17]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[17]),
        .Q(out[17]),
        .Q31(\NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][18]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[18]),
        .Q(out[18]),
        .Q31(\NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][19]_srl32 
       (.A({\cnt_read_reg[4]_rep__0_n_0 ,\cnt_read_reg[3]_rep__0_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[19]),
        .Q(out[19]),
        .Q31(\NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][1]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]),
        .Q31(\NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][20]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[20]),
        .Q(out[20]),
        .Q31(\NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][21]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[21]),
        .Q(out[21]),
        .Q31(\NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][22]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[22]),
        .Q(out[22]),
        .Q31(\NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][23]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[23]),
        .Q(out[23]),
        .Q31(\NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][24]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,\cnt_read_reg[2]_rep_n_0 ,\cnt_read_reg[1]_rep_n_0 ,\cnt_read_reg[0]_rep_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[24]),
        .Q(out[24]),
        .Q31(\NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][25]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,cnt_read[2:0]}),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[25]),
        .Q(out[25]),
        .Q31(\NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][26]_srl32 
       (.A({\cnt_read_reg[4]_rep_n_0 ,\cnt_read_reg[3]_rep_n_0 ,cnt_read[2:0]}),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[26]),
        .Q(out[26]),
        .Q31(\NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][27]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[27]),
        .Q(out[27]),
        .Q31(\NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][28]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[28]),
        .Q(out[28]),
        .Q31(\NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][29]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[29]),
        .Q(out[29]),
        .Q31(\NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][2]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]),
        .Q31(\NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][30]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[30]),
        .Q(out[30]),
        .Q31(\NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][31]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[31]),
        .Q(out[31]),
        .Q31(\NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][32]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[32]),
        .Q(out[32]),
        .Q31(\NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][33]_srl32 
       (.A(cnt_read),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[33]),
        .Q(out[33]),
        .Q31(\NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][3]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]),
        .Q31(\NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][4]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]),
        .Q31(\NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][5]_srl32 
       (.A({\cnt_read_reg[4]_rep__2_n_0 ,\cnt_read_reg[3]_rep__2_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]),
        .Q31(\NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][6]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__1_n_0 ,\cnt_read_reg[1]_rep__1_n_0 ,\cnt_read_reg[0]_rep__1_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]),
        .Q31(\NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][7]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]),
        .Q31(\NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][8]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]),
        .Q31(\NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][9]_srl32 
       (.A({\cnt_read_reg[4]_rep__1_n_0 ,\cnt_read_reg[3]_rep__1_n_0 ,\cnt_read_reg[2]_rep__0_n_0 ,\cnt_read_reg[1]_rep__0_n_0 ,\cnt_read_reg[0]_rep__0_n_0 }),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]),
        .Q31(\NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'h7C000000)) 
    \state[1]_i_4 
       (.I0(\cnt_read_reg[0]_rep__2_rep_n_0 ),
        .I1(\cnt_read_reg[2]_rep__2_rep_n_0 ),
        .I2(\cnt_read_reg[1]_rep__3_n_0 ),
        .I3(\cnt_read_reg[3]_rep__3_rep_n_0 ),
        .I4(\cnt_read_reg[4]_rep__3_n_0 ),
        .O(\state_reg[0]_rep ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_simple_fifo" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2
   (\state_reg[0]_rep ,
    \cnt_read_reg[0]_rep__2_rep__0 ,
    \skid_buffer_reg[35] ,
    si_rs_rready,
    \cnt_read_reg[3]_rep__3_rep ,
    r_push_r,
    \cnt_read_reg[0]_rep__2_rep ,
    in,
    aclk,
    areset_d1);
  output \state_reg[0]_rep ;
  output \cnt_read_reg[0]_rep__2_rep__0 ;
  output [1:0]\skid_buffer_reg[35] ;
  input si_rs_rready;
  input \cnt_read_reg[3]_rep__3_rep ;
  input r_push_r;
  input \cnt_read_reg[0]_rep__2_rep ;
  input [1:0]in;
  input aclk;
  input areset_d1;

  wire aclk;
  wire areset_d1;
  wire [4:0]cnt_read;
  wire \cnt_read[0]_i_1__2_n_0 ;
  wire \cnt_read[1]_i_1__2_n_0 ;
  wire \cnt_read[2]_i_1__0_n_0 ;
  wire \cnt_read[3]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_2__0_n_0 ;
  wire \cnt_read[4]_i_3__0_n_0 ;
  wire \cnt_read_reg[0]_rep__2_rep ;
  wire \cnt_read_reg[0]_rep__2_rep__0 ;
  wire \cnt_read_reg[3]_rep__3_rep ;
  wire [1:0]in;
  wire r_push_r;
  wire si_rs_rready;
  wire [1:0]\skid_buffer_reg[35] ;
  wire \state_reg[0]_rep ;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h59A6)) 
    \cnt_read[0]_i_1__2 
       (.I0(cnt_read[0]),
        .I1(si_rs_rready),
        .I2(\cnt_read_reg[3]_rep__3_rep ),
        .I3(r_push_r),
        .O(\cnt_read[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h77E78818)) 
    \cnt_read[1]_i_1__2 
       (.I0(cnt_read[0]),
        .I1(r_push_r),
        .I2(si_rs_rready),
        .I3(\cnt_read_reg[3]_rep__3_rep ),
        .I4(cnt_read[1]),
        .O(\cnt_read[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFE7F80800180)) 
    \cnt_read[2]_i_1__0 
       (.I0(cnt_read[1]),
        .I1(cnt_read[0]),
        .I2(r_push_r),
        .I3(si_rs_rready),
        .I4(\cnt_read_reg[3]_rep__3_rep ),
        .I5(cnt_read[2]),
        .O(\cnt_read[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[3]_i_1__0 
       (.I0(\cnt_read[4]_i_3__0_n_0 ),
        .I1(cnt_read[3]),
        .I2(cnt_read[2]),
        .O(\cnt_read[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h9AA59AAA)) 
    \cnt_read[4]_i_1__0 
       (.I0(cnt_read[4]),
        .I1(\cnt_read[4]_i_2__0_n_0 ),
        .I2(cnt_read[3]),
        .I3(cnt_read[2]),
        .I4(\cnt_read[4]_i_3__0_n_0 ),
        .O(\cnt_read[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h5DFFFFFF)) 
    \cnt_read[4]_i_2__0 
       (.I0(cnt_read[1]),
        .I1(si_rs_rready),
        .I2(\cnt_read_reg[3]_rep__3_rep ),
        .I3(r_push_r),
        .I4(cnt_read[0]),
        .O(\cnt_read[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h77F7FFFF00000010)) 
    \cnt_read[4]_i_3__0 
       (.I0(cnt_read[0]),
        .I1(r_push_r),
        .I2(si_rs_rready),
        .I3(\cnt_read_reg[3]_rep__3_rep ),
        .I4(cnt_read[1]),
        .I5(cnt_read[2]),
        .O(\cnt_read[4]_i_3__0_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1__2_n_0 ),
        .Q(cnt_read[0]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_i_1__2_n_0 ),
        .Q(cnt_read[1]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[2]_i_1__0_n_0 ),
        .Q(cnt_read[2]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[3]_i_1__0_n_0 ),
        .Q(cnt_read[3]),
        .S(areset_d1));
  (* KEEP = "yes" *) 
  FDSE \cnt_read_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[4]_i_1__0_n_0 ),
        .Q(cnt_read[4]),
        .S(areset_d1));
  LUT5 #(
    .INIT(32'h80000000)) 
    m_valid_i_i_3
       (.I0(cnt_read[4]),
        .I1(cnt_read[3]),
        .I2(cnt_read[1]),
        .I3(cnt_read[2]),
        .I4(cnt_read[0]),
        .O(\cnt_read_reg[0]_rep__2_rep__0 ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A(cnt_read),
        .CE(r_push_r),
        .CLK(aclk),
        .D(in[0]),
        .Q(\skid_buffer_reg[35] [0]),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][1]_srl32 
       (.A(cnt_read),
        .CE(r_push_r),
        .CLK(aclk),
        .D(in[1]),
        .Q(\skid_buffer_reg[35] [1]),
        .Q31(\NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h5515155515151555)) 
    \state[1]_i_3 
       (.I0(\cnt_read_reg[0]_rep__2_rep ),
        .I1(cnt_read[4]),
        .I2(cnt_read[3]),
        .I3(cnt_read[1]),
        .I4(cnt_read[2]),
        .I5(cnt_read[0]),
        .O(\state_reg[0]_rep ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_wr_cmd_fsm" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm
   (D,
    \wrap_second_len_r_reg[3] ,
    E,
    \state_reg[0]_rep_0 ,
    \state_reg[0]_rep_1 ,
    S,
    \m_payload_i_reg[0] ,
    s_axburst_eq0_reg,
    wrap_next_pending,
    sel_first_i,
    incr_next_pending,
    s_axburst_eq1_reg,
    next_pending_r_reg,
    \wrap_cnt_r_reg[0] ,
    \axaddr_offset_r_reg[2] ,
    \axlen_cnt_reg[0] ,
    \axaddr_offset_r_reg[2]_0 ,
    \axlen_cnt_reg[0]_0 ,
    \axaddr_wrap_reg[0] ,
    \axlen_cnt_reg[0]_1 ,
    \axaddr_incr_reg[0] ,
    \m_payload_i_reg[0]_0 ,
    m_axi_awvalid,
    \m_payload_i_reg[44] ,
    si_rs_awvalid,
    Q,
    \m_payload_i_reg[48] ,
    next_pending_r_reg_0,
    \axlen_cnt_reg[4] ,
    \wrap_second_len_r_reg[2] ,
    \m_payload_i_reg[0]_1 ,
    \wrap_second_len_r_reg[3]_0 ,
    \m_payload_i_reg[47] ,
    \axaddr_offset_r_reg[3] ,
    \m_payload_i_reg[35] ,
    \axlen_cnt_reg[4]_0 ,
    \axlen_cnt_reg[0]_2 ,
    \m_payload_i_reg[5] ,
    \m_payload_i_reg[46] ,
    \axlen_cnt_reg[3] ,
    next_pending_r_reg_1,
    areset_d1,
    sel_first_reg,
    m_axi_awready,
    s_axburst_eq1_reg_0,
    \cnt_read_reg[1]_rep ,
    sel_first_reg_0,
    \cnt_read_reg[1]_rep_0 ,
    \cnt_read_reg[0]_rep__0 ,
    \state_reg[1]_0 ,
    aclk,
    \state_reg[1]_rep_0 );
  output [2:0]D;
  output [2:0]\wrap_second_len_r_reg[3] ;
  output [0:0]E;
  output \state_reg[0]_rep_0 ;
  output \state_reg[0]_rep_1 ;
  output [3:0]S;
  output \m_payload_i_reg[0] ;
  output s_axburst_eq0_reg;
  output wrap_next_pending;
  output sel_first_i;
  output incr_next_pending;
  output s_axburst_eq1_reg;
  output next_pending_r_reg;
  output [1:0]\wrap_cnt_r_reg[0] ;
  output \axaddr_offset_r_reg[2] ;
  output [0:0]\axlen_cnt_reg[0] ;
  output [0:0]\axaddr_offset_r_reg[2]_0 ;
  output [0:0]\axlen_cnt_reg[0]_0 ;
  output [0:0]\axaddr_wrap_reg[0] ;
  output [0:0]\axlen_cnt_reg[0]_1 ;
  output \axaddr_incr_reg[0] ;
  output [0:0]\m_payload_i_reg[0]_0 ;
  output m_axi_awvalid;
  input \m_payload_i_reg[44] ;
  input si_rs_awvalid;
  input [8:0]Q;
  input \m_payload_i_reg[48] ;
  input next_pending_r_reg_0;
  input \axlen_cnt_reg[4] ;
  input [0:0]\wrap_second_len_r_reg[2] ;
  input \m_payload_i_reg[0]_1 ;
  input [2:0]\wrap_second_len_r_reg[3]_0 ;
  input [2:0]\m_payload_i_reg[47] ;
  input [1:0]\axaddr_offset_r_reg[3] ;
  input \m_payload_i_reg[35] ;
  input \axlen_cnt_reg[4]_0 ;
  input [0:0]\axlen_cnt_reg[0]_2 ;
  input \m_payload_i_reg[5] ;
  input \m_payload_i_reg[46] ;
  input \axlen_cnt_reg[3] ;
  input next_pending_r_reg_1;
  input areset_d1;
  input sel_first_reg;
  input m_axi_awready;
  input s_axburst_eq1_reg_0;
  input \cnt_read_reg[1]_rep ;
  input sel_first_reg_0;
  input \cnt_read_reg[1]_rep_0 ;
  input \cnt_read_reg[0]_rep__0 ;
  input [0:0]\state_reg[1]_0 ;
  input aclk;
  input \state_reg[1]_rep_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [3:0]S;
  wire aclk;
  wire areset_d1;
  wire \axaddr_incr_reg[0] ;
  wire \axaddr_offset_r_reg[2] ;
  wire [0:0]\axaddr_offset_r_reg[2]_0 ;
  wire [1:0]\axaddr_offset_r_reg[3] ;
  wire [0:0]\axaddr_wrap_reg[0] ;
  wire [0:0]\axlen_cnt_reg[0] ;
  wire [0:0]\axlen_cnt_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0]_1 ;
  wire [0:0]\axlen_cnt_reg[0]_2 ;
  wire \axlen_cnt_reg[3] ;
  wire \axlen_cnt_reg[4] ;
  wire \axlen_cnt_reg[4]_0 ;
  wire \cnt_read_reg[0]_rep__0 ;
  wire \cnt_read_reg[1]_rep ;
  wire \cnt_read_reg[1]_rep_0 ;
  wire incr_next_pending;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire \m_payload_i_reg[0] ;
  wire [0:0]\m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[0]_1 ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[44] ;
  wire \m_payload_i_reg[46] ;
  wire [2:0]\m_payload_i_reg[47] ;
  wire \m_payload_i_reg[48] ;
  wire \m_payload_i_reg[5] ;
  wire next;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire [0:0]next_state;
  wire s_axburst_eq0_reg;
  wire s_axburst_eq1_reg;
  wire s_axburst_eq1_reg_0;
  wire sel_first_i;
  wire sel_first_reg;
  wire sel_first_reg_0;
  wire si_rs_awvalid;
  wire \state[0]_rep_i_1__0_n_0 ;
  wire \state_reg[0]_rep_0 ;
  wire \state_reg[0]_rep_1 ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg[1]_rep_0 ;
  wire [1:0]\wrap_cnt_r_reg[0] ;
  wire wrap_next_pending;
  wire \wrap_second_len_r[0]_i_2_n_0 ;
  wire [0:0]\wrap_second_len_r_reg[2] ;
  wire [2:0]\wrap_second_len_r_reg[3] ;
  wire [2:0]\wrap_second_len_r_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \axaddr_incr[0]_i_1 
       (.I0(sel_first_reg_0),
        .I1(\m_payload_i_reg[0] ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(\state_reg[0]_rep_1 ),
        .O(\axaddr_incr_reg[0] ));
  LUT6 #(
    .INIT(64'h060C060C030C060C)) 
    \axaddr_incr[0]_i_10 
       (.I0(\m_payload_i_reg[0] ),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\state_reg[0]_rep_0 ),
        .I5(\state_reg[0]_rep_1 ),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0000000000006366)) 
    \axaddr_incr[0]_i_11 
       (.I0(\m_payload_i_reg[0] ),
        .I1(Q[0]),
        .I2(\state_reg[0]_rep_1 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h6366CCCCCCCCCCCC)) 
    \axaddr_incr[0]_i_8 
       (.I0(\m_payload_i_reg[0] ),
        .I1(Q[3]),
        .I2(\state_reg[0]_rep_1 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0000CCCC6366CCCC)) 
    \axaddr_incr[0]_i_9 
       (.I0(\m_payload_i_reg[0] ),
        .I1(Q[2]),
        .I2(\state_reg[0]_rep_1 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \axaddr_offset_r[2]_i_1 
       (.I0(\axaddr_offset_r_reg[2] ),
        .O(\axaddr_offset_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h55555555553F5555)) 
    \axaddr_offset_r[2]_i_2 
       (.I0(\axaddr_offset_r_reg[3] [0]),
        .I1(Q[8]),
        .I2(\m_payload_i_reg[5] ),
        .I3(\wrap_cnt_r_reg[0] [1]),
        .I4(si_rs_awvalid),
        .I5(\wrap_cnt_r_reg[0] [0]),
        .O(\axaddr_offset_r_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hCCFE)) 
    \axaddr_wrap[11]_i_1 
       (.I0(si_rs_awvalid),
        .I1(\m_payload_i_reg[0] ),
        .I2(\wrap_cnt_r_reg[0] [1]),
        .I3(\wrap_cnt_r_reg[0] [0]),
        .O(\axaddr_wrap_reg[0] ));
  LUT6 #(
    .INIT(64'h04000400FFFF0400)) 
    \axlen_cnt[0]_i_1 
       (.I0(\wrap_cnt_r_reg[0] [1]),
        .I1(si_rs_awvalid),
        .I2(\wrap_cnt_r_reg[0] [0]),
        .I3(Q[7]),
        .I4(\axlen_cnt_reg[4]_0 ),
        .I5(\axlen_cnt_reg[0]_2 ),
        .O(\axlen_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hCCFE)) 
    \axlen_cnt[3]_i_1__0 
       (.I0(si_rs_awvalid),
        .I1(\m_payload_i_reg[0] ),
        .I2(\wrap_cnt_r_reg[0] [1]),
        .I3(\wrap_cnt_r_reg[0] [0]),
        .O(\axlen_cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hCCFE)) 
    \axlen_cnt[7]_i_1 
       (.I0(si_rs_awvalid),
        .I1(\m_payload_i_reg[0] ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(\state_reg[0]_rep_1 ),
        .O(\axlen_cnt_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_awvalid_INST_0
       (.I0(\state_reg[0]_rep_1 ),
        .I1(\state_reg[0]_rep_0 ),
        .O(m_axi_awvalid));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[31]_i_1 
       (.I0(\m_payload_i_reg[0] ),
        .I1(si_rs_awvalid),
        .O(\m_payload_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF400F4F400000000)) 
    \memory_reg[3][0]_srl4_i_1 
       (.I0(s_axburst_eq1_reg_0),
        .I1(m_axi_awready),
        .I2(\state_reg[0]_rep_0 ),
        .I3(\cnt_read_reg[0]_rep__0 ),
        .I4(\cnt_read_reg[1]_rep_0 ),
        .I5(\state_reg[0]_rep_1 ),
        .O(\m_payload_i_reg[0] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    next_pending_r_i_1
       (.I0(\m_payload_i_reg[48] ),
        .I1(E),
        .I2(next_pending_r_reg_0),
        .I3(next_pending_r_reg),
        .I4(\axlen_cnt_reg[4] ),
        .O(incr_next_pending));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    next_pending_r_i_1__0
       (.I0(\m_payload_i_reg[46] ),
        .I1(E),
        .I2(\axlen_cnt_reg[3] ),
        .I3(next),
        .I4(next_pending_r_reg_1),
        .O(wrap_next_pending));
  LUT6 #(
    .INIT(64'h08FF08FF085D08FF)) 
    next_pending_r_i_3
       (.I0(\state_reg[0]_rep_1 ),
        .I1(\cnt_read_reg[1]_rep_0 ),
        .I2(\cnt_read_reg[0]_rep__0 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(m_axi_awready),
        .I5(s_axburst_eq1_reg_0),
        .O(next_pending_r_reg));
  LUT6 #(
    .INIT(64'hF700F700F7A2F700)) 
    next_pending_r_i_4
       (.I0(\state_reg[0]_rep_1 ),
        .I1(\cnt_read_reg[1]_rep_0 ),
        .I2(\cnt_read_reg[0]_rep__0 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(m_axi_awready),
        .I5(s_axburst_eq1_reg_0),
        .O(next));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    s_axburst_eq0_i_1
       (.I0(wrap_next_pending),
        .I1(Q[6]),
        .I2(sel_first_i),
        .I3(incr_next_pending),
        .O(s_axburst_eq0_reg));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    s_axburst_eq1_i_1
       (.I0(wrap_next_pending),
        .I1(Q[6]),
        .I2(sel_first_i),
        .I3(incr_next_pending),
        .O(s_axburst_eq1_reg));
  LUT6 #(
    .INIT(64'hCCCEFCFFCCCECCCE)) 
    sel_first_i_1
       (.I0(si_rs_awvalid),
        .I1(areset_d1),
        .I2(\state_reg[0]_rep_1 ),
        .I3(\state_reg[0]_rep_0 ),
        .I4(\m_payload_i_reg[0] ),
        .I5(sel_first_reg),
        .O(sel_first_i));
  LUT6 #(
    .INIT(64'hF2FEFEFE323E323E)) 
    \state[0]_i_1 
       (.I0(si_rs_awvalid),
        .I1(\wrap_cnt_r_reg[0] [0]),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_awready),
        .I4(s_axburst_eq1_reg_0),
        .I5(\cnt_read_reg[1]_rep ),
        .O(next_state));
  LUT6 #(
    .INIT(64'hF2FEFEFE323E323E)) 
    \state[0]_rep_i_1__0 
       (.I0(si_rs_awvalid),
        .I1(\state_reg[0]_rep_1 ),
        .I2(\state_reg[0]_rep_0 ),
        .I3(m_axi_awready),
        .I4(s_axburst_eq1_reg_0),
        .I5(\cnt_read_reg[1]_rep ),
        .O(\state[0]_rep_i_1__0_n_0 ));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state),
        .Q(\wrap_cnt_r_reg[0] [0]),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[0]" *) 
  FDRE \state_reg[0]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_rep_i_1__0_n_0 ),
        .Q(\state_reg[0]_rep_1 ),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[1]" *) 
  FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state_reg[1]_0 ),
        .Q(\wrap_cnt_r_reg[0] [1]),
        .R(areset_d1));
  (* KEEP = "yes" *) 
  (* ORIG_CELL_NAME = "state_reg[1]" *) 
  FDRE \state_reg[1]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\state_reg[1]_rep_0 ),
        .Q(\state_reg[0]_rep_0 ),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wrap_boundary_axaddr_r[11]_i_1 
       (.I0(\state_reg[0]_rep_0 ),
        .I1(si_rs_awvalid),
        .I2(\state_reg[0]_rep_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hDDDDD8DDAAAAA8AA)) 
    \wrap_cnt_r[0]_i_1 
       (.I0(\wrap_second_len_r[0]_i_2_n_0 ),
        .I1(\m_payload_i_reg[0]_1 ),
        .I2(\wrap_cnt_r_reg[0] [1]),
        .I3(si_rs_awvalid),
        .I4(\wrap_cnt_r_reg[0] [0]),
        .I5(\wrap_second_len_r_reg[3]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_cnt_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [1]),
        .I1(\m_payload_i_reg[44] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \wrap_cnt_r[3]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [2]),
        .I1(\wrap_second_len_r_reg[3] [1]),
        .I2(\m_payload_i_reg[44] ),
        .I3(\wrap_second_len_r_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000CCCCCACC)) 
    \wrap_second_len_r[0]_i_1 
       (.I0(\wrap_second_len_r[0]_i_2_n_0 ),
        .I1(\wrap_second_len_r_reg[3]_0 [0]),
        .I2(\wrap_cnt_r_reg[0] [0]),
        .I3(si_rs_awvalid),
        .I4(\wrap_cnt_r_reg[0] [1]),
        .I5(\m_payload_i_reg[0]_1 ),
        .O(\wrap_second_len_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFFFFFFF)) 
    \wrap_second_len_r[0]_i_2 
       (.I0(\axaddr_offset_r_reg[3] [1]),
        .I1(E),
        .I2(\m_payload_i_reg[35] ),
        .I3(\m_payload_i_reg[47] [1]),
        .I4(\m_payload_i_reg[47] [0]),
        .I5(\axaddr_offset_r_reg[2] ),
        .O(\wrap_second_len_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC0AAC3AAC3AA)) 
    \wrap_second_len_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [1]),
        .I1(\m_payload_i_reg[47] [0]),
        .I2(\m_payload_i_reg[47] [1]),
        .I3(E),
        .I4(\m_payload_i_reg[47] [2]),
        .I5(\axaddr_offset_r_reg[2] ),
        .O(\wrap_second_len_r_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \wrap_second_len_r[3]_i_1 
       (.I0(\axaddr_offset_r_reg[2] ),
        .I1(\m_payload_i_reg[47] [0]),
        .I2(\m_payload_i_reg[47] [1]),
        .I3(\m_payload_i_reg[35] ),
        .I4(E),
        .I5(\wrap_second_len_r_reg[3]_0 [2]),
        .O(\wrap_second_len_r_reg[3] [2]));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_wrap_cmd" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd
   (next_pending_r_reg_0,
    next_pending_r_reg_1,
    m_axi_awaddr,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    wrap_next_pending,
    aclk,
    Q,
    E,
    \state_reg[0]_rep ,
    axaddr_incr_reg,
    \m_payload_i_reg[38] ,
    \m_payload_i_reg[47] ,
    \wrap_second_len_r_reg[3]_1 ,
    m_valid_i_reg,
    \wrap_second_len_r_reg[3]_2 ,
    \m_payload_i_reg[6] ,
    m_valid_i_reg_0,
    b_push,
    \state_reg[1] ,
    si_rs_awvalid,
    areset_d1);
  output next_pending_r_reg_0;
  output next_pending_r_reg_1;
  output [11:0]m_axi_awaddr;
  output [3:0]\axaddr_offset_r_reg[3]_0 ;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  input wrap_next_pending;
  input aclk;
  input [18:0]Q;
  input [0:0]E;
  input \state_reg[0]_rep ;
  input [11:0]axaddr_incr_reg;
  input \m_payload_i_reg[38] ;
  input [3:0]\m_payload_i_reg[47] ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [0:0]m_valid_i_reg;
  input [3:0]\wrap_second_len_r_reg[3]_2 ;
  input [6:0]\m_payload_i_reg[6] ;
  input [0:0]m_valid_i_reg_0;
  input b_push;
  input [1:0]\state_reg[1] ;
  input si_rs_awvalid;
  input areset_d1;

  wire [0:0]E;
  wire [18:0]Q;
  wire aclk;
  wire areset_d1;
  wire [11:0]axaddr_incr_reg;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire [11:0]axaddr_wrap;
  wire [11:0]axaddr_wrap0;
  wire \axaddr_wrap[0]_i_1_n_0 ;
  wire \axaddr_wrap[10]_i_1_n_0 ;
  wire \axaddr_wrap[11]_i_2_n_0 ;
  wire \axaddr_wrap[11]_i_4_n_0 ;
  wire \axaddr_wrap[11]_i_5_n_0 ;
  wire \axaddr_wrap[11]_i_6_n_0 ;
  wire \axaddr_wrap[11]_i_7_n_0 ;
  wire \axaddr_wrap[11]_i_8_n_0 ;
  wire \axaddr_wrap[11]_i_9_n_0 ;
  wire \axaddr_wrap[1]_i_1_n_0 ;
  wire \axaddr_wrap[2]_i_1_n_0 ;
  wire \axaddr_wrap[3]_i_1_n_0 ;
  wire \axaddr_wrap[3]_i_3_n_0 ;
  wire \axaddr_wrap[3]_i_4_n_0 ;
  wire \axaddr_wrap[3]_i_5_n_0 ;
  wire \axaddr_wrap[3]_i_6_n_0 ;
  wire \axaddr_wrap[4]_i_1_n_0 ;
  wire \axaddr_wrap[5]_i_1_n_0 ;
  wire \axaddr_wrap[6]_i_1_n_0 ;
  wire \axaddr_wrap[7]_i_1_n_0 ;
  wire \axaddr_wrap[7]_i_3_n_0 ;
  wire \axaddr_wrap[7]_i_4_n_0 ;
  wire \axaddr_wrap[7]_i_5_n_0 ;
  wire \axaddr_wrap[7]_i_6_n_0 ;
  wire \axaddr_wrap[8]_i_1_n_0 ;
  wire \axaddr_wrap[9]_i_1_n_0 ;
  wire \axaddr_wrap_reg[11]_i_3_n_1 ;
  wire \axaddr_wrap_reg[11]_i_3_n_2 ;
  wire \axaddr_wrap_reg[11]_i_3_n_3 ;
  wire \axaddr_wrap_reg[3]_i_2_n_0 ;
  wire \axaddr_wrap_reg[3]_i_2_n_1 ;
  wire \axaddr_wrap_reg[3]_i_2_n_2 ;
  wire \axaddr_wrap_reg[3]_i_2_n_3 ;
  wire \axaddr_wrap_reg[7]_i_2_n_0 ;
  wire \axaddr_wrap_reg[7]_i_2_n_1 ;
  wire \axaddr_wrap_reg[7]_i_2_n_2 ;
  wire \axaddr_wrap_reg[7]_i_2_n_3 ;
  wire \axlen_cnt[0]_i_1__0_n_0 ;
  wire \axlen_cnt[1]_i_1__0_n_0 ;
  wire \axlen_cnt[2]_i_1__0_n_0 ;
  wire \axlen_cnt[3]_i_2_n_0 ;
  wire \axlen_cnt_reg_n_0_[0] ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire b_push;
  wire [11:0]m_axi_awaddr;
  wire \m_payload_i_reg[38] ;
  wire [3:0]\m_payload_i_reg[47] ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire sel_first_i_1_n_0;
  wire sel_first_reg_n_0;
  wire si_rs_awvalid;
  wire \state_reg[0]_rep ;
  wire [1:0]\state_reg[1] ;
  wire [11:0]wrap_boundary_axaddr_r;
  wire [3:0]wrap_cnt_r;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:0]\wrap_second_len_r_reg[3]_2 ;
  wire [3:3]\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED ;

  FDRE \axaddr_offset_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47] [0]),
        .Q(\axaddr_offset_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47] [1]),
        .Q(\axaddr_offset_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47] [2]),
        .Q(\axaddr_offset_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47] [3]),
        .Q(\axaddr_offset_r_reg[3]_0 [3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[0]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[0]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[0]),
        .O(\axaddr_wrap[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[10]_i_1 
       (.I0(Q[10]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[10]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[10]),
        .O(\axaddr_wrap[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[11]_i_2 
       (.I0(Q[11]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[11]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[11]),
        .O(\axaddr_wrap[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \axaddr_wrap[11]_i_4 
       (.I0(wrap_cnt_r[3]),
        .I1(\axlen_cnt_reg_n_0_[3] ),
        .I2(\axaddr_wrap[11]_i_9_n_0 ),
        .O(\axaddr_wrap[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_5 
       (.I0(axaddr_wrap[11]),
        .O(\axaddr_wrap[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_6 
       (.I0(axaddr_wrap[10]),
        .O(\axaddr_wrap[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_7 
       (.I0(axaddr_wrap[9]),
        .O(\axaddr_wrap[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_8 
       (.I0(axaddr_wrap[8]),
        .O(\axaddr_wrap[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axaddr_wrap[11]_i_9 
       (.I0(wrap_cnt_r[0]),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .I3(wrap_cnt_r[2]),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .I5(wrap_cnt_r[1]),
        .O(\axaddr_wrap[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[1]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[1]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[1]),
        .O(\axaddr_wrap[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[2]_i_1 
       (.I0(Q[2]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[2]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[2]),
        .O(\axaddr_wrap[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[3]_i_1 
       (.I0(Q[3]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[3]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[3]),
        .O(\axaddr_wrap[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_wrap[3]_i_3 
       (.I0(axaddr_wrap[3]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\axaddr_wrap[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_4 
       (.I0(axaddr_wrap[2]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\axaddr_wrap[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_5 
       (.I0(axaddr_wrap[1]),
        .I1(Q[13]),
        .I2(Q[12]),
        .O(\axaddr_wrap[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_wrap[3]_i_6 
       (.I0(axaddr_wrap[0]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\axaddr_wrap[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[4]_i_1 
       (.I0(Q[4]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[4]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[4]),
        .O(\axaddr_wrap[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[5]_i_1 
       (.I0(Q[5]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[5]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[5]),
        .O(\axaddr_wrap[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[6]_i_1 
       (.I0(Q[6]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[6]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[6]),
        .O(\axaddr_wrap[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[7]_i_1 
       (.I0(Q[7]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[7]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[7]),
        .O(\axaddr_wrap[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_3 
       (.I0(axaddr_wrap[7]),
        .O(\axaddr_wrap[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_4 
       (.I0(axaddr_wrap[6]),
        .O(\axaddr_wrap[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_5 
       (.I0(axaddr_wrap[5]),
        .O(\axaddr_wrap[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_6 
       (.I0(axaddr_wrap[4]),
        .O(\axaddr_wrap[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[8]_i_1 
       (.I0(Q[8]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[8]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[8]),
        .O(\axaddr_wrap[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axaddr_wrap[9]_i_1 
       (.I0(Q[9]),
        .I1(\state_reg[0]_rep ),
        .I2(axaddr_wrap0[9]),
        .I3(\axaddr_wrap[11]_i_4_n_0 ),
        .I4(wrap_boundary_axaddr_r[9]),
        .O(\axaddr_wrap[9]_i_1_n_0 ));
  FDRE \axaddr_wrap_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[0]_i_1_n_0 ),
        .Q(axaddr_wrap[0]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[10] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[10]_i_1_n_0 ),
        .Q(axaddr_wrap[10]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[11] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[11]_i_2_n_0 ),
        .Q(axaddr_wrap[11]),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[11]_i_3 
       (.CI(\axaddr_wrap_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_wrap_reg[11]_i_3_n_1 ,\axaddr_wrap_reg[11]_i_3_n_2 ,\axaddr_wrap_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[11:8]),
        .S({\axaddr_wrap[11]_i_5_n_0 ,\axaddr_wrap[11]_i_6_n_0 ,\axaddr_wrap[11]_i_7_n_0 ,\axaddr_wrap[11]_i_8_n_0 }));
  FDRE \axaddr_wrap_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[1]_i_1_n_0 ),
        .Q(axaddr_wrap[1]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[2]_i_1_n_0 ),
        .Q(axaddr_wrap[2]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[3]_i_1_n_0 ),
        .Q(axaddr_wrap[3]),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_wrap_reg[3]_i_2_n_0 ,\axaddr_wrap_reg[3]_i_2_n_1 ,\axaddr_wrap_reg[3]_i_2_n_2 ,\axaddr_wrap_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(axaddr_wrap[3:0]),
        .O(axaddr_wrap0[3:0]),
        .S({\axaddr_wrap[3]_i_3_n_0 ,\axaddr_wrap[3]_i_4_n_0 ,\axaddr_wrap[3]_i_5_n_0 ,\axaddr_wrap[3]_i_6_n_0 }));
  FDRE \axaddr_wrap_reg[4] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[4]_i_1_n_0 ),
        .Q(axaddr_wrap[4]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[5] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[5]_i_1_n_0 ),
        .Q(axaddr_wrap[5]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[6] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[6]_i_1_n_0 ),
        .Q(axaddr_wrap[6]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[7] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[7]_i_1_n_0 ),
        .Q(axaddr_wrap[7]),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[7]_i_2 
       (.CI(\axaddr_wrap_reg[3]_i_2_n_0 ),
        .CO({\axaddr_wrap_reg[7]_i_2_n_0 ,\axaddr_wrap_reg[7]_i_2_n_1 ,\axaddr_wrap_reg[7]_i_2_n_2 ,\axaddr_wrap_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[7:4]),
        .S({\axaddr_wrap[7]_i_3_n_0 ,\axaddr_wrap[7]_i_4_n_0 ,\axaddr_wrap[7]_i_5_n_0 ,\axaddr_wrap[7]_i_6_n_0 }));
  FDRE \axaddr_wrap_reg[8] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[8]_i_1_n_0 ),
        .Q(axaddr_wrap[8]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[9] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[9]_i_1_n_0 ),
        .Q(axaddr_wrap[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888BBBBBBB8)) 
    \axlen_cnt[0]_i_1__0 
       (.I0(Q[15]),
        .I1(E),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .I5(\axlen_cnt_reg_n_0_[0] ),
        .O(\axlen_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB88BB88BB88BB888)) 
    \axlen_cnt[1]_i_1__0 
       (.I0(Q[16]),
        .I1(E),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[2] ),
        .I5(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888BBBB88888)) 
    \axlen_cnt[2]_i_1__0 
       (.I0(Q[17]),
        .I1(E),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[2] ),
        .I5(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8888BBB88888)) 
    \axlen_cnt[3]_i_2 
       (.I0(Q[18]),
        .I1(E),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .I5(\axlen_cnt_reg_n_0_[0] ),
        .O(\axlen_cnt[3]_i_2_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[0]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[1]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[2]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[3]_i_2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[0]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[0]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[0]),
        .O(m_axi_awaddr[0]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[10]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[10]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[10]),
        .O(m_axi_awaddr[10]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[11]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[11]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[11]),
        .O(m_axi_awaddr[11]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[1]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[1]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[1]),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[2]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[2]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[2]),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[3]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[3]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[3]),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[4]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[4]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[4]),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[5]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[5]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[5]),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[6]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[6]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[6]),
        .O(m_axi_awaddr[6]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[7]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[7]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[7]),
        .O(m_axi_awaddr[7]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[8]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[8]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[8]),
        .O(m_axi_awaddr[8]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(axaddr_wrap[9]),
        .I2(Q[14]),
        .I3(axaddr_incr_reg[9]),
        .I4(\m_payload_i_reg[38] ),
        .I5(Q[9]),
        .O(m_axi_awaddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h01)) 
    next_pending_r_i_3__0
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .O(next_pending_r_reg_1));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_next_pending),
        .Q(next_pending_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44440F04)) 
    sel_first_i_1
       (.I0(b_push),
        .I1(sel_first_reg_n_0),
        .I2(\state_reg[1] [1]),
        .I3(si_rs_awvalid),
        .I4(\state_reg[1] [0]),
        .I5(areset_d1),
        .O(sel_first_i_1_n_0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i_1_n_0),
        .Q(sel_first_reg_n_0),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [0]),
        .Q(wrap_boundary_axaddr_r[0]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(Q[10]),
        .Q(wrap_boundary_axaddr_r[10]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(Q[11]),
        .Q(wrap_boundary_axaddr_r[11]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [1]),
        .Q(wrap_boundary_axaddr_r[1]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [2]),
        .Q(wrap_boundary_axaddr_r[2]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [3]),
        .Q(wrap_boundary_axaddr_r[3]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [4]),
        .Q(wrap_boundary_axaddr_r[4]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [5]),
        .Q(wrap_boundary_axaddr_r[5]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [6]),
        .Q(wrap_boundary_axaddr_r[6]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(Q[7]),
        .Q(wrap_boundary_axaddr_r[7]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(Q[8]),
        .Q(wrap_boundary_axaddr_r[8]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(Q[9]),
        .Q(wrap_boundary_axaddr_r[9]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [0]),
        .Q(wrap_cnt_r[0]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [1]),
        .Q(wrap_cnt_r[1]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [2]),
        .Q(wrap_cnt_r[2]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [3]),
        .Q(wrap_cnt_r[3]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [0]),
        .Q(\wrap_second_len_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [1]),
        .Q(\wrap_second_len_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [2]),
        .Q(\wrap_second_len_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [3]),
        .Q(\wrap_second_len_r_reg[3]_0 [3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_b2s_wrap_cmd" *) 
module ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3
   (next_pending_r_reg_0,
    next_pending_r_reg_1,
    m_axi_araddr,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    wrap_next_pending,
    aclk,
    E,
    \m_payload_i_reg[47] ,
    \state_reg[0]_rep ,
    si_rs_arvalid,
    \state_reg[1]_rep ,
    \state_reg[1]_rep_0 ,
    axaddr_incr_reg,
    \m_payload_i_reg[38] ,
    \m_payload_i_reg[47]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    m_valid_i_reg,
    \wrap_second_len_r_reg[3]_2 ,
    \m_payload_i_reg[6] ,
    m_valid_i_reg_0,
    m_axi_arready,
    \state_reg[1] ,
    areset_d1);
  output next_pending_r_reg_0;
  output next_pending_r_reg_1;
  output [11:0]m_axi_araddr;
  output [3:0]\axaddr_offset_r_reg[3]_0 ;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  input wrap_next_pending;
  input aclk;
  input [0:0]E;
  input [18:0]\m_payload_i_reg[47] ;
  input \state_reg[0]_rep ;
  input si_rs_arvalid;
  input \state_reg[1]_rep ;
  input \state_reg[1]_rep_0 ;
  input [11:0]axaddr_incr_reg;
  input \m_payload_i_reg[38] ;
  input [3:0]\m_payload_i_reg[47]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [0:0]m_valid_i_reg;
  input [3:0]\wrap_second_len_r_reg[3]_2 ;
  input [6:0]\m_payload_i_reg[6] ;
  input [0:0]m_valid_i_reg_0;
  input m_axi_arready;
  input [1:0]\state_reg[1] ;
  input areset_d1;

  wire [0:0]E;
  wire aclk;
  wire areset_d1;
  wire [11:0]axaddr_incr_reg;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire \axaddr_wrap[0]_i_1__0_n_0 ;
  wire \axaddr_wrap[10]_i_1__0_n_0 ;
  wire \axaddr_wrap[11]_i_2__0_n_0 ;
  wire \axaddr_wrap[11]_i_4__0_n_0 ;
  wire \axaddr_wrap[11]_i_5__0_n_0 ;
  wire \axaddr_wrap[11]_i_6__0_n_0 ;
  wire \axaddr_wrap[11]_i_7__0_n_0 ;
  wire \axaddr_wrap[11]_i_8__0_n_0 ;
  wire \axaddr_wrap[11]_i_9__0_n_0 ;
  wire \axaddr_wrap[1]_i_1__0_n_0 ;
  wire \axaddr_wrap[2]_i_1__0_n_0 ;
  wire \axaddr_wrap[3]_i_1__0_n_0 ;
  wire \axaddr_wrap[3]_i_3_n_0 ;
  wire \axaddr_wrap[3]_i_4_n_0 ;
  wire \axaddr_wrap[3]_i_5_n_0 ;
  wire \axaddr_wrap[3]_i_6_n_0 ;
  wire \axaddr_wrap[4]_i_1__0_n_0 ;
  wire \axaddr_wrap[5]_i_1__0_n_0 ;
  wire \axaddr_wrap[6]_i_1__0_n_0 ;
  wire \axaddr_wrap[7]_i_1__0_n_0 ;
  wire \axaddr_wrap[7]_i_3__0_n_0 ;
  wire \axaddr_wrap[7]_i_4__0_n_0 ;
  wire \axaddr_wrap[7]_i_5__0_n_0 ;
  wire \axaddr_wrap[7]_i_6__0_n_0 ;
  wire \axaddr_wrap[8]_i_1__0_n_0 ;
  wire \axaddr_wrap[9]_i_1__0_n_0 ;
  wire \axaddr_wrap_reg[11]_i_3_n_1 ;
  wire \axaddr_wrap_reg[11]_i_3_n_2 ;
  wire \axaddr_wrap_reg[11]_i_3_n_3 ;
  wire \axaddr_wrap_reg[11]_i_3_n_4 ;
  wire \axaddr_wrap_reg[11]_i_3_n_5 ;
  wire \axaddr_wrap_reg[11]_i_3_n_6 ;
  wire \axaddr_wrap_reg[11]_i_3_n_7 ;
  wire \axaddr_wrap_reg[3]_i_2_n_0 ;
  wire \axaddr_wrap_reg[3]_i_2_n_1 ;
  wire \axaddr_wrap_reg[3]_i_2_n_2 ;
  wire \axaddr_wrap_reg[3]_i_2_n_3 ;
  wire \axaddr_wrap_reg[3]_i_2_n_4 ;
  wire \axaddr_wrap_reg[3]_i_2_n_5 ;
  wire \axaddr_wrap_reg[3]_i_2_n_6 ;
  wire \axaddr_wrap_reg[3]_i_2_n_7 ;
  wire \axaddr_wrap_reg[7]_i_2_n_0 ;
  wire \axaddr_wrap_reg[7]_i_2_n_1 ;
  wire \axaddr_wrap_reg[7]_i_2_n_2 ;
  wire \axaddr_wrap_reg[7]_i_2_n_3 ;
  wire \axaddr_wrap_reg[7]_i_2_n_4 ;
  wire \axaddr_wrap_reg[7]_i_2_n_5 ;
  wire \axaddr_wrap_reg[7]_i_2_n_6 ;
  wire \axaddr_wrap_reg[7]_i_2_n_7 ;
  wire \axaddr_wrap_reg_n_0_[0] ;
  wire \axaddr_wrap_reg_n_0_[10] ;
  wire \axaddr_wrap_reg_n_0_[11] ;
  wire \axaddr_wrap_reg_n_0_[1] ;
  wire \axaddr_wrap_reg_n_0_[2] ;
  wire \axaddr_wrap_reg_n_0_[3] ;
  wire \axaddr_wrap_reg_n_0_[4] ;
  wire \axaddr_wrap_reg_n_0_[5] ;
  wire \axaddr_wrap_reg_n_0_[6] ;
  wire \axaddr_wrap_reg_n_0_[7] ;
  wire \axaddr_wrap_reg_n_0_[8] ;
  wire \axaddr_wrap_reg_n_0_[9] ;
  wire \axlen_cnt[0]_i_1__2_n_0 ;
  wire \axlen_cnt[1]_i_1__2_n_0 ;
  wire \axlen_cnt[2]_i_1__2_n_0 ;
  wire \axlen_cnt[3]_i_2__2_n_0 ;
  wire \axlen_cnt_reg_n_0_[0] ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire [11:0]m_axi_araddr;
  wire m_axi_arready;
  wire \m_payload_i_reg[38] ;
  wire [18:0]\m_payload_i_reg[47] ;
  wire [3:0]\m_payload_i_reg[47]_0 ;
  wire [6:0]\m_payload_i_reg[6] ;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire sel_first_i_1_n_0;
  wire sel_first_reg_n_0;
  wire si_rs_arvalid;
  wire \state_reg[0]_rep ;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[0] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[10] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[11] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[1] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[2] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[3] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[4] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[5] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[6] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[7] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[8] ;
  wire \wrap_boundary_axaddr_r_reg_n_0_[9] ;
  wire \wrap_cnt_r_reg_n_0_[0] ;
  wire \wrap_cnt_r_reg_n_0_[1] ;
  wire \wrap_cnt_r_reg_n_0_[2] ;
  wire \wrap_cnt_r_reg_n_0_[3] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:0]\wrap_second_len_r_reg[3]_2 ;
  wire [3:3]\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED ;

  FDRE \axaddr_offset_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47]_0 [0]),
        .Q(\axaddr_offset_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47]_0 [1]),
        .Q(\axaddr_offset_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47]_0 [2]),
        .Q(\axaddr_offset_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i_reg[47]_0 [3]),
        .Q(\axaddr_offset_r_reg[3]_0 [3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[0]_i_1__0 
       (.I0(\axaddr_wrap_reg[3]_i_2_n_7 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[0] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [0]),
        .O(\axaddr_wrap[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[10]_i_1__0 
       (.I0(\axaddr_wrap_reg[11]_i_3_n_5 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[10] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [10]),
        .O(\axaddr_wrap[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[11]_i_2__0 
       (.I0(\axaddr_wrap_reg[11]_i_3_n_4 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[11] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [11]),
        .O(\axaddr_wrap[11]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h6F)) 
    \axaddr_wrap[11]_i_4__0 
       (.I0(\wrap_cnt_r_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[3] ),
        .I2(\axaddr_wrap[11]_i_9__0_n_0 ),
        .O(\axaddr_wrap[11]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_5__0 
       (.I0(\axaddr_wrap_reg_n_0_[11] ),
        .O(\axaddr_wrap[11]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_6__0 
       (.I0(\axaddr_wrap_reg_n_0_[10] ),
        .O(\axaddr_wrap[11]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_7__0 
       (.I0(\axaddr_wrap_reg_n_0_[9] ),
        .O(\axaddr_wrap[11]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[11]_i_8__0 
       (.I0(\axaddr_wrap_reg_n_0_[8] ),
        .O(\axaddr_wrap[11]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axaddr_wrap[11]_i_9__0 
       (.I0(\wrap_cnt_r_reg_n_0_[0] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .I3(\wrap_cnt_r_reg_n_0_[2] ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .I5(\wrap_cnt_r_reg_n_0_[1] ),
        .O(\axaddr_wrap[11]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[1]_i_1__0 
       (.I0(\axaddr_wrap_reg[3]_i_2_n_6 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[1] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [1]),
        .O(\axaddr_wrap[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[2]_i_1__0 
       (.I0(\axaddr_wrap_reg[3]_i_2_n_5 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[2] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [2]),
        .O(\axaddr_wrap[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[3]_i_1__0 
       (.I0(\axaddr_wrap_reg[3]_i_2_n_4 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[3] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [3]),
        .O(\axaddr_wrap[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_wrap[3]_i_3 
       (.I0(\axaddr_wrap_reg_n_0_[3] ),
        .I1(\m_payload_i_reg[47] [12]),
        .I2(\m_payload_i_reg[47] [13]),
        .O(\axaddr_wrap[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_4 
       (.I0(\axaddr_wrap_reg_n_0_[2] ),
        .I1(\m_payload_i_reg[47] [12]),
        .I2(\m_payload_i_reg[47] [13]),
        .O(\axaddr_wrap[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_5 
       (.I0(\axaddr_wrap_reg_n_0_[1] ),
        .I1(\m_payload_i_reg[47] [13]),
        .I2(\m_payload_i_reg[47] [12]),
        .O(\axaddr_wrap[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_wrap[3]_i_6 
       (.I0(\axaddr_wrap_reg_n_0_[0] ),
        .I1(\m_payload_i_reg[47] [12]),
        .I2(\m_payload_i_reg[47] [13]),
        .O(\axaddr_wrap[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[4]_i_1__0 
       (.I0(\axaddr_wrap_reg[7]_i_2_n_7 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[4] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [4]),
        .O(\axaddr_wrap[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[5]_i_1__0 
       (.I0(\axaddr_wrap_reg[7]_i_2_n_6 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[5] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [5]),
        .O(\axaddr_wrap[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[6]_i_1__0 
       (.I0(\axaddr_wrap_reg[7]_i_2_n_5 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[6] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [6]),
        .O(\axaddr_wrap[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[7]_i_1__0 
       (.I0(\axaddr_wrap_reg[7]_i_2_n_4 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[7] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [7]),
        .O(\axaddr_wrap[7]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_3__0 
       (.I0(\axaddr_wrap_reg_n_0_[7] ),
        .O(\axaddr_wrap[7]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_4__0 
       (.I0(\axaddr_wrap_reg_n_0_[6] ),
        .O(\axaddr_wrap[7]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_5__0 
       (.I0(\axaddr_wrap_reg_n_0_[5] ),
        .O(\axaddr_wrap[7]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_wrap[7]_i_6__0 
       (.I0(\axaddr_wrap_reg_n_0_[4] ),
        .O(\axaddr_wrap[7]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[8]_i_1__0 
       (.I0(\axaddr_wrap_reg[11]_i_3_n_7 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[8] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [8]),
        .O(\axaddr_wrap[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axaddr_wrap[9]_i_1__0 
       (.I0(\axaddr_wrap_reg[11]_i_3_n_6 ),
        .I1(\axaddr_wrap[11]_i_4__0_n_0 ),
        .I2(\wrap_boundary_axaddr_r_reg_n_0_[9] ),
        .I3(\state_reg[1]_rep_0 ),
        .I4(\m_payload_i_reg[47] [9]),
        .O(\axaddr_wrap[9]_i_1__0_n_0 ));
  FDRE \axaddr_wrap_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[0]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[10] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[10]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[11] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[11]_i_2__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[11]_i_3 
       (.CI(\axaddr_wrap_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_wrap_reg[11]_i_3_n_1 ,\axaddr_wrap_reg[11]_i_3_n_2 ,\axaddr_wrap_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_wrap_reg[11]_i_3_n_4 ,\axaddr_wrap_reg[11]_i_3_n_5 ,\axaddr_wrap_reg[11]_i_3_n_6 ,\axaddr_wrap_reg[11]_i_3_n_7 }),
        .S({\axaddr_wrap[11]_i_5__0_n_0 ,\axaddr_wrap[11]_i_6__0_n_0 ,\axaddr_wrap[11]_i_7__0_n_0 ,\axaddr_wrap[11]_i_8__0_n_0 }));
  FDRE \axaddr_wrap_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[1]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[2]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[3]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_wrap_reg[3]_i_2_n_0 ,\axaddr_wrap_reg[3]_i_2_n_1 ,\axaddr_wrap_reg[3]_i_2_n_2 ,\axaddr_wrap_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axaddr_wrap_reg_n_0_[3] ,\axaddr_wrap_reg_n_0_[2] ,\axaddr_wrap_reg_n_0_[1] ,\axaddr_wrap_reg_n_0_[0] }),
        .O({\axaddr_wrap_reg[3]_i_2_n_4 ,\axaddr_wrap_reg[3]_i_2_n_5 ,\axaddr_wrap_reg[3]_i_2_n_6 ,\axaddr_wrap_reg[3]_i_2_n_7 }),
        .S({\axaddr_wrap[3]_i_3_n_0 ,\axaddr_wrap[3]_i_4_n_0 ,\axaddr_wrap[3]_i_5_n_0 ,\axaddr_wrap[3]_i_6_n_0 }));
  FDRE \axaddr_wrap_reg[4] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[4]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[5] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[5]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[6] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[6]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[7] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[7]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \axaddr_wrap_reg[7]_i_2 
       (.CI(\axaddr_wrap_reg[3]_i_2_n_0 ),
        .CO({\axaddr_wrap_reg[7]_i_2_n_0 ,\axaddr_wrap_reg[7]_i_2_n_1 ,\axaddr_wrap_reg[7]_i_2_n_2 ,\axaddr_wrap_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_wrap_reg[7]_i_2_n_4 ,\axaddr_wrap_reg[7]_i_2_n_5 ,\axaddr_wrap_reg[7]_i_2_n_6 ,\axaddr_wrap_reg[7]_i_2_n_7 }),
        .S({\axaddr_wrap[7]_i_3__0_n_0 ,\axaddr_wrap[7]_i_4__0_n_0 ,\axaddr_wrap[7]_i_5__0_n_0 ,\axaddr_wrap[7]_i_6__0_n_0 }));
  FDRE \axaddr_wrap_reg[8] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[8]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[9] 
       (.C(aclk),
        .CE(m_valid_i_reg_0),
        .D(\axaddr_wrap[9]_i_1__0_n_0 ),
        .Q(\axaddr_wrap_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF555400005554)) 
    \axlen_cnt[0]_i_1__2 
       (.I0(\axlen_cnt_reg_n_0_[0] ),
        .I1(\axlen_cnt_reg_n_0_[1] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .I4(E),
        .I5(\m_payload_i_reg[47] [15]),
        .O(\axlen_cnt[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3AAC3AAC3AAC0)) 
    \axlen_cnt[1]_i_1__2 
       (.I0(\m_payload_i_reg[47] [16]),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(E),
        .I4(\axlen_cnt_reg_n_0_[2] ),
        .I5(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCC3AAAACCC0)) 
    \axlen_cnt[2]_i_1__2 
       (.I0(\m_payload_i_reg[47] [17]),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(E),
        .I5(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA80000AAA8)) 
    \axlen_cnt[3]_i_2__2 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(E),
        .I5(\m_payload_i_reg[47] [18]),
        .O(\axlen_cnt[3]_i_2__2_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[0]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[1]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[2]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(m_valid_i_reg),
        .D(\axlen_cnt[3]_i_2__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[0] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[0]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [0]),
        .O(m_axi_araddr[0]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[10] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[10]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [10]),
        .O(m_axi_araddr[10]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[11] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[11]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [11]),
        .O(m_axi_araddr[11]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[1] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[1]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [1]),
        .O(m_axi_araddr[1]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[2] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[2]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [2]),
        .O(m_axi_araddr[2]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[3] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[3]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [3]),
        .O(m_axi_araddr[3]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[4] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[4]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [4]),
        .O(m_axi_araddr[4]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[5] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[5]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [5]),
        .O(m_axi_araddr[5]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[6] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[6]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [6]),
        .O(m_axi_araddr[6]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[7] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[7]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [7]),
        .O(m_axi_araddr[7]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[8] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[8]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [8]),
        .O(m_axi_araddr[8]));
  LUT6 #(
    .INIT(64'hEFE0EFEF4F404040)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(sel_first_reg_n_0),
        .I1(\axaddr_wrap_reg_n_0_[9] ),
        .I2(\m_payload_i_reg[47] [14]),
        .I3(axaddr_incr_reg[9]),
        .I4(\m_payload_i_reg[38] ),
        .I5(\m_payload_i_reg[47] [9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
    next_pending_r_i_3__1
       (.I0(\state_reg[0]_rep ),
        .I1(si_rs_arvalid),
        .I2(\state_reg[1]_rep ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[2] ),
        .I5(\axlen_cnt_reg_n_0_[3] ),
        .O(next_pending_r_reg_1));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_next_pending),
        .Q(next_pending_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC4C4CFCC)) 
    sel_first_i_1
       (.I0(m_axi_arready),
        .I1(sel_first_reg_n_0),
        .I2(\state_reg[1] [1]),
        .I3(si_rs_arvalid),
        .I4(\state_reg[1] [0]),
        .I5(areset_d1),
        .O(sel_first_i_1_n_0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i_1_n_0),
        .Q(sel_first_reg_n_0),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [0]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[47] [10]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[47] [11]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [1]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [2]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [3]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [4]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [5]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[6] [6]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[47] [7]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[47] [8]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\m_payload_i_reg[47] [9]),
        .Q(\wrap_boundary_axaddr_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [0]),
        .Q(\wrap_cnt_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [1]),
        .Q(\wrap_cnt_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [2]),
        .Q(\wrap_cnt_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_2 [3]),
        .Q(\wrap_cnt_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [0]),
        .Q(\wrap_second_len_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [1]),
        .Q(\wrap_second_len_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [2]),
        .Q(\wrap_second_len_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [3]),
        .Q(\wrap_second_len_r_reg[3]_0 [3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_axi_register_slice" *) 
module ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice
   (si_rs_awvalid,
    s_axi_awready,
    s_axi_bvalid,
    si_rs_bready,
    si_rs_arvalid,
    s_axi_arready,
    s_axi_rvalid,
    si_rs_rready,
    S,
    Q,
    \axaddr_incr_reg[11] ,
    \axaddr_incr_reg[7] ,
    \s_arid_r_reg[0] ,
    \axaddr_incr_reg[11]_0 ,
    D,
    \wrap_second_len_r_reg[2] ,
    \wrap_cnt_r_reg[2] ,
    axaddr_offset,
    \wrap_second_len_r_reg[0] ,
    \wrap_second_len_r_reg[3] ,
    \axlen_cnt_reg[3] ,
    next_pending_r_reg,
    next_pending_r_reg_0,
    shandshake,
    \wrap_cnt_r_reg[2]_0 ,
    \wrap_second_len_r_reg[2]_0 ,
    \wrap_cnt_r_reg[2]_1 ,
    \axaddr_offset_r_reg[3] ,
    \wrap_second_len_r_reg[0]_0 ,
    \wrap_second_len_r_reg[3]_0 ,
    \axlen_cnt_reg[3]_0 ,
    next_pending_r_reg_1,
    next_pending_r_reg_2,
    \axaddr_incr_reg[1] ,
    axaddr_incr0,
    \axaddr_incr_reg[2] ,
    \axaddr_incr_reg[3] ,
    \axaddr_incr_reg[4] ,
    \axaddr_incr_reg[1]_0 ,
    I26,
    \axaddr_incr_reg[2]_0 ,
    \axaddr_incr_reg[3]_0 ,
    \axaddr_incr_reg[4]_0 ,
    \axaddr_offset_r_reg[2] ,
    \wrap_boundary_axaddr_r_reg[6] ,
    \axaddr_offset_r_reg[2]_0 ,
    \wrap_boundary_axaddr_r_reg[6]_0 ,
    \m_axi_awaddr[10] ,
    \m_axi_araddr[10] ,
    SR,
    s_axi_bid,
    s_axi_bresp,
    UNCONN_OUT,
    aclk,
    b_push,
    s_axi_awvalid,
    s_axi_rready,
    \cnt_read_reg[3]_rep__3_rep ,
    s_axi_bready,
    si_rs_bvalid,
    \state_reg[0]_rep ,
    \state_reg[1]_rep ,
    s_axi_arvalid,
    wrap_second_len,
    \axaddr_offset_r_reg[2]_1 ,
    \state_reg[1]_rep_0 ,
    \wrap_second_len_r_reg[2]_1 ,
    \axaddr_offset_r_reg[3]_0 ,
    \state_reg[1] ,
    \wrap_second_len_r_reg[1] ,
    \axaddr_offset_r_reg[2]_2 ,
    \state_reg[1]_rep_1 ,
    \wrap_second_len_r_reg[2]_2 ,
    \axaddr_offset_r_reg[3]_1 ,
    \state_reg[1]_0 ,
    sel_first,
    sel_first_0,
    out,
    \s_bresp_acc_reg[1] ,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    r_push_r_reg,
    \cnt_read_reg[4] ,
    aresetn,
    E,
    \state_reg[1]_rep_2 );
  output si_rs_awvalid;
  output s_axi_awready;
  output s_axi_bvalid;
  output si_rs_bready;
  output si_rs_arvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output si_rs_rready;
  output [3:0]S;
  output [46:0]Q;
  output [3:0]\axaddr_incr_reg[11] ;
  output [3:0]\axaddr_incr_reg[7] ;
  output [46:0]\s_arid_r_reg[0] ;
  output [3:0]\axaddr_incr_reg[11]_0 ;
  output [0:0]D;
  output [0:0]\wrap_second_len_r_reg[2] ;
  output \wrap_cnt_r_reg[2] ;
  output [2:0]axaddr_offset;
  output \wrap_second_len_r_reg[0] ;
  output \wrap_second_len_r_reg[3] ;
  output \axlen_cnt_reg[3] ;
  output next_pending_r_reg;
  output next_pending_r_reg_0;
  output shandshake;
  output [0:0]\wrap_cnt_r_reg[2]_0 ;
  output [0:0]\wrap_second_len_r_reg[2]_0 ;
  output \wrap_cnt_r_reg[2]_1 ;
  output [2:0]\axaddr_offset_r_reg[3] ;
  output \wrap_second_len_r_reg[0]_0 ;
  output \wrap_second_len_r_reg[3]_0 ;
  output \axlen_cnt_reg[3]_0 ;
  output next_pending_r_reg_1;
  output next_pending_r_reg_2;
  output \axaddr_incr_reg[1] ;
  output [2:0]axaddr_incr0;
  output \axaddr_incr_reg[2] ;
  output \axaddr_incr_reg[3] ;
  output \axaddr_incr_reg[4] ;
  output \axaddr_incr_reg[1]_0 ;
  output [2:0]I26;
  output \axaddr_incr_reg[2]_0 ;
  output \axaddr_incr_reg[3]_0 ;
  output \axaddr_incr_reg[4]_0 ;
  output \axaddr_offset_r_reg[2] ;
  output [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  output \axaddr_offset_r_reg[2]_0 ;
  output [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  output \m_axi_awaddr[10] ;
  output \m_axi_araddr[10] ;
  output [0:0]SR;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [35:0]UNCONN_OUT;
  input aclk;
  input b_push;
  input s_axi_awvalid;
  input s_axi_rready;
  input \cnt_read_reg[3]_rep__3_rep ;
  input s_axi_bready;
  input si_rs_bvalid;
  input \state_reg[0]_rep ;
  input \state_reg[1]_rep ;
  input s_axi_arvalid;
  input [0:0]wrap_second_len;
  input \axaddr_offset_r_reg[2]_1 ;
  input \state_reg[1]_rep_0 ;
  input [1:0]\wrap_second_len_r_reg[2]_1 ;
  input [2:0]\axaddr_offset_r_reg[3]_0 ;
  input [1:0]\state_reg[1] ;
  input [0:0]\wrap_second_len_r_reg[1] ;
  input \axaddr_offset_r_reg[2]_2 ;
  input \state_reg[1]_rep_1 ;
  input [1:0]\wrap_second_len_r_reg[2]_2 ;
  input [2:0]\axaddr_offset_r_reg[3]_1 ;
  input [1:0]\state_reg[1]_0 ;
  input sel_first;
  input sel_first_0;
  input [0:0]out;
  input [1:0]\s_bresp_acc_reg[1] ;
  input [0:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [31:0]s_axi_awaddr;
  input [0:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input [1:0]r_push_r_reg;
  input [33:0]\cnt_read_reg[4] ;
  input aresetn;
  input [0:0]E;
  input [0:0]\state_reg[1]_rep_2 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]I26;
  wire [46:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [35:0]UNCONN_OUT;
  wire aclk;
  wire aresetn;
  wire [2:0]axaddr_incr0;
  wire [3:0]\axaddr_incr_reg[11] ;
  wire [3:0]\axaddr_incr_reg[11]_0 ;
  wire \axaddr_incr_reg[1] ;
  wire \axaddr_incr_reg[1]_0 ;
  wire \axaddr_incr_reg[2] ;
  wire \axaddr_incr_reg[2]_0 ;
  wire \axaddr_incr_reg[3] ;
  wire \axaddr_incr_reg[3]_0 ;
  wire \axaddr_incr_reg[4] ;
  wire \axaddr_incr_reg[4]_0 ;
  wire [3:0]\axaddr_incr_reg[7] ;
  wire [2:0]axaddr_offset;
  wire \axaddr_offset_r_reg[2] ;
  wire \axaddr_offset_r_reg[2]_0 ;
  wire \axaddr_offset_r_reg[2]_1 ;
  wire \axaddr_offset_r_reg[2]_2 ;
  wire [2:0]\axaddr_offset_r_reg[3] ;
  wire [2:0]\axaddr_offset_r_reg[3]_0 ;
  wire [2:0]\axaddr_offset_r_reg[3]_1 ;
  wire \axlen_cnt_reg[3] ;
  wire \axlen_cnt_reg[3]_0 ;
  wire b_push;
  wire \cnt_read_reg[3]_rep__3_rep ;
  wire [33:0]\cnt_read_reg[4] ;
  wire \m_axi_araddr[10] ;
  wire \m_axi_awaddr[10] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire next_pending_r_reg_2;
  wire [0:0]out;
  wire [1:0]r_push_r_reg;
  wire [46:0]\s_arid_r_reg[0] ;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [1:0]\s_bresp_acc_reg[1] ;
  wire sel_first;
  wire sel_first_0;
  wire shandshake;
  wire si_rs_arvalid;
  wire si_rs_awvalid;
  wire si_rs_bready;
  wire si_rs_bvalid;
  wire si_rs_rready;
  wire \state_reg[0]_rep ;
  wire [1:0]\state_reg[1] ;
  wire [1:0]\state_reg[1]_0 ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire \state_reg[1]_rep_1 ;
  wire [0:0]\state_reg[1]_rep_2 ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  wire \wrap_cnt_r_reg[2] ;
  wire [0:0]\wrap_cnt_r_reg[2]_0 ;
  wire \wrap_cnt_r_reg[2]_1 ;
  wire [0:0]wrap_second_len;
  wire \wrap_second_len_r_reg[0] ;
  wire \wrap_second_len_r_reg[0]_0 ;
  wire [0:0]\wrap_second_len_r_reg[1] ;
  wire [0:0]\wrap_second_len_r_reg[2] ;
  wire [0:0]\wrap_second_len_r_reg[2]_0 ;
  wire [1:0]\wrap_second_len_r_reg[2]_1 ;
  wire [1:0]\wrap_second_len_r_reg[2]_2 ;
  wire \wrap_second_len_r_reg[3] ;
  wire \wrap_second_len_r_reg[3]_0 ;

  ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice ar_pipe
       (.I26(I26),
        .Q(\s_arid_r_reg[0] ),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11]_0 ),
        .\axaddr_incr_reg[1] (\axaddr_incr_reg[1]_0 ),
        .\axaddr_incr_reg[2] (\axaddr_incr_reg[2]_0 ),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3]_0 ),
        .\axaddr_incr_reg[4] (\axaddr_incr_reg[4]_0 ),
        .\axaddr_incr_reg[7] (\axaddr_incr_reg[7] ),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2]_0 ),
        .\axaddr_offset_r_reg[2]_0 (\axaddr_offset_r_reg[2]_2 ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3]_1 ),
        .\axlen_cnt_reg[3] (\axlen_cnt_reg[3]_0 ),
        .\m_axi_araddr[10] (\m_axi_araddr[10] ),
        .m_valid_i_reg_0(si_rs_arvalid),
        .next_pending_r_reg(next_pending_r_reg_1),
        .next_pending_r_reg_0(next_pending_r_reg_2),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .sel_first_0(sel_first_0),
        .\state_reg[0]_rep (\state_reg[0]_rep ),
        .\state_reg[1] (\state_reg[1]_0 ),
        .\state_reg[1]_rep (\state_reg[1]_rep ),
        .\state_reg[1]_rep_0 (\state_reg[1]_rep_1 ),
        .\state_reg[1]_rep_1 (\state_reg[1]_rep_2 ),
        .\wrap_boundary_axaddr_r_reg[6] (\wrap_boundary_axaddr_r_reg[6]_0 ),
        .\wrap_cnt_r_reg[2] (\wrap_cnt_r_reg[2]_0 ),
        .\wrap_cnt_r_reg[2]_0 (\wrap_cnt_r_reg[2]_1 ),
        .\wrap_second_len_r_reg[0] (\wrap_second_len_r_reg[0]_0 ),
        .\wrap_second_len_r_reg[1] (\wrap_second_len_r_reg[1] ),
        .\wrap_second_len_r_reg[2] (\wrap_second_len_r_reg[2]_0 ),
        .\wrap_second_len_r_reg[2]_0 (\wrap_second_len_r_reg[2]_2 ),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3]_0 ));
  ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0 aw_pipe
       (.D(D),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .aclk(aclk),
        .axaddr_incr0(axaddr_incr0),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[1] (\axaddr_incr_reg[1] ),
        .\axaddr_incr_reg[2] (\axaddr_incr_reg[2] ),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[4] (\axaddr_incr_reg[4] ),
        .axaddr_offset(axaddr_offset),
        .\axaddr_offset_r_reg[2] (\axaddr_offset_r_reg[2] ),
        .\axaddr_offset_r_reg[2]_0 (\axaddr_offset_r_reg[2]_1 ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3]_0 ),
        .\axlen_cnt_reg[3] (\axlen_cnt_reg[3] ),
        .b_push(b_push),
        .\m_axi_awaddr[10] (\m_axi_awaddr[10] ),
        .m_valid_i_reg_0(si_rs_awvalid),
        .next_pending_r_reg(next_pending_r_reg),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .sel_first(sel_first),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_rep (\state_reg[1]_rep_0 ),
        .\wrap_boundary_axaddr_r_reg[6] (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[2] (\wrap_cnt_r_reg[2] ),
        .wrap_second_len(wrap_second_len),
        .\wrap_second_len_r_reg[0] (\wrap_second_len_r_reg[0] ),
        .\wrap_second_len_r_reg[2] (\wrap_second_len_r_reg[2] ),
        .\wrap_second_len_r_reg[2]_0 (\wrap_second_len_r_reg[2]_1 ),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ));
  ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1 b_pipe
       (.SR(SR),
        .aclk(aclk),
        .out(out),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_bresp_acc_reg[1] (\s_bresp_acc_reg[1] ),
        .shandshake(shandshake),
        .si_rs_bvalid(si_rs_bvalid),
        .\skid_buffer_reg[0]_0 (si_rs_bready));
  ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2 r_pipe
       (.SR(SR),
        .UNCONN_OUT(UNCONN_OUT),
        .aclk(aclk),
        .\cnt_read_reg[3]_rep__3_rep (\cnt_read_reg[3]_rep__3_rep ),
        .\cnt_read_reg[4] (\cnt_read_reg[4] ),
        .r_push_r_reg(r_push_r_reg),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\skid_buffer_reg[0]_0 (si_rs_rready));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_axic_register_slice" *) 
module ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice
   (m_valid_i_reg_0,
    s_axi_arready,
    \axaddr_incr_reg[7] ,
    Q,
    \axaddr_incr_reg[11] ,
    \wrap_cnt_r_reg[2] ,
    \wrap_second_len_r_reg[2] ,
    \wrap_cnt_r_reg[2]_0 ,
    \axaddr_offset_r_reg[3] ,
    \wrap_second_len_r_reg[0] ,
    \wrap_second_len_r_reg[3] ,
    \axlen_cnt_reg[3] ,
    next_pending_r_reg,
    next_pending_r_reg_0,
    \axaddr_incr_reg[1] ,
    I26,
    \axaddr_incr_reg[2] ,
    \axaddr_incr_reg[3] ,
    \axaddr_incr_reg[4] ,
    \axaddr_offset_r_reg[2] ,
    \wrap_boundary_axaddr_r_reg[6] ,
    \m_axi_araddr[10] ,
    SR,
    aclk,
    \state_reg[0]_rep ,
    \state_reg[1]_rep ,
    s_axi_arvalid,
    \wrap_second_len_r_reg[1] ,
    \axaddr_offset_r_reg[2]_0 ,
    \state_reg[1]_rep_0 ,
    \wrap_second_len_r_reg[2]_0 ,
    \axaddr_offset_r_reg[3]_0 ,
    \state_reg[1] ,
    sel_first_0,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    aresetn,
    \state_reg[1]_rep_1 );
  output m_valid_i_reg_0;
  output s_axi_arready;
  output [3:0]\axaddr_incr_reg[7] ;
  output [46:0]Q;
  output [3:0]\axaddr_incr_reg[11] ;
  output [0:0]\wrap_cnt_r_reg[2] ;
  output [0:0]\wrap_second_len_r_reg[2] ;
  output \wrap_cnt_r_reg[2]_0 ;
  output [2:0]\axaddr_offset_r_reg[3] ;
  output \wrap_second_len_r_reg[0] ;
  output \wrap_second_len_r_reg[3] ;
  output \axlen_cnt_reg[3] ;
  output next_pending_r_reg;
  output next_pending_r_reg_0;
  output \axaddr_incr_reg[1] ;
  output [2:0]I26;
  output \axaddr_incr_reg[2] ;
  output \axaddr_incr_reg[3] ;
  output \axaddr_incr_reg[4] ;
  output \axaddr_offset_r_reg[2] ;
  output [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  output \m_axi_araddr[10] ;
  output [0:0]SR;
  input aclk;
  input \state_reg[0]_rep ;
  input \state_reg[1]_rep ;
  input s_axi_arvalid;
  input [0:0]\wrap_second_len_r_reg[1] ;
  input \axaddr_offset_r_reg[2]_0 ;
  input \state_reg[1]_rep_0 ;
  input [1:0]\wrap_second_len_r_reg[2]_0 ;
  input [2:0]\axaddr_offset_r_reg[3]_0 ;
  input [1:0]\state_reg[1] ;
  input sel_first_0;
  input [0:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [31:0]s_axi_araddr;
  input aresetn;
  input [0:0]\state_reg[1]_rep_1 ;

  wire [2:0]I26;
  wire [46:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire [3:0]\axaddr_incr_reg[11] ;
  wire \axaddr_incr_reg[1] ;
  wire \axaddr_incr_reg[2] ;
  wire \axaddr_incr_reg[3] ;
  wire \axaddr_incr_reg[4] ;
  wire [3:0]\axaddr_incr_reg[7] ;
  wire \axaddr_offset_r[0]_i_2__0_n_0 ;
  wire \axaddr_offset_r[1]_i_2__0_n_0 ;
  wire \axaddr_offset_r[1]_i_3__0_n_0 ;
  wire \axaddr_offset_r[3]_i_2__0_n_0 ;
  wire \axaddr_offset_r_reg[2] ;
  wire \axaddr_offset_r_reg[2]_0 ;
  wire [2:0]\axaddr_offset_r_reg[3] ;
  wire [2:0]\axaddr_offset_r_reg[3]_0 ;
  wire \axlen_cnt_reg[3] ;
  wire \m_axi_araddr[10] ;
  wire \m_payload_i[0]_i_1__0_n_0 ;
  wire \m_payload_i[10]_i_1__0_n_0 ;
  wire \m_payload_i[11]_i_1__0_n_0 ;
  wire \m_payload_i[12]_i_1__0_n_0 ;
  wire \m_payload_i[13]_i_1__0_n_0 ;
  wire \m_payload_i[14]_i_1__0_n_0 ;
  wire \m_payload_i[15]_i_1__0_n_0 ;
  wire \m_payload_i[16]_i_1__0_n_0 ;
  wire \m_payload_i[17]_i_1__0_n_0 ;
  wire \m_payload_i[18]_i_1__0_n_0 ;
  wire \m_payload_i[19]_i_1__0_n_0 ;
  wire \m_payload_i[1]_i_1__0_n_0 ;
  wire \m_payload_i[20]_i_1__0_n_0 ;
  wire \m_payload_i[21]_i_1__0_n_0 ;
  wire \m_payload_i[22]_i_1__0_n_0 ;
  wire \m_payload_i[23]_i_1__0_n_0 ;
  wire \m_payload_i[24]_i_1__0_n_0 ;
  wire \m_payload_i[25]_i_1__0_n_0 ;
  wire \m_payload_i[26]_i_1__0_n_0 ;
  wire \m_payload_i[27]_i_1__0_n_0 ;
  wire \m_payload_i[28]_i_1__0_n_0 ;
  wire \m_payload_i[29]_i_1__0_n_0 ;
  wire \m_payload_i[2]_i_1__0_n_0 ;
  wire \m_payload_i[30]_i_1__0_n_0 ;
  wire \m_payload_i[31]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_1__0_n_0 ;
  wire \m_payload_i[33]_i_1__0_n_0 ;
  wire \m_payload_i[34]_i_1__0_n_0 ;
  wire \m_payload_i[35]_i_1__1_n_0 ;
  wire \m_payload_i[36]_i_1__0_n_0 ;
  wire \m_payload_i[38]_i_1__0_n_0 ;
  wire \m_payload_i[39]_i_1__0_n_0 ;
  wire \m_payload_i[3]_i_1__0_n_0 ;
  wire \m_payload_i[44]_i_1__0_n_0 ;
  wire \m_payload_i[45]_i_1__0_n_0 ;
  wire \m_payload_i[46]_i_1__0_n_0 ;
  wire \m_payload_i[47]_i_1__0_n_0 ;
  wire \m_payload_i[48]_i_1__0_n_0 ;
  wire \m_payload_i[49]_i_1__0_n_0 ;
  wire \m_payload_i[4]_i_1__0_n_0 ;
  wire \m_payload_i[50]_i_1__0_n_0 ;
  wire \m_payload_i[51]_i_1__0_n_0 ;
  wire \m_payload_i[53]_i_1__0_n_0 ;
  wire \m_payload_i[5]_i_1__0_n_0 ;
  wire \m_payload_i[6]_i_1__0_n_0 ;
  wire \m_payload_i[7]_i_1__0_n_0 ;
  wire \m_payload_i[8]_i_1__0_n_0 ;
  wire \m_payload_i[9]_i_1__0_n_0 ;
  wire \m_payload_i_reg_n_0_[38] ;
  wire m_valid_i_i_1__2_n_0;
  wire m_valid_i_reg_0;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_ready_i_i_1__2_n_0;
  wire sel_first_0;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[38] ;
  wire \skid_buffer_reg_n_0_[39] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[44] ;
  wire \skid_buffer_reg_n_0_[45] ;
  wire \skid_buffer_reg_n_0_[46] ;
  wire \skid_buffer_reg_n_0_[47] ;
  wire \skid_buffer_reg_n_0_[48] ;
  wire \skid_buffer_reg_n_0_[49] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[50] ;
  wire \skid_buffer_reg_n_0_[51] ;
  wire \skid_buffer_reg_n_0_[53] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire \state_reg[0]_rep ;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_rep ;
  wire \state_reg[1]_rep_0 ;
  wire [0:0]\state_reg[1]_rep_1 ;
  wire \wrap_boundary_axaddr_r[3]_i_2__0_n_0 ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire \wrap_cnt_r[3]_i_3__0_n_0 ;
  wire [0:0]\wrap_cnt_r_reg[2] ;
  wire \wrap_cnt_r_reg[2]_0 ;
  wire \wrap_second_len_r[0]_i_4__0_n_0 ;
  wire \wrap_second_len_r[3]_i_3__0_n_0 ;
  wire \wrap_second_len_r_reg[0] ;
  wire [0:0]\wrap_second_len_r_reg[1] ;
  wire [0:0]\wrap_second_len_r_reg[2] ;
  wire [1:0]\wrap_second_len_r_reg[2]_0 ;
  wire \wrap_second_len_r_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[1]_i_1 
       (.I0(aresetn),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \axaddr_incr[0]_i_5__0 
       (.I0(Q[2]),
        .I1(Q[35]),
        .I2(Q[36]),
        .O(I26[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \axaddr_incr[0]_i_6__0 
       (.I0(Q[1]),
        .I1(Q[36]),
        .O(I26[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \axaddr_incr[0]_i_7__0 
       (.I0(Q[0]),
        .I1(Q[35]),
        .I2(Q[36]),
        .O(I26[0]));
  LUT3 #(
    .INIT(8'h01)) 
    \axaddr_incr[1]_i_4__0 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first_0),
        .O(\axaddr_incr_reg[1] ));
  LUT3 #(
    .INIT(8'h04)) 
    \axaddr_incr[2]_i_4__0 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(sel_first_0),
        .O(\axaddr_incr_reg[2] ));
  LUT3 #(
    .INIT(8'h04)) 
    \axaddr_incr[3]_i_4__0 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first_0),
        .O(\axaddr_incr_reg[3] ));
  LUT3 #(
    .INIT(8'h08)) 
    \axaddr_incr[4]_i_5__0 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first_0),
        .O(\axaddr_incr_reg[4] ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_6__0 
       (.I0(Q[7]),
        .O(\axaddr_incr_reg[7] [3]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_7__0 
       (.I0(Q[6]),
        .O(\axaddr_incr_reg[7] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_8__0 
       (.I0(Q[5]),
        .O(\axaddr_incr_reg[7] [1]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_9__0 
       (.I0(Q[4]),
        .O(\axaddr_incr_reg[7] [0]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_5__0 
       (.I0(Q[11]),
        .O(\axaddr_incr_reg[11] [3]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_6__0 
       (.I0(Q[10]),
        .O(\axaddr_incr_reg[11] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_7__0 
       (.I0(Q[9]),
        .O(\axaddr_incr_reg[11] [1]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_8__0 
       (.I0(Q[8]),
        .O(\axaddr_incr_reg[11] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \axaddr_offset_r[0]_i_1__0 
       (.I0(Q[38]),
        .I1(\axaddr_offset_r[0]_i_2__0_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[1] [0]),
        .I5(\axaddr_offset_r_reg[3]_0 [0]),
        .O(\axaddr_offset_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[0]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[35]),
        .I3(Q[2]),
        .I4(Q[36]),
        .I5(Q[0]),
        .O(\axaddr_offset_r[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAC00FFFFAC000000)) 
    \axaddr_offset_r[1]_i_1__0 
       (.I0(\axaddr_offset_r[1]_i_2__0_n_0 ),
        .I1(\axaddr_offset_r[1]_i_3__0_n_0 ),
        .I2(Q[35]),
        .I3(Q[39]),
        .I4(\state_reg[1]_rep_0 ),
        .I5(\axaddr_offset_r_reg[3]_0 [1]),
        .O(\axaddr_offset_r_reg[3] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_offset_r[1]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[36]),
        .I2(Q[2]),
        .O(\axaddr_offset_r[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_offset_r[1]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[36]),
        .I2(Q[1]),
        .O(\axaddr_offset_r[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[2]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[35]),
        .I3(Q[4]),
        .I4(Q[36]),
        .I5(Q[2]),
        .O(\axaddr_offset_r_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \axaddr_offset_r[3]_i_1__0 
       (.I0(Q[41]),
        .I1(\axaddr_offset_r[3]_i_2__0_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[0]_rep ),
        .I5(\axaddr_offset_r_reg[3]_0 [2]),
        .O(\axaddr_offset_r_reg[3] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[3]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[35]),
        .I3(Q[5]),
        .I4(Q[36]),
        .I5(Q[3]),
        .O(\axaddr_offset_r[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \axlen_cnt[3]_i_2__1 
       (.I0(Q[41]),
        .I1(\state_reg[0]_rep ),
        .I2(m_valid_i_reg_0),
        .I3(\state_reg[1]_rep ),
        .O(\axlen_cnt_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_araddr[11]_INST_0_i_1 
       (.I0(\m_payload_i_reg_n_0_[38] ),
        .I1(sel_first_0),
        .O(\m_axi_araddr[10] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__0 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__0 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__0 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__0 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__0 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1__0 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__0 
       (.I0(s_axi_araddr[15]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__0 
       (.I0(s_axi_araddr[16]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1__0 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(\m_payload_i[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__0 
       (.I0(s_axi_araddr[18]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__0 
       (.I0(s_axi_araddr[19]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__0 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1__0 
       (.I0(s_axi_araddr[20]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(\m_payload_i[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1__0 
       (.I0(s_axi_araddr[21]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(\m_payload_i[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1__0 
       (.I0(s_axi_araddr[22]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(\m_payload_i[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1__0 
       (.I0(s_axi_araddr[23]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(\m_payload_i[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__0 
       (.I0(s_axi_araddr[24]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__0 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__0 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__0 
       (.I0(s_axi_araddr[27]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__0 
       (.I0(s_axi_araddr[28]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__0 
       (.I0(s_axi_araddr[29]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__0 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_2__0 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1__0 
       (.I0(s_axi_arprot[0]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(\m_payload_i[32]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__0 
       (.I0(s_axi_arprot[1]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__0 
       (.I0(s_axi_arprot[2]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1__1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(\m_payload_i[35]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(\m_payload_i[36]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[38]_i_1__0 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[38] ),
        .O(\m_payload_i[38]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[39]_i_1__0 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[39] ),
        .O(\m_payload_i[39]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[44]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[44] ),
        .O(\m_payload_i[44]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[45]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[45] ),
        .O(\m_payload_i[45]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[46]_i_1__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[46] ),
        .O(\m_payload_i[46]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[47]_i_1__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[47] ),
        .O(\m_payload_i[47]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_1__0 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[48] ),
        .O(\m_payload_i[48]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[49]_i_1__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[49] ),
        .O(\m_payload_i[49]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[50]_i_1__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[50] ),
        .O(\m_payload_i[50]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[51]_i_1__0 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[51] ),
        .O(\m_payload_i[51]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[53]_i_1__0 
       (.I0(s_axi_arid),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[53] ),
        .O(\m_payload_i[53]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__0 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arready),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[12]_i_1__0_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[13]_i_1__0_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[14]_i_1__0_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[15]_i_1__0_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[16]_i_1__0_n_0 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[17]_i_1__0_n_0 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[18]_i_1__0_n_0 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[19]_i_1__0_n_0 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[20]_i_1__0_n_0 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[21]_i_1__0_n_0 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[22]_i_1__0_n_0 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[23]_i_1__0_n_0 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[24]_i_1__0_n_0 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[25]_i_1__0_n_0 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[26]_i_1__0_n_0 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[27]_i_1__0_n_0 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[28]_i_1__0_n_0 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[29]_i_1__0_n_0 ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[30]_i_1__0_n_0 ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[31]_i_2__0_n_0 ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[32]_i_1__0_n_0 ),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[33]_i_1__0_n_0 ),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[34]_i_1__0_n_0 ),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[35]_i_1__1_n_0 ),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[36]_i_1__0_n_0 ),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[38]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[39]_i_1__0_n_0 ),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[44]_i_1__0_n_0 ),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[45]_i_1__0_n_0 ),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[46]_i_1__0_n_0 ),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[47]_i_1__0_n_0 ),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[48]_i_1__0_n_0 ),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[49]_i_1__0_n_0 ),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[50]_i_1__0_n_0 ),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[51]_i_1__0_n_0 ),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[53]_i_1__0_n_0 ),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\state_reg[1]_rep_1 ),
        .D(\m_payload_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA2A2AAA2AAA2AAA2)) 
    m_valid_i_i_1__2
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(s_axi_arready),
        .I2(s_axi_arvalid),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[0]_rep ),
        .I5(\state_reg[1]_rep ),
        .O(m_valid_i_i_1__2_n_0));
  FDRE m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__2_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    next_pending_r_i_2__1
       (.I0(next_pending_r_reg_0),
        .I1(Q[42]),
        .I2(Q[45]),
        .I3(Q[43]),
        .I4(Q[44]),
        .O(next_pending_r_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    next_pending_r_i_2__2
       (.I0(Q[40]),
        .I1(Q[39]),
        .I2(Q[41]),
        .I3(Q[38]),
        .O(next_pending_r_reg_0));
  LUT6 #(
    .INIT(64'hA222A222AAAAA222)) 
    s_ready_i_i_1__2
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(m_valid_i_reg_0),
        .I2(\state_reg[0]_rep ),
        .I3(\state_reg[1]_rep ),
        .I4(s_axi_arready),
        .I5(s_axi_arvalid),
        .O(s_ready_i_i_1__2_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arprot[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arprot[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arprot[2]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arsize[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arsize[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[38] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arburst[0]),
        .Q(\skid_buffer_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[39] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arburst[1]),
        .Q(\skid_buffer_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[44] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[0]),
        .Q(\skid_buffer_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[45] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[1]),
        .Q(\skid_buffer_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[46] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[2]),
        .Q(\skid_buffer_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[47] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[3]),
        .Q(\skid_buffer_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[48] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[4]),
        .Q(\skid_buffer_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[49] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[5]),
        .Q(\skid_buffer_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[50] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[6]),
        .Q(\skid_buffer_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[51] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arlen[7]),
        .Q(\skid_buffer_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[53] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_arid),
        .Q(\skid_buffer_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_axi_arready),
        .D(s_axi_araddr[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \wrap_boundary_axaddr_r[0]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[36]),
        .I2(Q[38]),
        .I3(Q[35]),
        .O(\wrap_boundary_axaddr_r_reg[6] [0]));
  LUT5 #(
    .INIT(32'h8A888AAA)) 
    \wrap_boundary_axaddr_r[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[36]),
        .I2(Q[38]),
        .I3(Q[35]),
        .I4(Q[39]),
        .O(\wrap_boundary_axaddr_r_reg[6] [1]));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \wrap_boundary_axaddr_r[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[40]),
        .I2(Q[35]),
        .I3(Q[39]),
        .I4(Q[36]),
        .I5(Q[38]),
        .O(\wrap_boundary_axaddr_r_reg[6] [2]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \wrap_boundary_axaddr_r[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\wrap_boundary_axaddr_r[3]_i_2__0_n_0 ),
        .I2(Q[36]),
        .I3(Q[39]),
        .I4(Q[35]),
        .I5(Q[38]),
        .O(\wrap_boundary_axaddr_r_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_boundary_axaddr_r[3]_i_2__0 
       (.I0(Q[40]),
        .I1(Q[35]),
        .I2(Q[41]),
        .O(\wrap_boundary_axaddr_r[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h002A0A2AA02AAA2A)) 
    \wrap_boundary_axaddr_r[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[41]),
        .I2(Q[35]),
        .I3(Q[36]),
        .I4(Q[40]),
        .I5(Q[39]),
        .O(\wrap_boundary_axaddr_r_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \wrap_boundary_axaddr_r[5]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[36]),
        .I2(Q[40]),
        .I3(Q[35]),
        .I4(Q[41]),
        .O(\wrap_boundary_axaddr_r_reg[6] [5]));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \wrap_boundary_axaddr_r[6]_i_1__0 
       (.I0(Q[6]),
        .I1(Q[36]),
        .I2(Q[35]),
        .I3(Q[41]),
        .O(\wrap_boundary_axaddr_r_reg[6] [6]));
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_cnt_r[2]_i_1__0 
       (.I0(\wrap_second_len_r_reg[2] ),
        .I1(\wrap_cnt_r_reg[2]_0 ),
        .I2(\wrap_second_len_r_reg[1] ),
        .O(\wrap_cnt_r_reg[2] ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \wrap_cnt_r[3]_i_2__0 
       (.I0(\wrap_cnt_r[3]_i_3__0_n_0 ),
        .I1(\axaddr_offset_r_reg[2]_0 ),
        .I2(\axaddr_offset_r_reg[3] [0]),
        .I3(\axaddr_offset_r_reg[3] [1]),
        .I4(\axaddr_offset_r_reg[3] [2]),
        .O(\wrap_cnt_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000800FFFFF8FF)) 
    \wrap_cnt_r[3]_i_3__0 
       (.I0(Q[38]),
        .I1(\axaddr_offset_r[0]_i_2__0_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[1] [0]),
        .I5(\wrap_second_len_r_reg[2]_0 [0]),
        .O(\wrap_cnt_r[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \wrap_second_len_r[0]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[36]),
        .I2(Q[2]),
        .I3(Q[35]),
        .I4(\axaddr_offset_r[1]_i_3__0_n_0 ),
        .I5(\wrap_second_len_r[0]_i_4__0_n_0 ),
        .O(\wrap_second_len_r_reg[0] ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrap_second_len_r[0]_i_4__0 
       (.I0(Q[38]),
        .I1(\state_reg[1] [0]),
        .I2(m_valid_i_reg_0),
        .I3(\state_reg[1] [1]),
        .O(\wrap_second_len_r[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h02FCFFFF02FC0000)) 
    \wrap_second_len_r[2]_i_1__0 
       (.I0(\axaddr_offset_r_reg[3] [2]),
        .I1(\axaddr_offset_r_reg[3] [1]),
        .I2(\axaddr_offset_r_reg[3] [0]),
        .I3(\axaddr_offset_r_reg[2]_0 ),
        .I4(\state_reg[1]_rep_0 ),
        .I5(\wrap_second_len_r_reg[2]_0 [1]),
        .O(\wrap_second_len_r_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \wrap_second_len_r[3]_i_2__0 
       (.I0(\wrap_second_len_r[3]_i_3__0_n_0 ),
        .I1(Q[35]),
        .I2(Q[4]),
        .I3(Q[36]),
        .I4(Q[6]),
        .I5(\axlen_cnt_reg[3] ),
        .O(\wrap_second_len_r_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_second_len_r[3]_i_3__0 
       (.I0(Q[5]),
        .I1(Q[36]),
        .I2(Q[3]),
        .O(\wrap_second_len_r[3]_i_3__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_axic_register_slice" *) 
module ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0
   (m_valid_i_reg_0,
    s_axi_awready,
    S,
    Q,
    \axaddr_incr_reg[11] ,
    D,
    \wrap_second_len_r_reg[2] ,
    \wrap_cnt_r_reg[2] ,
    axaddr_offset,
    \wrap_second_len_r_reg[0] ,
    \wrap_second_len_r_reg[3] ,
    \axlen_cnt_reg[3] ,
    next_pending_r_reg,
    next_pending_r_reg_0,
    \axaddr_incr_reg[1] ,
    axaddr_incr0,
    \axaddr_incr_reg[2] ,
    \axaddr_incr_reg[3] ,
    \axaddr_incr_reg[4] ,
    \axaddr_offset_r_reg[2] ,
    \wrap_boundary_axaddr_r_reg[6] ,
    \m_axi_awaddr[10] ,
    aclk,
    b_push,
    s_axi_awvalid,
    wrap_second_len,
    \axaddr_offset_r_reg[2]_0 ,
    \state_reg[1]_rep ,
    \wrap_second_len_r_reg[2]_0 ,
    \axaddr_offset_r_reg[3] ,
    \state_reg[1] ,
    sel_first,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    SR,
    E);
  output m_valid_i_reg_0;
  output s_axi_awready;
  output [3:0]S;
  output [46:0]Q;
  output [3:0]\axaddr_incr_reg[11] ;
  output [0:0]D;
  output [0:0]\wrap_second_len_r_reg[2] ;
  output \wrap_cnt_r_reg[2] ;
  output [2:0]axaddr_offset;
  output \wrap_second_len_r_reg[0] ;
  output \wrap_second_len_r_reg[3] ;
  output \axlen_cnt_reg[3] ;
  output next_pending_r_reg;
  output next_pending_r_reg_0;
  output \axaddr_incr_reg[1] ;
  output [2:0]axaddr_incr0;
  output \axaddr_incr_reg[2] ;
  output \axaddr_incr_reg[3] ;
  output \axaddr_incr_reg[4] ;
  output \axaddr_offset_r_reg[2] ;
  output [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  output \m_axi_awaddr[10] ;
  input aclk;
  input b_push;
  input s_axi_awvalid;
  input [0:0]wrap_second_len;
  input \axaddr_offset_r_reg[2]_0 ;
  input \state_reg[1]_rep ;
  input [1:0]\wrap_second_len_r_reg[2]_0 ;
  input [2:0]\axaddr_offset_r_reg[3] ;
  input [1:0]\state_reg[1] ;
  input sel_first;
  input [0:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [31:0]s_axi_awaddr;
  input [0:0]SR;
  input [0:0]E;

  wire [0:0]D;
  wire [0:0]E;
  wire [46:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire aclk;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire [2:0]axaddr_incr0;
  wire [3:0]\axaddr_incr_reg[11] ;
  wire \axaddr_incr_reg[1] ;
  wire \axaddr_incr_reg[2] ;
  wire \axaddr_incr_reg[3] ;
  wire \axaddr_incr_reg[4] ;
  wire [2:0]axaddr_offset;
  wire \axaddr_offset_r[0]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_3_n_0 ;
  wire \axaddr_offset_r[3]_i_2_n_0 ;
  wire \axaddr_offset_r_reg[2] ;
  wire \axaddr_offset_r_reg[2]_0 ;
  wire [2:0]\axaddr_offset_r_reg[3] ;
  wire \axlen_cnt_reg[3] ;
  wire b_push;
  wire \m_axi_awaddr[10] ;
  wire \m_payload_i_reg_n_0_[38] ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_reg_0;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_ready_i_i_1_n_0;
  wire sel_first;
  wire [53:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[38] ;
  wire \skid_buffer_reg_n_0_[39] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[44] ;
  wire \skid_buffer_reg_n_0_[45] ;
  wire \skid_buffer_reg_n_0_[46] ;
  wire \skid_buffer_reg_n_0_[47] ;
  wire \skid_buffer_reg_n_0_[48] ;
  wire \skid_buffer_reg_n_0_[49] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[50] ;
  wire \skid_buffer_reg_n_0_[51] ;
  wire \skid_buffer_reg_n_0_[53] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_rep ;
  wire \wrap_boundary_axaddr_r[3]_i_2_n_0 ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire \wrap_cnt_r[3]_i_3_n_0 ;
  wire \wrap_cnt_r_reg[2] ;
  wire [0:0]wrap_second_len;
  wire \wrap_second_len_r[0]_i_4_n_0 ;
  wire \wrap_second_len_r[3]_i_3_n_0 ;
  wire \wrap_second_len_r_reg[0] ;
  wire [0:0]\wrap_second_len_r_reg[2] ;
  wire [1:0]\wrap_second_len_r_reg[2]_0 ;
  wire \wrap_second_len_r_reg[3] ;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \axaddr_incr[0]_i_5 
       (.I0(Q[2]),
        .I1(Q[35]),
        .I2(Q[36]),
        .O(axaddr_incr0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \axaddr_incr[0]_i_6 
       (.I0(Q[1]),
        .I1(Q[36]),
        .O(axaddr_incr0[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \axaddr_incr[0]_i_7 
       (.I0(Q[0]),
        .I1(Q[35]),
        .I2(Q[36]),
        .O(axaddr_incr0[0]));
  LUT3 #(
    .INIT(8'h01)) 
    \axaddr_incr[1]_i_4 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first),
        .O(\axaddr_incr_reg[1] ));
  LUT3 #(
    .INIT(8'h04)) 
    \axaddr_incr[2]_i_4 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(sel_first),
        .O(\axaddr_incr_reg[2] ));
  LUT3 #(
    .INIT(8'h04)) 
    \axaddr_incr[3]_i_4 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first),
        .O(\axaddr_incr_reg[3] ));
  LUT3 #(
    .INIT(8'h08)) 
    \axaddr_incr[4]_i_5 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(sel_first),
        .O(\axaddr_incr_reg[4] ));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_6 
       (.I0(Q[7]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_7 
       (.I0(Q[6]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_8 
       (.I0(Q[5]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[4]_i_9 
       (.I0(Q[4]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_5 
       (.I0(Q[11]),
        .O(\axaddr_incr_reg[11] [3]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_6 
       (.I0(Q[10]),
        .O(\axaddr_incr_reg[11] [2]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_7 
       (.I0(Q[9]),
        .O(\axaddr_incr_reg[11] [1]));
  LUT1 #(
    .INIT(2'h2)) 
    \axaddr_incr[8]_i_8 
       (.I0(Q[8]),
        .O(\axaddr_incr_reg[11] [0]));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \axaddr_offset_r[0]_i_1 
       (.I0(Q[38]),
        .I1(\axaddr_offset_r[0]_i_2_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[1] [0]),
        .I5(\axaddr_offset_r_reg[3] [0]),
        .O(axaddr_offset[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[0]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[35]),
        .I3(Q[2]),
        .I4(Q[36]),
        .I5(Q[0]),
        .O(\axaddr_offset_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAC00FFFFAC000000)) 
    \axaddr_offset_r[1]_i_1 
       (.I0(\axaddr_offset_r[1]_i_2_n_0 ),
        .I1(\axaddr_offset_r[1]_i_3_n_0 ),
        .I2(Q[35]),
        .I3(Q[39]),
        .I4(\state_reg[1]_rep ),
        .I5(\axaddr_offset_r_reg[3] [1]),
        .O(axaddr_offset[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_offset_r[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[36]),
        .I2(Q[2]),
        .O(\axaddr_offset_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_offset_r[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[36]),
        .I2(Q[1]),
        .O(\axaddr_offset_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[2]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[35]),
        .I3(Q[4]),
        .I4(Q[36]),
        .I5(Q[2]),
        .O(\axaddr_offset_r_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \axaddr_offset_r[3]_i_1 
       (.I0(Q[41]),
        .I1(\axaddr_offset_r[3]_i_2_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[1] [0]),
        .I5(\axaddr_offset_r_reg[3] [2]),
        .O(axaddr_offset[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axaddr_offset_r[3]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[35]),
        .I3(Q[5]),
        .I4(Q[36]),
        .I5(Q[3]),
        .O(\axaddr_offset_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \axlen_cnt[3]_i_2__0 
       (.I0(Q[41]),
        .I1(\state_reg[1] [0]),
        .I2(m_valid_i_reg_0),
        .I3(\state_reg[1] [1]),
        .O(\axlen_cnt_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awaddr[11]_INST_0_i_1 
       (.I0(\m_payload_i_reg_n_0_[38] ),
        .I1(sel_first),
        .O(\m_axi_awaddr[10] ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(s_axi_awaddr[12]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(s_axi_awaddr[13]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(s_axi_awaddr[15]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(s_axi_awaddr[16]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(s_axi_awaddr[17]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(s_axi_awaddr[18]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(s_axi_awaddr[19]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(s_axi_awaddr[20]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(s_axi_awaddr[21]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(s_axi_awaddr[22]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(s_axi_awaddr[23]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(s_axi_awaddr[24]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(s_axi_awaddr[25]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(s_axi_awaddr[26]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(s_axi_awaddr[27]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(s_axi_awaddr[28]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(s_axi_awaddr[29]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(s_axi_awaddr[30]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_2 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(s_axi_awprot[0]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(s_axi_awprot[1]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(s_axi_awprot[2]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1__0 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[38]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[38] ),
        .O(skid_buffer[38]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[39]_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[39] ),
        .O(skid_buffer[39]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[44]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[44] ),
        .O(skid_buffer[44]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[45]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[45] ),
        .O(skid_buffer[45]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[46]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[46] ),
        .O(skid_buffer[46]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[47]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[47] ),
        .O(skid_buffer[47]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[48] ),
        .O(skid_buffer[48]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[49]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[49] ),
        .O(skid_buffer[49]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[50]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[50] ),
        .O(skid_buffer[50]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[51]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[51] ),
        .O(skid_buffer[51]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[53]_i_1 
       (.I0(s_axi_awid),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[53] ),
        .O(skid_buffer[53]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(s_axi_awready),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[38]),
        .Q(\m_payload_i_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[39]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[44]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[45]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[46]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[47]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[48]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[49]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[50]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[51]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[53]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA2A2AAA2)) 
    m_valid_i_i_1
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(m_valid_i_reg_0),
        .I4(b_push),
        .O(m_valid_i_i_1_n_0));
  FDRE m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    next_pending_r_i_2
       (.I0(next_pending_r_reg_0),
        .I1(Q[42]),
        .I2(Q[43]),
        .I3(Q[44]),
        .I4(Q[45]),
        .O(next_pending_r_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_pending_r_i_2__0
       (.I0(Q[40]),
        .I1(Q[39]),
        .I2(Q[41]),
        .I3(Q[38]),
        .O(next_pending_r_reg_0));
  LUT5 #(
    .INIT(32'hA2A2AAA2)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(m_valid_i_reg_0),
        .I2(b_push),
        .I3(s_axi_awready),
        .I4(s_axi_awvalid),
        .O(s_ready_i_i_1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awprot[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awprot[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awprot[2]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awsize[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awsize[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[38] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awburst[0]),
        .Q(\skid_buffer_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[39] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awburst[1]),
        .Q(\skid_buffer_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[44] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[0]),
        .Q(\skid_buffer_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[45] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[1]),
        .Q(\skid_buffer_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[46] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[2]),
        .Q(\skid_buffer_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[47] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[3]),
        .Q(\skid_buffer_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[48] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[4]),
        .Q(\skid_buffer_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[49] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[5]),
        .Q(\skid_buffer_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[50] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[6]),
        .Q(\skid_buffer_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[51] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awlen[7]),
        .Q(\skid_buffer_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[53] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awid),
        .Q(\skid_buffer_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \wrap_boundary_axaddr_r[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[36]),
        .I2(Q[38]),
        .I3(Q[35]),
        .O(\wrap_boundary_axaddr_r_reg[6] [0]));
  LUT5 #(
    .INIT(32'h8A888AAA)) 
    \wrap_boundary_axaddr_r[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[36]),
        .I2(Q[38]),
        .I3(Q[35]),
        .I4(Q[39]),
        .O(\wrap_boundary_axaddr_r_reg[6] [1]));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \wrap_boundary_axaddr_r[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[40]),
        .I2(Q[35]),
        .I3(Q[39]),
        .I4(Q[36]),
        .I5(Q[38]),
        .O(\wrap_boundary_axaddr_r_reg[6] [2]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \wrap_boundary_axaddr_r[3]_i_1 
       (.I0(Q[3]),
        .I1(\wrap_boundary_axaddr_r[3]_i_2_n_0 ),
        .I2(Q[36]),
        .I3(Q[39]),
        .I4(Q[35]),
        .I5(Q[38]),
        .O(\wrap_boundary_axaddr_r_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_boundary_axaddr_r[3]_i_2 
       (.I0(Q[40]),
        .I1(Q[35]),
        .I2(Q[41]),
        .O(\wrap_boundary_axaddr_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h002A0A2AA02AAA2A)) 
    \wrap_boundary_axaddr_r[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[41]),
        .I2(Q[35]),
        .I3(Q[36]),
        .I4(Q[40]),
        .I5(Q[39]),
        .O(\wrap_boundary_axaddr_r_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h2A222AAA)) 
    \wrap_boundary_axaddr_r[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[36]),
        .I2(Q[40]),
        .I3(Q[35]),
        .I4(Q[41]),
        .O(\wrap_boundary_axaddr_r_reg[6] [5]));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \wrap_boundary_axaddr_r[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[36]),
        .I2(Q[35]),
        .I3(Q[41]),
        .O(\wrap_boundary_axaddr_r_reg[6] [6]));
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_cnt_r[2]_i_1 
       (.I0(\wrap_second_len_r_reg[2] ),
        .I1(\wrap_cnt_r_reg[2] ),
        .I2(wrap_second_len),
        .O(D));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \wrap_cnt_r[3]_i_2 
       (.I0(\wrap_cnt_r[3]_i_3_n_0 ),
        .I1(\axaddr_offset_r_reg[2]_0 ),
        .I2(axaddr_offset[0]),
        .I3(axaddr_offset[1]),
        .I4(axaddr_offset[2]),
        .O(\wrap_cnt_r_reg[2] ));
  LUT6 #(
    .INIT(64'h00000800FFFFF8FF)) 
    \wrap_cnt_r[3]_i_3 
       (.I0(Q[38]),
        .I1(\axaddr_offset_r[0]_i_2_n_0 ),
        .I2(\state_reg[1] [1]),
        .I3(m_valid_i_reg_0),
        .I4(\state_reg[1] [0]),
        .I5(\wrap_second_len_r_reg[2]_0 [0]),
        .O(\wrap_cnt_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \wrap_second_len_r[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[36]),
        .I2(Q[2]),
        .I3(Q[35]),
        .I4(\axaddr_offset_r[1]_i_3_n_0 ),
        .I5(\wrap_second_len_r[0]_i_4_n_0 ),
        .O(\wrap_second_len_r_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wrap_second_len_r[0]_i_4 
       (.I0(Q[38]),
        .I1(\state_reg[1] [0]),
        .I2(m_valid_i_reg_0),
        .I3(\state_reg[1] [1]),
        .O(\wrap_second_len_r[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02FCFFFF02FC0000)) 
    \wrap_second_len_r[2]_i_1 
       (.I0(axaddr_offset[2]),
        .I1(axaddr_offset[1]),
        .I2(axaddr_offset[0]),
        .I3(\axaddr_offset_r_reg[2]_0 ),
        .I4(\state_reg[1]_rep ),
        .I5(\wrap_second_len_r_reg[2]_0 [1]),
        .O(\wrap_second_len_r_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \wrap_second_len_r[3]_i_2 
       (.I0(\wrap_second_len_r[3]_i_3_n_0 ),
        .I1(Q[35]),
        .I2(Q[4]),
        .I3(Q[36]),
        .I4(Q[6]),
        .I5(\axlen_cnt_reg[3] ),
        .O(\wrap_second_len_r_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_second_len_r[3]_i_3 
       (.I0(Q[5]),
        .I1(Q[36]),
        .I2(Q[3]),
        .O(\wrap_second_len_r[3]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_axic_register_slice" *) 
module ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1
   (s_axi_bvalid,
    \skid_buffer_reg[0]_0 ,
    shandshake,
    s_axi_bid,
    s_axi_bresp,
    aclk,
    s_axi_bready,
    si_rs_bvalid,
    out,
    \s_bresp_acc_reg[1] ,
    SR);
  output s_axi_bvalid;
  output \skid_buffer_reg[0]_0 ;
  output shandshake;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  input aclk;
  input s_axi_bready;
  input si_rs_bvalid;
  input [0:0]out;
  input [1:0]\s_bresp_acc_reg[1] ;
  input [0:0]SR;

  wire [0:0]SR;
  wire aclk;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire \m_payload_i[0]_i_1_n_0 ;
  wire \m_payload_i[1]_i_1_n_0 ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire m_valid_i_i_1__1_n_0;
  wire [0:0]out;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [1:0]\s_bresp_acc_reg[1] ;
  wire s_ready_i_i_1__1_n_0;
  wire shandshake;
  wire si_rs_bvalid;
  wire \skid_buffer[0]_i_1_n_0 ;
  wire \skid_buffer[1]_i_1_n_0 ;
  wire \skid_buffer[2]_i_1_n_0 ;
  wire \skid_buffer_reg[0]_0 ;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[2] ;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hB8FFB8B8B800B8B8)) 
    \m_payload_i[0]_i_1 
       (.I0(\s_bresp_acc_reg[1] [0]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .I5(s_axi_bresp[0]),
        .O(\m_payload_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8B8B800B8B8)) 
    \m_payload_i[1]_i_1 
       (.I0(\s_bresp_acc_reg[1] [1]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .I5(s_axi_bresp[1]),
        .O(\m_payload_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8B8B800B8B8)) 
    \m_payload_i[2]_i_1 
       (.I0(out),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .I5(s_axi_bid),
        .O(\m_payload_i[2]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[0]_i_1_n_0 ),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(s_axi_bid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hA2A2AAA2)) 
    m_valid_i_i_1__1
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(si_rs_bvalid),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .O(m_valid_i_i_1__1_n_0));
  FDRE m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA2A2AAA2)) 
    s_ready_i_i_1__1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(s_axi_bvalid),
        .I2(s_axi_bready),
        .I3(\skid_buffer_reg[0]_0 ),
        .I4(si_rs_bvalid),
        .O(s_ready_i_i_1__1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__1_n_0),
        .Q(\skid_buffer_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shandshake_r_i_1
       (.I0(\skid_buffer_reg[0]_0 ),
        .I1(si_rs_bvalid),
        .O(shandshake));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[0]_i_1 
       (.I0(\s_bresp_acc_reg[1] [0]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\skid_buffer[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[1]_i_1 
       (.I0(\s_bresp_acc_reg[1] [1]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\skid_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[2]_i_1 
       (.I0(out),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\skid_buffer[2]_i_1_n_0 ));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\skid_buffer[0]_i_1_n_0 ),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\skid_buffer[1]_i_1_n_0 ),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\skid_buffer[2]_i_1_n_0 ),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_axic_register_slice" *) 
module ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2
   (s_axi_rvalid,
    \skid_buffer_reg[0]_0 ,
    UNCONN_OUT,
    aclk,
    s_axi_rready,
    \cnt_read_reg[3]_rep__3_rep ,
    r_push_r_reg,
    \cnt_read_reg[4] ,
    SR);
  output s_axi_rvalid;
  output \skid_buffer_reg[0]_0 ;
  output [35:0]UNCONN_OUT;
  input aclk;
  input s_axi_rready;
  input \cnt_read_reg[3]_rep__3_rep ;
  input [1:0]r_push_r_reg;
  input [33:0]\cnt_read_reg[4] ;
  input [0:0]SR;

  wire [0:0]SR;
  wire [35:0]UNCONN_OUT;
  wire aclk;
  wire \aresetn_d_reg_n_0_[0] ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire \cnt_read_reg[3]_rep__3_rep ;
  wire [33:0]\cnt_read_reg[4] ;
  wire \m_payload_i[0]_i_1__1_n_0 ;
  wire \m_payload_i[10]_i_1__1_n_0 ;
  wire \m_payload_i[11]_i_1__1_n_0 ;
  wire \m_payload_i[12]_i_1__1_n_0 ;
  wire \m_payload_i[13]_i_1__1_n_0 ;
  wire \m_payload_i[14]_i_1__1_n_0 ;
  wire \m_payload_i[15]_i_1__1_n_0 ;
  wire \m_payload_i[16]_i_1__1_n_0 ;
  wire \m_payload_i[17]_i_1__1_n_0 ;
  wire \m_payload_i[18]_i_1__1_n_0 ;
  wire \m_payload_i[19]_i_1__1_n_0 ;
  wire \m_payload_i[1]_i_1__1_n_0 ;
  wire \m_payload_i[20]_i_1__1_n_0 ;
  wire \m_payload_i[21]_i_1__1_n_0 ;
  wire \m_payload_i[22]_i_1__1_n_0 ;
  wire \m_payload_i[23]_i_1__1_n_0 ;
  wire \m_payload_i[24]_i_1__1_n_0 ;
  wire \m_payload_i[25]_i_1__1_n_0 ;
  wire \m_payload_i[26]_i_1__1_n_0 ;
  wire \m_payload_i[27]_i_1__1_n_0 ;
  wire \m_payload_i[28]_i_1__1_n_0 ;
  wire \m_payload_i[29]_i_1__1_n_0 ;
  wire \m_payload_i[2]_i_1__1_n_0 ;
  wire \m_payload_i[30]_i_1__1_n_0 ;
  wire \m_payload_i[31]_i_1__1_n_0 ;
  wire \m_payload_i[32]_i_1__1_n_0 ;
  wire \m_payload_i[33]_i_1__1_n_0 ;
  wire \m_payload_i[34]_i_1__1_n_0 ;
  wire \m_payload_i[35]_i_2_n_0 ;
  wire \m_payload_i[3]_i_1__1_n_0 ;
  wire \m_payload_i[4]_i_1__1_n_0 ;
  wire \m_payload_i[5]_i_1__1_n_0 ;
  wire \m_payload_i[6]_i_1__1_n_0 ;
  wire \m_payload_i[7]_i_1__1_n_0 ;
  wire \m_payload_i[8]_i_1__1_n_0 ;
  wire \m_payload_i[9]_i_1__1_n_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire p_1_in;
  wire [1:0]r_push_r_reg;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_ready_i_i_1__0_n_0;
  wire \skid_buffer_reg[0]_0 ;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__1 
       (.I0(\cnt_read_reg[4] [0]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__1 
       (.I0(\cnt_read_reg[4] [10]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__1 
       (.I0(\cnt_read_reg[4] [11]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__1 
       (.I0(\cnt_read_reg[4] [12]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__1 
       (.I0(\cnt_read_reg[4] [13]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1__1 
       (.I0(\cnt_read_reg[4] [14]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__1 
       (.I0(\cnt_read_reg[4] [15]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__1 
       (.I0(\cnt_read_reg[4] [16]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1__1 
       (.I0(\cnt_read_reg[4] [17]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(\m_payload_i[17]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__1 
       (.I0(\cnt_read_reg[4] [18]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__1 
       (.I0(\cnt_read_reg[4] [19]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__1 
       (.I0(\cnt_read_reg[4] [1]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1__1 
       (.I0(\cnt_read_reg[4] [20]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(\m_payload_i[20]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1__1 
       (.I0(\cnt_read_reg[4] [21]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(\m_payload_i[21]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1__1 
       (.I0(\cnt_read_reg[4] [22]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(\m_payload_i[22]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1__1 
       (.I0(\cnt_read_reg[4] [23]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(\m_payload_i[23]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__1 
       (.I0(\cnt_read_reg[4] [24]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__1 
       (.I0(\cnt_read_reg[4] [25]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__1 
       (.I0(\cnt_read_reg[4] [26]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__1 
       (.I0(\cnt_read_reg[4] [27]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__1 
       (.I0(\cnt_read_reg[4] [28]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__1 
       (.I0(\cnt_read_reg[4] [29]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__1 
       (.I0(\cnt_read_reg[4] [2]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__1 
       (.I0(\cnt_read_reg[4] [30]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1__1 
       (.I0(\cnt_read_reg[4] [31]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1__1 
       (.I0(\cnt_read_reg[4] [32]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(\m_payload_i[32]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__1 
       (.I0(\cnt_read_reg[4] [33]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__1 
       (.I0(r_push_r_reg[0]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[35]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_2 
       (.I0(r_push_r_reg[1]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(\m_payload_i[35]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__1 
       (.I0(\cnt_read_reg[4] [3]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__1 
       (.I0(\cnt_read_reg[4] [4]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__1 
       (.I0(\cnt_read_reg[4] [5]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__1 
       (.I0(\cnt_read_reg[4] [6]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__1 
       (.I0(\cnt_read_reg[4] [7]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__1 
       (.I0(\cnt_read_reg[4] [8]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__1 
       (.I0(\cnt_read_reg[4] [9]),
        .I1(\skid_buffer_reg[0]_0 ),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1__1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[0]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[10]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[11]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[12]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[13]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[14]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[15]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[16]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[17]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[18]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[19]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[1]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[20]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[21]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[22]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[23]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[24]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[25]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[26]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[27]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[28]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[29]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[2]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[30]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[31]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[32]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[33]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[34]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[35]_i_2_n_0 ),
        .Q(UNCONN_OUT[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[3]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[4]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[5]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[6]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[7]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[8]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[9]_i_1__1_n_0 ),
        .Q(UNCONN_OUT[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2A2AAA2A)) 
    m_valid_i_i_1__0
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(\cnt_read_reg[3]_rep__3_rep ),
        .I2(\skid_buffer_reg[0]_0 ),
        .I3(s_axi_rvalid),
        .I4(s_axi_rready),
        .O(m_valid_i_i_1__0_n_0));
  FDRE m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAA2A2A2)) 
    s_ready_i_i_1__0
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(\cnt_read_reg[3]_rep__3_rep ),
        .I4(\skid_buffer_reg[0]_0 ),
        .O(s_ready_i_i_1__0_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(\skid_buffer_reg[0]_0 ),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(r_push_r_reg[0]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(r_push_r_reg[1]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(\skid_buffer_reg[0]_0 ),
        .D(\cnt_read_reg[4] [9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
