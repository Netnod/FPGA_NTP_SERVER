// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Sep 26 15:23:39 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_auto_ds_0/ntps_top_auto_ds_0_funcsim.v
// Design      : ntps_top_auto_ds_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ntps_top_auto_ds_0,axi_dwidth_converter_v2_1_top,{}" *) (* CORE_GENERATION_INFO = "ntps_top_auto_ds_0,axi_dwidth_converter_v2_1_top,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_dwidth_converter,x_ipVersion=2.1,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_AXI_PROTOCOL=0,C_S_AXI_ID_WIDTH=3,C_SUPPORTS_ID=1,C_AXI_ADDR_WIDTH=32,C_S_AXI_DATA_WIDTH=256,C_M_AXI_DATA_WIDTH=32,C_AXI_SUPPORTS_WRITE=1,C_AXI_SUPPORTS_READ=1,C_FIFO_MODE=0,C_S_AXI_ACLK_RATIO=1,C_M_AXI_ACLK_RATIO=2,C_AXI_IS_ACLK_ASYNC=0,C_MAX_SPLIT_BEATS=256,C_PACKING_LEVEL=1,C_SYNCHRONIZER_STAGE=3}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "axi_dwidth_converter_v2_1_top,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module ntps_top_auto_ds_0
   (s_axi_aclk,
    s_axi_aresetn,
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
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [2:0]s_axi_awid;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [255:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [31:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [2:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [2:0]s_axi_arid;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [2:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [255:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;

  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arid;
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
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "256" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "2" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "8" *) 
  (* C_RATIO_LOG = "3" *) 
  (* C_SUPPORTS_ID = "1" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "256" *) 
  (* C_S_AXI_ID_WIDTH = "3" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "256" *) 
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_axic_fifo" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo
   (dout,
    full,
    din,
    pushed_new_cmd,
    p_0_in1_in,
    \gpr1.dout_i_reg[7] ,
    \gpr1.dout_i_reg[7]_0 ,
    \next_mi_addr_reg[8] ,
    \gpr1.dout_i_reg[7]_1 ,
    \gpr1.dout_i_reg[7]_2 ,
    \gpr1.dout_i_reg[7]_3 ,
    \gpr1.dout_i_reg[7]_4 ,
    \gpr1.dout_i_reg[7]_5 ,
    \gpr1.dout_i_reg[7]_6 ,
    \gpr1.dout_i_reg[7]_7 ,
    \gpr1.dout_i_reg[7]_8 ,
    \gpr1.dout_i_reg[7]_9 ,
    \gpr1.dout_i_reg[7]_10 ,
    \gpr1.dout_i_reg[7]_11 ,
    \gpr1.dout_i_reg[7]_12 ,
    cmd_push_block_reg,
    m_axi_awvalid,
    \queue_id_reg[0] ,
    \queue_id_reg[1] ,
    \queue_id_reg[2] ,
    \gpr1.dout_i_reg[7]_13 ,
    \gpr1.dout_i_reg[7]_14 ,
    \gpr1.dout_i_reg[7]_15 ,
    \queue_id_reg[2]_0 ,
    \gpr1.dout_i_reg[7]_16 ,
    \gpr1.dout_i_reg[7]_17 ,
    \next_mi_addr_reg[8]_0 ,
    \gpr1.dout_i_reg[7]_18 ,
    \gpr1.dout_i_reg[7]_19 ,
    \gpr1.dout_i_reg[7]_20 ,
    m_axi_wvalid,
    s_axi_wready,
    first_word_reg,
    m_axi_wstrb,
    m_axi_wdata,
    D,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    CLK,
    SR,
    \cmd_mask_q_reg[4] ,
    access_fit_mi_side_q,
    \S_AXI_ALEN_Q_reg[6] ,
    access_is_incr_q_reg,
    s_axi_awvalid,
    S_AXI_AREADY_I_reg_0,
    aresetn,
    CO,
    Q,
    \downsized_len_q_reg[7] ,
    \wrap_rest_len_reg[7] ,
    \fix_len_q_reg[4] ,
    fix_need_to_split_q,
    access_is_fix_q,
    access_is_incr_q,
    wrap_need_to_split_q,
    split_ongoing,
    access_is_wrap_q,
    \pushed_commands_reg[7] ,
    cmd_push_block,
    m_axi_awready,
    \S_AXI_AID_Q_reg[2] ,
    s_axi_bid,
    command_ongoing_reg_0,
    full_0,
    cmd_b_empty,
    \wrap_unaligned_len_q_reg[1] ,
    \unalignment_addr_q_reg[4] ,
    incr_need_to_split_q,
    \S_AXI_AADDR_Q_reg[4] ,
    si_full_size_q,
    \split_addr_mask_q_reg[4] ,
    \size_mask_q_reg[4] ,
    legal_wrap_len_q,
    s_axi_wvalid,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_wready,
    s_axi_wstrb,
    s_axi_wdata,
    \current_word_1_reg[3] ,
    first_mi_word,
    \current_word_1_reg[2] ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[4] ,
    first_word_reg_0,
    \current_word_1_reg[1] ,
    \current_word_1_reg[0] ,
    \goreg_dm.dout_i_reg[18] ,
    \goreg_dm.dout_i_reg[12] ,
    \areset_d_reg[1] ,
    S_AXI_AREADY_I_reg_1,
    S_AXI_AREADY_I_reg_2);
  output [17:0]dout;
  output full;
  output [3:0]din;
  output pushed_new_cmd;
  output [6:0]p_0_in1_in;
  output \gpr1.dout_i_reg[7] ;
  output \gpr1.dout_i_reg[7]_0 ;
  output \next_mi_addr_reg[8] ;
  output \gpr1.dout_i_reg[7]_1 ;
  output \gpr1.dout_i_reg[7]_2 ;
  output \gpr1.dout_i_reg[7]_3 ;
  output \gpr1.dout_i_reg[7]_4 ;
  output \gpr1.dout_i_reg[7]_5 ;
  output \gpr1.dout_i_reg[7]_6 ;
  output \gpr1.dout_i_reg[7]_7 ;
  output \gpr1.dout_i_reg[7]_8 ;
  output \gpr1.dout_i_reg[7]_9 ;
  output \gpr1.dout_i_reg[7]_10 ;
  output \gpr1.dout_i_reg[7]_11 ;
  output \gpr1.dout_i_reg[7]_12 ;
  output cmd_push_block_reg;
  output m_axi_awvalid;
  output \queue_id_reg[0] ;
  output \queue_id_reg[1] ;
  output \queue_id_reg[2] ;
  output \gpr1.dout_i_reg[7]_13 ;
  output \gpr1.dout_i_reg[7]_14 ;
  output \gpr1.dout_i_reg[7]_15 ;
  output \queue_id_reg[2]_0 ;
  output \gpr1.dout_i_reg[7]_16 ;
  output \gpr1.dout_i_reg[7]_17 ;
  output \next_mi_addr_reg[8]_0 ;
  output \gpr1.dout_i_reg[7]_18 ;
  output \gpr1.dout_i_reg[7]_19 ;
  output \gpr1.dout_i_reg[7]_20 ;
  output m_axi_wvalid;
  output s_axi_wready;
  output [0:0]first_word_reg;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  output [3:0]D;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  input CLK;
  input [0:0]SR;
  input [4:0]\cmd_mask_q_reg[4] ;
  input access_fit_mi_side_q;
  input [10:0]\S_AXI_ALEN_Q_reg[6] ;
  input access_is_incr_q_reg;
  input s_axi_awvalid;
  input S_AXI_AREADY_I_reg_0;
  input aresetn;
  input [0:0]CO;
  input [7:0]Q;
  input [7:0]\downsized_len_q_reg[7] ;
  input [7:0]\wrap_rest_len_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input access_is_incr_q;
  input wrap_need_to_split_q;
  input split_ongoing;
  input access_is_wrap_q;
  input [7:0]\pushed_commands_reg[7] ;
  input cmd_push_block;
  input m_axi_awready;
  input [2:0]\S_AXI_AID_Q_reg[2] ;
  input [2:0]s_axi_bid;
  input command_ongoing_reg_0;
  input full_0;
  input cmd_b_empty;
  input [1:0]\wrap_unaligned_len_q_reg[1] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input incr_need_to_split_q;
  input [4:0]\S_AXI_AADDR_Q_reg[4] ;
  input si_full_size_q;
  input [4:0]\split_addr_mask_q_reg[4] ;
  input [4:0]\size_mask_q_reg[4] ;
  input legal_wrap_len_q;
  input s_axi_wvalid;
  input \goreg_dm.dout_i_reg[9] ;
  input m_axi_wready;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input [2:0]\current_word_1_reg[3] ;
  input first_mi_word;
  input \current_word_1_reg[2] ;
  input \current_word_1_reg[3]_0 ;
  input \current_word_1_reg[4] ;
  input first_word_reg_0;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[0] ;
  input [0:0]\goreg_dm.dout_i_reg[18] ;
  input \goreg_dm.dout_i_reg[12] ;
  input \areset_d_reg[1] ;
  input S_AXI_AREADY_I_reg_1;
  input S_AXI_AREADY_I_reg_2;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [4:0]\S_AXI_AADDR_Q_reg[4] ;
  wire [2:0]\S_AXI_AID_Q_reg[2] ;
  wire [10:0]\S_AXI_ALEN_Q_reg[6] ;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire S_AXI_AREADY_I_reg_1;
  wire S_AXI_AREADY_I_reg_2;
  wire access_fit_mi_side_q;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_incr_q_reg;
  wire access_is_wrap_q;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire cmd_b_empty;
  wire [4:0]\cmd_mask_q_reg[4] ;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire \current_word_1_reg[2] ;
  wire [2:0]\current_word_1_reg[3] ;
  wire \current_word_1_reg[3]_0 ;
  wire \current_word_1_reg[4] ;
  wire [3:0]din;
  wire [17:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire first_mi_word;
  wire [0:0]first_word_reg;
  wire first_word_reg_0;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire full_0;
  wire \goreg_dm.dout_i_reg[12] ;
  wire [0:0]\goreg_dm.dout_i_reg[18] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire \gpr1.dout_i_reg[7] ;
  wire \gpr1.dout_i_reg[7]_0 ;
  wire \gpr1.dout_i_reg[7]_1 ;
  wire \gpr1.dout_i_reg[7]_10 ;
  wire \gpr1.dout_i_reg[7]_11 ;
  wire \gpr1.dout_i_reg[7]_12 ;
  wire \gpr1.dout_i_reg[7]_13 ;
  wire \gpr1.dout_i_reg[7]_14 ;
  wire \gpr1.dout_i_reg[7]_15 ;
  wire \gpr1.dout_i_reg[7]_16 ;
  wire \gpr1.dout_i_reg[7]_17 ;
  wire \gpr1.dout_i_reg[7]_18 ;
  wire \gpr1.dout_i_reg[7]_19 ;
  wire \gpr1.dout_i_reg[7]_2 ;
  wire \gpr1.dout_i_reg[7]_20 ;
  wire \gpr1.dout_i_reg[7]_3 ;
  wire \gpr1.dout_i_reg[7]_4 ;
  wire \gpr1.dout_i_reg[7]_5 ;
  wire \gpr1.dout_i_reg[7]_6 ;
  wire \gpr1.dout_i_reg[7]_7 ;
  wire \gpr1.dout_i_reg[7]_8 ;
  wire \gpr1.dout_i_reg[7]_9 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [6:0]p_0_in1_in;
  wire [7:0]\pushed_commands_reg[7] ;
  wire pushed_new_cmd;
  wire \queue_id_reg[0] ;
  wire \queue_id_reg[1] ;
  wire \queue_id_reg[2] ;
  wire \queue_id_reg[2]_0 ;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire [4:0]\size_mask_q_reg[4] ;
  wire [4:0]\split_addr_mask_q_reg[4] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [1:0]\wrap_unaligned_len_q_reg[1] ;

  ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen inst
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .Q(Q),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[4] (\S_AXI_AADDR_Q_reg[4] ),
        .\S_AXI_AID_Q_reg[2] (\S_AXI_AID_Q_reg[2] ),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .S_AXI_AREADY_I_reg_1(S_AXI_AREADY_I_reg_1),
        .S_AXI_AREADY_I_reg_2(S_AXI_AREADY_I_reg_2),
        .access_fit_mi_side_q_reg({access_fit_mi_side_q,\cmd_mask_q_reg[4] ,\S_AXI_ALEN_Q_reg[6] }),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_incr_q_reg(access_is_incr_q_reg),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .cmd_b_empty(cmd_b_empty),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .\current_word_1_reg[0] (\current_word_1_reg[0] ),
        .\current_word_1_reg[1] (\current_word_1_reg[1] ),
        .\current_word_1_reg[2] (\current_word_1_reg[2] ),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .\current_word_1_reg[3]_0 (\current_word_1_reg[3]_0 ),
        .\current_word_1_reg[4] (\current_word_1_reg[4] ),
        .din(din),
        .dout(dout),
        .\downsized_len_q_reg[7] (\downsized_len_q_reg[7] ),
        .first_mi_word(first_mi_word),
        .first_word_reg(first_word_reg),
        .first_word_reg_0(first_word_reg_0),
        .\fix_len_q_reg[4] (\fix_len_q_reg[4] ),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .full_0(full_0),
        .\goreg_dm.dout_i_reg[12] (\goreg_dm.dout_i_reg[12] ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] (\gpr1.dout_i_reg[7] ),
        .\gpr1.dout_i_reg[7]_0 (\gpr1.dout_i_reg[7]_0 ),
        .\gpr1.dout_i_reg[7]_1 (\gpr1.dout_i_reg[7]_1 ),
        .\gpr1.dout_i_reg[7]_10 (\gpr1.dout_i_reg[7]_10 ),
        .\gpr1.dout_i_reg[7]_11 (\gpr1.dout_i_reg[7]_11 ),
        .\gpr1.dout_i_reg[7]_12 (\gpr1.dout_i_reg[7]_12 ),
        .\gpr1.dout_i_reg[7]_13 (\gpr1.dout_i_reg[7]_13 ),
        .\gpr1.dout_i_reg[7]_14 (\gpr1.dout_i_reg[7]_14 ),
        .\gpr1.dout_i_reg[7]_15 (\gpr1.dout_i_reg[7]_15 ),
        .\gpr1.dout_i_reg[7]_16 (\gpr1.dout_i_reg[7]_16 ),
        .\gpr1.dout_i_reg[7]_17 (\gpr1.dout_i_reg[7]_17 ),
        .\gpr1.dout_i_reg[7]_18 (\gpr1.dout_i_reg[7]_18 ),
        .\gpr1.dout_i_reg[7]_19 (\gpr1.dout_i_reg[7]_19 ),
        .\gpr1.dout_i_reg[7]_2 (\gpr1.dout_i_reg[7]_2 ),
        .\gpr1.dout_i_reg[7]_20 (\gpr1.dout_i_reg[7]_20 ),
        .\gpr1.dout_i_reg[7]_3 (\gpr1.dout_i_reg[7]_3 ),
        .\gpr1.dout_i_reg[7]_4 (\gpr1.dout_i_reg[7]_4 ),
        .\gpr1.dout_i_reg[7]_5 (\gpr1.dout_i_reg[7]_5 ),
        .\gpr1.dout_i_reg[7]_6 (\gpr1.dout_i_reg[7]_6 ),
        .\gpr1.dout_i_reg[7]_7 (\gpr1.dout_i_reg[7]_7 ),
        .\gpr1.dout_i_reg[7]_8 (\gpr1.dout_i_reg[7]_8 ),
        .\gpr1.dout_i_reg[7]_9 (\gpr1.dout_i_reg[7]_9 ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\next_mi_addr_reg[8] (\next_mi_addr_reg[8] ),
        .\next_mi_addr_reg[8]_0 (\next_mi_addr_reg[8]_0 ),
        .p_0_in1_in(p_0_in1_in),
        .\pushed_commands_reg[7] (pushed_new_cmd),
        .\pushed_commands_reg[7]_0 (\pushed_commands_reg[7] ),
        .\queue_id_reg[0] (\queue_id_reg[0] ),
        .\queue_id_reg[1] (\queue_id_reg[1] ),
        .\queue_id_reg[2] (\queue_id_reg[2] ),
        .\queue_id_reg[2]_0 (\queue_id_reg[2]_0 ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .\size_mask_q_reg[4] (\size_mask_q_reg[4] ),
        .\split_addr_mask_q_reg[4] (\split_addr_mask_q_reg[4] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (\unalignment_addr_q_reg[4] ),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (\wrap_rest_len_reg[7] ),
        .\wrap_unaligned_len_q_reg[1] (\wrap_unaligned_len_q_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_axic_fifo" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo_8
   (dout,
    din,
    pushed_new_cmd,
    D,
    p_0_in1_in,
    \gpr1.dout_i_reg[7] ,
    \gpr1.dout_i_reg[7]_0 ,
    \next_mi_addr_reg[8] ,
    \gpr1.dout_i_reg[7]_1 ,
    \gpr1.dout_i_reg[7]_2 ,
    \gpr1.dout_i_reg[7]_3 ,
    \gpr1.dout_i_reg[7]_4 ,
    \gpr1.dout_i_reg[7]_5 ,
    \gpr1.dout_i_reg[7]_6 ,
    \gpr1.dout_i_reg[7]_7 ,
    \gpr1.dout_i_reg[7]_8 ,
    \gpr1.dout_i_reg[7]_9 ,
    \gpr1.dout_i_reg[7]_10 ,
    \gpr1.dout_i_reg[7]_11 ,
    \gpr1.dout_i_reg[7]_12 ,
    \current_word_1_reg[4] ,
    s_axi_rlast,
    s_axi_rdata,
    \gpr1.dout_i_reg[7]_13 ,
    \gpr1.dout_i_reg[7]_14 ,
    \gpr1.dout_i_reg[7]_15 ,
    E,
    m_axi_arvalid,
    \gpr1.dout_i_reg[7]_16 ,
    \gpr1.dout_i_reg[7]_17 ,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[192] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159] ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191] ,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223] ,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255] ,
    first_mi_word_reg,
    s_axi_rvalid,
    \cmd_depth_reg[2] ,
    m_axi_rready,
    s_axi_rresp,
    \S_AXI_RRESP_ACC_reg[1] ,
    \current_word_1_reg[3] ,
    \next_mi_addr_reg[8]_0 ,
    \gpr1.dout_i_reg[7]_18 ,
    \gpr1.dout_i_reg[7]_19 ,
    \gpr1.dout_i_reg[7]_20 ,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    \queue_id_reg[2] ,
    \queue_id_reg[1] ,
    \queue_id_reg[0] ,
    cmd_empty_reg,
    cmd_push_block_reg,
    CLK,
    SR,
    \cmd_mask_q_reg[4] ,
    access_fit_mi_side_q,
    \S_AXI_ALEN_Q_reg[6] ,
    access_is_incr_q_reg,
    s_axi_arvalid,
    S_AXI_AREADY_I_reg_0,
    aresetn,
    Q,
    \goreg_dm.dout_i_reg[10] ,
    \cmd_depth_reg[1] ,
    CO,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    \fix_len_q_reg[4] ,
    fix_need_to_split_q,
    \wrap_rest_len_reg[7] ,
    access_is_fix_q,
    access_is_incr_q,
    wrap_need_to_split_q,
    split_ongoing,
    access_is_wrap_q,
    \pushed_commands_reg[7] ,
    \current_word_1_reg[1] ,
    \current_word_1_reg[4]_0 ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[0] ,
    m_axi_rlast,
    first_word,
    \current_word_1_reg[3]_1 ,
    command_ongoing_reg_0,
    cmd_push_block,
    cmd_empty,
    m_axi_arready,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ,
    m_axi_rdata,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    s_axi_rid,
    \S_AXI_AID_Q_reg[2] ,
    \wrap_unaligned_len_q_reg[1] ,
    \unalignment_addr_q_reg[4] ,
    incr_need_to_split_q,
    m_axi_rvalid,
    s_axi_rready,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_rresp,
    \S_AXI_RRESP_ACC_reg[1]_0 ,
    \S_AXI_RRESP_ACC_reg[1]_1 ,
    \S_AXI_AADDR_Q_reg[4] ,
    si_full_size_q,
    \split_addr_mask_q_reg[4] ,
    \size_mask_q_reg[4] ,
    legal_wrap_len_q,
    \areset_d_reg[1] ,
    S_AXI_AREADY_I_reg_1,
    S_AXI_AREADY_I_reg_2,
    \cmd_depth_reg[4] );
  output [14:0]dout;
  output [3:0]din;
  output pushed_new_cmd;
  output [4:0]D;
  output [6:0]p_0_in1_in;
  output \gpr1.dout_i_reg[7] ;
  output \gpr1.dout_i_reg[7]_0 ;
  output \next_mi_addr_reg[8] ;
  output \gpr1.dout_i_reg[7]_1 ;
  output \gpr1.dout_i_reg[7]_2 ;
  output \gpr1.dout_i_reg[7]_3 ;
  output \gpr1.dout_i_reg[7]_4 ;
  output \gpr1.dout_i_reg[7]_5 ;
  output \gpr1.dout_i_reg[7]_6 ;
  output \gpr1.dout_i_reg[7]_7 ;
  output \gpr1.dout_i_reg[7]_8 ;
  output \gpr1.dout_i_reg[7]_9 ;
  output \gpr1.dout_i_reg[7]_10 ;
  output \gpr1.dout_i_reg[7]_11 ;
  output \gpr1.dout_i_reg[7]_12 ;
  output \current_word_1_reg[4] ;
  output s_axi_rlast;
  output [255:0]s_axi_rdata;
  output \gpr1.dout_i_reg[7]_13 ;
  output \gpr1.dout_i_reg[7]_14 ;
  output \gpr1.dout_i_reg[7]_15 ;
  output [0:0]E;
  output m_axi_arvalid;
  output \gpr1.dout_i_reg[7]_16 ;
  output \gpr1.dout_i_reg[7]_17 ;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  output [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  output [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  output [0:0]first_mi_word_reg;
  output s_axi_rvalid;
  output \cmd_depth_reg[2] ;
  output m_axi_rready;
  output [1:0]s_axi_rresp;
  output [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  output [3:0]\current_word_1_reg[3] ;
  output \next_mi_addr_reg[8]_0 ;
  output \gpr1.dout_i_reg[7]_18 ;
  output \gpr1.dout_i_reg[7]_19 ;
  output \gpr1.dout_i_reg[7]_20 ;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output \queue_id_reg[2] ;
  output \queue_id_reg[1] ;
  output \queue_id_reg[0] ;
  output cmd_empty_reg;
  output cmd_push_block_reg;
  input CLK;
  input [0:0]SR;
  input [4:0]\cmd_mask_q_reg[4] ;
  input access_fit_mi_side_q;
  input [10:0]\S_AXI_ALEN_Q_reg[6] ;
  input access_is_incr_q_reg;
  input s_axi_arvalid;
  input S_AXI_AREADY_I_reg_0;
  input aresetn;
  input [5:0]Q;
  input \goreg_dm.dout_i_reg[10] ;
  input \cmd_depth_reg[1] ;
  input [0:0]CO;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input fix_need_to_split_q;
  input [7:0]\wrap_rest_len_reg[7] ;
  input access_is_fix_q;
  input access_is_incr_q;
  input wrap_need_to_split_q;
  input split_ongoing;
  input access_is_wrap_q;
  input [7:0]\pushed_commands_reg[7] ;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[4]_0 ;
  input \current_word_1_reg[3]_0 ;
  input \current_word_1_reg[0] ;
  input m_axi_rlast;
  input first_word;
  input [2:0]\current_word_1_reg[3]_1 ;
  input command_ongoing_reg_0;
  input cmd_push_block;
  input cmd_empty;
  input m_axi_arready;
  input [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  input [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  input [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input [2:0]s_axi_rid;
  input [2:0]\S_AXI_AID_Q_reg[2] ;
  input [1:0]\wrap_unaligned_len_q_reg[1] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input incr_need_to_split_q;
  input m_axi_rvalid;
  input s_axi_rready;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[9] ;
  input [1:0]m_axi_rresp;
  input [1:0]\S_AXI_RRESP_ACC_reg[1]_0 ;
  input \S_AXI_RRESP_ACC_reg[1]_1 ;
  input [4:0]\S_AXI_AADDR_Q_reg[4] ;
  input si_full_size_q;
  input [4:0]\split_addr_mask_q_reg[4] ;
  input [4:0]\size_mask_q_reg[4] ;
  input legal_wrap_len_q;
  input \areset_d_reg[1] ;
  input S_AXI_AREADY_I_reg_1;
  input S_AXI_AREADY_I_reg_2;
  input \cmd_depth_reg[4] ;

  wire CLK;
  wire [0:0]CO;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [4:0]\S_AXI_AADDR_Q_reg[4] ;
  wire [2:0]\S_AXI_AID_Q_reg[2] ;
  wire [10:0]\S_AXI_ALEN_Q_reg[6] ;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire S_AXI_AREADY_I_reg_1;
  wire S_AXI_AREADY_I_reg_2;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1]_0 ;
  wire \S_AXI_RRESP_ACC_reg[1]_1 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  wire [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  wire [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  wire [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  wire [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  wire [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  wire [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  wire access_fit_mi_side_q;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_incr_q_reg;
  wire access_is_wrap_q;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire \cmd_depth_reg[1] ;
  wire \cmd_depth_reg[2] ;
  wire \cmd_depth_reg[4] ;
  wire cmd_empty;
  wire cmd_empty_reg;
  wire [4:0]\cmd_mask_q_reg[4] ;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire [3:0]\current_word_1_reg[3] ;
  wire \current_word_1_reg[3]_0 ;
  wire [2:0]\current_word_1_reg[3]_1 ;
  wire \current_word_1_reg[4] ;
  wire \current_word_1_reg[4]_0 ;
  wire [3:0]din;
  wire [14:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[10] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire \gpr1.dout_i_reg[7] ;
  wire \gpr1.dout_i_reg[7]_0 ;
  wire \gpr1.dout_i_reg[7]_1 ;
  wire \gpr1.dout_i_reg[7]_10 ;
  wire \gpr1.dout_i_reg[7]_11 ;
  wire \gpr1.dout_i_reg[7]_12 ;
  wire \gpr1.dout_i_reg[7]_13 ;
  wire \gpr1.dout_i_reg[7]_14 ;
  wire \gpr1.dout_i_reg[7]_15 ;
  wire \gpr1.dout_i_reg[7]_16 ;
  wire \gpr1.dout_i_reg[7]_17 ;
  wire \gpr1.dout_i_reg[7]_18 ;
  wire \gpr1.dout_i_reg[7]_19 ;
  wire \gpr1.dout_i_reg[7]_2 ;
  wire \gpr1.dout_i_reg[7]_20 ;
  wire \gpr1.dout_i_reg[7]_3 ;
  wire \gpr1.dout_i_reg[7]_4 ;
  wire \gpr1.dout_i_reg[7]_5 ;
  wire \gpr1.dout_i_reg[7]_6 ;
  wire \gpr1.dout_i_reg[7]_7 ;
  wire \gpr1.dout_i_reg[7]_8 ;
  wire \gpr1.dout_i_reg[7]_9 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [6:0]p_0_in1_in;
  wire [7:0]\pushed_commands_reg[7] ;
  wire pushed_new_cmd;
  wire \queue_id_reg[0] ;
  wire \queue_id_reg[1] ;
  wire \queue_id_reg[2] ;
  wire s_axi_arvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire si_full_size_q;
  wire [4:0]\size_mask_q_reg[4] ;
  wire [4:0]\split_addr_mask_q_reg[4] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [1:0]\wrap_unaligned_len_q_reg[1] ;

  ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen_9 inst
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[4] (\S_AXI_AADDR_Q_reg[4] ),
        .\S_AXI_AID_Q_reg[2] (\S_AXI_AID_Q_reg[2] ),
        .\S_AXI_ALEN_Q_reg[7] (\S_AXI_ALEN_Q_reg[7] ),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .S_AXI_AREADY_I_reg_1(S_AXI_AREADY_I_reg_1),
        .S_AXI_AREADY_I_reg_2(S_AXI_AREADY_I_reg_2),
        .\S_AXI_RRESP_ACC_reg[1] (\S_AXI_RRESP_ACC_reg[1] ),
        .\S_AXI_RRESP_ACC_reg[1]_0 (\S_AXI_RRESP_ACC_reg[1]_0 ),
        .\S_AXI_RRESP_ACC_reg[1]_1 (\S_AXI_RRESP_ACC_reg[1]_1 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159] (\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 (\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191] (\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 (\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[192] (\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223] (\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 (\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255] (\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 (\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ),
        .access_fit_mi_side_q_reg({access_fit_mi_side_q,\cmd_mask_q_reg[4] ,\S_AXI_ALEN_Q_reg[6] }),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_incr_q_reg(access_is_incr_q_reg),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .\cmd_depth_reg[1] (\cmd_depth_reg[1] ),
        .\cmd_depth_reg[2] (\cmd_depth_reg[2] ),
        .\cmd_depth_reg[4] (\cmd_depth_reg[4] ),
        .cmd_empty(cmd_empty),
        .cmd_empty_reg(cmd_empty_reg),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .\current_word_1_reg[0] (\current_word_1_reg[0] ),
        .\current_word_1_reg[1] (\current_word_1_reg[1] ),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .\current_word_1_reg[3]_0 (\current_word_1_reg[3]_0 ),
        .\current_word_1_reg[3]_1 (\current_word_1_reg[3]_1 ),
        .\current_word_1_reg[4] (\current_word_1_reg[4] ),
        .\current_word_1_reg[4]_0 (\current_word_1_reg[4]_0 ),
        .din(din),
        .dout(dout),
        .\downsized_len_q_reg[7] (\downsized_len_q_reg[7] ),
        .first_mi_word_reg(first_mi_word_reg),
        .first_word(first_word),
        .\fix_len_q_reg[4] (\fix_len_q_reg[4] ),
        .fix_need_to_split_q(fix_need_to_split_q),
        .\goreg_dm.dout_i_reg[10] (\goreg_dm.dout_i_reg[10] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] (\gpr1.dout_i_reg[7] ),
        .\gpr1.dout_i_reg[7]_0 (\gpr1.dout_i_reg[7]_0 ),
        .\gpr1.dout_i_reg[7]_1 (\gpr1.dout_i_reg[7]_1 ),
        .\gpr1.dout_i_reg[7]_10 (\gpr1.dout_i_reg[7]_10 ),
        .\gpr1.dout_i_reg[7]_11 (\gpr1.dout_i_reg[7]_11 ),
        .\gpr1.dout_i_reg[7]_12 (\gpr1.dout_i_reg[7]_12 ),
        .\gpr1.dout_i_reg[7]_13 (\gpr1.dout_i_reg[7]_13 ),
        .\gpr1.dout_i_reg[7]_14 (\gpr1.dout_i_reg[7]_14 ),
        .\gpr1.dout_i_reg[7]_15 (\gpr1.dout_i_reg[7]_15 ),
        .\gpr1.dout_i_reg[7]_16 (\gpr1.dout_i_reg[7]_16 ),
        .\gpr1.dout_i_reg[7]_17 (\gpr1.dout_i_reg[7]_17 ),
        .\gpr1.dout_i_reg[7]_18 (\gpr1.dout_i_reg[7]_18 ),
        .\gpr1.dout_i_reg[7]_19 (\gpr1.dout_i_reg[7]_19 ),
        .\gpr1.dout_i_reg[7]_2 (\gpr1.dout_i_reg[7]_2 ),
        .\gpr1.dout_i_reg[7]_20 (\gpr1.dout_i_reg[7]_20 ),
        .\gpr1.dout_i_reg[7]_3 (\gpr1.dout_i_reg[7]_3 ),
        .\gpr1.dout_i_reg[7]_4 (\gpr1.dout_i_reg[7]_4 ),
        .\gpr1.dout_i_reg[7]_5 (\gpr1.dout_i_reg[7]_5 ),
        .\gpr1.dout_i_reg[7]_6 (\gpr1.dout_i_reg[7]_6 ),
        .\gpr1.dout_i_reg[7]_7 (\gpr1.dout_i_reg[7]_7 ),
        .\gpr1.dout_i_reg[7]_8 (\gpr1.dout_i_reg[7]_8 ),
        .\gpr1.dout_i_reg[7]_9 (\gpr1.dout_i_reg[7]_9 ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\next_mi_addr_reg[8] (\next_mi_addr_reg[8] ),
        .\next_mi_addr_reg[8]_0 (\next_mi_addr_reg[8]_0 ),
        .p_0_in1_in(p_0_in1_in),
        .\pushed_commands_reg[7] (pushed_new_cmd),
        .\pushed_commands_reg[7]_0 (\pushed_commands_reg[7] ),
        .\queue_id_reg[0] (\queue_id_reg[0] ),
        .\queue_id_reg[1] (\queue_id_reg[1] ),
        .\queue_id_reg[2] (\queue_id_reg[2] ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .si_full_size_q(si_full_size_q),
        .\size_mask_q_reg[4] (\size_mask_q_reg[4] ),
        .\split_addr_mask_q_reg[4] (\split_addr_mask_q_reg[4] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (\unalignment_addr_q_reg[4] ),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (\wrap_rest_len_reg[7] ),
        .\wrap_unaligned_len_q_reg[1] (\wrap_unaligned_len_q_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_axic_fifo" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo__parameterized0
   (\S_AXI_BRESP_ACC_reg[0] ,
    full,
    SR,
    D,
    E,
    cmd_b_push_block_reg,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    CLK,
    din,
    Q,
    command_ongoing_reg,
    cmd_b_push_block,
    cmd_push_block,
    cmd_b_empty,
    \queue_id_reg[1] ,
    full_0,
    \repeat_cnt_reg[2] ,
    m_axi_bvalid,
    s_axi_bready,
    fix_need_to_split_q,
    incr_need_to_split_q,
    \num_transactions_q_reg[4] ,
    cmd_b_push_block_reg_0,
    aresetn,
    \S_AXI_ALEN_Q_reg[3] ,
    wrap_need_to_split_q,
    S_AXI_AREADY_I_reg,
    \USE_B_CHANNEL.cmd_b_depth_reg[4] );
  output [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  output full;
  output [0:0]SR;
  output [4:0]D;
  output [0:0]E;
  output cmd_b_push_block_reg;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  input CLK;
  input [0:0]din;
  input [5:0]Q;
  input command_ongoing_reg;
  input cmd_b_push_block;
  input cmd_push_block;
  input cmd_b_empty;
  input \queue_id_reg[1] ;
  input full_0;
  input \repeat_cnt_reg[2] ;
  input m_axi_bvalid;
  input s_axi_bready;
  input fix_need_to_split_q;
  input incr_need_to_split_q;
  input [4:0]\num_transactions_q_reg[4] ;
  input cmd_b_push_block_reg_0;
  input aresetn;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;
  input wrap_need_to_split_q;
  input S_AXI_AREADY_I_reg;
  input \USE_B_CHANNEL.cmd_b_depth_reg[4] ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire S_AXI_AREADY_I_reg;
  wire [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  wire \USE_B_CHANNEL.cmd_b_depth_reg[4] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire aresetn;
  wire cmd_b_empty;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_b_push_block_reg_0;
  wire cmd_push_block;
  wire command_ongoing_reg;
  wire [0:0]din;
  wire fix_need_to_split_q;
  wire full;
  wire full_0;
  wire incr_need_to_split_q;
  wire m_axi_bvalid;
  wire [4:0]\num_transactions_q_reg[4] ;
  wire \queue_id_reg[1] ;
  wire \repeat_cnt_reg[2] ;
  wire s_axi_bready;
  wire wrap_need_to_split_q;

  ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen__parameterized0 inst
       (.CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\S_AXI_ALEN_Q_reg[3] (\S_AXI_ALEN_Q_reg[3] ),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .\S_AXI_BRESP_ACC_reg[0] (\S_AXI_BRESP_ACC_reg[0] ),
        .\USE_B_CHANNEL.cmd_b_depth_reg[4] (\USE_B_CHANNEL.cmd_b_depth_reg[4] ),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (\USE_B_CHANNEL.cmd_b_empty_i_reg ),
        .aresetn(aresetn),
        .cmd_b_empty(cmd_b_empty),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(cmd_b_push_block_reg),
        .cmd_b_push_block_reg_0(cmd_b_push_block_reg_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing_reg(command_ongoing_reg),
        .din(din),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .full_0(full_0),
        .incr_need_to_split_q(incr_need_to_split_q),
        .m_axi_bvalid(m_axi_bvalid),
        .\num_transactions_q_reg[4] (\num_transactions_q_reg[4] ),
        .\queue_id_reg[1] (\queue_id_reg[1] ),
        .\repeat_cnt_reg[2] (\repeat_cnt_reg[2] ),
        .s_axi_bready(s_axi_bready),
        .wrap_need_to_split_q(wrap_need_to_split_q));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_fifo_gen" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen
   (dout,
    full,
    din,
    \pushed_commands_reg[7] ,
    p_0_in1_in,
    \gpr1.dout_i_reg[7] ,
    \gpr1.dout_i_reg[7]_0 ,
    \next_mi_addr_reg[8] ,
    \gpr1.dout_i_reg[7]_1 ,
    \gpr1.dout_i_reg[7]_2 ,
    \gpr1.dout_i_reg[7]_3 ,
    \gpr1.dout_i_reg[7]_4 ,
    \gpr1.dout_i_reg[7]_5 ,
    \gpr1.dout_i_reg[7]_6 ,
    \gpr1.dout_i_reg[7]_7 ,
    \gpr1.dout_i_reg[7]_8 ,
    \gpr1.dout_i_reg[7]_9 ,
    \gpr1.dout_i_reg[7]_10 ,
    \gpr1.dout_i_reg[7]_11 ,
    \gpr1.dout_i_reg[7]_12 ,
    cmd_push_block_reg,
    m_axi_awvalid,
    \queue_id_reg[0] ,
    \queue_id_reg[1] ,
    \queue_id_reg[2] ,
    \gpr1.dout_i_reg[7]_13 ,
    \gpr1.dout_i_reg[7]_14 ,
    \gpr1.dout_i_reg[7]_15 ,
    \queue_id_reg[2]_0 ,
    \gpr1.dout_i_reg[7]_16 ,
    \gpr1.dout_i_reg[7]_17 ,
    \next_mi_addr_reg[8]_0 ,
    \gpr1.dout_i_reg[7]_18 ,
    \gpr1.dout_i_reg[7]_19 ,
    \gpr1.dout_i_reg[7]_20 ,
    m_axi_wvalid,
    s_axi_wready,
    first_word_reg,
    m_axi_wstrb,
    m_axi_wdata,
    D,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    CLK,
    SR,
    access_fit_mi_side_q_reg,
    access_is_incr_q_reg,
    s_axi_awvalid,
    S_AXI_AREADY_I_reg_0,
    aresetn,
    CO,
    Q,
    \downsized_len_q_reg[7] ,
    \wrap_rest_len_reg[7] ,
    \fix_len_q_reg[4] ,
    fix_need_to_split_q,
    access_is_fix_q,
    access_is_incr_q,
    wrap_need_to_split_q,
    split_ongoing,
    access_is_wrap_q,
    \pushed_commands_reg[7]_0 ,
    cmd_push_block,
    m_axi_awready,
    \S_AXI_AID_Q_reg[2] ,
    s_axi_bid,
    command_ongoing_reg_0,
    full_0,
    cmd_b_empty,
    \wrap_unaligned_len_q_reg[1] ,
    \unalignment_addr_q_reg[4] ,
    incr_need_to_split_q,
    \S_AXI_AADDR_Q_reg[4] ,
    si_full_size_q,
    \split_addr_mask_q_reg[4] ,
    \size_mask_q_reg[4] ,
    legal_wrap_len_q,
    s_axi_wvalid,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_wready,
    s_axi_wstrb,
    s_axi_wdata,
    \current_word_1_reg[3] ,
    first_mi_word,
    \current_word_1_reg[2] ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[4] ,
    first_word_reg_0,
    \current_word_1_reg[1] ,
    \current_word_1_reg[0] ,
    \goreg_dm.dout_i_reg[18] ,
    \goreg_dm.dout_i_reg[12] ,
    \areset_d_reg[1] ,
    S_AXI_AREADY_I_reg_1,
    S_AXI_AREADY_I_reg_2);
  output [17:0]dout;
  output full;
  output [3:0]din;
  output \pushed_commands_reg[7] ;
  output [6:0]p_0_in1_in;
  output \gpr1.dout_i_reg[7] ;
  output \gpr1.dout_i_reg[7]_0 ;
  output \next_mi_addr_reg[8] ;
  output \gpr1.dout_i_reg[7]_1 ;
  output \gpr1.dout_i_reg[7]_2 ;
  output \gpr1.dout_i_reg[7]_3 ;
  output \gpr1.dout_i_reg[7]_4 ;
  output \gpr1.dout_i_reg[7]_5 ;
  output \gpr1.dout_i_reg[7]_6 ;
  output \gpr1.dout_i_reg[7]_7 ;
  output \gpr1.dout_i_reg[7]_8 ;
  output \gpr1.dout_i_reg[7]_9 ;
  output \gpr1.dout_i_reg[7]_10 ;
  output \gpr1.dout_i_reg[7]_11 ;
  output \gpr1.dout_i_reg[7]_12 ;
  output cmd_push_block_reg;
  output m_axi_awvalid;
  output \queue_id_reg[0] ;
  output \queue_id_reg[1] ;
  output \queue_id_reg[2] ;
  output \gpr1.dout_i_reg[7]_13 ;
  output \gpr1.dout_i_reg[7]_14 ;
  output \gpr1.dout_i_reg[7]_15 ;
  output \queue_id_reg[2]_0 ;
  output \gpr1.dout_i_reg[7]_16 ;
  output \gpr1.dout_i_reg[7]_17 ;
  output \next_mi_addr_reg[8]_0 ;
  output \gpr1.dout_i_reg[7]_18 ;
  output \gpr1.dout_i_reg[7]_19 ;
  output \gpr1.dout_i_reg[7]_20 ;
  output m_axi_wvalid;
  output s_axi_wready;
  output [0:0]first_word_reg;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  output [3:0]D;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  input CLK;
  input [0:0]SR;
  input [16:0]access_fit_mi_side_q_reg;
  input access_is_incr_q_reg;
  input s_axi_awvalid;
  input S_AXI_AREADY_I_reg_0;
  input aresetn;
  input [0:0]CO;
  input [7:0]Q;
  input [7:0]\downsized_len_q_reg[7] ;
  input [7:0]\wrap_rest_len_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input access_is_incr_q;
  input wrap_need_to_split_q;
  input split_ongoing;
  input access_is_wrap_q;
  input [7:0]\pushed_commands_reg[7]_0 ;
  input cmd_push_block;
  input m_axi_awready;
  input [2:0]\S_AXI_AID_Q_reg[2] ;
  input [2:0]s_axi_bid;
  input command_ongoing_reg_0;
  input full_0;
  input cmd_b_empty;
  input [1:0]\wrap_unaligned_len_q_reg[1] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input incr_need_to_split_q;
  input [4:0]\S_AXI_AADDR_Q_reg[4] ;
  input si_full_size_q;
  input [4:0]\split_addr_mask_q_reg[4] ;
  input [4:0]\size_mask_q_reg[4] ;
  input legal_wrap_len_q;
  input s_axi_wvalid;
  input \goreg_dm.dout_i_reg[9] ;
  input m_axi_wready;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input [2:0]\current_word_1_reg[3] ;
  input first_mi_word;
  input \current_word_1_reg[2] ;
  input \current_word_1_reg[3]_0 ;
  input \current_word_1_reg[4] ;
  input first_word_reg_0;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[0] ;
  input [0:0]\goreg_dm.dout_i_reg[18] ;
  input \goreg_dm.dout_i_reg[12] ;
  input \areset_d_reg[1] ;
  input S_AXI_AREADY_I_reg_1;
  input S_AXI_AREADY_I_reg_2;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [4:0]\S_AXI_AADDR_Q_reg[4] ;
  wire [2:0]\S_AXI_AID_Q_reg[2] ;
  wire S_AXI_AREADY_I_i_10_n_0;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_4_n_0;
  wire S_AXI_AREADY_I_i_6_n_0;
  wire S_AXI_AREADY_I_i_8_n_0;
  wire S_AXI_AREADY_I_i_9_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire S_AXI_AREADY_I_reg_1;
  wire S_AXI_AREADY_I_reg_2;
  wire [16:0]access_fit_mi_side_q_reg;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_incr_q_reg;
  wire access_is_wrap_q;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire cmd_b_empty;
  wire cmd_push;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire \current_word_1[2]_i_3_n_0 ;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire \current_word_1_reg[2] ;
  wire [2:0]\current_word_1_reg[3] ;
  wire \current_word_1_reg[3]_0 ;
  wire \current_word_1_reg[4] ;
  wire [3:0]din;
  wire [17:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty;
  wire fifo_gen_inst_i_15_n_0;
  wire fifo_gen_inst_i_16_n_0;
  wire fifo_gen_inst_i_17_n_0;
  wire fifo_gen_inst_i_18_n_0;
  wire fifo_gen_inst_i_19_n_0;
  wire fifo_gen_inst_n_1;
  wire first_mi_word;
  wire [0:0]first_word_reg;
  wire first_word_reg_0;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire full_0;
  wire \goreg_dm.dout_i_reg[12] ;
  wire [0:0]\goreg_dm.dout_i_reg[18] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire \gpr1.dout_i_reg[7] ;
  wire \gpr1.dout_i_reg[7]_0 ;
  wire \gpr1.dout_i_reg[7]_1 ;
  wire \gpr1.dout_i_reg[7]_10 ;
  wire \gpr1.dout_i_reg[7]_11 ;
  wire \gpr1.dout_i_reg[7]_12 ;
  wire \gpr1.dout_i_reg[7]_13 ;
  wire \gpr1.dout_i_reg[7]_14 ;
  wire \gpr1.dout_i_reg[7]_15 ;
  wire \gpr1.dout_i_reg[7]_16 ;
  wire \gpr1.dout_i_reg[7]_17 ;
  wire \gpr1.dout_i_reg[7]_18 ;
  wire \gpr1.dout_i_reg[7]_19 ;
  wire \gpr1.dout_i_reg[7]_2 ;
  wire \gpr1.dout_i_reg[7]_20 ;
  wire \gpr1.dout_i_reg[7]_3 ;
  wire \gpr1.dout_i_reg[7]_4 ;
  wire \gpr1.dout_i_reg[7]_5 ;
  wire \gpr1.dout_i_reg[7]_6 ;
  wire \gpr1.dout_i_reg[7]_7 ;
  wire \gpr1.dout_i_reg[7]_8 ;
  wire \gpr1.dout_i_reg[7]_9 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire \m_axi_awlen[0]_INST_0_i_21_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_22_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_23_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_24_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_25_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_26_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_27_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_28_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_29_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_10_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_11_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_12_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_23_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_25_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_26_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_27_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_28_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_29_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_8_n_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire \m_axi_wdata[0]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[0]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[10]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[10]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[11]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[11]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[12]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[12]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[13]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[13]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[14]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[14]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[15]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[15]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[16]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[16]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[17]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[17]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[18]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[18]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[19]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[19]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[1]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[1]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[20]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[20]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[21]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[21]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[22]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[22]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[23]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[23]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[24]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[24]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[25]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[25]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[26]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[26]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[27]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[27]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[28]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[28]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[29]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[29]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[2]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[2]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[30]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[30]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_3_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_4_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_5_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_7_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_9_n_0 ;
  wire \m_axi_wdata[3]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[3]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[4]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[4]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[5]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[5]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[6]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[6]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[7]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[7]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[8]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[8]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[9]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[9]_INST_0_i_2_n_0 ;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire \m_axi_wstrb[0]_INST_0_i_1_n_0 ;
  wire \m_axi_wstrb[0]_INST_0_i_2_n_0 ;
  wire \m_axi_wstrb[1]_INST_0_i_1_n_0 ;
  wire \m_axi_wstrb[1]_INST_0_i_2_n_0 ;
  wire \m_axi_wstrb[2]_INST_0_i_1_n_0 ;
  wire \m_axi_wstrb[2]_INST_0_i_2_n_0 ;
  wire \m_axi_wstrb[3]_INST_0_i_1_n_0 ;
  wire \m_axi_wstrb[3]_INST_0_i_2_n_0 ;
  wire m_axi_wvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [6:0]p_0_in1_in;
  wire [31:19]p_0_out;
  wire \pushed_commands_reg[7] ;
  wire [7:0]\pushed_commands_reg[7]_0 ;
  wire \queue_id_reg[0] ;
  wire \queue_id_reg[1] ;
  wire \queue_id_reg[2] ;
  wire \queue_id_reg[2]_0 ;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wready_INST_0_i_2_n_0;
  wire s_axi_wready_INST_0_i_3_n_0;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire [4:0]\size_mask_q_reg[4] ;
  wire [4:0]\split_addr_mask_q_reg[4] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire [3:0]wr_cmd_mask;
  wire wr_cmd_mirror;
  wire [4:0]wr_cmd_offset;
  wire wr_cmd_ready;
  wire [2:0]wr_cmd_size;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [1:0]\wrap_unaligned_len_q_reg[1] ;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEEFEFFEEEE0E00)) 
    S_AXI_AREADY_I_i_1
       (.I0(\areset_d_reg[1] ),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(S_AXI_AREADY_I_i_4_n_0),
        .I3(\pushed_commands_reg[7] ),
        .I4(S_AXI_AREADY_I_reg_1),
        .I5(S_AXI_AREADY_I_reg_0),
        .O(S_AXI_AREADY_I_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_10
       (.I0(\pushed_commands_reg[7]_0 [0]),
        .I1(Q[0]),
        .I2(\pushed_commands_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(S_AXI_AREADY_I_i_10_n_0));
  LUT6 #(
    .INIT(64'h00D0D0D000000000)) 
    S_AXI_AREADY_I_i_3
       (.I0(S_AXI_AREADY_I_i_6_n_0),
        .I1(access_is_incr_q_reg),
        .I2(\pushed_commands_reg[7] ),
        .I3(s_axi_awvalid),
        .I4(S_AXI_AREADY_I_reg_0),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'h000008AA08AA08AA)) 
    S_AXI_AREADY_I_i_4
       (.I0(S_AXI_AREADY_I_i_6_n_0),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .I4(CO),
        .I5(access_is_incr_q),
        .O(S_AXI_AREADY_I_i_4_n_0));
  LUT3 #(
    .INIT(8'h5D)) 
    S_AXI_AREADY_I_i_6
       (.I0(access_is_fix_q),
        .I1(fix_need_to_split_q),
        .I2(S_AXI_AREADY_I_i_8_n_0),
        .O(S_AXI_AREADY_I_i_6_n_0));
  LUT4 #(
    .INIT(16'h8008)) 
    S_AXI_AREADY_I_i_8
       (.I0(S_AXI_AREADY_I_i_9_n_0),
        .I1(S_AXI_AREADY_I_i_10_n_0),
        .I2(\pushed_commands_reg[7]_0 [3]),
        .I3(Q[3]),
        .O(S_AXI_AREADY_I_i_8_n_0));
  LUT6 #(
    .INIT(64'h0001000000000001)) 
    S_AXI_AREADY_I_i_9
       (.I0(\pushed_commands_reg[7]_0 [6]),
        .I1(\pushed_commands_reg[7]_0 [7]),
        .I2(\pushed_commands_reg[7]_0 [4]),
        .I3(\pushed_commands_reg[7]_0 [5]),
        .I4(\pushed_commands_reg[7]_0 [2]),
        .I5(Q[2]),
        .O(S_AXI_AREADY_I_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h0000CE00)) 
    cmd_push_block_i_1__0
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .I2(m_axi_awready),
        .I3(aresetn),
        .I4(\pushed_commands_reg[7] ),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'hFAFAEAFA40404040)) 
    command_ongoing_i_1
       (.I0(\areset_d_reg[1] ),
        .I1(S_AXI_AREADY_I_reg_2),
        .I2(aresetn),
        .I3(\pushed_commands_reg[7] ),
        .I4(S_AXI_AREADY_I_i_4_n_0),
        .I5(command_ongoing_reg_0),
        .O(command_ongoing_reg));
  LUT5 #(
    .INIT(32'h22222228)) 
    \current_word_1[0]_i_1__0 
       (.I0(wr_cmd_mask[0]),
        .I1(\current_word_1_reg[0] ),
        .I2(dout[9]),
        .I3(dout[8]),
        .I4(dout[10]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8888828888888282)) 
    \current_word_1[1]_i_1__0 
       (.I0(wr_cmd_mask[1]),
        .I1(\current_word_1_reg[1] ),
        .I2(dout[9]),
        .I3(dout[8]),
        .I4(dout[10]),
        .I5(\current_word_1_reg[0] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2228222288828888)) 
    \current_word_1[2]_i_1__0 
       (.I0(wr_cmd_mask[2]),
        .I1(\current_word_1_reg[2] ),
        .I2(dout[10]),
        .I3(dout[8]),
        .I4(dout[9]),
        .I5(\current_word_1[2]_i_3_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00200022)) 
    \current_word_1[2]_i_3 
       (.I0(\current_word_1_reg[1] ),
        .I1(dout[10]),
        .I2(dout[8]),
        .I3(dout[9]),
        .I4(\current_word_1_reg[0] ),
        .O(\current_word_1[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002AAA2AAA80008)) 
    \current_word_1[3]_i_1__0 
       (.I0(wr_cmd_mask[3]),
        .I1(\current_word_1_reg[3] [2]),
        .I2(first_mi_word),
        .I3(dout[17]),
        .I4(dout[15]),
        .I5(\goreg_dm.dout_i_reg[12] ),
        .O(D[3]));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* DONT_TOUCH *) 
  ntps_top_auto_ds_0_fifo_generator_v12_0__1 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({p_0_out[31],din[3],access_fit_mi_side_q_reg[16],p_0_out[28:19],access_fit_mi_side_q_reg[15:11],din[2:0],access_fit_mi_side_q_reg[10:0]}),
        .dout({dout[17],fifo_gen_inst_n_1,wr_cmd_mirror,dout[16:12],wr_cmd_offset,dout[11],wr_cmd_mask,dout[10:0],wr_cmd_size}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(wr_cmd_ready),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1
       (.I0(access_is_fix_q),
        .I1(access_fit_mi_side_q_reg[16]),
        .O(p_0_out[31]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_10
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [2]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [2]),
        .I5(access_fit_mi_side_q_reg[13]),
        .O(p_0_out[21]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_11
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [1]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [1]),
        .I5(access_fit_mi_side_q_reg[12]),
        .O(p_0_out[20]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_12
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [0]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [0]),
        .I5(access_fit_mi_side_q_reg[11]),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_13
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .O(cmd_push));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    fifo_gen_inst_i_14
       (.I0(m_axi_wready),
        .I1(empty),
        .I2(s_axi_wvalid),
        .I3(\goreg_dm.dout_i_reg[9] ),
        .O(wr_cmd_ready));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_15
       (.I0(\split_addr_mask_q_reg[4] [4]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [4]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_16
       (.I0(\split_addr_mask_q_reg[4] [3]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [3]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_17
       (.I0(\split_addr_mask_q_reg[4] [2]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [2]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_18
       (.I0(\split_addr_mask_q_reg[4] [1]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [1]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_19
       (.I0(\split_addr_mask_q_reg[4] [0]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [0]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_19_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    fifo_gen_inst_i_2
       (.I0(S_AXI_AREADY_I_i_4_n_0),
        .I1(wrap_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(din[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_20
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .O(\next_mi_addr_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_21
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(\next_mi_addr_reg[8]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_3
       (.I0(fifo_gen_inst_i_15_n_0),
        .I1(\size_mask_q_reg[4] [4]),
        .I2(access_fit_mi_side_q_reg[15]),
        .O(p_0_out[28]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_4
       (.I0(fifo_gen_inst_i_16_n_0),
        .I1(\size_mask_q_reg[4] [3]),
        .I2(access_fit_mi_side_q_reg[14]),
        .O(p_0_out[27]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_5
       (.I0(fifo_gen_inst_i_17_n_0),
        .I1(\size_mask_q_reg[4] [2]),
        .I2(access_fit_mi_side_q_reg[13]),
        .O(p_0_out[26]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_6
       (.I0(fifo_gen_inst_i_18_n_0),
        .I1(\size_mask_q_reg[4] [1]),
        .I2(access_fit_mi_side_q_reg[12]),
        .O(p_0_out[25]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_7
       (.I0(fifo_gen_inst_i_19_n_0),
        .I1(\size_mask_q_reg[4] [0]),
        .I2(access_fit_mi_side_q_reg[11]),
        .O(p_0_out[24]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_8
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [4]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [4]),
        .I5(access_fit_mi_side_q_reg[15]),
        .O(p_0_out[23]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_9
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [3]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [3]),
        .I5(access_fit_mi_side_q_reg[14]),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h20)) 
    first_word_i_1
       (.I0(s_axi_wvalid),
        .I1(empty),
        .I2(m_axi_wready),
        .O(first_word_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awlen[0]_INST_0_i_1 
       (.I0(\gpr1.dout_i_reg[7]_7 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_8 ),
        .O(p_0_in1_in[3]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[0]_INST_0_i_10 
       (.I0(Q[3]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[0]_INST_0_i_21_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [3]),
        .O(\gpr1.dout_i_reg[7]_8 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[0]_INST_0_i_11 
       (.I0(access_is_incr_q),
        .I1(Q[2]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[0]_INST_0_i_22_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [2]),
        .O(\gpr1.dout_i_reg[7]_5 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[0]_INST_0_i_12 
       (.I0(Q[2]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[0]_INST_0_i_22_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [2]),
        .O(\gpr1.dout_i_reg[7]_6 ));
  LUT6 #(
    .INIT(64'hBBBB8888B8BBB8BB)) 
    \m_axi_awlen[0]_INST_0_i_13 
       (.I0(\downsized_len_q_reg[7] [1]),
        .I1(\m_axi_awlen[0]_INST_0_i_23_n_0 ),
        .I2(\wrap_rest_len_reg[7] [1]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\fix_len_q_reg[4] [1]),
        .I5(fix_need_to_split_q),
        .O(\gpr1.dout_i_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hBBBB8888B8BBB8BB)) 
    \m_axi_awlen[0]_INST_0_i_14 
       (.I0(\downsized_len_q_reg[7] [1]),
        .I1(\m_axi_awlen[0]_INST_0_i_24_n_0 ),
        .I2(\wrap_rest_len_reg[7] [1]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\fix_len_q_reg[4] [1]),
        .I5(fix_need_to_split_q),
        .O(\gpr1.dout_i_reg[7]_2 ));
  LUT6 #(
    .INIT(64'hBBBB8888B8BBB8BB)) 
    \m_axi_awlen[0]_INST_0_i_15 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\m_axi_awlen[0]_INST_0_i_25_n_0 ),
        .I2(\wrap_rest_len_reg[7] [0]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\fix_len_q_reg[4] [0]),
        .I5(fix_need_to_split_q),
        .O(\gpr1.dout_i_reg[7] ));
  LUT6 #(
    .INIT(64'hBBBB8888B8BBB8BB)) 
    \m_axi_awlen[0]_INST_0_i_16 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\m_axi_awlen[0]_INST_0_i_26_n_0 ),
        .I2(\wrap_rest_len_reg[7] [0]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\fix_len_q_reg[4] [0]),
        .I5(fix_need_to_split_q),
        .O(\gpr1.dout_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_awlen[0]_INST_0_i_17 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [3]),
        .O(\gpr1.dout_i_reg[7]_19 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_awlen[0]_INST_0_i_18 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [2]),
        .O(\gpr1.dout_i_reg[7]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    \m_axi_awlen[0]_INST_0_i_19 
       (.I0(\wrap_unaligned_len_q_reg[1] [1]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(\m_axi_awlen[0]_INST_0_i_27_n_0 ),
        .I4(\unalignment_addr_q_reg[4] [1]),
        .O(\gpr1.dout_i_reg[7]_17 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awlen[0]_INST_0_i_2 
       (.I0(\gpr1.dout_i_reg[7]_5 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_6 ),
        .O(p_0_in1_in[2]));
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    \m_axi_awlen[0]_INST_0_i_20 
       (.I0(\wrap_unaligned_len_q_reg[1] [0]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(\m_axi_awlen[0]_INST_0_i_27_n_0 ),
        .I4(\unalignment_addr_q_reg[4] [0]),
        .O(\gpr1.dout_i_reg[7]_16 ));
  LUT5 #(
    .INIT(32'hFF00BFBF)) 
    \m_axi_awlen[0]_INST_0_i_21 
       (.I0(\wrap_rest_len_reg[7] [3]),
        .I1(split_ongoing),
        .I2(access_is_wrap_q),
        .I3(\fix_len_q_reg[4] [3]),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFF00BFBF)) 
    \m_axi_awlen[0]_INST_0_i_22 
       (.I0(\wrap_rest_len_reg[7] [2]),
        .I1(split_ongoing),
        .I2(access_is_wrap_q),
        .I3(\fix_len_q_reg[4] [2]),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_awlen[0]_INST_0_i_23 
       (.I0(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8_n_0),
        .I5(\m_axi_awlen[0]_INST_0_i_28_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_awlen[0]_INST_0_i_24 
       (.I0(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8_n_0),
        .I5(\m_axi_awlen[0]_INST_0_i_29_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_awlen[0]_INST_0_i_25 
       (.I0(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8_n_0),
        .I5(\m_axi_awlen[0]_INST_0_i_28_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_awlen[0]_INST_0_i_26 
       (.I0(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8_n_0),
        .I5(\m_axi_awlen[0]_INST_0_i_29_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \m_axi_awlen[0]_INST_0_i_27 
       (.I0(access_is_incr_q),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(incr_need_to_split_q),
        .I3(split_ongoing),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \m_axi_awlen[0]_INST_0_i_28 
       (.I0(access_is_incr_q),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_awlen[0]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \m_axi_awlen[0]_INST_0_i_29 
       (.I0(access_is_wrap_q),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_awlen[0]_INST_0_i_3 
       (.I0(\gpr1.dout_i_reg[7]_1 ),
        .I1(CO),
        .I2(Q[1]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\gpr1.dout_i_reg[7]_2 ),
        .O(p_0_in1_in[1]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_awlen[0]_INST_0_i_4 
       (.I0(\gpr1.dout_i_reg[7] ),
        .I1(CO),
        .I2(Q[0]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\gpr1.dout_i_reg[7]_0 ),
        .O(p_0_in1_in[0]));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[0]_INST_0_i_9 
       (.I0(access_is_incr_q),
        .I1(Q[3]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[0]_INST_0_i_21_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [3]),
        .O(\gpr1.dout_i_reg[7]_7 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_awlen[4]_INST_0_i_1 
       (.I0(\m_axi_awlen[4]_INST_0_i_8_n_0 ),
        .I1(CO),
        .I2(Q[6]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\m_axi_awlen[4]_INST_0_i_10_n_0 ),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFF4500000045)) 
    \m_axi_awlen[4]_INST_0_i_10 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [6]),
        .I2(\next_mi_addr_reg[8] ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\m_axi_awlen[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBABB00001011)) 
    \m_axi_awlen[4]_INST_0_i_11 
       (.I0(access_is_incr_q),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [5]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\m_axi_awlen[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4500000045)) 
    \m_axi_awlen[4]_INST_0_i_12 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [5]),
        .I2(\next_mi_addr_reg[8] ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\m_axi_awlen[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[4]_INST_0_i_13 
       (.I0(access_is_incr_q),
        .I1(Q[4]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[4]_INST_0_i_26_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [4]),
        .O(\gpr1.dout_i_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[4]_INST_0_i_14 
       (.I0(Q[4]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[4]_INST_0_i_26_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [4]),
        .O(\gpr1.dout_i_reg[7]_4 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[4]_INST_0_i_15 
       (.I0(Q[7]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[4]_INST_0_i_27_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [7]),
        .O(\gpr1.dout_i_reg[7]_9 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[4]_INST_0_i_16 
       (.I0(access_is_incr_q),
        .I1(Q[7]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[4]_INST_0_i_27_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [7]),
        .O(\gpr1.dout_i_reg[7]_15 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[4]_INST_0_i_17 
       (.I0(Q[6]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[4]_INST_0_i_28_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\gpr1.dout_i_reg[7]_11 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[4]_INST_0_i_18 
       (.I0(access_is_incr_q),
        .I1(Q[6]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[4]_INST_0_i_28_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\gpr1.dout_i_reg[7]_13 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_awlen[4]_INST_0_i_19 
       (.I0(Q[5]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_awlen[4]_INST_0_i_29_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\gpr1.dout_i_reg[7]_10 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_awlen[4]_INST_0_i_2 
       (.I0(\m_axi_awlen[4]_INST_0_i_11_n_0 ),
        .I1(CO),
        .I2(Q[5]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\m_axi_awlen[4]_INST_0_i_12_n_0 ),
        .O(p_0_in1_in[5]));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_awlen[4]_INST_0_i_20 
       (.I0(access_is_incr_q),
        .I1(Q[5]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_awlen[4]_INST_0_i_29_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\gpr1.dout_i_reg[7]_14 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_awlen[4]_INST_0_i_21 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [4]),
        .O(\gpr1.dout_i_reg[7]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awlen[4]_INST_0_i_22 
       (.I0(wrap_need_to_split_q),
        .I1(split_ongoing),
        .O(\gpr1.dout_i_reg[7]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \m_axi_awlen[4]_INST_0_i_23 
       (.I0(incr_need_to_split_q),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(\m_axi_awlen[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAEFF00000C0C0000)) 
    \m_axi_awlen[4]_INST_0_i_25 
       (.I0(S_AXI_AREADY_I_i_8_n_0),
        .I1(access_is_wrap_q),
        .I2(\gpr1.dout_i_reg[7]_12 ),
        .I3(fix_need_to_split_q),
        .I4(access_is_incr_q),
        .I5(access_is_fix_q),
        .O(\m_axi_awlen[4]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFF00BFBF)) 
    \m_axi_awlen[4]_INST_0_i_26 
       (.I0(\wrap_rest_len_reg[7] [4]),
        .I1(split_ongoing),
        .I2(access_is_wrap_q),
        .I3(\fix_len_q_reg[4] [4]),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[4]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_awlen[4]_INST_0_i_27 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [7]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_awlen[4]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_awlen[4]_INST_0_i_28 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [6]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_awlen[4]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_awlen[4]_INST_0_i_29 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [5]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_awlen[4]_INST_0_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_awlen[4]_INST_0_i_3 
       (.I0(\gpr1.dout_i_reg[7]_3 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_4 ),
        .O(p_0_in1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFBABB00001011)) 
    \m_axi_awlen[4]_INST_0_i_8 
       (.I0(access_is_incr_q),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [6]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\m_axi_awlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\m_axi_awlen[4]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[0]_INST_0 
       (.I0(access_fit_mi_side_q_reg[16]),
        .I1(access_fit_mi_side_q_reg[0]),
        .O(din[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awsize[1]_INST_0 
       (.I0(access_fit_mi_side_q_reg[1]),
        .I1(access_fit_mi_side_q_reg[16]),
        .O(din[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[2]_INST_0 
       (.I0(access_fit_mi_side_q_reg[16]),
        .I1(access_fit_mi_side_q_reg[2]),
        .O(din[2]));
  LUT6 #(
    .INIT(64'h888A888A888A8888)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing_reg_0),
        .I1(cmd_push_block),
        .I2(full),
        .I3(full_0),
        .I4(\queue_id_reg[2]_0 ),
        .I5(cmd_b_empty),
        .O(m_axi_awvalid));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axi_awvalid_INST_0_i_1
       (.I0(s_axi_bid[1]),
        .I1(\S_AXI_AID_Q_reg[2] [1]),
        .I2(s_axi_bid[2]),
        .I3(\S_AXI_AID_Q_reg[2] [2]),
        .I4(\S_AXI_AID_Q_reg[2] [0]),
        .I5(s_axi_bid[0]),
        .O(\queue_id_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(\m_axi_wdata[0]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[0]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[0]_INST_0_i_1 
       (.I0(s_axi_wdata[64]),
        .I1(s_axi_wdata[96]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[0]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[32]),
        .O(\m_axi_wdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[0]_INST_0_i_2 
       (.I0(s_axi_wdata[192]),
        .I1(s_axi_wdata[224]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[128]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[160]),
        .O(\m_axi_wdata[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(\m_axi_wdata[10]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[10]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[10]_INST_0_i_1 
       (.I0(s_axi_wdata[74]),
        .I1(s_axi_wdata[106]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[10]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[42]),
        .O(\m_axi_wdata[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[10]_INST_0_i_2 
       (.I0(s_axi_wdata[202]),
        .I1(s_axi_wdata[234]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[138]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[170]),
        .O(\m_axi_wdata[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(\m_axi_wdata[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[11]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[11]_INST_0_i_1 
       (.I0(s_axi_wdata[75]),
        .I1(s_axi_wdata[107]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[11]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[43]),
        .O(\m_axi_wdata[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[11]_INST_0_i_2 
       (.I0(s_axi_wdata[203]),
        .I1(s_axi_wdata[235]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[139]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[171]),
        .O(\m_axi_wdata[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(\m_axi_wdata[12]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[12]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[12]_INST_0_i_1 
       (.I0(s_axi_wdata[76]),
        .I1(s_axi_wdata[108]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[12]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[44]),
        .O(\m_axi_wdata[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[12]_INST_0_i_2 
       (.I0(s_axi_wdata[204]),
        .I1(s_axi_wdata[236]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[140]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[172]),
        .O(\m_axi_wdata[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(\m_axi_wdata[13]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[13]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[13]_INST_0_i_1 
       (.I0(s_axi_wdata[77]),
        .I1(s_axi_wdata[109]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[13]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[45]),
        .O(\m_axi_wdata[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[13]_INST_0_i_2 
       (.I0(s_axi_wdata[205]),
        .I1(s_axi_wdata[237]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[141]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[173]),
        .O(\m_axi_wdata[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(\m_axi_wdata[14]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[14]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[14]_INST_0_i_1 
       (.I0(s_axi_wdata[78]),
        .I1(s_axi_wdata[110]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[14]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[46]),
        .O(\m_axi_wdata[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[14]_INST_0_i_2 
       (.I0(s_axi_wdata[206]),
        .I1(s_axi_wdata[238]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[142]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[174]),
        .O(\m_axi_wdata[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(\m_axi_wdata[15]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[15]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[15]_INST_0_i_1 
       (.I0(s_axi_wdata[79]),
        .I1(s_axi_wdata[111]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[15]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[47]),
        .O(\m_axi_wdata[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[15]_INST_0_i_2 
       (.I0(s_axi_wdata[207]),
        .I1(s_axi_wdata[239]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[143]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[175]),
        .O(\m_axi_wdata[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(\m_axi_wdata[16]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[16]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[16]_INST_0_i_1 
       (.I0(s_axi_wdata[80]),
        .I1(s_axi_wdata[112]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[16]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[48]),
        .O(\m_axi_wdata[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[16]_INST_0_i_2 
       (.I0(s_axi_wdata[208]),
        .I1(s_axi_wdata[240]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[144]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[176]),
        .O(\m_axi_wdata[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(\m_axi_wdata[17]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[17]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[17]_INST_0_i_1 
       (.I0(s_axi_wdata[81]),
        .I1(s_axi_wdata[113]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[17]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[49]),
        .O(\m_axi_wdata[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[17]_INST_0_i_2 
       (.I0(s_axi_wdata[209]),
        .I1(s_axi_wdata[241]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[145]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[177]),
        .O(\m_axi_wdata[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(\m_axi_wdata[18]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[18]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[18]_INST_0_i_1 
       (.I0(s_axi_wdata[82]),
        .I1(s_axi_wdata[114]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[18]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[50]),
        .O(\m_axi_wdata[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[18]_INST_0_i_2 
       (.I0(s_axi_wdata[210]),
        .I1(s_axi_wdata[242]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[146]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[178]),
        .O(\m_axi_wdata[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(\m_axi_wdata[19]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[19]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[19]_INST_0_i_1 
       (.I0(s_axi_wdata[83]),
        .I1(s_axi_wdata[115]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[19]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[51]),
        .O(\m_axi_wdata[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[19]_INST_0_i_2 
       (.I0(s_axi_wdata[211]),
        .I1(s_axi_wdata[243]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[147]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[179]),
        .O(\m_axi_wdata[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(\m_axi_wdata[1]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[1]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[1]_INST_0_i_1 
       (.I0(s_axi_wdata[65]),
        .I1(s_axi_wdata[97]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[1]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[33]),
        .O(\m_axi_wdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[1]_INST_0_i_2 
       (.I0(s_axi_wdata[193]),
        .I1(s_axi_wdata[225]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[129]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[161]),
        .O(\m_axi_wdata[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(\m_axi_wdata[20]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[20]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[20]_INST_0_i_1 
       (.I0(s_axi_wdata[84]),
        .I1(s_axi_wdata[116]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[20]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[52]),
        .O(\m_axi_wdata[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[20]_INST_0_i_2 
       (.I0(s_axi_wdata[212]),
        .I1(s_axi_wdata[244]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[148]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[180]),
        .O(\m_axi_wdata[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(\m_axi_wdata[21]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[21]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[21]_INST_0_i_1 
       (.I0(s_axi_wdata[85]),
        .I1(s_axi_wdata[117]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[21]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[53]),
        .O(\m_axi_wdata[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[21]_INST_0_i_2 
       (.I0(s_axi_wdata[213]),
        .I1(s_axi_wdata[245]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[149]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[181]),
        .O(\m_axi_wdata[21]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(\m_axi_wdata[22]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[22]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[22]_INST_0_i_1 
       (.I0(s_axi_wdata[86]),
        .I1(s_axi_wdata[118]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[22]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[54]),
        .O(\m_axi_wdata[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[22]_INST_0_i_2 
       (.I0(s_axi_wdata[214]),
        .I1(s_axi_wdata[246]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[150]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[182]),
        .O(\m_axi_wdata[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(\m_axi_wdata[23]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[23]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[23]_INST_0_i_1 
       (.I0(s_axi_wdata[87]),
        .I1(s_axi_wdata[119]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[23]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[55]),
        .O(\m_axi_wdata[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[23]_INST_0_i_2 
       (.I0(s_axi_wdata[215]),
        .I1(s_axi_wdata[247]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[151]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[183]),
        .O(\m_axi_wdata[23]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(\m_axi_wdata[24]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[24]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[24]_INST_0_i_1 
       (.I0(s_axi_wdata[88]),
        .I1(s_axi_wdata[120]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[24]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[56]),
        .O(\m_axi_wdata[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[24]_INST_0_i_2 
       (.I0(s_axi_wdata[216]),
        .I1(s_axi_wdata[248]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[152]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[184]),
        .O(\m_axi_wdata[24]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(\m_axi_wdata[25]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[25]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[25]_INST_0_i_1 
       (.I0(s_axi_wdata[89]),
        .I1(s_axi_wdata[121]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[25]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[57]),
        .O(\m_axi_wdata[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[25]_INST_0_i_2 
       (.I0(s_axi_wdata[217]),
        .I1(s_axi_wdata[249]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[153]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[185]),
        .O(\m_axi_wdata[25]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(\m_axi_wdata[26]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[26]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[26]_INST_0_i_1 
       (.I0(s_axi_wdata[90]),
        .I1(s_axi_wdata[122]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[26]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[58]),
        .O(\m_axi_wdata[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[26]_INST_0_i_2 
       (.I0(s_axi_wdata[218]),
        .I1(s_axi_wdata[250]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[154]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[186]),
        .O(\m_axi_wdata[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(\m_axi_wdata[27]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[27]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[27]_INST_0_i_1 
       (.I0(s_axi_wdata[91]),
        .I1(s_axi_wdata[123]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[27]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[59]),
        .O(\m_axi_wdata[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[27]_INST_0_i_2 
       (.I0(s_axi_wdata[219]),
        .I1(s_axi_wdata[251]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[155]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[187]),
        .O(\m_axi_wdata[27]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(\m_axi_wdata[28]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[28]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[28]_INST_0_i_1 
       (.I0(s_axi_wdata[92]),
        .I1(s_axi_wdata[124]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[28]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[60]),
        .O(\m_axi_wdata[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[28]_INST_0_i_2 
       (.I0(s_axi_wdata[220]),
        .I1(s_axi_wdata[252]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[156]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[188]),
        .O(\m_axi_wdata[28]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(\m_axi_wdata[29]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[29]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[29]_INST_0_i_1 
       (.I0(s_axi_wdata[93]),
        .I1(s_axi_wdata[125]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[29]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[61]),
        .O(\m_axi_wdata[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[29]_INST_0_i_2 
       (.I0(s_axi_wdata[221]),
        .I1(s_axi_wdata[253]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[157]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[189]),
        .O(\m_axi_wdata[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(\m_axi_wdata[2]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[2]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[2]_INST_0_i_1 
       (.I0(s_axi_wdata[66]),
        .I1(s_axi_wdata[98]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[2]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[34]),
        .O(\m_axi_wdata[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[2]_INST_0_i_2 
       (.I0(s_axi_wdata[194]),
        .I1(s_axi_wdata[226]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[130]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[162]),
        .O(\m_axi_wdata[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(\m_axi_wdata[30]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[30]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[30]_INST_0_i_1 
       (.I0(s_axi_wdata[94]),
        .I1(s_axi_wdata[126]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[30]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[62]),
        .O(\m_axi_wdata[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[30]_INST_0_i_2 
       (.I0(s_axi_wdata[222]),
        .I1(s_axi_wdata[254]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[158]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[190]),
        .O(\m_axi_wdata[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[31]_INST_0_i_3_n_0 ),
        .O(m_axi_wdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[31]_INST_0_i_1 
       (.I0(s_axi_wdata[95]),
        .I1(s_axi_wdata[127]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[31]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[63]),
        .O(\m_axi_wdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \m_axi_wdata[31]_INST_0_i_2 
       (.I0(\current_word_1_reg[3]_0 ),
        .I1(wr_cmd_offset[3]),
        .I2(\m_axi_wdata[31]_INST_0_i_7_n_0 ),
        .I3(\current_word_1_reg[4] ),
        .I4(wr_cmd_offset[4]),
        .O(\m_axi_wdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[31]_INST_0_i_3 
       (.I0(s_axi_wdata[223]),
        .I1(s_axi_wdata[255]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[159]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[191]),
        .O(\m_axi_wdata[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \m_axi_wdata[31]_INST_0_i_4 
       (.I0(\current_word_1_reg[2] ),
        .I1(wr_cmd_offset[2]),
        .I2(\m_axi_wdata[31]_INST_0_i_9_n_0 ),
        .I3(\current_word_1_reg[3]_0 ),
        .I4(wr_cmd_offset[3]),
        .O(\m_axi_wdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA955595556AAA6)) 
    \m_axi_wdata[31]_INST_0_i_5 
       (.I0(\m_axi_wdata[31]_INST_0_i_9_n_0 ),
        .I1(\current_word_1_reg[3] [1]),
        .I2(first_mi_word),
        .I3(dout[17]),
        .I4(dout[14]),
        .I5(wr_cmd_offset[2]),
        .O(\m_axi_wdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD4D4D4DDD4D4D444)) 
    \m_axi_wdata[31]_INST_0_i_7 
       (.I0(\m_axi_wdata[31]_INST_0_i_9_n_0 ),
        .I1(wr_cmd_offset[2]),
        .I2(dout[14]),
        .I3(dout[17]),
        .I4(first_mi_word),
        .I5(\current_word_1_reg[3] [1]),
        .O(\m_axi_wdata[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00001DFF1DFFFFFF)) 
    \m_axi_wdata[31]_INST_0_i_9 
       (.I0(dout[12]),
        .I1(first_word_reg_0),
        .I2(\current_word_1_reg[3] [0]),
        .I3(wr_cmd_offset[0]),
        .I4(wr_cmd_offset[1]),
        .I5(\current_word_1_reg[1] ),
        .O(\m_axi_wdata[31]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(\m_axi_wdata[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[3]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[3]_INST_0_i_1 
       (.I0(s_axi_wdata[67]),
        .I1(s_axi_wdata[99]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[3]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[35]),
        .O(\m_axi_wdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[3]_INST_0_i_2 
       (.I0(s_axi_wdata[195]),
        .I1(s_axi_wdata[227]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[131]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[163]),
        .O(\m_axi_wdata[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(\m_axi_wdata[4]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[4]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[4]_INST_0_i_1 
       (.I0(s_axi_wdata[68]),
        .I1(s_axi_wdata[100]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[4]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[36]),
        .O(\m_axi_wdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[4]_INST_0_i_2 
       (.I0(s_axi_wdata[196]),
        .I1(s_axi_wdata[228]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[132]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[164]),
        .O(\m_axi_wdata[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(\m_axi_wdata[5]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[5]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[5]_INST_0_i_1 
       (.I0(s_axi_wdata[69]),
        .I1(s_axi_wdata[101]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[5]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[37]),
        .O(\m_axi_wdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[5]_INST_0_i_2 
       (.I0(s_axi_wdata[197]),
        .I1(s_axi_wdata[229]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[133]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[165]),
        .O(\m_axi_wdata[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(\m_axi_wdata[6]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[6]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[6]_INST_0_i_1 
       (.I0(s_axi_wdata[70]),
        .I1(s_axi_wdata[102]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[6]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[38]),
        .O(\m_axi_wdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[6]_INST_0_i_2 
       (.I0(s_axi_wdata[198]),
        .I1(s_axi_wdata[230]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[134]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[166]),
        .O(\m_axi_wdata[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(\m_axi_wdata[7]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[7]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[7]_INST_0_i_1 
       (.I0(s_axi_wdata[71]),
        .I1(s_axi_wdata[103]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[7]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[39]),
        .O(\m_axi_wdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[7]_INST_0_i_2 
       (.I0(s_axi_wdata[199]),
        .I1(s_axi_wdata[231]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[135]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[167]),
        .O(\m_axi_wdata[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(\m_axi_wdata[8]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[8]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[8]_INST_0_i_1 
       (.I0(s_axi_wdata[72]),
        .I1(s_axi_wdata[104]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[8]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[40]),
        .O(\m_axi_wdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[8]_INST_0_i_2 
       (.I0(s_axi_wdata[200]),
        .I1(s_axi_wdata[232]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[136]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[168]),
        .O(\m_axi_wdata[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(\m_axi_wdata[9]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wdata[9]_INST_0_i_2_n_0 ),
        .O(m_axi_wdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[9]_INST_0_i_1 
       (.I0(s_axi_wdata[73]),
        .I1(s_axi_wdata[105]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[9]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[41]),
        .O(\m_axi_wdata[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[9]_INST_0_i_2 
       (.I0(s_axi_wdata[201]),
        .I1(s_axi_wdata[233]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wdata[137]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wdata[169]),
        .O(\m_axi_wdata[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(\m_axi_wstrb[0]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wstrb[0]_INST_0_i_2_n_0 ),
        .O(m_axi_wstrb[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[0]_INST_0_i_1 
       (.I0(s_axi_wstrb[8]),
        .I1(s_axi_wstrb[12]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[4]),
        .O(\m_axi_wstrb[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[0]_INST_0_i_2 
       (.I0(s_axi_wstrb[24]),
        .I1(s_axi_wstrb[28]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[16]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[20]),
        .O(\m_axi_wstrb[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(\m_axi_wstrb[1]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wstrb[1]_INST_0_i_2_n_0 ),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[1]_INST_0_i_1 
       (.I0(s_axi_wstrb[9]),
        .I1(s_axi_wstrb[13]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[5]),
        .O(\m_axi_wstrb[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[1]_INST_0_i_2 
       (.I0(s_axi_wstrb[25]),
        .I1(s_axi_wstrb[29]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[17]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[21]),
        .O(\m_axi_wstrb[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(\m_axi_wstrb[2]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wstrb[2]_INST_0_i_2_n_0 ),
        .O(m_axi_wstrb[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[2]_INST_0_i_1 
       (.I0(s_axi_wstrb[10]),
        .I1(s_axi_wstrb[14]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[6]),
        .O(\m_axi_wstrb[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[2]_INST_0_i_2 
       (.I0(s_axi_wstrb[26]),
        .I1(s_axi_wstrb[30]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[18]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[22]),
        .O(\m_axi_wstrb[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(\m_axi_wstrb[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I2(\m_axi_wstrb[3]_INST_0_i_2_n_0 ),
        .O(m_axi_wstrb[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[3]_INST_0_i_1 
       (.I0(s_axi_wstrb[11]),
        .I1(s_axi_wstrb[15]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[7]),
        .O(\m_axi_wstrb[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[3]_INST_0_i_2 
       (.I0(s_axi_wstrb[27]),
        .I1(s_axi_wstrb[31]),
        .I2(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I3(s_axi_wstrb[19]),
        .I4(\m_axi_wdata[31]_INST_0_i_5_n_0 ),
        .I5(s_axi_wstrb[23]),
        .O(\m_axi_wstrb[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  LUT4 #(
    .INIT(16'hFD20)) 
    \queue_id[0]_i_1__0 
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .I2(\S_AXI_AID_Q_reg[2] [0]),
        .I3(s_axi_bid[0]),
        .O(\queue_id_reg[0] ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \queue_id[1]_i_1__0 
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .I2(\S_AXI_AID_Q_reg[2] [1]),
        .I3(s_axi_bid[1]),
        .O(\queue_id_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \queue_id[2]_i_2 
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .I2(\S_AXI_AID_Q_reg[2] [2]),
        .I3(s_axi_bid[2]),
        .O(\queue_id_reg[2] ));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAA)) 
    s_axi_wready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(\goreg_dm.dout_i_reg[9] ),
        .I2(wr_cmd_mirror),
        .I3(dout[17]),
        .I4(s_axi_wready_INST_0_i_2_n_0),
        .I5(s_axi_wready_INST_0_i_3_n_0),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_1
       (.I0(m_axi_wready),
        .I1(empty),
        .O(s_axi_wready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFCAA88)) 
    s_axi_wready_INST_0_i_2
       (.I0(D[1]),
        .I1(wr_cmd_size[1]),
        .I2(wr_cmd_size[0]),
        .I3(wr_cmd_size[2]),
        .I4(D[0]),
        .O(s_axi_wready_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFAAAAAA8F8A8A8A8)) 
    s_axi_wready_INST_0_i_3
       (.I0(wr_cmd_size[2]),
        .I1(D[3]),
        .I2(D[2]),
        .I3(wr_cmd_size[1]),
        .I4(wr_cmd_size[0]),
        .I5(\goreg_dm.dout_i_reg[18] ),
        .O(s_axi_wready_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    split_ongoing_i_1
       (.I0(m_axi_awready),
        .I1(m_axi_awvalid),
        .O(\pushed_commands_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_fifo_gen" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen_9
   (dout,
    din,
    \pushed_commands_reg[7] ,
    D,
    p_0_in1_in,
    \gpr1.dout_i_reg[7] ,
    \gpr1.dout_i_reg[7]_0 ,
    \next_mi_addr_reg[8] ,
    \gpr1.dout_i_reg[7]_1 ,
    \gpr1.dout_i_reg[7]_2 ,
    \gpr1.dout_i_reg[7]_3 ,
    \gpr1.dout_i_reg[7]_4 ,
    \gpr1.dout_i_reg[7]_5 ,
    \gpr1.dout_i_reg[7]_6 ,
    \gpr1.dout_i_reg[7]_7 ,
    \gpr1.dout_i_reg[7]_8 ,
    \gpr1.dout_i_reg[7]_9 ,
    \gpr1.dout_i_reg[7]_10 ,
    \gpr1.dout_i_reg[7]_11 ,
    \gpr1.dout_i_reg[7]_12 ,
    \current_word_1_reg[4] ,
    s_axi_rlast,
    s_axi_rdata,
    \gpr1.dout_i_reg[7]_13 ,
    \gpr1.dout_i_reg[7]_14 ,
    \gpr1.dout_i_reg[7]_15 ,
    E,
    m_axi_arvalid,
    \gpr1.dout_i_reg[7]_16 ,
    \gpr1.dout_i_reg[7]_17 ,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[192] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159] ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191] ,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223] ,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255] ,
    first_mi_word_reg,
    s_axi_rvalid,
    \cmd_depth_reg[2] ,
    m_axi_rready,
    s_axi_rresp,
    \S_AXI_RRESP_ACC_reg[1] ,
    \current_word_1_reg[3] ,
    \next_mi_addr_reg[8]_0 ,
    \gpr1.dout_i_reg[7]_18 ,
    \gpr1.dout_i_reg[7]_19 ,
    \gpr1.dout_i_reg[7]_20 ,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    \queue_id_reg[2] ,
    \queue_id_reg[1] ,
    \queue_id_reg[0] ,
    cmd_empty_reg,
    cmd_push_block_reg,
    CLK,
    SR,
    access_fit_mi_side_q_reg,
    access_is_incr_q_reg,
    s_axi_arvalid,
    S_AXI_AREADY_I_reg_0,
    aresetn,
    Q,
    \goreg_dm.dout_i_reg[10] ,
    \cmd_depth_reg[1] ,
    CO,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    \fix_len_q_reg[4] ,
    fix_need_to_split_q,
    \wrap_rest_len_reg[7] ,
    access_is_fix_q,
    access_is_incr_q,
    wrap_need_to_split_q,
    split_ongoing,
    access_is_wrap_q,
    \pushed_commands_reg[7]_0 ,
    \current_word_1_reg[1] ,
    \current_word_1_reg[4]_0 ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[0] ,
    m_axi_rlast,
    first_word,
    \current_word_1_reg[3]_1 ,
    command_ongoing_reg_0,
    cmd_push_block,
    cmd_empty,
    m_axi_arready,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ,
    m_axi_rdata,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    s_axi_rid,
    \S_AXI_AID_Q_reg[2] ,
    \wrap_unaligned_len_q_reg[1] ,
    \unalignment_addr_q_reg[4] ,
    incr_need_to_split_q,
    m_axi_rvalid,
    s_axi_rready,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_rresp,
    \S_AXI_RRESP_ACC_reg[1]_0 ,
    \S_AXI_RRESP_ACC_reg[1]_1 ,
    \S_AXI_AADDR_Q_reg[4] ,
    si_full_size_q,
    \split_addr_mask_q_reg[4] ,
    \size_mask_q_reg[4] ,
    legal_wrap_len_q,
    \areset_d_reg[1] ,
    S_AXI_AREADY_I_reg_1,
    S_AXI_AREADY_I_reg_2,
    \cmd_depth_reg[4] );
  output [14:0]dout;
  output [3:0]din;
  output \pushed_commands_reg[7] ;
  output [4:0]D;
  output [6:0]p_0_in1_in;
  output \gpr1.dout_i_reg[7] ;
  output \gpr1.dout_i_reg[7]_0 ;
  output \next_mi_addr_reg[8] ;
  output \gpr1.dout_i_reg[7]_1 ;
  output \gpr1.dout_i_reg[7]_2 ;
  output \gpr1.dout_i_reg[7]_3 ;
  output \gpr1.dout_i_reg[7]_4 ;
  output \gpr1.dout_i_reg[7]_5 ;
  output \gpr1.dout_i_reg[7]_6 ;
  output \gpr1.dout_i_reg[7]_7 ;
  output \gpr1.dout_i_reg[7]_8 ;
  output \gpr1.dout_i_reg[7]_9 ;
  output \gpr1.dout_i_reg[7]_10 ;
  output \gpr1.dout_i_reg[7]_11 ;
  output \gpr1.dout_i_reg[7]_12 ;
  output \current_word_1_reg[4] ;
  output s_axi_rlast;
  output [255:0]s_axi_rdata;
  output \gpr1.dout_i_reg[7]_13 ;
  output \gpr1.dout_i_reg[7]_14 ;
  output \gpr1.dout_i_reg[7]_15 ;
  output [0:0]E;
  output m_axi_arvalid;
  output \gpr1.dout_i_reg[7]_16 ;
  output \gpr1.dout_i_reg[7]_17 ;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  output [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  output [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  output [0:0]first_mi_word_reg;
  output s_axi_rvalid;
  output \cmd_depth_reg[2] ;
  output m_axi_rready;
  output [1:0]s_axi_rresp;
  output [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  output [3:0]\current_word_1_reg[3] ;
  output \next_mi_addr_reg[8]_0 ;
  output \gpr1.dout_i_reg[7]_18 ;
  output \gpr1.dout_i_reg[7]_19 ;
  output \gpr1.dout_i_reg[7]_20 ;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output \queue_id_reg[2] ;
  output \queue_id_reg[1] ;
  output \queue_id_reg[0] ;
  output cmd_empty_reg;
  output cmd_push_block_reg;
  input CLK;
  input [0:0]SR;
  input [16:0]access_fit_mi_side_q_reg;
  input access_is_incr_q_reg;
  input s_axi_arvalid;
  input S_AXI_AREADY_I_reg_0;
  input aresetn;
  input [5:0]Q;
  input \goreg_dm.dout_i_reg[10] ;
  input \cmd_depth_reg[1] ;
  input [0:0]CO;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input fix_need_to_split_q;
  input [7:0]\wrap_rest_len_reg[7] ;
  input access_is_fix_q;
  input access_is_incr_q;
  input wrap_need_to_split_q;
  input split_ongoing;
  input access_is_wrap_q;
  input [7:0]\pushed_commands_reg[7]_0 ;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[4]_0 ;
  input \current_word_1_reg[3]_0 ;
  input \current_word_1_reg[0] ;
  input m_axi_rlast;
  input first_word;
  input [2:0]\current_word_1_reg[3]_1 ;
  input command_ongoing_reg_0;
  input cmd_push_block;
  input cmd_empty;
  input m_axi_arready;
  input [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  input [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  input [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input [2:0]s_axi_rid;
  input [2:0]\S_AXI_AID_Q_reg[2] ;
  input [1:0]\wrap_unaligned_len_q_reg[1] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input incr_need_to_split_q;
  input m_axi_rvalid;
  input s_axi_rready;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[9] ;
  input [1:0]m_axi_rresp;
  input [1:0]\S_AXI_RRESP_ACC_reg[1]_0 ;
  input \S_AXI_RRESP_ACC_reg[1]_1 ;
  input [4:0]\S_AXI_AADDR_Q_reg[4] ;
  input si_full_size_q;
  input [4:0]\split_addr_mask_q_reg[4] ;
  input [4:0]\size_mask_q_reg[4] ;
  input legal_wrap_len_q;
  input \areset_d_reg[1] ;
  input S_AXI_AREADY_I_reg_1;
  input S_AXI_AREADY_I_reg_2;
  input \cmd_depth_reg[4] ;

  wire CLK;
  wire [0:0]CO;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [4:0]\S_AXI_AADDR_Q_reg[4] ;
  wire [2:0]\S_AXI_AID_Q_reg[2] ;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_i_10__0_n_0;
  wire S_AXI_AREADY_I_i_3__0_n_0;
  wire S_AXI_AREADY_I_i_4__0_n_0;
  wire S_AXI_AREADY_I_i_6__0_n_0;
  wire S_AXI_AREADY_I_i_8__0_n_0;
  wire S_AXI_AREADY_I_i_9__0_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire S_AXI_AREADY_I_reg_1;
  wire S_AXI_AREADY_I_reg_2;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1]_0 ;
  wire \S_AXI_RRESP_ACC_reg[1]_1 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire \WORD_LANE[4].S_AXI_RDATA_II[159]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  wire [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  wire \WORD_LANE[5].S_AXI_RDATA_II[191]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  wire [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  wire \WORD_LANE[6].S_AXI_RDATA_II[223]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  wire [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  wire \WORD_LANE[7].S_AXI_RDATA_II[255]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  wire [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  wire [16:0]access_fit_mi_side_q_reg;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_incr_q_reg;
  wire access_is_wrap_q;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire \cmd_depth[2]_i_2_n_0 ;
  wire \cmd_depth[5]_i_10_n_0 ;
  wire \cmd_depth[5]_i_3_n_0 ;
  wire \cmd_depth[5]_i_4_n_0 ;
  wire \cmd_depth[5]_i_5_n_0 ;
  wire \cmd_depth[5]_i_6_n_0 ;
  wire \cmd_depth[5]_i_7_n_0 ;
  wire \cmd_depth[5]_i_8_n_0 ;
  wire \cmd_depth[5]_i_9_n_0 ;
  wire \cmd_depth_reg[1] ;
  wire \cmd_depth_reg[2] ;
  wire \cmd_depth_reg[4] ;
  wire cmd_empty;
  wire cmd_empty_reg;
  wire cmd_push;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire [2:0]cmd_size_ii;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire \current_word_1[2]_i_2_n_0 ;
  wire \current_word_1[3]_i_2_n_0 ;
  wire \current_word_1[4]_i_2__0_n_0 ;
  wire \current_word_1[4]_i_4_n_0 ;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire [3:0]\current_word_1_reg[3] ;
  wire \current_word_1_reg[3]_0 ;
  wire [2:0]\current_word_1_reg[3]_1 ;
  wire \current_word_1_reg[4] ;
  wire \current_word_1_reg[4]_0 ;
  wire [3:0]din;
  wire [14:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty;
  wire fifo_gen_inst_i_15__0_n_0;
  wire fifo_gen_inst_i_16__0_n_0;
  wire fifo_gen_inst_i_17__0_n_0;
  wire fifo_gen_inst_i_18__0_n_0;
  wire fifo_gen_inst_i_19__0_n_0;
  wire fifo_gen_inst_i_22_n_0;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire \goreg_dm.dout_i_reg[10] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire \gpr1.dout_i_reg[7] ;
  wire \gpr1.dout_i_reg[7]_0 ;
  wire \gpr1.dout_i_reg[7]_1 ;
  wire \gpr1.dout_i_reg[7]_10 ;
  wire \gpr1.dout_i_reg[7]_11 ;
  wire \gpr1.dout_i_reg[7]_12 ;
  wire \gpr1.dout_i_reg[7]_13 ;
  wire \gpr1.dout_i_reg[7]_14 ;
  wire \gpr1.dout_i_reg[7]_15 ;
  wire \gpr1.dout_i_reg[7]_16 ;
  wire \gpr1.dout_i_reg[7]_17 ;
  wire \gpr1.dout_i_reg[7]_18 ;
  wire \gpr1.dout_i_reg[7]_19 ;
  wire \gpr1.dout_i_reg[7]_2 ;
  wire \gpr1.dout_i_reg[7]_20 ;
  wire \gpr1.dout_i_reg[7]_3 ;
  wire \gpr1.dout_i_reg[7]_4 ;
  wire \gpr1.dout_i_reg[7]_5 ;
  wire \gpr1.dout_i_reg[7]_6 ;
  wire \gpr1.dout_i_reg[7]_7 ;
  wire \gpr1.dout_i_reg[7]_8 ;
  wire \gpr1.dout_i_reg[7]_9 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire \m_axi_arlen[0]_INST_0_i_21_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_22_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_23_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_24_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_25_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_26_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_27_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_28_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_29_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_10_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_11_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_12_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_23_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_25_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_26_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_27_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_28_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_29_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_8_n_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_arvalid_INST_0_i_1_n_0;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [6:0]p_0_in1_in;
  wire [31:19]p_0_out;
  wire \pushed_commands_reg[7] ;
  wire [7:0]\pushed_commands_reg[7]_0 ;
  wire \queue_id_reg[0] ;
  wire \queue_id_reg[1] ;
  wire \queue_id_reg[2] ;
  wire [4:0]rd_cmd_mask;
  wire [4:0]rd_cmd_offset;
  wire rd_cmd_ready;
  wire [2:0]rd_cmd_size;
  wire rd_cmd_split;
  wire s_axi_arvalid;
  wire [255:0]s_axi_rdata;
  wire \s_axi_rdata[127]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_4_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_7_n_0 ;
  wire \s_axi_rdata[255]_INST_0_i_9_n_0 ;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire \s_axi_rresp[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rresp[1]_INST_0_i_2_n_0 ;
  wire \s_axi_rresp[1]_INST_0_i_3_n_0 ;
  wire s_axi_rvalid;
  wire s_axi_rvalid_INST_0_i_10_n_0;
  wire s_axi_rvalid_INST_0_i_1_n_0;
  wire s_axi_rvalid_INST_0_i_2_n_0;
  wire s_axi_rvalid_INST_0_i_3_n_0;
  wire s_axi_rvalid_INST_0_i_4_n_0;
  wire s_axi_rvalid_INST_0_i_6_n_0;
  wire s_axi_rvalid_INST_0_i_7_n_0;
  wire s_axi_rvalid_INST_0_i_8_n_0;
  wire s_axi_rvalid_INST_0_i_9_n_0;
  wire si_full_size_q;
  wire [4:0]\size_mask_q_reg[4] ;
  wire [4:0]\split_addr_mask_q_reg[4] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [1:0]\wrap_unaligned_len_q_reg[1] ;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_10__0
       (.I0(\pushed_commands_reg[7]_0 [0]),
        .I1(\S_AXI_ALEN_Q_reg[7] [0]),
        .I2(\pushed_commands_reg[7]_0 [2]),
        .I3(\S_AXI_ALEN_Q_reg[7] [2]),
        .O(S_AXI_AREADY_I_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hEEEEFEFFEEEE0E00)) 
    S_AXI_AREADY_I_i_1__0
       (.I0(\areset_d_reg[1] ),
        .I1(S_AXI_AREADY_I_i_3__0_n_0),
        .I2(S_AXI_AREADY_I_i_4__0_n_0),
        .I3(\pushed_commands_reg[7] ),
        .I4(S_AXI_AREADY_I_reg_1),
        .I5(S_AXI_AREADY_I_reg_0),
        .O(S_AXI_AREADY_I_reg));
  LUT6 #(
    .INIT(64'h00D0D0D000000000)) 
    S_AXI_AREADY_I_i_3__0
       (.I0(S_AXI_AREADY_I_i_6__0_n_0),
        .I1(access_is_incr_q_reg),
        .I2(\pushed_commands_reg[7] ),
        .I3(s_axi_arvalid),
        .I4(S_AXI_AREADY_I_reg_0),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h000008AA08AA08AA)) 
    S_AXI_AREADY_I_i_4__0
       (.I0(S_AXI_AREADY_I_i_6__0_n_0),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .I4(CO),
        .I5(access_is_incr_q),
        .O(S_AXI_AREADY_I_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h5D)) 
    S_AXI_AREADY_I_i_6__0
       (.I0(access_is_fix_q),
        .I1(fix_need_to_split_q),
        .I2(S_AXI_AREADY_I_i_8__0_n_0),
        .O(S_AXI_AREADY_I_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h8008)) 
    S_AXI_AREADY_I_i_8__0
       (.I0(S_AXI_AREADY_I_i_9__0_n_0),
        .I1(S_AXI_AREADY_I_i_10__0_n_0),
        .I2(\pushed_commands_reg[7]_0 [3]),
        .I3(\S_AXI_ALEN_Q_reg[7] [3]),
        .O(S_AXI_AREADY_I_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h0001000000000001)) 
    S_AXI_AREADY_I_i_9__0
       (.I0(\pushed_commands_reg[7]_0 [6]),
        .I1(\pushed_commands_reg[7]_0 [7]),
        .I2(\pushed_commands_reg[7]_0 [4]),
        .I3(\pushed_commands_reg[7]_0 [5]),
        .I4(\pushed_commands_reg[7]_0 [1]),
        .I5(\S_AXI_ALEN_Q_reg[7] [1]),
        .O(S_AXI_AREADY_I_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RRESP_ACC[0]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(\s_axi_rresp[1]_INST_0_i_1_n_0 ),
        .I2(\S_AXI_RRESP_ACC_reg[1]_0 [0]),
        .O(\S_AXI_RRESP_ACC_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \S_AXI_RRESP_ACC[1]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(\s_axi_rresp[1]_INST_0_i_1_n_0 ),
        .I2(\S_AXI_RRESP_ACC_reg[1]_0 [1]),
        .O(\S_AXI_RRESP_ACC_reg[1] [1]));
  LUT6 #(
    .INIT(64'h5D555D5555555D55)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_1 
       (.I0(aresetn),
        .I1(m_axi_rvalid),
        .I2(empty),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_INST_0_i_1_n_0),
        .I5(s_axi_rvalid_INST_0_i_2_n_0),
        .O(\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3 
       (.I0(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[1].S_AXI_RDATA_II[63]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ),
        .O(\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2 
       (.I0(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .O(\WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[2].S_AXI_RDATA_II[95]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ),
        .O(\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2 
       (.I0(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .O(\WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[3].S_AXI_RDATA_II[127]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ),
        .O(\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2 
       (.I0(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .O(\WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[4].S_AXI_RDATA_II[159]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II[159]_i_2_n_0 ),
        .O(\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \WORD_LANE[4].S_AXI_RDATA_II[159]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .O(\WORD_LANE[4].S_AXI_RDATA_II[159]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[5].S_AXI_RDATA_II[191]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II[191]_i_2_n_0 ),
        .O(\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \WORD_LANE[5].S_AXI_RDATA_II[191]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .O(\WORD_LANE[5].S_AXI_RDATA_II[191]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[6].S_AXI_RDATA_II[223]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II[223]_i_2_n_0 ),
        .O(\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \WORD_LANE[6].S_AXI_RDATA_II[223]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .O(\WORD_LANE[6].S_AXI_RDATA_II[223]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \WORD_LANE[7].S_AXI_RDATA_II[255]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(empty),
        .I4(m_axi_rvalid),
        .I5(\WORD_LANE[7].S_AXI_RDATA_II[255]_i_2_n_0 ),
        .O(\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \WORD_LANE[7].S_AXI_RDATA_II[255]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .O(\WORD_LANE[7].S_AXI_RDATA_II[255]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \cmd_depth[1]_i_1 
       (.I0(Q[0]),
        .I1(cmd_push),
        .I2(rd_cmd_ready),
        .I3(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h59AAAAAAAAA6AA55)) 
    \cmd_depth[2]_i_1 
       (.I0(Q[2]),
        .I1(\cmd_depth[2]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[10] ),
        .I3(Q[0]),
        .I4(cmd_push),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hABABABABAAABABAB)) 
    \cmd_depth[2]_i_2 
       (.I0(s_axi_rvalid_INST_0_i_2_n_0),
        .I1(s_axi_rvalid_INST_0_i_4_n_0),
        .I2(s_axi_rvalid_INST_0_i_3_n_0),
        .I3(\current_word_1_reg[4] ),
        .I4(rd_cmd_size[2]),
        .I5(\s_axi_rresp[1]_INST_0_i_3_n_0 ),
        .O(\cmd_depth[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55DFFF30AA2000CF)) 
    \cmd_depth[3]_i_1 
       (.I0(\cmd_depth[5]_i_4_n_0 ),
        .I1(rd_cmd_ready),
        .I2(cmd_push),
        .I3(\cmd_depth_reg[1] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h6AAAAAA5)) 
    \cmd_depth[4]_i_1 
       (.I0(Q[4]),
        .I1(\cmd_depth[5]_i_4_n_0 ),
        .I2(\cmd_depth[5]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cmd_depth[5]_i_1 
       (.I0(rd_cmd_ready),
        .I1(cmd_push),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \cmd_depth[5]_i_10 
       (.I0(rd_cmd_mask[2]),
        .I1(rd_cmd_size[2]),
        .I2(rd_cmd_size[1]),
        .I3(rd_cmd_size[0]),
        .O(\cmd_depth[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAA9AAAAAAA9)) 
    \cmd_depth[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\cmd_depth[5]_i_3_n_0 ),
        .I5(\cmd_depth[5]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0E0000)) 
    \cmd_depth[5]_i_3 
       (.I0(\cmd_depth[5]_i_5_n_0 ),
        .I1(\cmd_depth[5]_i_6_n_0 ),
        .I2(s_axi_rvalid_INST_0_i_2_n_0),
        .I3(\goreg_dm.dout_i_reg[10] ),
        .I4(cmd_push),
        .I5(\cmd_depth_reg[1] ),
        .O(\cmd_depth[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF5554)) 
    \cmd_depth[5]_i_4 
       (.I0(s_axi_rvalid_INST_0_i_2_n_0),
        .I1(s_axi_rvalid_INST_0_i_4_n_0),
        .I2(s_axi_rvalid_INST_0_i_3_n_0),
        .I3(\cmd_depth[5]_i_5_n_0 ),
        .I4(\goreg_dm.dout_i_reg[10] ),
        .I5(\cmd_depth[5]_i_7_n_0 ),
        .O(\cmd_depth[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0600000)) 
    \cmd_depth[5]_i_5 
       (.I0(\current_word_1_reg[3]_0 ),
        .I1(\current_word_1_reg[4]_0 ),
        .I2(rd_cmd_mask[4]),
        .I3(\cmd_depth[5]_i_8_n_0 ),
        .I4(rd_cmd_size[2]),
        .I5(\s_axi_rresp[1]_INST_0_i_3_n_0 ),
        .O(\cmd_depth[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9090FF90)) 
    \cmd_depth[5]_i_6 
       (.I0(\current_word_1[3]_i_2_n_0 ),
        .I1(\current_word_1_reg[3]_0 ),
        .I2(\cmd_depth[5]_i_9_n_0 ),
        .I3(\cmd_depth[5]_i_10_n_0 ),
        .I4(s_axi_rvalid_INST_0_i_7_n_0),
        .I5(s_axi_rvalid_INST_0_i_6_n_0),
        .O(\cmd_depth[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cmd_depth[5]_i_7 
       (.I0(Q[1]),
        .I1(cmd_push),
        .I2(Q[0]),
        .O(\cmd_depth[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFFCFFFD)) 
    \cmd_depth[5]_i_8 
       (.I0(\current_word_1_reg[0] ),
        .I1(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(cmd_size_ii[1]),
        .O(\cmd_depth[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cmd_depth[5]_i_9 
       (.I0(rd_cmd_mask[3]),
        .I1(rd_cmd_size[2]),
        .O(\cmd_depth[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCB08)) 
    cmd_empty_i_1
       (.I0(\cmd_depth_reg[4] ),
        .I1(rd_cmd_ready),
        .I2(cmd_push),
        .I3(cmd_empty),
        .O(cmd_empty_reg));
  LUT5 #(
    .INIT(32'h0000BA00)) 
    cmd_push_block_i_1
       (.I0(cmd_push_block),
        .I1(m_axi_arready),
        .I2(cmd_push),
        .I3(aresetn),
        .I4(\pushed_commands_reg[7] ),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'hFAFAEAFA40404040)) 
    command_ongoing_i_1__0
       (.I0(\areset_d_reg[1] ),
        .I1(S_AXI_AREADY_I_reg_2),
        .I2(aresetn),
        .I3(\pushed_commands_reg[7] ),
        .I4(S_AXI_AREADY_I_i_4__0_n_0),
        .I5(command_ongoing_reg_0),
        .O(command_ongoing_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \current_word_1[0]_i_1 
       (.I0(rd_cmd_mask[0]),
        .I1(\current_word_1_reg[0] ),
        .I2(cmd_size_ii[2]),
        .I3(cmd_size_ii[1]),
        .I4(cmd_size_ii[0]),
        .O(\current_word_1_reg[3] [0]));
  LUT6 #(
    .INIT(64'h000A0008AAA0AAA2)) 
    \current_word_1[1]_i_1 
       (.I0(rd_cmd_mask[1]),
        .I1(\current_word_1_reg[0] ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .O(\current_word_1_reg[3] [1]));
  LUT6 #(
    .INIT(64'h0008AAA2AAA20008)) 
    \current_word_1[2]_i_1 
       (.I0(rd_cmd_mask[2]),
        .I1(cmd_size_ii[1]),
        .I2(cmd_size_ii[0]),
        .I3(cmd_size_ii[2]),
        .I4(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I5(\current_word_1[2]_i_2_n_0 ),
        .O(\current_word_1_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFAFFFB)) 
    \current_word_1[2]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(cmd_size_ii[0]),
        .I2(cmd_size_ii[2]),
        .I3(cmd_size_ii[1]),
        .I4(\current_word_1_reg[0] ),
        .O(\current_word_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888A88802220222A)) 
    \current_word_1[3]_i_1 
       (.I0(rd_cmd_mask[3]),
        .I1(dout[11]),
        .I2(first_word),
        .I3(dout[14]),
        .I4(\current_word_1_reg[3]_1 [2]),
        .I5(\current_word_1[3]_i_2_n_0 ),
        .O(\current_word_1_reg[3] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFF0FFFAFFFB)) 
    \current_word_1[3]_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(\current_word_1_reg[0] ),
        .I2(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(cmd_size_ii[1]),
        .O(\current_word_1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0B00F400FF000000)) 
    \current_word_1[4]_i_1__0 
       (.I0(\current_word_1[4]_i_2__0_n_0 ),
        .I1(\current_word_1_reg[1] ),
        .I2(\current_word_1[4]_i_4_n_0 ),
        .I3(rd_cmd_mask[4]),
        .I4(\current_word_1_reg[4]_0 ),
        .I5(\current_word_1_reg[3]_0 ),
        .O(\current_word_1_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFCFD)) 
    \current_word_1[4]_i_2__0 
       (.I0(\current_word_1_reg[0] ),
        .I1(cmd_size_ii[1]),
        .I2(cmd_size_ii[2]),
        .I3(cmd_size_ii[0]),
        .O(\current_word_1[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \current_word_1[4]_i_4 
       (.I0(cmd_size_ii[1]),
        .I1(cmd_size_ii[0]),
        .I2(cmd_size_ii[2]),
        .I3(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .O(\current_word_1[4]_i_4_n_0 ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* DONT_TOUCH *) 
  ntps_top_auto_ds_0_fifo_generator_v12_0 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({p_0_out[31],din[3],access_fit_mi_side_q_reg[16],p_0_out[28:19],access_fit_mi_side_q_reg[15:11],din[2:0],access_fit_mi_side_q_reg[10:0]}),
        .dout({dout[14],rd_cmd_split,dout[13:8],rd_cmd_offset,rd_cmd_mask,cmd_size_ii,dout[7:0],rd_cmd_size}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_cmd_ready),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_10__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [2]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [2]),
        .I5(access_fit_mi_side_q_reg[13]),
        .O(p_0_out[21]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_11__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [1]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [1]),
        .I5(access_fit_mi_side_q_reg[12]),
        .O(p_0_out[20]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_12__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [0]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [0]),
        .I5(access_fit_mi_side_q_reg[11]),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000E00)) 
    fifo_gen_inst_i_13__0
       (.I0(cmd_empty),
        .I1(m_axi_arvalid_INST_0_i_1_n_0),
        .I2(full),
        .I3(command_ongoing_reg_0),
        .I4(cmd_push_block),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'h00000000FFFF000B)) 
    fifo_gen_inst_i_14__0
       (.I0(fifo_gen_inst_i_22_n_0),
        .I1(\current_word_1_reg[4] ),
        .I2(s_axi_rvalid_INST_0_i_3_n_0),
        .I3(s_axi_rvalid_INST_0_i_4_n_0),
        .I4(s_axi_rvalid_INST_0_i_2_n_0),
        .I5(\goreg_dm.dout_i_reg[10] ),
        .O(rd_cmd_ready));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_15__0
       (.I0(\split_addr_mask_q_reg[4] [4]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [4]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_15__0_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_16__0
       (.I0(\split_addr_mask_q_reg[4] [3]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [3]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_17__0
       (.I0(\split_addr_mask_q_reg[4] [2]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [2]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_17__0_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_18__0
       (.I0(\split_addr_mask_q_reg[4] [1]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [1]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_18__0_n_0));
  LUT6 #(
    .INIT(64'h0000FF002F00FF00)) 
    fifo_gen_inst_i_19__0
       (.I0(\split_addr_mask_q_reg[4] [0]),
        .I1(si_full_size_q),
        .I2(access_is_incr_q),
        .I3(\S_AXI_AADDR_Q_reg[4] [0]),
        .I4(split_ongoing),
        .I5(access_is_wrap_q),
        .O(fifo_gen_inst_i_19__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1__0
       (.I0(access_is_fix_q),
        .I1(access_fit_mi_side_q_reg[16]),
        .O(p_0_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_20__0
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .O(\next_mi_addr_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_21__0
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(\next_mi_addr_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    fifo_gen_inst_i_22
       (.I0(rd_cmd_size[1]),
        .I1(rd_cmd_size[0]),
        .I2(rd_cmd_size[2]),
        .O(fifo_gen_inst_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    fifo_gen_inst_i_24
       (.I0(empty),
        .I1(m_axi_rvalid),
        .O(\cmd_depth_reg[2] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    fifo_gen_inst_i_2__0
       (.I0(S_AXI_AREADY_I_i_4__0_n_0),
        .I1(fix_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(wrap_need_to_split_q),
        .O(din[3]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_3__0
       (.I0(fifo_gen_inst_i_15__0_n_0),
        .I1(\size_mask_q_reg[4] [4]),
        .I2(access_fit_mi_side_q_reg[15]),
        .O(p_0_out[28]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_4__0
       (.I0(fifo_gen_inst_i_16__0_n_0),
        .I1(\size_mask_q_reg[4] [3]),
        .I2(access_fit_mi_side_q_reg[14]),
        .O(p_0_out[27]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_5__0
       (.I0(fifo_gen_inst_i_17__0_n_0),
        .I1(\size_mask_q_reg[4] [2]),
        .I2(access_fit_mi_side_q_reg[13]),
        .O(p_0_out[26]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_6__0
       (.I0(fifo_gen_inst_i_18__0_n_0),
        .I1(\size_mask_q_reg[4] [1]),
        .I2(access_fit_mi_side_q_reg[12]),
        .O(p_0_out[25]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_7__0
       (.I0(fifo_gen_inst_i_19__0_n_0),
        .I1(\size_mask_q_reg[4] [0]),
        .I2(access_fit_mi_side_q_reg[11]),
        .O(p_0_out[24]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_8__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [4]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [4]),
        .I5(access_fit_mi_side_q_reg[15]),
        .O(p_0_out[23]));
  LUT6 #(
    .INIT(64'h0000000004440404)) 
    fifo_gen_inst_i_9__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(\S_AXI_AADDR_Q_reg[4] [3]),
        .I2(\next_mi_addr_reg[8]_0 ),
        .I3(si_full_size_q),
        .I4(\split_addr_mask_q_reg[4] [3]),
        .I5(access_fit_mi_side_q_reg[14]),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h22220020)) 
    first_mi_word_i_1__0
       (.I0(m_axi_rvalid),
        .I1(empty),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .I4(s_axi_rready),
        .O(first_mi_word_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_arlen[0]_INST_0_i_1 
       (.I0(\gpr1.dout_i_reg[7]_7 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_8 ),
        .O(p_0_in1_in[3]));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[0]_INST_0_i_10 
       (.I0(\S_AXI_ALEN_Q_reg[7] [3]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[0]_INST_0_i_21_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [3]),
        .O(\gpr1.dout_i_reg[7]_8 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[0]_INST_0_i_11 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [2]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[0]_INST_0_i_22_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [2]),
        .O(\gpr1.dout_i_reg[7]_5 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[0]_INST_0_i_12 
       (.I0(\S_AXI_ALEN_Q_reg[7] [2]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[0]_INST_0_i_22_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [2]),
        .O(\gpr1.dout_i_reg[7]_6 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \m_axi_arlen[0]_INST_0_i_13 
       (.I0(\downsized_len_q_reg[7] [1]),
        .I1(\m_axi_arlen[0]_INST_0_i_23_n_0 ),
        .I2(\fix_len_q_reg[4] [1]),
        .I3(fix_need_to_split_q),
        .I4(\wrap_rest_len_reg[7] [1]),
        .I5(\next_mi_addr_reg[8] ),
        .O(\gpr1.dout_i_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \m_axi_arlen[0]_INST_0_i_14 
       (.I0(\downsized_len_q_reg[7] [1]),
        .I1(\m_axi_arlen[0]_INST_0_i_24_n_0 ),
        .I2(\fix_len_q_reg[4] [1]),
        .I3(fix_need_to_split_q),
        .I4(\wrap_rest_len_reg[7] [1]),
        .I5(\next_mi_addr_reg[8] ),
        .O(\gpr1.dout_i_reg[7]_2 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \m_axi_arlen[0]_INST_0_i_15 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\m_axi_arlen[0]_INST_0_i_25_n_0 ),
        .I2(\fix_len_q_reg[4] [0]),
        .I3(fix_need_to_split_q),
        .I4(\wrap_rest_len_reg[7] [0]),
        .I5(\next_mi_addr_reg[8] ),
        .O(\gpr1.dout_i_reg[7] ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \m_axi_arlen[0]_INST_0_i_16 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\m_axi_arlen[0]_INST_0_i_26_n_0 ),
        .I2(\fix_len_q_reg[4] [0]),
        .I3(fix_need_to_split_q),
        .I4(\wrap_rest_len_reg[7] [0]),
        .I5(\next_mi_addr_reg[8] ),
        .O(\gpr1.dout_i_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_arlen[0]_INST_0_i_17 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [3]),
        .O(\gpr1.dout_i_reg[7]_19 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_arlen[0]_INST_0_i_18 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [2]),
        .O(\gpr1.dout_i_reg[7]_18 ));
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    \m_axi_arlen[0]_INST_0_i_19 
       (.I0(\wrap_unaligned_len_q_reg[1] [1]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(\m_axi_arlen[0]_INST_0_i_27_n_0 ),
        .I4(\unalignment_addr_q_reg[4] [1]),
        .O(\gpr1.dout_i_reg[7]_17 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_arlen[0]_INST_0_i_2 
       (.I0(\gpr1.dout_i_reg[7]_5 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_6 ),
        .O(p_0_in1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    \m_axi_arlen[0]_INST_0_i_20 
       (.I0(\wrap_unaligned_len_q_reg[1] [0]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(\m_axi_arlen[0]_INST_0_i_27_n_0 ),
        .I4(\unalignment_addr_q_reg[4] [0]),
        .O(\gpr1.dout_i_reg[7]_16 ));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    \m_axi_arlen[0]_INST_0_i_21 
       (.I0(\fix_len_q_reg[4] [3]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [3]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(\m_axi_arlen[0]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    \m_axi_arlen[0]_INST_0_i_22 
       (.I0(\fix_len_q_reg[4] [2]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [2]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(\m_axi_arlen[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_arlen[0]_INST_0_i_23 
       (.I0(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8__0_n_0),
        .I5(\m_axi_arlen[0]_INST_0_i_28_n_0 ),
        .O(\m_axi_arlen[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_arlen[0]_INST_0_i_24 
       (.I0(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8__0_n_0),
        .I5(\m_axi_arlen[0]_INST_0_i_29_n_0 ),
        .O(\m_axi_arlen[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_arlen[0]_INST_0_i_25 
       (.I0(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8__0_n_0),
        .I5(\m_axi_arlen[0]_INST_0_i_28_n_0 ),
        .O(\m_axi_arlen[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAEAEAAAEA)) 
    \m_axi_arlen[0]_INST_0_i_26 
       (.I0(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I1(access_is_fix_q),
        .I2(access_is_incr_q),
        .I3(fix_need_to_split_q),
        .I4(S_AXI_AREADY_I_i_8__0_n_0),
        .I5(\m_axi_arlen[0]_INST_0_i_29_n_0 ),
        .O(\m_axi_arlen[0]_INST_0_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \m_axi_arlen[0]_INST_0_i_27 
       (.I0(access_is_incr_q),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(incr_need_to_split_q),
        .I3(split_ongoing),
        .I4(fix_need_to_split_q),
        .O(\m_axi_arlen[0]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \m_axi_arlen[0]_INST_0_i_28 
       (.I0(access_is_incr_q),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_arlen[0]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \m_axi_arlen[0]_INST_0_i_29 
       (.I0(access_is_wrap_q),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(\m_axi_arlen[0]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_arlen[0]_INST_0_i_3 
       (.I0(\gpr1.dout_i_reg[7]_1 ),
        .I1(CO),
        .I2(\S_AXI_ALEN_Q_reg[7] [1]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\gpr1.dout_i_reg[7]_2 ),
        .O(p_0_in1_in[1]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_arlen[0]_INST_0_i_4 
       (.I0(\gpr1.dout_i_reg[7] ),
        .I1(CO),
        .I2(\S_AXI_ALEN_Q_reg[7] [0]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\gpr1.dout_i_reg[7]_0 ),
        .O(p_0_in1_in[0]));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[0]_INST_0_i_9 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [3]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[0]_INST_0_i_21_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [3]),
        .O(\gpr1.dout_i_reg[7]_7 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_arlen[4]_INST_0_i_1 
       (.I0(\m_axi_arlen[4]_INST_0_i_8_n_0 ),
        .I1(CO),
        .I2(\S_AXI_ALEN_Q_reg[7] [6]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\m_axi_arlen[4]_INST_0_i_10_n_0 ),
        .O(p_0_in1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFF4500000045)) 
    \m_axi_arlen[4]_INST_0_i_10 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [6]),
        .I2(\next_mi_addr_reg[8] ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\m_axi_arlen[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBABB00001011)) 
    \m_axi_arlen[4]_INST_0_i_11 
       (.I0(access_is_incr_q),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [5]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\m_axi_arlen[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF4500000045)) 
    \m_axi_arlen[4]_INST_0_i_12 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [5]),
        .I2(\next_mi_addr_reg[8] ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\m_axi_arlen[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[4]_INST_0_i_13 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [4]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[4]_INST_0_i_26_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [4]),
        .O(\gpr1.dout_i_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[4]_INST_0_i_14 
       (.I0(\S_AXI_ALEN_Q_reg[7] [4]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[4]_INST_0_i_26_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [4]),
        .O(\gpr1.dout_i_reg[7]_4 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[4]_INST_0_i_15 
       (.I0(\S_AXI_ALEN_Q_reg[7] [7]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[4]_INST_0_i_27_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [7]),
        .O(\gpr1.dout_i_reg[7]_9 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[4]_INST_0_i_16 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [7]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[4]_INST_0_i_27_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [7]),
        .O(\gpr1.dout_i_reg[7]_15 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[4]_INST_0_i_17 
       (.I0(\S_AXI_ALEN_Q_reg[7] [6]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[4]_INST_0_i_28_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\gpr1.dout_i_reg[7]_11 ));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[4]_INST_0_i_18 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [6]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[4]_INST_0_i_28_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\gpr1.dout_i_reg[7]_13 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8888888B8)) 
    \m_axi_arlen[4]_INST_0_i_19 
       (.I0(\S_AXI_ALEN_Q_reg[7] [5]),
        .I1(access_fit_mi_side_q_reg[16]),
        .I2(\m_axi_arlen[4]_INST_0_i_29_n_0 ),
        .I3(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_25_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\gpr1.dout_i_reg[7]_10 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \m_axi_arlen[4]_INST_0_i_2 
       (.I0(\m_axi_arlen[4]_INST_0_i_11_n_0 ),
        .I1(CO),
        .I2(\S_AXI_ALEN_Q_reg[7] [5]),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(\m_axi_arlen[4]_INST_0_i_12_n_0 ),
        .O(p_0_in1_in[5]));
  LUT6 #(
    .INIT(64'hCFCFCFCAC0C0C5C0)) 
    \m_axi_arlen[4]_INST_0_i_20 
       (.I0(access_is_incr_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [5]),
        .I2(access_fit_mi_side_q_reg[16]),
        .I3(\m_axi_arlen[4]_INST_0_i_29_n_0 ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [5]),
        .O(\gpr1.dout_i_reg[7]_14 ));
  LUT6 #(
    .INIT(64'h45404545FFFFFFFF)) 
    \m_axi_arlen[4]_INST_0_i_21 
       (.I0(fix_need_to_split_q),
        .I1(split_ongoing),
        .I2(incr_need_to_split_q),
        .I3(access_fit_mi_side_q_reg[16]),
        .I4(access_is_incr_q),
        .I5(\unalignment_addr_q_reg[4] [4]),
        .O(\gpr1.dout_i_reg[7]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arlen[4]_INST_0_i_22 
       (.I0(wrap_need_to_split_q),
        .I1(split_ongoing),
        .O(\gpr1.dout_i_reg[7]_12 ));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \m_axi_arlen[4]_INST_0_i_23 
       (.I0(incr_need_to_split_q),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(\m_axi_arlen[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAEFF00000C0C0000)) 
    \m_axi_arlen[4]_INST_0_i_25 
       (.I0(S_AXI_AREADY_I_i_8__0_n_0),
        .I1(access_is_wrap_q),
        .I2(\gpr1.dout_i_reg[7]_12 ),
        .I3(fix_need_to_split_q),
        .I4(access_is_incr_q),
        .I5(access_is_fix_q),
        .O(\m_axi_arlen[4]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    \m_axi_arlen[4]_INST_0_i_26 
       (.I0(\fix_len_q_reg[4] [4]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [4]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(\m_axi_arlen[4]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_arlen[4]_INST_0_i_27 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [7]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_arlen[4]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_arlen[4]_INST_0_i_28 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [6]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_arlen[4]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \m_axi_arlen[4]_INST_0_i_29 
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [5]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(\m_axi_arlen[4]_INST_0_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_arlen[4]_INST_0_i_3 
       (.I0(\gpr1.dout_i_reg[7]_3 ),
        .I1(CO),
        .I2(\gpr1.dout_i_reg[7]_4 ),
        .O(p_0_in1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFBABB00001011)) 
    \m_axi_arlen[4]_INST_0_i_8 
       (.I0(access_is_incr_q),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [6]),
        .I3(\next_mi_addr_reg[8] ),
        .I4(\m_axi_arlen[4]_INST_0_i_23_n_0 ),
        .I5(\downsized_len_q_reg[7] [6]),
        .O(\m_axi_arlen[4]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arsize[0]_INST_0 
       (.I0(access_fit_mi_side_q_reg[16]),
        .I1(access_fit_mi_side_q_reg[0]),
        .O(din[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_arsize[1]_INST_0 
       (.I0(access_fit_mi_side_q_reg[1]),
        .I1(access_fit_mi_side_q_reg[16]),
        .O(din[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arsize[2]_INST_0 
       (.I0(access_fit_mi_side_q_reg[16]),
        .I1(access_fit_mi_side_q_reg[2]),
        .O(din[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8A8A8A88)) 
    m_axi_arvalid_INST_0
       (.I0(command_ongoing_reg_0),
        .I1(cmd_push_block),
        .I2(full),
        .I3(m_axi_arvalid_INST_0_i_1_n_0),
        .I4(cmd_empty),
        .O(m_axi_arvalid));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axi_arvalid_INST_0_i_1
       (.I0(s_axi_rid[1]),
        .I1(\S_AXI_AID_Q_reg[2] [1]),
        .I2(s_axi_rid[2]),
        .I3(\S_AXI_AID_Q_reg[2] [2]),
        .I4(\S_AXI_AID_Q_reg[2] [0]),
        .I5(s_axi_rid[0]),
        .O(m_axi_arvalid_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    m_axi_rready_INST_0
       (.I0(empty),
        .I1(s_axi_rvalid_INST_0_i_1_n_0),
        .I2(s_axi_rvalid_INST_0_i_2_n_0),
        .I3(s_axi_rready),
        .O(m_axi_rready));
  LUT3 #(
    .INIT(8'hB8)) 
    \queue_id[0]_i_1 
       (.I0(\S_AXI_AID_Q_reg[2] [0]),
        .I1(cmd_push),
        .I2(s_axi_rid[0]),
        .O(\queue_id_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \queue_id[1]_i_1 
       (.I0(\S_AXI_AID_Q_reg[2] [1]),
        .I1(cmd_push),
        .I2(s_axi_rid[1]),
        .O(\queue_id_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \queue_id[2]_i_1 
       (.I0(\S_AXI_AID_Q_reg[2] [2]),
        .I1(cmd_push),
        .I2(s_axi_rid[2]),
        .O(\queue_id_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [0]),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[100]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [4]),
        .O(s_axi_rdata[100]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[101]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [5]),
        .O(s_axi_rdata[101]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[102]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [6]),
        .O(s_axi_rdata[102]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[103]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [7]),
        .O(s_axi_rdata[103]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[104]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [8]),
        .O(s_axi_rdata[104]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[105]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [9]),
        .O(s_axi_rdata[105]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[106]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [10]),
        .O(s_axi_rdata[106]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[107]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [11]),
        .O(s_axi_rdata[107]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[108]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [12]),
        .O(s_axi_rdata[108]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[109]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [13]),
        .O(s_axi_rdata[109]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [10]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[110]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [14]),
        .O(s_axi_rdata[110]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[111]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [15]),
        .O(s_axi_rdata[111]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[112]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [16]),
        .O(s_axi_rdata[112]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[113]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [17]),
        .O(s_axi_rdata[113]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[114]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [18]),
        .O(s_axi_rdata[114]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[115]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [19]),
        .O(s_axi_rdata[115]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[116]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [20]),
        .O(s_axi_rdata[116]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[117]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [21]),
        .O(s_axi_rdata[117]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[118]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [22]),
        .O(s_axi_rdata[118]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[119]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [23]),
        .O(s_axi_rdata[119]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [11]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[120]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [24]),
        .O(s_axi_rdata[120]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[121]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [25]),
        .O(s_axi_rdata[121]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[122]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [26]),
        .O(s_axi_rdata[122]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[123]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [27]),
        .O(s_axi_rdata[123]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[124]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [28]),
        .O(s_axi_rdata[124]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[125]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [29]),
        .O(s_axi_rdata[125]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[126]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [30]),
        .O(s_axi_rdata[126]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[127]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [31]),
        .O(s_axi_rdata[127]));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \s_axi_rdata[127]_INST_0_i_1 
       (.I0(\current_word_1_reg[3]_0 ),
        .I1(rd_cmd_offset[3]),
        .I2(\s_axi_rdata[255]_INST_0_i_4_n_0 ),
        .I3(\current_word_1_reg[4]_0 ),
        .I4(rd_cmd_offset[4]),
        .O(\s_axi_rdata[127]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA955595556AAA6)) 
    \s_axi_rdata[127]_INST_0_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_4_n_0 ),
        .I1(\current_word_1_reg[3]_1 [2]),
        .I2(dout[14]),
        .I3(first_word),
        .I4(dout[11]),
        .I5(rd_cmd_offset[3]),
        .O(\s_axi_rdata[127]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD4442BBB2BBBD444)) 
    \s_axi_rdata[127]_INST_0_i_3 
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(rd_cmd_offset[1]),
        .I2(\current_word_1_reg[0] ),
        .I3(rd_cmd_offset[0]),
        .I4(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I5(rd_cmd_offset[2]),
        .O(\s_axi_rdata[127]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[128]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [0]),
        .O(s_axi_rdata[128]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[129]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [1]),
        .O(s_axi_rdata[129]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [12]),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[130]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [2]),
        .O(s_axi_rdata[130]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[131]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [3]),
        .O(s_axi_rdata[131]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[132]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [4]),
        .O(s_axi_rdata[132]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[133]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [5]),
        .O(s_axi_rdata[133]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[134]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [6]),
        .O(s_axi_rdata[134]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[135]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [7]),
        .O(s_axi_rdata[135]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[136]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [8]),
        .O(s_axi_rdata[136]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[137]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [9]),
        .O(s_axi_rdata[137]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[138]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [10]),
        .O(s_axi_rdata[138]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[139]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [11]),
        .O(s_axi_rdata[139]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [13]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[140]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [12]),
        .O(s_axi_rdata[140]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[141]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [13]),
        .O(s_axi_rdata[141]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[142]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [14]),
        .O(s_axi_rdata[142]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[143]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [15]),
        .O(s_axi_rdata[143]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[144]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [16]),
        .O(s_axi_rdata[144]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[145]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [17]),
        .O(s_axi_rdata[145]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[146]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [18]),
        .O(s_axi_rdata[146]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[147]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [19]),
        .O(s_axi_rdata[147]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[148]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [20]),
        .O(s_axi_rdata[148]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[149]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [21]),
        .O(s_axi_rdata[149]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [14]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[150]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [22]),
        .O(s_axi_rdata[150]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[151]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [23]),
        .O(s_axi_rdata[151]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[152]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [24]),
        .O(s_axi_rdata[152]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[153]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [25]),
        .O(s_axi_rdata[153]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[154]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [26]),
        .O(s_axi_rdata[154]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[155]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [27]),
        .O(s_axi_rdata[155]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[156]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [28]),
        .O(s_axi_rdata[156]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[157]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [29]),
        .O(s_axi_rdata[157]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[158]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [30]),
        .O(s_axi_rdata[158]));
  LUT6 #(
    .INIT(64'hFFFF1555EAAA0000)) 
    \s_axi_rdata[159]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 [31]),
        .O(s_axi_rdata[159]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [15]),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[160]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [0]),
        .O(s_axi_rdata[160]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[161]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [1]),
        .O(s_axi_rdata[161]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[162]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [2]),
        .O(s_axi_rdata[162]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[163]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [3]),
        .O(s_axi_rdata[163]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[164]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [4]),
        .O(s_axi_rdata[164]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[165]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [5]),
        .O(s_axi_rdata[165]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[166]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [6]),
        .O(s_axi_rdata[166]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[167]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [7]),
        .O(s_axi_rdata[167]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[168]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [8]),
        .O(s_axi_rdata[168]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[169]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [9]),
        .O(s_axi_rdata[169]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [16]),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[170]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [10]),
        .O(s_axi_rdata[170]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[171]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [11]),
        .O(s_axi_rdata[171]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[172]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [12]),
        .O(s_axi_rdata[172]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[173]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [13]),
        .O(s_axi_rdata[173]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[174]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [14]),
        .O(s_axi_rdata[174]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[175]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [15]),
        .O(s_axi_rdata[175]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[176]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [16]),
        .O(s_axi_rdata[176]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[177]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [17]),
        .O(s_axi_rdata[177]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[178]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [18]),
        .O(s_axi_rdata[178]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[179]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [19]),
        .O(s_axi_rdata[179]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [17]),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[180]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [20]),
        .O(s_axi_rdata[180]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[181]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [21]),
        .O(s_axi_rdata[181]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[182]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [22]),
        .O(s_axi_rdata[182]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[183]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [23]),
        .O(s_axi_rdata[183]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[184]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [24]),
        .O(s_axi_rdata[184]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[185]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [25]),
        .O(s_axi_rdata[185]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[186]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [26]),
        .O(s_axi_rdata[186]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[187]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [27]),
        .O(s_axi_rdata[187]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[188]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [28]),
        .O(s_axi_rdata[188]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[189]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [29]),
        .O(s_axi_rdata[189]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [18]),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[190]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [30]),
        .O(s_axi_rdata[190]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[191]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 [31]),
        .O(s_axi_rdata[191]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[192]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [0]),
        .O(s_axi_rdata[192]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[193]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [1]),
        .O(s_axi_rdata[193]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[194]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [2]),
        .O(s_axi_rdata[194]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[195]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [3]),
        .O(s_axi_rdata[195]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[196]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [4]),
        .O(s_axi_rdata[196]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[197]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [5]),
        .O(s_axi_rdata[197]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[198]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [6]),
        .O(s_axi_rdata[198]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[199]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [7]),
        .O(s_axi_rdata[199]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [19]),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [1]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[200]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [8]),
        .O(s_axi_rdata[200]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[201]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [9]),
        .O(s_axi_rdata[201]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[202]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [10]),
        .O(s_axi_rdata[202]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[203]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [11]),
        .O(s_axi_rdata[203]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[204]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [12]),
        .O(s_axi_rdata[204]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[205]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [13]),
        .O(s_axi_rdata[205]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[206]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [14]),
        .O(s_axi_rdata[206]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[207]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [15]),
        .O(s_axi_rdata[207]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[208]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [16]),
        .O(s_axi_rdata[208]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[209]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [17]),
        .O(s_axi_rdata[209]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [20]),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[210]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [18]),
        .O(s_axi_rdata[210]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[211]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [19]),
        .O(s_axi_rdata[211]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[212]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [20]),
        .O(s_axi_rdata[212]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[213]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [21]),
        .O(s_axi_rdata[213]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[214]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [22]),
        .O(s_axi_rdata[214]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[215]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [23]),
        .O(s_axi_rdata[215]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[216]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [24]),
        .O(s_axi_rdata[216]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[217]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [25]),
        .O(s_axi_rdata[217]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[218]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [26]),
        .O(s_axi_rdata[218]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[219]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [27]),
        .O(s_axi_rdata[219]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [21]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[220]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [28]),
        .O(s_axi_rdata[220]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[221]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [29]),
        .O(s_axi_rdata[221]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[222]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [30]),
        .O(s_axi_rdata[222]));
  LUT6 #(
    .INIT(64'hFFFF4555BAAA0000)) 
    \s_axi_rdata[223]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 [31]),
        .O(s_axi_rdata[223]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[224]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [0]),
        .I5(m_axi_rdata[0]),
        .O(s_axi_rdata[224]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[225]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [1]),
        .I5(m_axi_rdata[1]),
        .O(s_axi_rdata[225]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[226]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [2]),
        .I5(m_axi_rdata[2]),
        .O(s_axi_rdata[226]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[227]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [3]),
        .I5(m_axi_rdata[3]),
        .O(s_axi_rdata[227]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[228]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [4]),
        .I5(m_axi_rdata[4]),
        .O(s_axi_rdata[228]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[229]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [5]),
        .I5(m_axi_rdata[5]),
        .O(s_axi_rdata[229]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [22]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[230]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [6]),
        .I5(m_axi_rdata[6]),
        .O(s_axi_rdata[230]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[231]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [7]),
        .I5(m_axi_rdata[7]),
        .O(s_axi_rdata[231]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[232]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [8]),
        .I5(m_axi_rdata[8]),
        .O(s_axi_rdata[232]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[233]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [9]),
        .I5(m_axi_rdata[9]),
        .O(s_axi_rdata[233]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[234]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [10]),
        .I5(m_axi_rdata[10]),
        .O(s_axi_rdata[234]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[235]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [11]),
        .I5(m_axi_rdata[11]),
        .O(s_axi_rdata[235]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[236]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [12]),
        .I5(m_axi_rdata[12]),
        .O(s_axi_rdata[236]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[237]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [13]),
        .I5(m_axi_rdata[13]),
        .O(s_axi_rdata[237]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[238]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [14]),
        .I5(m_axi_rdata[14]),
        .O(s_axi_rdata[238]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[239]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [15]),
        .I5(m_axi_rdata[15]),
        .O(s_axi_rdata[239]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [23]),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[240]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [16]),
        .I5(m_axi_rdata[16]),
        .O(s_axi_rdata[240]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[241]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [17]),
        .I5(m_axi_rdata[17]),
        .O(s_axi_rdata[241]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[242]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [18]),
        .I5(m_axi_rdata[18]),
        .O(s_axi_rdata[242]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[243]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [19]),
        .I5(m_axi_rdata[19]),
        .O(s_axi_rdata[243]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[244]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [20]),
        .I5(m_axi_rdata[20]),
        .O(s_axi_rdata[244]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[245]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [21]),
        .I5(m_axi_rdata[21]),
        .O(s_axi_rdata[245]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[246]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [22]),
        .I5(m_axi_rdata[22]),
        .O(s_axi_rdata[246]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[247]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [23]),
        .I5(m_axi_rdata[23]),
        .O(s_axi_rdata[247]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[248]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [24]),
        .I5(m_axi_rdata[24]),
        .O(s_axi_rdata[248]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[249]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [25]),
        .I5(m_axi_rdata[25]),
        .O(s_axi_rdata[249]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [24]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[250]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [26]),
        .I5(m_axi_rdata[26]),
        .O(s_axi_rdata[250]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[251]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [27]),
        .I5(m_axi_rdata[27]),
        .O(s_axi_rdata[251]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[252]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [28]),
        .I5(m_axi_rdata[28]),
        .O(s_axi_rdata[252]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[253]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [29]),
        .I5(m_axi_rdata[29]),
        .O(s_axi_rdata[253]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[254]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [30]),
        .I5(m_axi_rdata[30]),
        .O(s_axi_rdata[254]));
  LUT6 #(
    .INIT(64'hFFFFAABA55450000)) 
    \s_axi_rdata[255]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[255]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[255]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[255]_INST_0_i_3_n_0 ),
        .I4(\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 [31]),
        .I5(m_axi_rdata[31]),
        .O(s_axi_rdata[255]));
  LUT6 #(
    .INIT(64'hAAA955595556AAA6)) 
    \s_axi_rdata[255]_INST_0_i_1 
       (.I0(\s_axi_rdata[255]_INST_0_i_4_n_0 ),
        .I1(\current_word_1_reg[3]_1 [2]),
        .I2(dout[14]),
        .I3(first_word),
        .I4(dout[11]),
        .I5(rd_cmd_offset[3]),
        .O(\s_axi_rdata[255]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \s_axi_rdata[255]_INST_0_i_2 
       (.I0(\current_word_1_reg[3]_0 ),
        .I1(rd_cmd_offset[3]),
        .I2(\s_axi_rdata[255]_INST_0_i_4_n_0 ),
        .I3(\current_word_1_reg[4]_0 ),
        .I4(rd_cmd_offset[4]),
        .O(\s_axi_rdata[255]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD4442BBB2BBBD444)) 
    \s_axi_rdata[255]_INST_0_i_3 
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(rd_cmd_offset[1]),
        .I2(\current_word_1_reg[0] ),
        .I3(rd_cmd_offset[0]),
        .I4(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I5(rd_cmd_offset[2]),
        .O(\s_axi_rdata[255]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F07FFFF00007F07)) 
    \s_axi_rdata[255]_INST_0_i_4 
       (.I0(rd_cmd_offset[0]),
        .I1(\current_word_1_reg[0] ),
        .I2(rd_cmd_offset[1]),
        .I3(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I4(rd_cmd_offset[2]),
        .I5(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .O(\s_axi_rdata[255]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \s_axi_rdata[255]_INST_0_i_7 
       (.I0(dout[9]),
        .I1(first_word),
        .I2(dout[14]),
        .I3(\current_word_1_reg[3]_1 [0]),
        .O(\s_axi_rdata[255]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \s_axi_rdata[255]_INST_0_i_9 
       (.I0(dout[10]),
        .I1(first_word),
        .I2(dout[14]),
        .I3(\current_word_1_reg[3]_1 [1]),
        .O(\s_axi_rdata[255]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [25]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [26]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [27]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [28]),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [29]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [2]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [30]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [31]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [0]),
        .O(s_axi_rdata[32]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [1]),
        .O(s_axi_rdata[33]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [2]),
        .O(s_axi_rdata[34]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [3]),
        .O(s_axi_rdata[35]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [4]),
        .O(s_axi_rdata[36]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [5]),
        .O(s_axi_rdata[37]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [6]),
        .O(s_axi_rdata[38]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [7]),
        .O(s_axi_rdata[39]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [3]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [8]),
        .O(s_axi_rdata[40]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [9]),
        .O(s_axi_rdata[41]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [10]),
        .O(s_axi_rdata[42]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [11]),
        .O(s_axi_rdata[43]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [12]),
        .O(s_axi_rdata[44]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [13]),
        .O(s_axi_rdata[45]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [14]),
        .O(s_axi_rdata[46]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [15]),
        .O(s_axi_rdata[47]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [16]),
        .O(s_axi_rdata[48]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [17]),
        .O(s_axi_rdata[49]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [4]),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [18]),
        .O(s_axi_rdata[50]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [19]),
        .O(s_axi_rdata[51]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [20]),
        .O(s_axi_rdata[52]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [21]),
        .O(s_axi_rdata[53]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [22]),
        .O(s_axi_rdata[54]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [23]),
        .O(s_axi_rdata[55]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [24]),
        .O(s_axi_rdata[56]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [25]),
        .O(s_axi_rdata[57]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [26]),
        .O(s_axi_rdata[58]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [27]),
        .O(s_axi_rdata[59]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [5]),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [28]),
        .O(s_axi_rdata[60]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [29]),
        .O(s_axi_rdata[61]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [30]),
        .O(s_axi_rdata[62]));
  LUT6 #(
    .INIT(64'hFFFF5545AABA0000)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [31]),
        .O(s_axi_rdata[63]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[64]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [0]),
        .O(s_axi_rdata[64]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[65]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [1]),
        .O(s_axi_rdata[65]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[66]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [2]),
        .O(s_axi_rdata[66]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[67]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [3]),
        .O(s_axi_rdata[67]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[68]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[4]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [4]),
        .O(s_axi_rdata[68]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[69]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[5]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [5]),
        .O(s_axi_rdata[69]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [6]),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[70]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[6]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [6]),
        .O(s_axi_rdata[70]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[71]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [7]),
        .O(s_axi_rdata[71]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[72]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [8]),
        .O(s_axi_rdata[72]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[73]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [9]),
        .O(s_axi_rdata[73]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[74]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[10]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [10]),
        .O(s_axi_rdata[74]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[75]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[11]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [11]),
        .O(s_axi_rdata[75]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[76]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[12]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [12]),
        .O(s_axi_rdata[76]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[77]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[13]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [13]),
        .O(s_axi_rdata[77]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[78]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[14]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [14]),
        .O(s_axi_rdata[78]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[79]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[15]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [15]),
        .O(s_axi_rdata[79]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[7]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [7]),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[80]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[16]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [16]),
        .O(s_axi_rdata[80]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[81]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[17]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [17]),
        .O(s_axi_rdata[81]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[82]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[18]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [18]),
        .O(s_axi_rdata[82]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[83]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[19]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [19]),
        .O(s_axi_rdata[83]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[84]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[20]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [20]),
        .O(s_axi_rdata[84]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[85]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[21]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [21]),
        .O(s_axi_rdata[85]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[86]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[22]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [22]),
        .O(s_axi_rdata[86]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[87]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[23]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [23]),
        .O(s_axi_rdata[87]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[88]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[24]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [24]),
        .O(s_axi_rdata[88]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[89]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[25]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [25]),
        .O(s_axi_rdata[89]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[8]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [8]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[90]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[26]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [26]),
        .O(s_axi_rdata[90]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[91]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[27]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [27]),
        .O(s_axi_rdata[91]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[92]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[28]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [28]),
        .O(s_axi_rdata[92]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[93]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[29]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [29]),
        .O(s_axi_rdata[93]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[94]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[30]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [30]),
        .O(s_axi_rdata[94]));
  LUT6 #(
    .INIT(64'hFFFF5455ABAA0000)) 
    \s_axi_rdata[95]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[31]),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [31]),
        .O(s_axi_rdata[95]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[96]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[0]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [0]),
        .O(s_axi_rdata[96]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[97]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[1]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [1]),
        .O(s_axi_rdata[97]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[98]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[2]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [2]),
        .O(s_axi_rdata[98]));
  LUT6 #(
    .INIT(64'hFFFF5554AAAB0000)) 
    \s_axi_rdata[99]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(m_axi_rdata[3]),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [3]),
        .O(s_axi_rdata[99]));
  LUT6 #(
    .INIT(64'hFFFF5515AAEA0000)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(dout[13]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(m_axi_rdata[9]),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 [9]),
        .O(s_axi_rdata[9]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(rd_cmd_split),
        .O(s_axi_rlast));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(\s_axi_rresp[1]_INST_0_i_1_n_0 ),
        .I2(\S_AXI_RRESP_ACC_reg[1]_0 [0]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(\s_axi_rresp[1]_INST_0_i_1_n_0 ),
        .I2(\S_AXI_RRESP_ACC_reg[1]_0 [1]),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00515555)) 
    \s_axi_rresp[1]_INST_0_i_1 
       (.I0(\s_axi_rresp[1]_INST_0_i_2_n_0 ),
        .I1(\current_word_1_reg[4]_0 ),
        .I2(\s_axi_rresp[1]_INST_0_i_3_n_0 ),
        .I3(\current_word_1_reg[3]_0 ),
        .I4(rd_cmd_size[2]),
        .I5(\S_AXI_RRESP_ACC_reg[1]_1 ),
        .O(\s_axi_rresp[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF077707570)) 
    \s_axi_rresp[1]_INST_0_i_2 
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I2(rd_cmd_size[2]),
        .I3(rd_cmd_size[1]),
        .I4(rd_cmd_size[0]),
        .I5(\current_word_1_reg[0] ),
        .O(\s_axi_rresp[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rresp[1]_INST_0_i_3 
       (.I0(rd_cmd_size[0]),
        .I1(rd_cmd_size[1]),
        .O(\s_axi_rresp[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    s_axi_rvalid_INST_0
       (.I0(empty),
        .I1(m_axi_rvalid),
        .I2(s_axi_rvalid_INST_0_i_1_n_0),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .O(s_axi_rvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE000)) 
    s_axi_rvalid_INST_0_i_1
       (.I0(rd_cmd_size[1]),
        .I1(rd_cmd_size[0]),
        .I2(rd_cmd_size[2]),
        .I3(\current_word_1_reg[4] ),
        .I4(s_axi_rvalid_INST_0_i_3_n_0),
        .I5(s_axi_rvalid_INST_0_i_4_n_0),
        .O(s_axi_rvalid_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    s_axi_rvalid_INST_0_i_10
       (.I0(rd_cmd_mask[0]),
        .I1(rd_cmd_size[1]),
        .I2(rd_cmd_size[0]),
        .I3(rd_cmd_size[2]),
        .O(s_axi_rvalid_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    s_axi_rvalid_INST_0_i_2
       (.I0(dout[7]),
        .I1(first_word),
        .I2(\length_counter_1_reg[7] ),
        .I3(\goreg_dm.dout_i_reg[9] ),
        .I4(dout[13]),
        .I5(dout[14]),
        .O(s_axi_rvalid_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hBABABAAABAAABAAA)) 
    s_axi_rvalid_INST_0_i_3
       (.I0(s_axi_rvalid_INST_0_i_6_n_0),
        .I1(s_axi_rvalid_INST_0_i_7_n_0),
        .I2(rd_cmd_mask[2]),
        .I3(rd_cmd_size[2]),
        .I4(rd_cmd_size[1]),
        .I5(rd_cmd_size[0]),
        .O(s_axi_rvalid_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    s_axi_rvalid_INST_0_i_4
       (.I0(rd_cmd_size[2]),
        .I1(rd_cmd_mask[3]),
        .I2(\current_word_1_reg[3]_0 ),
        .I3(\current_word_1[3]_i_2_n_0 ),
        .O(s_axi_rvalid_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFF8484F48484844)) 
    s_axi_rvalid_INST_0_i_6
       (.I0(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .I1(s_axi_rvalid_INST_0_i_8_n_0),
        .I2(s_axi_rvalid_INST_0_i_9_n_0),
        .I3(cmd_size_ii[0]),
        .I4(\current_word_1_reg[0] ),
        .I5(s_axi_rvalid_INST_0_i_10_n_0),
        .O(s_axi_rvalid_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA5AAAA5AA56)) 
    s_axi_rvalid_INST_0_i_7
       (.I0(\s_axi_rdata[255]_INST_0_i_9_n_0 ),
        .I1(\current_word_1_reg[0] ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(\s_axi_rdata[255]_INST_0_i_7_n_0 ),
        .O(s_axi_rvalid_INST_0_i_7_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    s_axi_rvalid_INST_0_i_8
       (.I0(rd_cmd_mask[1]),
        .I1(rd_cmd_size[1]),
        .I2(rd_cmd_size[2]),
        .O(s_axi_rvalid_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_rvalid_INST_0_i_9
       (.I0(cmd_size_ii[2]),
        .I1(cmd_size_ii[1]),
        .O(s_axi_rvalid_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h8A8A8A8800000000)) 
    split_ongoing_i_1__0
       (.I0(command_ongoing_reg_0),
        .I1(cmd_push_block),
        .I2(full),
        .I3(m_axi_arvalid_INST_0_i_1_n_0),
        .I4(cmd_empty),
        .I5(m_axi_arready),
        .O(\pushed_commands_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_fifo_gen" *) 
module ntps_top_auto_ds_0_axi_data_fifo_v2_1_fifo_gen__parameterized0
   (\S_AXI_BRESP_ACC_reg[0] ,
    full,
    SR,
    D,
    E,
    cmd_b_push_block_reg,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    CLK,
    din,
    Q,
    command_ongoing_reg,
    cmd_b_push_block,
    cmd_push_block,
    cmd_b_empty,
    \queue_id_reg[1] ,
    full_0,
    \repeat_cnt_reg[2] ,
    m_axi_bvalid,
    s_axi_bready,
    fix_need_to_split_q,
    incr_need_to_split_q,
    \num_transactions_q_reg[4] ,
    cmd_b_push_block_reg_0,
    aresetn,
    \S_AXI_ALEN_Q_reg[3] ,
    wrap_need_to_split_q,
    S_AXI_AREADY_I_reg,
    \USE_B_CHANNEL.cmd_b_depth_reg[4] );
  output [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  output full;
  output [0:0]SR;
  output [4:0]D;
  output [0:0]E;
  output cmd_b_push_block_reg;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  input CLK;
  input [0:0]din;
  input [5:0]Q;
  input command_ongoing_reg;
  input cmd_b_push_block;
  input cmd_push_block;
  input cmd_b_empty;
  input \queue_id_reg[1] ;
  input full_0;
  input \repeat_cnt_reg[2] ;
  input m_axi_bvalid;
  input s_axi_bready;
  input fix_need_to_split_q;
  input incr_need_to_split_q;
  input [4:0]\num_transactions_q_reg[4] ;
  input cmd_b_push_block_reg_0;
  input aresetn;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;
  input wrap_need_to_split_q;
  input S_AXI_AREADY_I_reg;
  input \USE_B_CHANNEL.cmd_b_depth_reg[4] ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire S_AXI_AREADY_I_reg;
  wire [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  wire \USE_B_CHANNEL.cmd_b_depth[2]_i_2_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_depth[5]_i_4_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_depth_reg[4] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire aresetn;
  wire cmd_b_empty;
  wire cmd_b_push;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_b_push_block_reg_0;
  wire cmd_push_block;
  wire command_ongoing_reg;
  wire [0:0]din;
  wire empty;
  wire fifo_gen_inst_i_1__1_n_0;
  wire fifo_gen_inst_i_8__1_n_0;
  wire fix_need_to_split_q;
  wire full;
  wire full_0;
  wire incr_need_to_split_q;
  wire m_axi_bvalid;
  wire [4:0]\num_transactions_q_reg[4] ;
  wire [3:0]p_1_out;
  wire \queue_id_reg[1] ;
  wire \repeat_cnt_reg[2] ;
  wire s_axi_bready;
  wire wr_cmd_b_ready;
  wire wrap_need_to_split_q;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \USE_B_CHANNEL.cmd_b_depth[1]_i_1 
       (.I0(cmd_b_push),
        .I1(wr_cmd_b_ready),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0FF00FF00FF00F2D)) 
    \USE_B_CHANNEL.cmd_b_depth[2]_i_1 
       (.I0(cmd_b_push),
        .I1(wr_cmd_b_ready),
        .I2(Q[2]),
        .I3(\USE_B_CHANNEL.cmd_b_depth[2]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \USE_B_CHANNEL.cmd_b_depth[2]_i_2 
       (.I0(Q[0]),
        .I1(wr_cmd_b_ready),
        .I2(Q[1]),
        .I3(cmd_b_push_block),
        .I4(command_ongoing_reg),
        .I5(fifo_gen_inst_i_8__1_n_0),
        .O(\USE_B_CHANNEL.cmd_b_depth[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \USE_B_CHANNEL.cmd_b_depth[3]_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth[5]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hDB24)) 
    \USE_B_CHANNEL.cmd_b_depth[4]_i_1 
       (.I0(Q[2]),
        .I1(\USE_B_CHANNEL.cmd_b_depth[5]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_1 
       (.I0(wr_cmd_b_ready),
        .I1(cmd_b_push),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAA65AAAAAA6)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_2 
       (.I0(Q[5]),
        .I1(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\USE_B_CHANNEL.cmd_b_depth[5]_i_4_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_3 
       (.I0(Q[0]),
        .I1(cmd_b_push),
        .I2(wr_cmd_b_ready),
        .I3(Q[1]),
        .O(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFF05040505)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_4 
       (.I0(Q[0]),
        .I1(wr_cmd_b_ready),
        .I2(Q[1]),
        .I3(cmd_b_push_block_reg_0),
        .I4(fifo_gen_inst_i_8__1_n_0),
        .I5(Q[2]),
        .O(\USE_B_CHANNEL.cmd_b_depth[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hCB08)) 
    \USE_B_CHANNEL.cmd_b_empty_i_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth_reg[4] ),
        .I1(wr_cmd_b_ready),
        .I2(cmd_b_push),
        .I3(cmd_b_empty),
        .O(\USE_B_CHANNEL.cmd_b_empty_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    cmd_b_push_block_i_1
       (.I0(cmd_b_push_block),
        .I1(cmd_b_push),
        .I2(aresetn),
        .I3(S_AXI_AREADY_I_reg),
        .O(cmd_b_push_block_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "9" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "9" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* DONT_TOUCH *) 
  ntps_top_auto_ds_0_fifo_generator_v12_0__parameterized0 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({din,1'b0,1'b0,1'b0,fifo_gen_inst_i_1__1_n_0,p_1_out}),
        .dout(\S_AXI_BRESP_ACC_reg[0] ),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(wr_cmd_b_ready),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_b_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT3 #(
    .INIT(8'h40)) 
    fifo_gen_inst_i_1__1
       (.I0(fix_need_to_split_q),
        .I1(incr_need_to_split_q),
        .I2(\num_transactions_q_reg[4] [4]),
        .O(fifo_gen_inst_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_2__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [3]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[4] [3]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_3__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [2]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[4] [2]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_4__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [1]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[4] [1]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    fifo_gen_inst_i_5__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [0]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[4] [0]),
        .I3(incr_need_to_split_q),
        .I4(wrap_need_to_split_q),
        .O(p_1_out[0]));
  LUT3 #(
    .INIT(8'h08)) 
    fifo_gen_inst_i_6__1
       (.I0(fifo_gen_inst_i_8__1_n_0),
        .I1(command_ongoing_reg),
        .I2(cmd_b_push_block),
        .O(cmd_b_push));
  LUT5 #(
    .INIT(32'h00D00000)) 
    fifo_gen_inst_i_7__1
       (.I0(\S_AXI_BRESP_ACC_reg[0] [8]),
        .I1(\repeat_cnt_reg[2] ),
        .I2(m_axi_bvalid),
        .I3(empty),
        .I4(s_axi_bready),
        .O(wr_cmd_b_ready));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    fifo_gen_inst_i_8__1
       (.I0(cmd_push_block),
        .I1(cmd_b_empty),
        .I2(\queue_id_reg[1] ),
        .I3(full),
        .I4(full_0),
        .O(fifo_gen_inst_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \queue_id[2]_i_1__0 
       (.I0(aresetn),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_a_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_a_downsizer
   (dout,
    SR,
    din,
    \S_AXI_BRESP_ACC_reg[0] ,
    E,
    m_axi_awaddr,
    m_axi_awvalid,
    s_axi_bid,
    m_axi_wvalid,
    s_axi_wready,
    first_word_reg,
    m_axi_awlock,
    m_axi_awburst,
    m_axi_wstrb,
    m_axi_wdata,
    D,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    CLK,
    s_axi_awlock,
    s_axi_awvalid,
    aresetn,
    s_axi_awaddr,
    s_axi_awsize,
    s_axi_awlen,
    \repeat_cnt_reg[2] ,
    m_axi_bvalid,
    s_axi_bready,
    m_axi_awready,
    s_axi_awburst,
    s_axi_wvalid,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_wready,
    s_axi_wstrb,
    s_axi_wdata,
    Q,
    first_mi_word,
    \current_word_1_reg[2] ,
    \current_word_1_reg[3] ,
    \current_word_1_reg[4] ,
    first_word_reg_0,
    \current_word_1_reg[1] ,
    \current_word_1_reg[0] ,
    \goreg_dm.dout_i_reg[18] ,
    \goreg_dm.dout_i_reg[12] ,
    s_axi_awid,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos);
  output [17:0]dout;
  output [0:0]SR;
  output [10:0]din;
  output [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  output [0:0]E;
  output [31:0]m_axi_awaddr;
  output m_axi_awvalid;
  output [2:0]s_axi_bid;
  output m_axi_wvalid;
  output s_axi_wready;
  output [0:0]first_word_reg;
  output [0:0]m_axi_awlock;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  output [3:0]D;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  input CLK;
  input [0:0]s_axi_awlock;
  input s_axi_awvalid;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input \repeat_cnt_reg[2] ;
  input m_axi_bvalid;
  input s_axi_bready;
  input m_axi_awready;
  input [1:0]s_axi_awburst;
  input s_axi_wvalid;
  input \goreg_dm.dout_i_reg[9] ;
  input m_axi_wready;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input [2:0]Q;
  input first_mi_word;
  input \current_word_1_reg[2] ;
  input \current_word_1_reg[3] ;
  input \current_word_1_reg[4] ;
  input first_word_reg_0;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[0] ;
  input [0:0]\goreg_dm.dout_i_reg[18] ;
  input \goreg_dm.dout_i_reg[12] ;
  input [2:0]s_axi_awid;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \S_AXI_AADDR_Q_reg_n_0_[0] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[10] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[11] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[12] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[13] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[14] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[15] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[16] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[17] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[18] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[19] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[1] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[20] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[21] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[22] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[23] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[24] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[25] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[26] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[27] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[28] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[29] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[2] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[30] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[31] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[3] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[4] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[5] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[6] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[7] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[8] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[9] ;
  wire [1:0]S_AXI_ABURST_Q;
  wire [2:0]S_AXI_AID_Q;
  wire \S_AXI_ALEN_Q_reg_n_0_[4] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[5] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[6] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[7] ;
  wire [0:0]S_AXI_ALOCK_Q;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_i_7_n_0;
  wire [2:0]S_AXI_ASIZE_Q;
  wire [8:0]\S_AXI_BRESP_ACC_reg[0] ;
  wire \USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_depth[5]_i_5_n_0 ;
  wire [5:0]\USE_B_CHANNEL.cmd_b_depth_reg__0 ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_11 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_12 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_13 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_14 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_15 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_16 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_17 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_18 ;
  wire access_fit_mi_side_q;
  wire access_is_fix;
  wire access_is_fix_q;
  wire access_is_incr;
  wire access_is_incr_q;
  wire access_is_wrap;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_b_empty;
  wire cmd_b_push_block;
  wire [4:0]cmd_mask_i;
  wire \cmd_mask_q[0]_i_1_n_0 ;
  wire \cmd_mask_q[1]_i_1_n_0 ;
  wire \cmd_mask_q[2]_i_1_n_0 ;
  wire \cmd_mask_q[3]_i_1_n_0 ;
  wire \cmd_mask_q[3]_i_2_n_0 ;
  wire \cmd_mask_q[3]_i_3_n_0 ;
  wire \cmd_mask_q[3]_i_4_n_0 ;
  wire \cmd_mask_q[4]_i_1_n_0 ;
  wire cmd_push_block;
  wire cmd_queue_n_104;
  wire cmd_queue_n_105;
  wire cmd_queue_n_24;
  wire cmd_queue_n_25;
  wire cmd_queue_n_26;
  wire cmd_queue_n_27;
  wire cmd_queue_n_28;
  wire cmd_queue_n_29;
  wire cmd_queue_n_30;
  wire cmd_queue_n_31;
  wire cmd_queue_n_32;
  wire cmd_queue_n_33;
  wire cmd_queue_n_34;
  wire cmd_queue_n_35;
  wire cmd_queue_n_36;
  wire cmd_queue_n_37;
  wire cmd_queue_n_38;
  wire cmd_queue_n_39;
  wire cmd_queue_n_40;
  wire cmd_queue_n_41;
  wire cmd_queue_n_42;
  wire cmd_queue_n_43;
  wire cmd_queue_n_44;
  wire cmd_queue_n_45;
  wire cmd_queue_n_46;
  wire cmd_queue_n_48;
  wire cmd_queue_n_49;
  wire cmd_queue_n_50;
  wire cmd_queue_n_51;
  wire cmd_queue_n_52;
  wire cmd_queue_n_53;
  wire cmd_queue_n_54;
  wire cmd_queue_n_55;
  wire cmd_queue_n_56;
  wire cmd_queue_n_57;
  wire cmd_queue_n_58;
  wire cmd_queue_n_59;
  wire cmd_queue_n_60;
  wire command_ongoing_i_2_n_0;
  wire command_ongoing_reg_n_0;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire \current_word_1_reg[2] ;
  wire \current_word_1_reg[3] ;
  wire \current_word_1_reg[4] ;
  wire data0;
  wire [10:0]din;
  wire [17:0]dout;
  wire [7:0]downsized_len_q;
  wire \downsized_len_q[0]_i_1_n_0 ;
  wire \downsized_len_q[1]_i_1_n_0 ;
  wire \downsized_len_q[2]_i_1_n_0 ;
  wire \downsized_len_q[3]_i_1_n_0 ;
  wire \downsized_len_q[4]_i_1_n_0 ;
  wire \downsized_len_q[4]_i_2_n_0 ;
  wire \downsized_len_q[5]_i_1_n_0 ;
  wire \downsized_len_q[6]_i_1_n_0 ;
  wire \downsized_len_q[7]_i_1_n_0 ;
  wire first_mi_word;
  wire [0:0]first_word_reg;
  wire first_word_reg_0;
  wire [4:0]fix_len_q;
  wire \fix_len_q[0]_i_1_n_0 ;
  wire \fix_len_q[2]_i_1_n_0 ;
  wire \fix_len_q[3]_i_1_n_0 ;
  wire \fix_len_q[4]_i_1_n_0 ;
  wire fix_need_to_split;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[12] ;
  wire [0:0]\goreg_dm.dout_i_reg[18] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire incr_need_to_split;
  wire incr_need_to_split_q;
  wire incr_need_to_split_q_i_2_n_0;
  wire \inst/full ;
  wire \inst/full_0 ;
  wire last_incr_split0;
  wire legal_wrap_len_q;
  wire legal_wrap_len_q_i_1_n_0;
  wire legal_wrap_len_q_i_2_n_0;
  wire legal_wrap_len_q_i_4_n_0;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire \m_axi_awlen[0]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_8_n_0 ;
  wire \m_axi_awlen[0]_INST_0_n_0 ;
  wire \m_axi_awlen[0]_INST_0_n_1 ;
  wire \m_axi_awlen[0]_INST_0_n_2 ;
  wire \m_axi_awlen[0]_INST_0_n_3 ;
  wire \m_axi_awlen[4]_INST_0_i_24_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_24_n_1 ;
  wire \m_axi_awlen[4]_INST_0_i_24_n_2 ;
  wire \m_axi_awlen[4]_INST_0_i_24_n_3 ;
  wire \m_axi_awlen[4]_INST_0_i_30_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_31_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_32_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[4]_INST_0_n_1 ;
  wire \m_axi_awlen[4]_INST_0_n_2 ;
  wire \m_axi_awlen[4]_INST_0_n_3 ;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [14:0]masked_addr;
  wire [31:0]masked_addr_q;
  wire \masked_addr_q[11]_i_1__0_n_0 ;
  wire \masked_addr_q[11]_i_2_n_0 ;
  wire \masked_addr_q[12]_i_2_n_0 ;
  wire \masked_addr_q[13]_i_1_n_0 ;
  wire \masked_addr_q[2]_i_2_n_0 ;
  wire \masked_addr_q[4]_i_2_n_0 ;
  wire \masked_addr_q[5]_i_2_n_0 ;
  wire \masked_addr_q[5]_i_3_n_0 ;
  wire \masked_addr_q[6]_i_2_n_0 ;
  wire \masked_addr_q[7]_i_2_n_0 ;
  wire \masked_addr_q[8]_i_2_n_0 ;
  wire \masked_addr_q[9]_i_2_n_0 ;
  wire [31:2]next_mi_addr;
  wire \next_mi_addr[12]_i_5_n_0 ;
  wire \next_mi_addr_reg[12]_i_1_n_0 ;
  wire \next_mi_addr_reg[12]_i_1_n_1 ;
  wire \next_mi_addr_reg[12]_i_1_n_2 ;
  wire \next_mi_addr_reg[12]_i_1_n_3 ;
  wire \next_mi_addr_reg[12]_i_1_n_4 ;
  wire \next_mi_addr_reg[12]_i_1_n_5 ;
  wire \next_mi_addr_reg[12]_i_1_n_6 ;
  wire \next_mi_addr_reg[12]_i_1_n_7 ;
  wire \next_mi_addr_reg[16]_i_1_n_0 ;
  wire \next_mi_addr_reg[16]_i_1_n_1 ;
  wire \next_mi_addr_reg[16]_i_1_n_2 ;
  wire \next_mi_addr_reg[16]_i_1_n_3 ;
  wire \next_mi_addr_reg[16]_i_1_n_4 ;
  wire \next_mi_addr_reg[16]_i_1_n_5 ;
  wire \next_mi_addr_reg[16]_i_1_n_6 ;
  wire \next_mi_addr_reg[16]_i_1_n_7 ;
  wire \next_mi_addr_reg[20]_i_1_n_0 ;
  wire \next_mi_addr_reg[20]_i_1_n_1 ;
  wire \next_mi_addr_reg[20]_i_1_n_2 ;
  wire \next_mi_addr_reg[20]_i_1_n_3 ;
  wire \next_mi_addr_reg[20]_i_1_n_4 ;
  wire \next_mi_addr_reg[20]_i_1_n_5 ;
  wire \next_mi_addr_reg[20]_i_1_n_6 ;
  wire \next_mi_addr_reg[20]_i_1_n_7 ;
  wire \next_mi_addr_reg[24]_i_1_n_0 ;
  wire \next_mi_addr_reg[24]_i_1_n_1 ;
  wire \next_mi_addr_reg[24]_i_1_n_2 ;
  wire \next_mi_addr_reg[24]_i_1_n_3 ;
  wire \next_mi_addr_reg[24]_i_1_n_4 ;
  wire \next_mi_addr_reg[24]_i_1_n_5 ;
  wire \next_mi_addr_reg[24]_i_1_n_6 ;
  wire \next_mi_addr_reg[24]_i_1_n_7 ;
  wire \next_mi_addr_reg[28]_i_1_n_0 ;
  wire \next_mi_addr_reg[28]_i_1_n_1 ;
  wire \next_mi_addr_reg[28]_i_1_n_2 ;
  wire \next_mi_addr_reg[28]_i_1_n_3 ;
  wire \next_mi_addr_reg[28]_i_1_n_4 ;
  wire \next_mi_addr_reg[28]_i_1_n_5 ;
  wire \next_mi_addr_reg[28]_i_1_n_6 ;
  wire \next_mi_addr_reg[28]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire [3:1]num_transactions;
  wire \num_transactions_q[0]_i_1__0_n_0 ;
  wire \num_transactions_q[0]_i_2_n_0 ;
  wire \num_transactions_q[1]_i_2_n_0 ;
  wire \num_transactions_q[4]_i_1_n_0 ;
  wire \num_transactions_q_reg_n_0_[0] ;
  wire \num_transactions_q_reg_n_0_[1] ;
  wire \num_transactions_q_reg_n_0_[2] ;
  wire \num_transactions_q_reg_n_0_[3] ;
  wire \num_transactions_q_reg_n_0_[4] ;
  wire [7:0]p_0_in;
  wire [3:0]p_0_in_0;
  wire [18:14]p_0_out;
  wire [8:8]p_1_out;
  wire [31:2]pre_mi_addr;
  wire \pushed_commands[7]_i_1_n_0 ;
  wire \pushed_commands[7]_i_3_n_0 ;
  wire [7:0]pushed_commands_reg__0;
  wire pushed_new_cmd;
  wire \repeat_cnt_reg[2] ;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size;
  wire si_full_size_q;
  wire [1:0]size_mask;
  wire [4:0]size_mask_q;
  wire [6:0]split_addr_mask;
  wire \split_addr_mask_q_reg_n_0_[0] ;
  wire \split_addr_mask_q_reg_n_0_[10] ;
  wire \split_addr_mask_q_reg_n_0_[11] ;
  wire \split_addr_mask_q_reg_n_0_[12] ;
  wire \split_addr_mask_q_reg_n_0_[13] ;
  wire \split_addr_mask_q_reg_n_0_[14] ;
  wire \split_addr_mask_q_reg_n_0_[15] ;
  wire \split_addr_mask_q_reg_n_0_[16] ;
  wire \split_addr_mask_q_reg_n_0_[17] ;
  wire \split_addr_mask_q_reg_n_0_[18] ;
  wire \split_addr_mask_q_reg_n_0_[19] ;
  wire \split_addr_mask_q_reg_n_0_[1] ;
  wire \split_addr_mask_q_reg_n_0_[20] ;
  wire \split_addr_mask_q_reg_n_0_[21] ;
  wire \split_addr_mask_q_reg_n_0_[22] ;
  wire \split_addr_mask_q_reg_n_0_[23] ;
  wire \split_addr_mask_q_reg_n_0_[24] ;
  wire \split_addr_mask_q_reg_n_0_[25] ;
  wire \split_addr_mask_q_reg_n_0_[26] ;
  wire \split_addr_mask_q_reg_n_0_[27] ;
  wire \split_addr_mask_q_reg_n_0_[28] ;
  wire \split_addr_mask_q_reg_n_0_[29] ;
  wire \split_addr_mask_q_reg_n_0_[2] ;
  wire \split_addr_mask_q_reg_n_0_[30] ;
  wire \split_addr_mask_q_reg_n_0_[31] ;
  wire \split_addr_mask_q_reg_n_0_[3] ;
  wire \split_addr_mask_q_reg_n_0_[4] ;
  wire \split_addr_mask_q_reg_n_0_[5] ;
  wire \split_addr_mask_q_reg_n_0_[6] ;
  wire \split_addr_mask_q_reg_n_0_[7] ;
  wire \split_addr_mask_q_reg_n_0_[8] ;
  wire \split_addr_mask_q_reg_n_0_[9] ;
  wire split_ongoing;
  wire \unalignment_addr_q[0]_i_1_n_0 ;
  wire \unalignment_addr_q[1]_i_1_n_0 ;
  wire \unalignment_addr_q[2]_i_1_n_0 ;
  wire \unalignment_addr_q[3]_i_1_n_0 ;
  wire \unalignment_addr_q[4]_i_1_n_0 ;
  wire \unalignment_addr_q_reg_n_0_[0] ;
  wire \unalignment_addr_q_reg_n_0_[1] ;
  wire \unalignment_addr_q_reg_n_0_[2] ;
  wire \unalignment_addr_q_reg_n_0_[3] ;
  wire \unalignment_addr_q_reg_n_0_[4] ;
  wire wrap_need_to_split;
  wire wrap_need_to_split_q;
  wire wrap_need_to_split_q_i_2_n_0;
  wire [7:0]wrap_rest_len;
  wire [7:0]wrap_rest_len0;
  wire \wrap_rest_len[1]_i_1_n_0 ;
  wire \wrap_rest_len[7]_i_2_n_0 ;
  wire [7:0]wrap_unaligned_len;
  wire [7:0]wrap_unaligned_len_q;
  wire [3:3]\NLW_m_axi_awlen[4]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axi_awlen[4]_INST_0_i_24_O_UNCONNECTED ;
  wire [3:1]\NLW_m_axi_awlen[4]_INST_0_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axi_awlen[4]_INST_0_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_O_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(S_AXI_ABURST_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(S_AXI_ABURST_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awid[0]),
        .Q(S_AXI_AID_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awid[1]),
        .Q(S_AXI_AID_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awid[2]),
        .Q(S_AXI_AID_Q[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[4]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[5]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[6]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlen[7]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awlock),
        .Q(S_AXI_ALOCK_Q),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_AREADY_I_i_2
       (.I0(aresetn),
        .I1(areset_d[1]),
        .I2(areset_d[0]),
        .O(S_AXI_AREADY_I_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    S_AXI_AREADY_I_i_5
       (.I0(aresetn),
        .I1(E),
        .I2(s_axi_awvalid),
        .I3(areset_d[1]),
        .I4(areset_d[0]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT5 #(
    .INIT(32'hF888F8F8)) 
    S_AXI_AREADY_I_i_7
       (.I0(access_is_incr_q),
        .I1(last_incr_split0),
        .I2(access_is_wrap_q),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(S_AXI_AREADY_I_i_7_n_0));
  FDRE S_AXI_AREADY_I_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_104),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awregion[0]),
        .Q(m_axi_awregion[0]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awregion[1]),
        .Q(m_axi_awregion[1]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awregion[2]),
        .Q(m_axi_awregion[2]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awregion[3]),
        .Q(m_axi_awregion[3]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(S_AXI_ASIZE_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(S_AXI_ASIZE_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(S_AXI_ASIZE_Q[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_B_CHANNEL.cmd_b_depth[0]_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .O(\USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_5 
       (.I0(cmd_b_push_block),
        .I1(command_ongoing_reg_n_0),
        .O(\USE_B_CHANNEL.cmd_b_depth[5]_i_5_n_0 ));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[0] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[1] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_15 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [1]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[2] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_14 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [2]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[3] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_13 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [3]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[4] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_12 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [4]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[5] 
       (.C(CLK),
        .CE(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_11 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \USE_B_CHANNEL.cmd_b_empty_i_i_2 
       (.I0(\USE_B_CHANNEL.cmd_b_depth_reg__0 [4]),
        .I1(\USE_B_CHANNEL.cmd_b_depth_reg__0 [5]),
        .I2(\USE_B_CHANNEL.cmd_b_depth_reg__0 [1]),
        .I3(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .I4(\USE_B_CHANNEL.cmd_b_depth_reg__0 [3]),
        .I5(\USE_B_CHANNEL.cmd_b_depth_reg__0 [2]),
        .O(\USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ));
  FDSE \USE_B_CHANNEL.cmd_b_empty_i_reg 
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_18 ),
        .Q(cmd_b_empty),
        .S(SR));
  ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo__parameterized0 \USE_B_CHANNEL.cmd_b_queue 
       (.CLK(CLK),
        .D({\USE_B_CHANNEL.cmd_b_queue_n_11 ,\USE_B_CHANNEL.cmd_b_queue_n_12 ,\USE_B_CHANNEL.cmd_b_queue_n_13 ,\USE_B_CHANNEL.cmd_b_queue_n_14 ,\USE_B_CHANNEL.cmd_b_queue_n_15 }),
        .E(\USE_B_CHANNEL.cmd_b_queue_n_16 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 ),
        .SR(SR),
        .\S_AXI_ALEN_Q_reg[3] (p_0_in_0),
        .S_AXI_AREADY_I_reg(E),
        .\S_AXI_BRESP_ACC_reg[0] (\S_AXI_BRESP_ACC_reg[0] ),
        .\USE_B_CHANNEL.cmd_b_depth_reg[4] (\USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (\USE_B_CHANNEL.cmd_b_queue_n_18 ),
        .aresetn(aresetn),
        .cmd_b_empty(cmd_b_empty),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(\USE_B_CHANNEL.cmd_b_queue_n_17 ),
        .cmd_b_push_block_reg_0(\USE_B_CHANNEL.cmd_b_depth[5]_i_5_n_0 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing_reg(command_ongoing_reg_n_0),
        .din(p_1_out),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full ),
        .full_0(\inst/full_0 ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .m_axi_bvalid(m_axi_bvalid),
        .\num_transactions_q_reg[4] ({\num_transactions_q_reg_n_0_[4] ,\num_transactions_q_reg_n_0_[3] ,\num_transactions_q_reg_n_0_[2] ,\num_transactions_q_reg_n_0_[1] ,\num_transactions_q_reg_n_0_[0] }),
        .\queue_id_reg[1] (cmd_queue_n_54),
        .\repeat_cnt_reg[2] (\repeat_cnt_reg[2] ),
        .s_axi_bready(s_axi_bready),
        .wrap_need_to_split_q(wrap_need_to_split_q));
  FDRE access_fit_mi_side_q_reg
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[2]),
        .Q(access_fit_mi_side_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h1)) 
    access_is_fix_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_fix));
  FDRE access_is_fix_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_fix),
        .Q(access_is_fix_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_incr));
  FDRE access_is_incr_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_wrap_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(access_is_wrap));
  FDRE access_is_wrap_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_wrap),
        .Q(access_is_wrap_q),
        .R(SR));
  FDRE \areset_d_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE \areset_d_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE cmd_b_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_17 ),
        .Q(cmd_b_push_block),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[0]_i_1 
       (.I0(cmd_mask_i[0]),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(E),
        .I4(p_0_out[14]),
        .O(\cmd_mask_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_mask_q[0]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .O(cmd_mask_i[0]));
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[1]_i_1 
       (.I0(cmd_mask_i[1]),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(E),
        .I4(p_0_out[15]),
        .O(\cmd_mask_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hFFFEFBFA)) 
    \cmd_mask_q[1]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[0]),
        .O(cmd_mask_i[1]));
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[2]_i_1 
       (.I0(cmd_mask_i[2]),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(E),
        .I4(p_0_out[16]),
        .O(\cmd_mask_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFBF9FEFCFAF8)) 
    \cmd_mask_q[2]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[2]),
        .O(cmd_mask_i[2]));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFB00)) 
    \cmd_mask_q[3]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(\cmd_mask_q[3]_i_2_n_0 ),
        .I2(\cmd_mask_q[3]_i_3_n_0 ),
        .I3(E),
        .I4(\cmd_mask_q[3]_i_4_n_0 ),
        .I5(p_0_out[17]),
        .O(\cmd_mask_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cmd_mask_q[3]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(\cmd_mask_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd_mask_q[3]_i_3 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .O(\cmd_mask_q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cmd_mask_q[3]_i_4 
       (.I0(E),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .O(\cmd_mask_q[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[4]_i_1 
       (.I0(cmd_mask_i[4]),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(E),
        .I4(p_0_out[18]),
        .O(\cmd_mask_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'hFFCCFBC8)) 
    \cmd_mask_q[4]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(\masked_addr_q[4]_i_2_n_0 ),
        .I4(s_axi_awsize[0]),
        .O(cmd_mask_i[4]));
  FDRE \cmd_mask_q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[0]_i_1_n_0 ),
        .Q(p_0_out[14]),
        .R(SR));
  FDRE \cmd_mask_q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[1]_i_1_n_0 ),
        .Q(p_0_out[15]),
        .R(SR));
  FDRE \cmd_mask_q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[2]_i_1_n_0 ),
        .Q(p_0_out[16]),
        .R(SR));
  FDRE \cmd_mask_q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[3]_i_1_n_0 ),
        .Q(p_0_out[17]),
        .R(SR));
  FDRE \cmd_mask_q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[4]_i_1_n_0 ),
        .Q(p_0_out[18]),
        .R(SR));
  FDRE cmd_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_46),
        .Q(cmd_push_block),
        .R(1'b0));
  ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo cmd_queue
       (.CLK(CLK),
        .CO(last_incr_split0),
        .D(D),
        .Q({\S_AXI_ALEN_Q_reg_n_0_[7] ,\S_AXI_ALEN_Q_reg_n_0_[6] ,\S_AXI_ALEN_Q_reg_n_0_[5] ,\S_AXI_ALEN_Q_reg_n_0_[4] ,p_0_in_0}),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[4] ({\S_AXI_AADDR_Q_reg_n_0_[4] ,\S_AXI_AADDR_Q_reg_n_0_[3] ,\S_AXI_AADDR_Q_reg_n_0_[2] ,\S_AXI_AADDR_Q_reg_n_0_[1] ,\S_AXI_AADDR_Q_reg_n_0_[0] }),
        .\S_AXI_AID_Q_reg[2] (S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[6] ({din[7:0],S_AXI_ASIZE_Q}),
        .S_AXI_AREADY_I_reg(cmd_queue_n_104),
        .S_AXI_AREADY_I_reg_0(E),
        .S_AXI_AREADY_I_reg_1(S_AXI_AREADY_I_i_5_n_0),
        .S_AXI_AREADY_I_reg_2(command_ongoing_i_2_n_0),
        .access_fit_mi_side_q(access_fit_mi_side_q),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_incr_q_reg(S_AXI_AREADY_I_i_7_n_0),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (S_AXI_AREADY_I_i_2_n_0),
        .aresetn(aresetn),
        .cmd_b_empty(cmd_b_empty),
        .\cmd_mask_q_reg[4] (p_0_out),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_queue_n_46),
        .command_ongoing_reg(cmd_queue_n_105),
        .command_ongoing_reg_0(command_ongoing_reg_n_0),
        .\current_word_1_reg[0] (\current_word_1_reg[0] ),
        .\current_word_1_reg[1] (\current_word_1_reg[1] ),
        .\current_word_1_reg[2] (\current_word_1_reg[2] ),
        .\current_word_1_reg[3] (Q),
        .\current_word_1_reg[3]_0 (\current_word_1_reg[3] ),
        .\current_word_1_reg[4] (\current_word_1_reg[4] ),
        .din({p_1_out,din[10:8]}),
        .dout(dout),
        .\downsized_len_q_reg[7] (downsized_len_q),
        .first_mi_word(first_mi_word),
        .first_word_reg(first_word_reg),
        .first_word_reg_0(first_word_reg_0),
        .\fix_len_q_reg[4] (fix_len_q),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full_0 ),
        .full_0(\inst/full ),
        .\goreg_dm.dout_i_reg[12] (\goreg_dm.dout_i_reg[12] ),
        .\goreg_dm.dout_i_reg[18] (\goreg_dm.dout_i_reg[18] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] (cmd_queue_n_31),
        .\gpr1.dout_i_reg[7]_0 (cmd_queue_n_32),
        .\gpr1.dout_i_reg[7]_1 (cmd_queue_n_34),
        .\gpr1.dout_i_reg[7]_10 (cmd_queue_n_43),
        .\gpr1.dout_i_reg[7]_11 (cmd_queue_n_44),
        .\gpr1.dout_i_reg[7]_12 (cmd_queue_n_45),
        .\gpr1.dout_i_reg[7]_13 (cmd_queue_n_51),
        .\gpr1.dout_i_reg[7]_14 (cmd_queue_n_52),
        .\gpr1.dout_i_reg[7]_15 (cmd_queue_n_53),
        .\gpr1.dout_i_reg[7]_16 (cmd_queue_n_55),
        .\gpr1.dout_i_reg[7]_17 (cmd_queue_n_56),
        .\gpr1.dout_i_reg[7]_18 (cmd_queue_n_58),
        .\gpr1.dout_i_reg[7]_19 (cmd_queue_n_59),
        .\gpr1.dout_i_reg[7]_2 (cmd_queue_n_35),
        .\gpr1.dout_i_reg[7]_20 (cmd_queue_n_60),
        .\gpr1.dout_i_reg[7]_3 (cmd_queue_n_36),
        .\gpr1.dout_i_reg[7]_4 (cmd_queue_n_37),
        .\gpr1.dout_i_reg[7]_5 (cmd_queue_n_38),
        .\gpr1.dout_i_reg[7]_6 (cmd_queue_n_39),
        .\gpr1.dout_i_reg[7]_7 (cmd_queue_n_40),
        .\gpr1.dout_i_reg[7]_8 (cmd_queue_n_41),
        .\gpr1.dout_i_reg[7]_9 (cmd_queue_n_42),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\next_mi_addr_reg[8] (cmd_queue_n_33),
        .\next_mi_addr_reg[8]_0 (cmd_queue_n_57),
        .p_0_in1_in({cmd_queue_n_24,cmd_queue_n_25,cmd_queue_n_26,cmd_queue_n_27,cmd_queue_n_28,cmd_queue_n_29,cmd_queue_n_30}),
        .\pushed_commands_reg[7] (pushed_commands_reg__0),
        .pushed_new_cmd(pushed_new_cmd),
        .\queue_id_reg[0] (cmd_queue_n_48),
        .\queue_id_reg[1] (cmd_queue_n_49),
        .\queue_id_reg[2] (cmd_queue_n_50),
        .\queue_id_reg[2]_0 (cmd_queue_n_54),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .\size_mask_q_reg[4] (size_mask_q),
        .\split_addr_mask_q_reg[4] ({\split_addr_mask_q_reg_n_0_[4] ,\split_addr_mask_q_reg_n_0_[3] ,\split_addr_mask_q_reg_n_0_[2] ,\split_addr_mask_q_reg_n_0_[1] ,\split_addr_mask_q_reg_n_0_[0] }),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] ({\unalignment_addr_q_reg_n_0_[4] ,\unalignment_addr_q_reg_n_0_[3] ,\unalignment_addr_q_reg_n_0_[2] ,\unalignment_addr_q_reg_n_0_[1] ,\unalignment_addr_q_reg_n_0_[0] }),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (wrap_rest_len),
        .\wrap_unaligned_len_q_reg[1] (wrap_unaligned_len_q[1:0]));
  LUT2 #(
    .INIT(4'h8)) 
    command_ongoing_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .O(command_ongoing_i_2_n_0));
  FDRE command_ongoing_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_105),
        .Q(command_ongoing_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \downsized_len_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[0]),
        .O(\downsized_len_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hEFFFECCC)) 
    \downsized_len_q[1]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[1]),
        .O(\downsized_len_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFAFFCF0F0A0)) 
    \downsized_len_q[2]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[2]),
        .O(\downsized_len_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAFAFFCF0A0A0)) 
    \downsized_len_q[3]_i_1 
       (.I0(\masked_addr_q[5]_i_3_n_0 ),
        .I1(\masked_addr_q[5]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[3]),
        .O(\downsized_len_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[4]_i_1 
       (.I0(\downsized_len_q[4]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[4]),
        .O(\downsized_len_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAFFFC00AA00)) 
    \downsized_len_q[4]_i_2 
       (.I0(\masked_addr_q[2]_i_2_n_0 ),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(\num_transactions_q[0]_i_2_n_0 ),
        .O(\downsized_len_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \downsized_len_q[5]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[11]_i_2_n_0 ),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[5]),
        .O(\downsized_len_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \downsized_len_q[6]_i_1 
       (.I0(\masked_addr_q[4]_i_2_n_0 ),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[6]),
        .O(\downsized_len_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \downsized_len_q[7]_i_1 
       (.I0(\masked_addr_q[5]_i_2_n_0 ),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[7]),
        .O(\downsized_len_q[7]_i_1_n_0 ));
  FDRE \downsized_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[0]_i_1_n_0 ),
        .Q(downsized_len_q[0]),
        .R(SR));
  FDRE \downsized_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[1]_i_1_n_0 ),
        .Q(downsized_len_q[1]),
        .R(SR));
  FDRE \downsized_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[2]_i_1_n_0 ),
        .Q(downsized_len_q[2]),
        .R(SR));
  FDRE \downsized_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[3]_i_1_n_0 ),
        .Q(downsized_len_q[3]),
        .R(SR));
  FDRE \downsized_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[4]_i_1_n_0 ),
        .Q(downsized_len_q[4]),
        .R(SR));
  FDRE \downsized_len_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[5]_i_1_n_0 ),
        .Q(downsized_len_q[5]),
        .R(SR));
  FDRE \downsized_len_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[6]_i_1_n_0 ),
        .Q(downsized_len_q[6]),
        .R(SR));
  FDRE \downsized_len_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[7]_i_1_n_0 ),
        .Q(downsized_len_q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \fix_len_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(\fix_len_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \fix_len_q[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(\fix_len_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fix_len_q[3]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(\fix_len_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fix_len_q[4]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\fix_len_q[4]_i_1_n_0 ));
  FDRE \fix_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[0]_i_1_n_0 ),
        .Q(fix_len_q[0]),
        .R(SR));
  FDRE \fix_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(fix_len_q[1]),
        .R(SR));
  FDRE \fix_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[2]_i_1_n_0 ),
        .Q(fix_len_q[2]),
        .R(SR));
  FDRE \fix_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[3]_i_1_n_0 ),
        .Q(fix_len_q[3]),
        .R(SR));
  FDRE \fix_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[4]_i_1_n_0 ),
        .Q(fix_len_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    fix_need_to_split_q_i_1
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .O(fix_need_to_split));
  FDRE fix_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(fix_need_to_split),
        .Q(fix_need_to_split_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    incr_need_to_split_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(incr_need_to_split_q_i_2_n_0),
        .I3(num_transactions[1]),
        .I4(\num_transactions_q[0]_i_1__0_n_0 ),
        .O(incr_need_to_split));
  LUT6 #(
    .INIT(64'hFFECF00000000000)) 
    incr_need_to_split_q_i_2
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(incr_need_to_split_q_i_2_n_0));
  FDRE incr_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(incr_need_to_split),
        .Q(incr_need_to_split_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hAAAACFFF)) 
    legal_wrap_len_q_i_1
       (.I0(legal_wrap_len_q_i_2_n_0),
        .I1(data0),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(legal_wrap_len_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h002202AA00FFFFFF)) 
    legal_wrap_len_q_i_2
       (.I0(legal_wrap_len_q_i_4_n_0),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awsize[2]),
        .O(legal_wrap_len_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    legal_wrap_len_q_i_3
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awlen[3]),
        .O(data0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    legal_wrap_len_q_i_4
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[5]),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[2]),
        .O(legal_wrap_len_q_i_4_n_0));
  FDRE legal_wrap_len_q_reg
       (.C(CLK),
        .CE(E),
        .D(legal_wrap_len_q_i_1_n_0),
        .Q(legal_wrap_len_q),
        .R(SR));
  LUT5 #(
    .INIT(32'h00E2AAAA)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[0]),
        .I3(access_is_incr_q),
        .I4(split_ongoing),
        .O(m_axi_awaddr[0]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[10]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(m_axi_awaddr[10]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[11]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .O(m_axi_awaddr[11]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[12]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .O(m_axi_awaddr[12]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[13]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .O(m_axi_awaddr[13]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[14]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .O(m_axi_awaddr[14]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[15]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .O(m_axi_awaddr[15]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[16]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .O(m_axi_awaddr[16]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[17]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .O(m_axi_awaddr[17]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[18]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .O(m_axi_awaddr[18]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[19]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .O(m_axi_awaddr[19]));
  LUT5 #(
    .INIT(32'h00E2AAAA)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[1]),
        .I3(access_is_incr_q),
        .I4(split_ongoing),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[20]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .O(m_axi_awaddr[20]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[21]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .O(m_axi_awaddr[21]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[22]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .O(m_axi_awaddr[22]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[23]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .O(m_axi_awaddr[23]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[24]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .O(m_axi_awaddr[24]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[25]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .O(m_axi_awaddr[25]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[26]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .O(m_axi_awaddr[26]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[27]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .O(m_axi_awaddr[27]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[28]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .O(m_axi_awaddr[28]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[29]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .O(m_axi_awaddr[29]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[2]),
        .I3(next_mi_addr[2]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[30]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .O(m_axi_awaddr[30]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[31]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .O(m_axi_awaddr[31]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[3]),
        .I3(next_mi_addr[3]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[4]),
        .I3(next_mi_addr[4]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[5]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[6]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .O(m_axi_awaddr[6]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[7]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .O(m_axi_awaddr[7]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[8]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .O(m_axi_awaddr[8]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[9]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .O(m_axi_awaddr[9]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \m_axi_awburst[0]_INST_0 
       (.I0(S_AXI_ABURST_Q[0]),
        .I1(access_fit_mi_side_q),
        .I2(access_is_fix_q),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(m_axi_awburst[0]));
  LUT5 #(
    .INIT(32'h8A888A8A)) 
    \m_axi_awburst[1]_INST_0 
       (.I0(S_AXI_ABURST_Q[1]),
        .I1(access_fit_mi_side_q),
        .I2(access_is_fix_q),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(m_axi_awburst[1]));
  CARRY4 \m_axi_awlen[0]_INST_0 
       (.CI(1'b0),
        .CO({\m_axi_awlen[0]_INST_0_n_0 ,\m_axi_awlen[0]_INST_0_n_1 ,\m_axi_awlen[0]_INST_0_n_2 ,\m_axi_awlen[0]_INST_0_n_3 }),
        .CYINIT(1'b1),
        .DI({cmd_queue_n_27,cmd_queue_n_28,cmd_queue_n_29,cmd_queue_n_30}),
        .O(din[3:0]),
        .S({\m_axi_awlen[0]_INST_0_i_5_n_0 ,\m_axi_awlen[0]_INST_0_i_6_n_0 ,\m_axi_awlen[0]_INST_0_i_7_n_0 ,\m_axi_awlen[0]_INST_0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_awlen[0]_INST_0_i_5 
       (.I0(cmd_queue_n_41),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_40),
        .I3(cmd_queue_n_59),
        .I4(cmd_queue_n_45),
        .I5(wrap_unaligned_len_q[3]),
        .O(\m_axi_awlen[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_awlen[0]_INST_0_i_6 
       (.I0(cmd_queue_n_39),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_38),
        .I3(cmd_queue_n_58),
        .I4(cmd_queue_n_45),
        .I5(wrap_unaligned_len_q[2]),
        .O(\m_axi_awlen[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0C1D3F1DF3E2C0E2)) 
    \m_axi_awlen[0]_INST_0_i_7 
       (.I0(cmd_queue_n_35),
        .I1(access_fit_mi_side_q),
        .I2(p_0_in_0[1]),
        .I3(last_incr_split0),
        .I4(cmd_queue_n_34),
        .I5(cmd_queue_n_56),
        .O(\m_axi_awlen[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0C1D3F1DF3E2C0E2)) 
    \m_axi_awlen[0]_INST_0_i_8 
       (.I0(cmd_queue_n_32),
        .I1(access_fit_mi_side_q),
        .I2(p_0_in_0[0]),
        .I3(last_incr_split0),
        .I4(cmd_queue_n_31),
        .I5(cmd_queue_n_55),
        .O(\m_axi_awlen[0]_INST_0_i_8_n_0 ));
  CARRY4 \m_axi_awlen[4]_INST_0 
       (.CI(\m_axi_awlen[0]_INST_0_n_0 ),
        .CO({\NLW_m_axi_awlen[4]_INST_0_CO_UNCONNECTED [3],\m_axi_awlen[4]_INST_0_n_1 ,\m_axi_awlen[4]_INST_0_n_2 ,\m_axi_awlen[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,cmd_queue_n_24,cmd_queue_n_25,cmd_queue_n_26}),
        .O(din[7:4]),
        .S({\m_axi_awlen[4]_INST_0_i_4_n_0 ,\m_axi_awlen[4]_INST_0_i_5_n_0 ,\m_axi_awlen[4]_INST_0_i_6_n_0 ,\m_axi_awlen[4]_INST_0_i_7_n_0 }));
  CARRY4 \m_axi_awlen[4]_INST_0_i_24 
       (.CI(1'b0),
        .CO({\m_axi_awlen[4]_INST_0_i_24_n_0 ,\m_axi_awlen[4]_INST_0_i_24_n_1 ,\m_axi_awlen[4]_INST_0_i_24_n_2 ,\m_axi_awlen[4]_INST_0_i_24_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axi_awlen[4]_INST_0_i_24_O_UNCONNECTED [3:0]),
        .S({1'b1,\m_axi_awlen[4]_INST_0_i_30_n_0 ,\m_axi_awlen[4]_INST_0_i_31_n_0 ,\m_axi_awlen[4]_INST_0_i_32_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axi_awlen[4]_INST_0_i_30 
       (.I0(pushed_commands_reg__0[6]),
        .I1(pushed_commands_reg__0[7]),
        .O(\m_axi_awlen[4]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h09000009)) 
    \m_axi_awlen[4]_INST_0_i_31 
       (.I0(\num_transactions_q_reg_n_0_[3] ),
        .I1(pushed_commands_reg__0[3]),
        .I2(pushed_commands_reg__0[5]),
        .I3(pushed_commands_reg__0[4]),
        .I4(\num_transactions_q_reg_n_0_[4] ),
        .O(\m_axi_awlen[4]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axi_awlen[4]_INST_0_i_32 
       (.I0(pushed_commands_reg__0[2]),
        .I1(\num_transactions_q_reg_n_0_[2] ),
        .I2(pushed_commands_reg__0[0]),
        .I3(\num_transactions_q_reg_n_0_[0] ),
        .I4(\num_transactions_q_reg_n_0_[1] ),
        .I5(pushed_commands_reg__0[1]),
        .O(\m_axi_awlen[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_awlen[4]_INST_0_i_4 
       (.I0(cmd_queue_n_42),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_53),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[7]),
        .O(\m_axi_awlen[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_awlen[4]_INST_0_i_5 
       (.I0(cmd_queue_n_44),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_51),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[6]),
        .O(\m_axi_awlen[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_awlen[4]_INST_0_i_6 
       (.I0(cmd_queue_n_43),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_52),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[5]),
        .O(\m_axi_awlen[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_awlen[4]_INST_0_i_7 
       (.I0(cmd_queue_n_37),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_36),
        .I3(cmd_queue_n_60),
        .I4(cmd_queue_n_45),
        .I5(wrap_unaligned_len_q[4]),
        .O(\m_axi_awlen[4]_INST_0_i_7_n_0 ));
  CARRY4 \m_axi_awlen[4]_INST_0_i_9 
       (.CI(\m_axi_awlen[4]_INST_0_i_24_n_0 ),
        .CO({\NLW_m_axi_awlen[4]_INST_0_i_9_CO_UNCONNECTED [3:1],last_incr_split0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axi_awlen[4]_INST_0_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axi_awlock[0]_INST_0 
       (.I0(S_AXI_ALOCK_Q),
        .I1(wrap_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(m_axi_awlock));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \masked_addr_q[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(masked_addr[0]));
  LUT6 #(
    .INIT(64'h00007F00FF007F00)) 
    \masked_addr_q[10]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awaddr[10]),
        .I4(s_axi_awsize[2]),
        .I5(\num_transactions_q[0]_i_2_n_0 ),
        .O(masked_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \masked_addr_q[11]_i_1__0 
       (.I0(\masked_addr_q[11]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awaddr[11]),
        .O(\masked_addr_q[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[11]_i_2 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[7]),
        .O(\masked_addr_q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44440CCCCCCCCCCC)) 
    \masked_addr_q[12]_i_1 
       (.I0(\masked_addr_q[12]_i_2_n_0 ),
        .I1(s_axi_awaddr[12]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(masked_addr[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[12]_i_2 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[6]),
        .O(\masked_addr_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h47FFFFFF00000000)) 
    \masked_addr_q[13]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awaddr[13]),
        .O(\masked_addr_q[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \masked_addr_q[14]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(masked_addr[14]));
  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \masked_addr_q[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awsize[2]),
        .O(masked_addr[1]));
  LUT6 #(
    .INIT(64'h000000080000222A)) 
    \masked_addr_q[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[2]),
        .I5(\masked_addr_q[2]_i_2_n_0 ),
        .O(masked_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[2]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[2]),
        .O(\masked_addr_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \masked_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\masked_addr_q[7]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .O(masked_addr[3]));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \masked_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awsize[1]),
        .O(masked_addr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[4]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[4]),
        .O(\masked_addr_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h000A202A)) 
    \masked_addr_q[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\masked_addr_q[5]_i_2_n_0 ),
        .I4(\masked_addr_q[5]_i_3_n_0 ),
        .O(masked_addr[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[5]_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[5]),
        .O(\masked_addr_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[5]_i_3 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .O(\masked_addr_q[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\masked_addr_q[6]_i_2_n_0 ),
        .O(masked_addr[6]));
  LUT6 #(
    .INIT(64'hFACCFACCFACC0ACC)) 
    \masked_addr_q[6]_i_2 
       (.I0(\masked_addr_q[2]_i_2_n_0 ),
        .I1(\num_transactions_q[0]_i_2_n_0 ),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[0]),
        .O(\masked_addr_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[7]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[11]_i_2_n_0 ),
        .I3(s_axi_awaddr[7]),
        .O(masked_addr[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[3]),
        .O(\masked_addr_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA2A)) 
    \masked_addr_q[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(\masked_addr_q[8]_i_2_n_0 ),
        .O(masked_addr[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC00000)) 
    \masked_addr_q[8]_i_2 
       (.I0(\masked_addr_q[4]_i_2_n_0 ),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\masked_addr_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\masked_addr_q[9]_i_2_n_0 ),
        .O(masked_addr[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC00000)) 
    \masked_addr_q[9]_i_2 
       (.I0(\masked_addr_q[5]_i_2_n_0 ),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\masked_addr_q[9]_i_2_n_0 ));
  FDRE \masked_addr_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[0]),
        .Q(masked_addr_q[0]),
        .R(SR));
  FDRE \masked_addr_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[10]),
        .Q(masked_addr_q[10]),
        .R(SR));
  FDRE \masked_addr_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\masked_addr_q[11]_i_1__0_n_0 ),
        .Q(masked_addr_q[11]),
        .R(SR));
  FDRE \masked_addr_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[12]),
        .Q(masked_addr_q[12]),
        .R(SR));
  FDRE \masked_addr_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\masked_addr_q[13]_i_1_n_0 ),
        .Q(masked_addr_q[13]),
        .R(SR));
  FDRE \masked_addr_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[14]),
        .Q(masked_addr_q[14]),
        .R(SR));
  FDRE \masked_addr_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(masked_addr_q[15]),
        .R(SR));
  FDRE \masked_addr_q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(masked_addr_q[16]),
        .R(SR));
  FDRE \masked_addr_q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(masked_addr_q[17]),
        .R(SR));
  FDRE \masked_addr_q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(masked_addr_q[18]),
        .R(SR));
  FDRE \masked_addr_q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(masked_addr_q[19]),
        .R(SR));
  FDRE \masked_addr_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[1]),
        .Q(masked_addr_q[1]),
        .R(SR));
  FDRE \masked_addr_q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(masked_addr_q[20]),
        .R(SR));
  FDRE \masked_addr_q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(masked_addr_q[21]),
        .R(SR));
  FDRE \masked_addr_q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(masked_addr_q[22]),
        .R(SR));
  FDRE \masked_addr_q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(masked_addr_q[23]),
        .R(SR));
  FDRE \masked_addr_q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(masked_addr_q[24]),
        .R(SR));
  FDRE \masked_addr_q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(masked_addr_q[25]),
        .R(SR));
  FDRE \masked_addr_q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(masked_addr_q[26]),
        .R(SR));
  FDRE \masked_addr_q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(masked_addr_q[27]),
        .R(SR));
  FDRE \masked_addr_q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(masked_addr_q[28]),
        .R(SR));
  FDRE \masked_addr_q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(masked_addr_q[29]),
        .R(SR));
  FDRE \masked_addr_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[2]),
        .Q(masked_addr_q[2]),
        .R(SR));
  FDRE \masked_addr_q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(masked_addr_q[30]),
        .R(SR));
  FDRE \masked_addr_q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(masked_addr_q[31]),
        .R(SR));
  FDRE \masked_addr_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[3]),
        .Q(masked_addr_q[3]),
        .R(SR));
  FDRE \masked_addr_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[4]),
        .Q(masked_addr_q[4]),
        .R(SR));
  FDRE \masked_addr_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[5]),
        .Q(masked_addr_q[5]),
        .R(SR));
  FDRE \masked_addr_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[6]),
        .Q(masked_addr_q[6]),
        .R(SR));
  FDRE \masked_addr_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[7]),
        .Q(masked_addr_q[7]),
        .R(SR));
  FDRE \masked_addr_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[8]),
        .Q(masked_addr_q[8]),
        .R(SR));
  FDRE \masked_addr_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[9]),
        .Q(masked_addr_q[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[10] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[10]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[10]),
        .O(pre_mi_addr[10]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[12] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[12]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[12]),
        .O(pre_mi_addr[12]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[11] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[11]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[11]),
        .O(pre_mi_addr[11]));
  LUT6 #(
    .INIT(64'h47444777FFFFFFFF)) 
    \next_mi_addr[12]_i_5 
       (.I0(next_mi_addr[10]),
        .I1(cmd_queue_n_57),
        .I2(masked_addr_q[10]),
        .I3(cmd_queue_n_33),
        .I4(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I5(\split_addr_mask_q_reg_n_0_[10] ),
        .O(\next_mi_addr[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_6 
       (.I0(\split_addr_mask_q_reg_n_0_[9] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[9]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[9]),
        .O(pre_mi_addr[9]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[16] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[16]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[16]),
        .O(pre_mi_addr[16]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[15] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[15]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[15]),
        .O(pre_mi_addr[15]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[14] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[14]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[14]),
        .O(pre_mi_addr[14]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_5 
       (.I0(\split_addr_mask_q_reg_n_0_[13] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[13]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[13]),
        .O(pre_mi_addr[13]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[20] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[20]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[20]),
        .O(pre_mi_addr[20]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[19] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[19]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[19]),
        .O(pre_mi_addr[19]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[18] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[18]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[18]),
        .O(pre_mi_addr[18]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_5 
       (.I0(\split_addr_mask_q_reg_n_0_[17] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[17]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[17]),
        .O(pre_mi_addr[17]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[24] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[24]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[24]),
        .O(pre_mi_addr[24]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[23] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[23]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[23]),
        .O(pre_mi_addr[23]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[22] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[22]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[22]),
        .O(pre_mi_addr[22]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_5 
       (.I0(\split_addr_mask_q_reg_n_0_[21] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[21]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[21]),
        .O(pre_mi_addr[21]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[28] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[28]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[28]),
        .O(pre_mi_addr[28]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[27] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[27]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[27]),
        .O(pre_mi_addr[27]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[26] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[26]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[26]),
        .O(pre_mi_addr[26]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_5 
       (.I0(\split_addr_mask_q_reg_n_0_[25] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[25]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[25]),
        .O(pre_mi_addr[25]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[2]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[2] ),
        .I1(cmd_queue_n_57),
        .I2(next_mi_addr[2]),
        .I3(masked_addr_q[2]),
        .I4(cmd_queue_n_33),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .O(pre_mi_addr[2]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_2 
       (.I0(\split_addr_mask_q_reg_n_0_[31] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[31]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[31]),
        .O(pre_mi_addr[31]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_3 
       (.I0(\split_addr_mask_q_reg_n_0_[30] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[30]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[30]),
        .O(pre_mi_addr[30]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[29] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[29]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[29]),
        .O(pre_mi_addr[29]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[3]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[3] ),
        .I1(cmd_queue_n_57),
        .I2(next_mi_addr[3]),
        .I3(masked_addr_q[3]),
        .I4(cmd_queue_n_33),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .O(pre_mi_addr[3]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[4]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[4] ),
        .I1(cmd_queue_n_57),
        .I2(next_mi_addr[4]),
        .I3(masked_addr_q[4]),
        .I4(cmd_queue_n_33),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .O(pre_mi_addr[4]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[5]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[5] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[5]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[5]),
        .O(pre_mi_addr[5]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[6]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[6] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[6]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[6]),
        .O(pre_mi_addr[6]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[7]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[7] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[7]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[7]),
        .O(pre_mi_addr[7]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[8]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[8] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I2(cmd_queue_n_33),
        .I3(masked_addr_q[8]),
        .I4(cmd_queue_n_57),
        .I5(next_mi_addr[8]),
        .O(pre_mi_addr[8]));
  FDRE \next_mi_addr_reg[10] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_6 ),
        .Q(next_mi_addr[10]),
        .R(SR));
  FDRE \next_mi_addr_reg[11] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_5 ),
        .Q(next_mi_addr[11]),
        .R(SR));
  FDRE \next_mi_addr_reg[12] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_4 ),
        .Q(next_mi_addr[12]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[12]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[12]_i_1_n_0 ,\next_mi_addr_reg[12]_i_1_n_1 ,\next_mi_addr_reg[12]_i_1_n_2 ,\next_mi_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pre_mi_addr[10],1'b0}),
        .O({\next_mi_addr_reg[12]_i_1_n_4 ,\next_mi_addr_reg[12]_i_1_n_5 ,\next_mi_addr_reg[12]_i_1_n_6 ,\next_mi_addr_reg[12]_i_1_n_7 }),
        .S({pre_mi_addr[12:11],\next_mi_addr[12]_i_5_n_0 ,pre_mi_addr[9]}));
  FDRE \next_mi_addr_reg[13] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_7 ),
        .Q(next_mi_addr[13]),
        .R(SR));
  FDRE \next_mi_addr_reg[14] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_6 ),
        .Q(next_mi_addr[14]),
        .R(SR));
  FDRE \next_mi_addr_reg[15] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_5 ),
        .Q(next_mi_addr[15]),
        .R(SR));
  FDRE \next_mi_addr_reg[16] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_4 ),
        .Q(next_mi_addr[16]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[16]_i_1 
       (.CI(\next_mi_addr_reg[12]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[16]_i_1_n_0 ,\next_mi_addr_reg[16]_i_1_n_1 ,\next_mi_addr_reg[16]_i_1_n_2 ,\next_mi_addr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[16]_i_1_n_4 ,\next_mi_addr_reg[16]_i_1_n_5 ,\next_mi_addr_reg[16]_i_1_n_6 ,\next_mi_addr_reg[16]_i_1_n_7 }),
        .S(pre_mi_addr[16:13]));
  FDRE \next_mi_addr_reg[17] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_7 ),
        .Q(next_mi_addr[17]),
        .R(SR));
  FDRE \next_mi_addr_reg[18] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_6 ),
        .Q(next_mi_addr[18]),
        .R(SR));
  FDRE \next_mi_addr_reg[19] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_5 ),
        .Q(next_mi_addr[19]),
        .R(SR));
  FDRE \next_mi_addr_reg[20] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_4 ),
        .Q(next_mi_addr[20]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[20]_i_1 
       (.CI(\next_mi_addr_reg[16]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[20]_i_1_n_0 ,\next_mi_addr_reg[20]_i_1_n_1 ,\next_mi_addr_reg[20]_i_1_n_2 ,\next_mi_addr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[20]_i_1_n_4 ,\next_mi_addr_reg[20]_i_1_n_5 ,\next_mi_addr_reg[20]_i_1_n_6 ,\next_mi_addr_reg[20]_i_1_n_7 }),
        .S(pre_mi_addr[20:17]));
  FDRE \next_mi_addr_reg[21] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_7 ),
        .Q(next_mi_addr[21]),
        .R(SR));
  FDRE \next_mi_addr_reg[22] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_6 ),
        .Q(next_mi_addr[22]),
        .R(SR));
  FDRE \next_mi_addr_reg[23] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_5 ),
        .Q(next_mi_addr[23]),
        .R(SR));
  FDRE \next_mi_addr_reg[24] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_4 ),
        .Q(next_mi_addr[24]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[24]_i_1 
       (.CI(\next_mi_addr_reg[20]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[24]_i_1_n_0 ,\next_mi_addr_reg[24]_i_1_n_1 ,\next_mi_addr_reg[24]_i_1_n_2 ,\next_mi_addr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[24]_i_1_n_4 ,\next_mi_addr_reg[24]_i_1_n_5 ,\next_mi_addr_reg[24]_i_1_n_6 ,\next_mi_addr_reg[24]_i_1_n_7 }),
        .S(pre_mi_addr[24:21]));
  FDRE \next_mi_addr_reg[25] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_7 ),
        .Q(next_mi_addr[25]),
        .R(SR));
  FDRE \next_mi_addr_reg[26] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_6 ),
        .Q(next_mi_addr[26]),
        .R(SR));
  FDRE \next_mi_addr_reg[27] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_5 ),
        .Q(next_mi_addr[27]),
        .R(SR));
  FDRE \next_mi_addr_reg[28] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_4 ),
        .Q(next_mi_addr[28]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[28]_i_1 
       (.CI(\next_mi_addr_reg[24]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[28]_i_1_n_0 ,\next_mi_addr_reg[28]_i_1_n_1 ,\next_mi_addr_reg[28]_i_1_n_2 ,\next_mi_addr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[28]_i_1_n_4 ,\next_mi_addr_reg[28]_i_1_n_5 ,\next_mi_addr_reg[28]_i_1_n_6 ,\next_mi_addr_reg[28]_i_1_n_7 }),
        .S(pre_mi_addr[28:25]));
  FDRE \next_mi_addr_reg[29] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[29]),
        .R(SR));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[2]),
        .Q(next_mi_addr[2]),
        .R(SR));
  FDRE \next_mi_addr_reg[30] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[30]),
        .R(SR));
  FDRE \next_mi_addr_reg[31] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[31]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[28]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3:2],\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_next_mi_addr_reg[31]_i_1_O_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({1'b0,pre_mi_addr[31:29]}));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[3]),
        .Q(next_mi_addr[3]),
        .R(SR));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[4]),
        .Q(next_mi_addr[4]),
        .R(SR));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[5]),
        .Q(next_mi_addr[5]),
        .R(SR));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[6]),
        .Q(next_mi_addr[6]),
        .R(SR));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[7]),
        .Q(next_mi_addr[7]),
        .R(SR));
  FDRE \next_mi_addr_reg[8] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[8]),
        .Q(next_mi_addr[8]),
        .R(SR));
  FDRE \next_mi_addr_reg[9] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_7 ),
        .Q(next_mi_addr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'hCCCCA000)) 
    \num_transactions_q[0]_i_1__0 
       (.I0(s_axi_awlen[7]),
        .I1(\num_transactions_q[0]_i_2_n_0 ),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(\num_transactions_q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \num_transactions_q[0]_i_2 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[5]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[6]),
        .O(\num_transactions_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB80000000000)) 
    \num_transactions_q[1]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awsize[1]),
        .I4(\num_transactions_q[1]_i_2_n_0 ),
        .I5(s_axi_awsize[2]),
        .O(num_transactions[1]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \num_transactions_q[1]_i_2 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .O(\num_transactions_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF800C80038000800)) 
    \num_transactions_q[2]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awlen[6]),
        .I5(s_axi_awlen[5]),
        .O(num_transactions[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \num_transactions_q[3]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(num_transactions[3]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \num_transactions_q[4]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .O(\num_transactions_q[4]_i_1_n_0 ));
  FDRE \num_transactions_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\num_transactions_q[0]_i_1__0_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \num_transactions_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(num_transactions[1]),
        .Q(\num_transactions_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \num_transactions_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(num_transactions[2]),
        .Q(\num_transactions_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \num_transactions_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(num_transactions[3]),
        .Q(\num_transactions_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \num_transactions_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\num_transactions_q[4]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[4] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg__0[1]),
        .I1(pushed_commands_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg__0[2]),
        .I1(pushed_commands_reg__0[0]),
        .I2(pushed_commands_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pushed_commands[3]_i_1 
       (.I0(pushed_commands_reg__0[3]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pushed_commands[4]_i_1 
       (.I0(pushed_commands_reg__0[4]),
        .I1(pushed_commands_reg__0[3]),
        .I2(pushed_commands_reg__0[2]),
        .I3(pushed_commands_reg__0[0]),
        .I4(pushed_commands_reg__0[1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pushed_commands[5]_i_1 
       (.I0(pushed_commands_reg__0[5]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[2]),
        .I4(pushed_commands_reg__0[3]),
        .I5(pushed_commands_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[6]_i_1 
       (.I0(pushed_commands_reg__0[6]),
        .I1(\pushed_commands[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[7]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[7]_i_2 
       (.I0(pushed_commands_reg__0[7]),
        .I1(pushed_commands_reg__0[6]),
        .I2(\pushed_commands[7]_i_3_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pushed_commands[7]_i_3 
       (.I0(pushed_commands_reg__0[5]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[2]),
        .I4(pushed_commands_reg__0[3]),
        .I5(pushed_commands_reg__0[4]),
        .O(\pushed_commands[7]_i_3_n_0 ));
  FDRE \pushed_commands_reg[0] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg__0[0]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[1] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg__0[1]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg__0[2]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg__0[3]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[4]),
        .Q(pushed_commands_reg__0[4]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[5]),
        .Q(pushed_commands_reg__0[5]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[6]),
        .Q(pushed_commands_reg__0[6]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[7]),
        .Q(pushed_commands_reg__0[7]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \queue_id_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_48),
        .Q(s_axi_bid[0]),
        .R(SR));
  FDRE \queue_id_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_49),
        .Q(s_axi_bid[1]),
        .R(SR));
  FDRE \queue_id_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_50),
        .Q(s_axi_bid[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h08)) 
    si_full_size_q_i_1
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(si_full_size));
  FDRE si_full_size_q_reg
       (.C(CLK),
        .CE(E),
        .D(si_full_size),
        .Q(si_full_size_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(size_mask[1]));
  FDRE \size_mask_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(SR));
  FDRE \size_mask_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(SR));
  FDRE \size_mask_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[2]),
        .R(SR));
  FDRE \size_mask_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[3]),
        .R(SR));
  FDRE \size_mask_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \split_addr_mask_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(split_addr_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \split_addr_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(split_addr_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \split_addr_mask_q[2]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \split_addr_mask_q[3]_i_1 
       (.I0(s_axi_awsize[2]),
        .O(split_addr_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \split_addr_mask_q[4]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \split_addr_mask_q[5]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .O(split_addr_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \split_addr_mask_q[6]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[6]));
  FDRE \split_addr_mask_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[0]),
        .Q(\split_addr_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[10] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[11] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[12] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[13] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[14] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[15] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[16] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[17] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[18] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[19] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[1]),
        .Q(\split_addr_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[20] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[21] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[22] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[23] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[24] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[25] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[26] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[27] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[28] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[29] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[2]),
        .Q(\split_addr_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[30] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[31] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[3]),
        .Q(\split_addr_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[4]),
        .Q(\split_addr_mask_q_reg_n_0_[4] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[5]),
        .Q(\split_addr_mask_q_reg_n_0_[5] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[6]),
        .Q(\split_addr_mask_q_reg_n_0_[6] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[7] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[8] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[9] ),
        .R(SR));
  FDRE split_ongoing_reg
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_1_out),
        .Q(split_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hEC00)) 
    \unalignment_addr_q[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[2]),
        .O(\unalignment_addr_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \unalignment_addr_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awsize[2]),
        .O(\unalignment_addr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \unalignment_addr_q[2]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .O(\unalignment_addr_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \unalignment_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(\unalignment_addr_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \unalignment_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .O(\unalignment_addr_q[4]_i_1_n_0 ));
  FDRE \unalignment_addr_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[0]_i_1_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[1]_i_1_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[2]_i_1_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[3]_i_1_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[4]_i_1_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000FE00)) 
    wrap_need_to_split_q_i_1
       (.I0(wrap_unaligned_len[1]),
        .I1(wrap_unaligned_len[0]),
        .I2(wrap_need_to_split_q_i_2_n_0),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(legal_wrap_len_q_i_1_n_0),
        .O(wrap_need_to_split));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    wrap_need_to_split_q_i_2
       (.I0(wrap_unaligned_len[2]),
        .I1(wrap_unaligned_len[5]),
        .I2(wrap_unaligned_len[4]),
        .I3(wrap_unaligned_len[3]),
        .I4(wrap_unaligned_len[7]),
        .I5(wrap_unaligned_len[6]),
        .O(wrap_need_to_split_q_i_2_n_0));
  FDRE wrap_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(wrap_need_to_split),
        .Q(wrap_need_to_split_q),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wrap_rest_len[0]_i_1 
       (.I0(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[1]_i_1 
       (.I0(wrap_unaligned_len_q[1]),
        .I1(wrap_unaligned_len_q[0]),
        .O(\wrap_rest_len[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wrap_rest_len[2]_i_1 
       (.I0(wrap_unaligned_len_q[2]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .O(wrap_rest_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wrap_rest_len[3]_i_1 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wrap_rest_len[4]_i_1 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[3]),
        .I2(wrap_unaligned_len_q[0]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[2]),
        .O(wrap_rest_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wrap_rest_len[5]_i_1 
       (.I0(wrap_unaligned_len_q[5]),
        .I1(wrap_unaligned_len_q[4]),
        .I2(wrap_unaligned_len_q[2]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[0]),
        .I5(wrap_unaligned_len_q[3]),
        .O(wrap_rest_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrap_rest_len[6]_i_1 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2_n_0 ),
        .O(wrap_rest_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_rest_len[7]_i_1 
       (.I0(wrap_unaligned_len_q[7]),
        .I1(wrap_unaligned_len_q[6]),
        .I2(\wrap_rest_len[7]_i_2_n_0 ),
        .O(wrap_rest_len0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wrap_rest_len[7]_i_2 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .I4(wrap_unaligned_len_q[3]),
        .I5(wrap_unaligned_len_q[5]),
        .O(\wrap_rest_len[7]_i_2_n_0 ));
  FDRE \wrap_rest_len_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[0]),
        .Q(wrap_rest_len[0]),
        .R(SR));
  FDRE \wrap_rest_len_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wrap_rest_len[1]_i_1_n_0 ),
        .Q(wrap_rest_len[1]),
        .R(SR));
  FDRE \wrap_rest_len_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[2]),
        .Q(wrap_rest_len[2]),
        .R(SR));
  FDRE \wrap_rest_len_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[3]),
        .Q(wrap_rest_len[3]),
        .R(SR));
  FDRE \wrap_rest_len_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[4]),
        .Q(wrap_rest_len[4]),
        .R(SR));
  FDRE \wrap_rest_len_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[5]),
        .Q(wrap_rest_len[5]),
        .R(SR));
  FDRE \wrap_rest_len_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[6]),
        .Q(wrap_rest_len[6]),
        .R(SR));
  FDRE \wrap_rest_len_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[7]),
        .Q(wrap_rest_len[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAA8880)) 
    \wrap_unaligned_len_q[0]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[2]),
        .I5(\masked_addr_q[2]_i_2_n_0 ),
        .O(wrap_unaligned_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \wrap_unaligned_len_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\masked_addr_q[7]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .O(wrap_unaligned_len[1]));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A808)) 
    \wrap_unaligned_len_q[2]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awsize[1]),
        .O(wrap_unaligned_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'hAAA08A80)) 
    \wrap_unaligned_len_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\masked_addr_q[5]_i_2_n_0 ),
        .I4(\masked_addr_q[5]_i_3_n_0 ),
        .O(wrap_unaligned_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\masked_addr_q[6]_i_2_n_0 ),
        .O(wrap_unaligned_len[4]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \wrap_unaligned_len_q[5]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[11]_i_2_n_0 ),
        .I3(s_axi_awaddr[7]),
        .O(wrap_unaligned_len[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000080)) 
    \wrap_unaligned_len_q[6]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(\masked_addr_q[8]_i_2_n_0 ),
        .O(wrap_unaligned_len[6]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[7]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\masked_addr_q[9]_i_2_n_0 ),
        .O(wrap_unaligned_len[7]));
  FDRE \wrap_unaligned_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[0]),
        .Q(wrap_unaligned_len_q[0]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[1]),
        .Q(wrap_unaligned_len_q[1]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[2]),
        .Q(wrap_unaligned_len_q[2]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[3]),
        .Q(wrap_unaligned_len_q[3]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[4]),
        .Q(wrap_unaligned_len_q[4]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[5]),
        .Q(wrap_unaligned_len_q[5]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[6]),
        .Q(wrap_unaligned_len_q[6]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[7]),
        .Q(wrap_unaligned_len_q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_a_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_a_downsizer__parameterized0
   (dout,
    \m_axi_arsize[2] ,
    E,
    \current_word_1_reg[4] ,
    m_axi_araddr,
    s_axi_rlast,
    s_axi_rdata,
    m_axi_arvalid,
    s_axi_rid,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[192] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159] ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191] ,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223] ,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255] ,
    first_mi_word_reg,
    s_axi_rvalid,
    \cmd_depth_reg[2]_0 ,
    m_axi_rready,
    s_axi_rresp,
    D,
    \current_word_1_reg[3] ,
    m_axi_arlock,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    CLK,
    SR,
    s_axi_arlock,
    s_axi_arvalid,
    aresetn,
    \goreg_dm.dout_i_reg[10] ,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_arlen,
    \current_word_1_reg[1] ,
    \current_word_1_reg[4]_0 ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[0] ,
    m_axi_rlast,
    first_word,
    Q,
    m_axi_arready,
    \WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ,
    m_axi_rdata,
    \WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ,
    \WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ,
    \WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    s_axi_arburst,
    m_axi_rvalid,
    s_axi_rready,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[9] ,
    m_axi_rresp,
    \S_AXI_RRESP_ACC_reg[1] ,
    \S_AXI_RRESP_ACC_reg[1]_0 ,
    s_axi_arid,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos);
  output [14:0]dout;
  output [10:0]\m_axi_arsize[2] ;
  output [0:0]E;
  output \current_word_1_reg[4] ;
  output [31:0]m_axi_araddr;
  output s_axi_rlast;
  output [255:0]s_axi_rdata;
  output m_axi_arvalid;
  output [2:0]s_axi_rid;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  output [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  output [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  output [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  output [0:0]first_mi_word_reg;
  output s_axi_rvalid;
  output \cmd_depth_reg[2]_0 ;
  output m_axi_rready;
  output [1:0]s_axi_rresp;
  output [1:0]D;
  output [3:0]\current_word_1_reg[3] ;
  output [0:0]m_axi_arlock;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  input CLK;
  input [0:0]SR;
  input [0:0]s_axi_arlock;
  input s_axi_arvalid;
  input aresetn;
  input \goreg_dm.dout_i_reg[10] ;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input \current_word_1_reg[1] ;
  input \current_word_1_reg[4]_0 ;
  input \current_word_1_reg[3]_0 ;
  input \current_word_1_reg[0] ;
  input m_axi_rlast;
  input first_word;
  input [2:0]Q;
  input m_axi_arready;
  input [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  input [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  input [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input [1:0]s_axi_arburst;
  input m_axi_rvalid;
  input s_axi_rready;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[9] ;
  input [1:0]m_axi_rresp;
  input [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  input \S_AXI_RRESP_ACC_reg[1]_0 ;
  input [2:0]s_axi_arid;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \S_AXI_AADDR_Q_reg_n_0_[0] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[10] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[11] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[12] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[13] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[14] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[15] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[16] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[17] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[18] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[19] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[1] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[20] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[21] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[22] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[23] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[24] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[25] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[26] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[27] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[28] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[29] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[2] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[30] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[31] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[3] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[4] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[5] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[6] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[7] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[8] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[9] ;
  wire [1:0]S_AXI_ABURST_Q;
  wire [2:0]S_AXI_AID_Q;
  wire \S_AXI_ALEN_Q_reg_n_0_[4] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[5] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[6] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[7] ;
  wire [0:0]S_AXI_ALOCK_Q;
  wire S_AXI_AREADY_I_i_2__0_n_0;
  wire S_AXI_AREADY_I_i_5__0_n_0;
  wire S_AXI_AREADY_I_i_7__0_n_0;
  wire [2:0]S_AXI_ASIZE_Q;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1] ;
  wire \S_AXI_RRESP_ACC_reg[1]_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire [0:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ;
  wire [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ;
  wire [0:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ;
  wire [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ;
  wire [0:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ;
  wire [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ;
  wire [0:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ;
  wire [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ;
  wire access_fit_mi_side_q;
  wire access_is_fix;
  wire access_is_fix_q;
  wire access_is_incr;
  wire access_is_incr_q;
  wire access_is_wrap;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire aresetn;
  wire \cmd_depth[0]_i_1_n_0 ;
  wire \cmd_depth[3]_i_2_n_0 ;
  wire \cmd_depth_reg[2]_0 ;
  wire [5:0]cmd_depth_reg__0;
  wire cmd_empty;
  wire cmd_empty_i_2_n_0;
  wire [4:0]cmd_mask_i;
  wire \cmd_mask_q[0]_i_1__0_n_0 ;
  wire \cmd_mask_q[1]_i_1__0_n_0 ;
  wire \cmd_mask_q[2]_i_1__0_n_0 ;
  wire \cmd_mask_q[3]_i_1__0_n_0 ;
  wire \cmd_mask_q[3]_i_2__0_n_0 ;
  wire \cmd_mask_q[3]_i_3__0_n_0 ;
  wire \cmd_mask_q[3]_i_4__0_n_0 ;
  wire \cmd_mask_q[4]_i_1__0_n_0 ;
  wire cmd_push_block;
  wire cmd_queue_n_20;
  wire cmd_queue_n_21;
  wire cmd_queue_n_22;
  wire cmd_queue_n_23;
  wire cmd_queue_n_24;
  wire cmd_queue_n_25;
  wire cmd_queue_n_26;
  wire cmd_queue_n_27;
  wire cmd_queue_n_28;
  wire cmd_queue_n_29;
  wire cmd_queue_n_30;
  wire cmd_queue_n_305;
  wire cmd_queue_n_306;
  wire cmd_queue_n_307;
  wire cmd_queue_n_308;
  wire cmd_queue_n_31;
  wire cmd_queue_n_310;
  wire cmd_queue_n_311;
  wire cmd_queue_n_32;
  wire cmd_queue_n_33;
  wire cmd_queue_n_333;
  wire cmd_queue_n_334;
  wire cmd_queue_n_335;
  wire cmd_queue_n_336;
  wire cmd_queue_n_337;
  wire cmd_queue_n_338;
  wire cmd_queue_n_339;
  wire cmd_queue_n_34;
  wire cmd_queue_n_340;
  wire cmd_queue_n_341;
  wire cmd_queue_n_342;
  wire cmd_queue_n_343;
  wire cmd_queue_n_35;
  wire cmd_queue_n_36;
  wire cmd_queue_n_37;
  wire cmd_queue_n_38;
  wire cmd_queue_n_39;
  wire cmd_queue_n_40;
  wire cmd_queue_n_41;
  wire cmd_queue_n_42;
  wire cmd_queue_n_43;
  wire cmd_queue_n_44;
  wire cmd_queue_n_45;
  wire cmd_queue_n_46;
  wire command_ongoing_i_2__0_n_0;
  wire command_ongoing_reg_n_0;
  wire \current_word_1_reg[0] ;
  wire \current_word_1_reg[1] ;
  wire [3:0]\current_word_1_reg[3] ;
  wire \current_word_1_reg[3]_0 ;
  wire \current_word_1_reg[4] ;
  wire \current_word_1_reg[4]_0 ;
  wire data0;
  wire [14:0]dout;
  wire [7:0]downsized_len_q;
  wire \downsized_len_q[0]_i_1__0_n_0 ;
  wire \downsized_len_q[1]_i_1__0_n_0 ;
  wire \downsized_len_q[2]_i_1__0_n_0 ;
  wire \downsized_len_q[3]_i_1__0_n_0 ;
  wire \downsized_len_q[4]_i_1__0_n_0 ;
  wire \downsized_len_q[4]_i_2__0_n_0 ;
  wire \downsized_len_q[5]_i_1__0_n_0 ;
  wire \downsized_len_q[6]_i_1__0_n_0 ;
  wire \downsized_len_q[7]_i_1__0_n_0 ;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [4:0]fix_len_q;
  wire \fix_len_q[0]_i_1__0_n_0 ;
  wire \fix_len_q[2]_i_1__0_n_0 ;
  wire \fix_len_q[3]_i_1__0_n_0 ;
  wire \fix_len_q[4]_i_1__0_n_0 ;
  wire fix_need_to_split;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[10] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire incr_need_to_split;
  wire incr_need_to_split_q;
  wire incr_need_to_split_q_i_2__0_n_0;
  wire last_incr_split0;
  wire legal_wrap_len_q;
  wire legal_wrap_len_q_i_1__0_n_0;
  wire legal_wrap_len_q_i_2__0_n_0;
  wire legal_wrap_len_q_i_4__0_n_0;
  wire [0:0]\length_counter_1_reg[7] ;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire \m_axi_arlen[0]_INST_0_i_5_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_6_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_7_n_0 ;
  wire \m_axi_arlen[0]_INST_0_i_8_n_0 ;
  wire \m_axi_arlen[0]_INST_0_n_0 ;
  wire \m_axi_arlen[0]_INST_0_n_1 ;
  wire \m_axi_arlen[0]_INST_0_n_2 ;
  wire \m_axi_arlen[0]_INST_0_n_3 ;
  wire \m_axi_arlen[4]_INST_0_i_24_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_24_n_1 ;
  wire \m_axi_arlen[4]_INST_0_i_24_n_2 ;
  wire \m_axi_arlen[4]_INST_0_i_24_n_3 ;
  wire \m_axi_arlen[4]_INST_0_i_30_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_31_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_32_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_4_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_5_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_6_n_0 ;
  wire \m_axi_arlen[4]_INST_0_i_7_n_0 ;
  wire \m_axi_arlen[4]_INST_0_n_1 ;
  wire \m_axi_arlen[4]_INST_0_n_2 ;
  wire \m_axi_arlen[4]_INST_0_n_3 ;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [10:0]\m_axi_arsize[2] ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [14:0]masked_addr;
  wire [31:0]masked_addr_q;
  wire \masked_addr_q[12]_i_2__0_n_0 ;
  wire \masked_addr_q[13]_i_1__0_n_0 ;
  wire \masked_addr_q[2]_i_2__0_n_0 ;
  wire \masked_addr_q[4]_i_2__0_n_0 ;
  wire \masked_addr_q[5]_i_2__0_n_0 ;
  wire \masked_addr_q[5]_i_3__0_n_0 ;
  wire \masked_addr_q[6]_i_2__0_n_0 ;
  wire \masked_addr_q[7]_i_2__0_n_0 ;
  wire \masked_addr_q[7]_i_3_n_0 ;
  wire \masked_addr_q[8]_i_2__0_n_0 ;
  wire \masked_addr_q[9]_i_2__0_n_0 ;
  wire [31:2]next_mi_addr;
  wire \next_mi_addr[12]_i_5__0_n_0 ;
  wire \next_mi_addr_reg[12]_i_1_n_0 ;
  wire \next_mi_addr_reg[12]_i_1_n_1 ;
  wire \next_mi_addr_reg[12]_i_1_n_2 ;
  wire \next_mi_addr_reg[12]_i_1_n_3 ;
  wire \next_mi_addr_reg[12]_i_1_n_4 ;
  wire \next_mi_addr_reg[12]_i_1_n_5 ;
  wire \next_mi_addr_reg[12]_i_1_n_6 ;
  wire \next_mi_addr_reg[12]_i_1_n_7 ;
  wire \next_mi_addr_reg[16]_i_1_n_0 ;
  wire \next_mi_addr_reg[16]_i_1_n_1 ;
  wire \next_mi_addr_reg[16]_i_1_n_2 ;
  wire \next_mi_addr_reg[16]_i_1_n_3 ;
  wire \next_mi_addr_reg[16]_i_1_n_4 ;
  wire \next_mi_addr_reg[16]_i_1_n_5 ;
  wire \next_mi_addr_reg[16]_i_1_n_6 ;
  wire \next_mi_addr_reg[16]_i_1_n_7 ;
  wire \next_mi_addr_reg[20]_i_1_n_0 ;
  wire \next_mi_addr_reg[20]_i_1_n_1 ;
  wire \next_mi_addr_reg[20]_i_1_n_2 ;
  wire \next_mi_addr_reg[20]_i_1_n_3 ;
  wire \next_mi_addr_reg[20]_i_1_n_4 ;
  wire \next_mi_addr_reg[20]_i_1_n_5 ;
  wire \next_mi_addr_reg[20]_i_1_n_6 ;
  wire \next_mi_addr_reg[20]_i_1_n_7 ;
  wire \next_mi_addr_reg[24]_i_1_n_0 ;
  wire \next_mi_addr_reg[24]_i_1_n_1 ;
  wire \next_mi_addr_reg[24]_i_1_n_2 ;
  wire \next_mi_addr_reg[24]_i_1_n_3 ;
  wire \next_mi_addr_reg[24]_i_1_n_4 ;
  wire \next_mi_addr_reg[24]_i_1_n_5 ;
  wire \next_mi_addr_reg[24]_i_1_n_6 ;
  wire \next_mi_addr_reg[24]_i_1_n_7 ;
  wire \next_mi_addr_reg[28]_i_1_n_0 ;
  wire \next_mi_addr_reg[28]_i_1_n_1 ;
  wire \next_mi_addr_reg[28]_i_1_n_2 ;
  wire \next_mi_addr_reg[28]_i_1_n_3 ;
  wire \next_mi_addr_reg[28]_i_1_n_4 ;
  wire \next_mi_addr_reg[28]_i_1_n_5 ;
  wire \next_mi_addr_reg[28]_i_1_n_6 ;
  wire \next_mi_addr_reg[28]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire [3:0]num_transactions;
  wire [4:0]num_transactions_q;
  wire \num_transactions_q[0]_i_2__0_n_0 ;
  wire \num_transactions_q[1]_i_1__0_n_0 ;
  wire \num_transactions_q[1]_i_2__0_n_0 ;
  wire \num_transactions_q[2]_i_1__0_n_0 ;
  wire \num_transactions_q[4]_i_1__0_n_0 ;
  wire [3:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [30:14]p_0_out;
  wire [31:2]pre_mi_addr;
  wire \pushed_commands[7]_i_1__0_n_0 ;
  wire \pushed_commands[7]_i_3__0_n_0 ;
  wire [7:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [2:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire si_full_size;
  wire si_full_size_q;
  wire [1:0]size_mask;
  wire [4:0]size_mask_q;
  wire [6:0]split_addr_mask;
  wire \split_addr_mask_q_reg_n_0_[0] ;
  wire \split_addr_mask_q_reg_n_0_[10] ;
  wire \split_addr_mask_q_reg_n_0_[11] ;
  wire \split_addr_mask_q_reg_n_0_[12] ;
  wire \split_addr_mask_q_reg_n_0_[13] ;
  wire \split_addr_mask_q_reg_n_0_[14] ;
  wire \split_addr_mask_q_reg_n_0_[15] ;
  wire \split_addr_mask_q_reg_n_0_[16] ;
  wire \split_addr_mask_q_reg_n_0_[17] ;
  wire \split_addr_mask_q_reg_n_0_[18] ;
  wire \split_addr_mask_q_reg_n_0_[19] ;
  wire \split_addr_mask_q_reg_n_0_[1] ;
  wire \split_addr_mask_q_reg_n_0_[20] ;
  wire \split_addr_mask_q_reg_n_0_[21] ;
  wire \split_addr_mask_q_reg_n_0_[22] ;
  wire \split_addr_mask_q_reg_n_0_[23] ;
  wire \split_addr_mask_q_reg_n_0_[24] ;
  wire \split_addr_mask_q_reg_n_0_[25] ;
  wire \split_addr_mask_q_reg_n_0_[26] ;
  wire \split_addr_mask_q_reg_n_0_[27] ;
  wire \split_addr_mask_q_reg_n_0_[28] ;
  wire \split_addr_mask_q_reg_n_0_[29] ;
  wire \split_addr_mask_q_reg_n_0_[2] ;
  wire \split_addr_mask_q_reg_n_0_[30] ;
  wire \split_addr_mask_q_reg_n_0_[31] ;
  wire \split_addr_mask_q_reg_n_0_[3] ;
  wire \split_addr_mask_q_reg_n_0_[4] ;
  wire \split_addr_mask_q_reg_n_0_[5] ;
  wire \split_addr_mask_q_reg_n_0_[6] ;
  wire \split_addr_mask_q_reg_n_0_[7] ;
  wire \split_addr_mask_q_reg_n_0_[8] ;
  wire \split_addr_mask_q_reg_n_0_[9] ;
  wire split_ongoing;
  wire \unalignment_addr_q[0]_i_1__0_n_0 ;
  wire \unalignment_addr_q[1]_i_1__0_n_0 ;
  wire \unalignment_addr_q[2]_i_1__0_n_0 ;
  wire \unalignment_addr_q[3]_i_1__0_n_0 ;
  wire \unalignment_addr_q[4]_i_1__0_n_0 ;
  wire \unalignment_addr_q_reg_n_0_[0] ;
  wire \unalignment_addr_q_reg_n_0_[1] ;
  wire \unalignment_addr_q_reg_n_0_[2] ;
  wire \unalignment_addr_q_reg_n_0_[3] ;
  wire \unalignment_addr_q_reg_n_0_[4] ;
  wire wrap_need_to_split;
  wire wrap_need_to_split_q;
  wire wrap_need_to_split_q_i_2__0_n_0;
  wire wrap_need_to_split_q_i_3_n_0;
  wire wrap_need_to_split_q_i_4_n_0;
  wire [7:0]wrap_rest_len;
  wire [7:0]wrap_rest_len0;
  wire \wrap_rest_len[1]_i_1__0_n_0 ;
  wire \wrap_rest_len[7]_i_2__0_n_0 ;
  wire [7:0]wrap_unaligned_len;
  wire [7:0]wrap_unaligned_len_q;
  wire [3:3]\NLW_m_axi_arlen[4]_INST_0_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axi_arlen[4]_INST_0_i_24_O_UNCONNECTED ;
  wire [3:1]\NLW_m_axi_arlen[4]_INST_0_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axi_arlen[4]_INST_0_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_O_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[0]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[10]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[11]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[12]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[13]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[14]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[1]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[2]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[3]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[4]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[5]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[6]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[7]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[8]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[9]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arburst[0]),
        .Q(S_AXI_ABURST_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arburst[1]),
        .Q(S_AXI_ABURST_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arid[0]),
        .Q(S_AXI_AID_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arid[1]),
        .Q(S_AXI_AID_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arid[2]),
        .Q(S_AXI_AID_Q[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[3]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[4]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[5]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[6]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlen[7]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arlock),
        .Q(S_AXI_ALOCK_Q),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_AREADY_I_i_2__0
       (.I0(aresetn),
        .I1(areset_d[1]),
        .I2(areset_d[0]),
        .O(S_AXI_AREADY_I_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hD5D5FFD5)) 
    S_AXI_AREADY_I_i_5__0
       (.I0(aresetn),
        .I1(E),
        .I2(s_axi_arvalid),
        .I3(areset_d[1]),
        .I4(areset_d[0]),
        .O(S_AXI_AREADY_I_i_5__0_n_0));
  LUT5 #(
    .INIT(32'hF888F8F8)) 
    S_AXI_AREADY_I_i_7__0
       (.I0(access_is_incr_q),
        .I1(last_incr_split0),
        .I2(access_is_wrap_q),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(S_AXI_AREADY_I_i_7__0_n_0));
  FDRE S_AXI_AREADY_I_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_337),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arregion[0]),
        .Q(m_axi_arregion[0]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arregion[1]),
        .Q(m_axi_arregion[1]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arregion[2]),
        .Q(m_axi_arregion[2]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arregion[3]),
        .Q(m_axi_arregion[3]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arsize[0]),
        .Q(S_AXI_ASIZE_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arsize[1]),
        .Q(S_AXI_ASIZE_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(S_AXI_ASIZE_Q[2]),
        .R(1'b0));
  FDRE access_fit_mi_side_q_reg
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[2]),
        .Q(access_fit_mi_side_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    access_is_fix_q_i_1__0
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_fix));
  FDRE access_is_fix_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_fix),
        .Q(access_is_fix_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1__0
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE access_is_incr_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_wrap_q_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(access_is_wrap));
  FDRE access_is_wrap_q_reg
       (.C(CLK),
        .CE(E),
        .D(access_is_wrap),
        .Q(access_is_wrap_q),
        .R(SR));
  FDRE \areset_d_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE \areset_d_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cmd_depth[0]_i_1 
       (.I0(cmd_depth_reg__0[0]),
        .O(\cmd_depth[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cmd_depth[3]_i_2 
       (.I0(cmd_depth_reg__0[1]),
        .I1(cmd_depth_reg__0[0]),
        .O(\cmd_depth[3]_i_2_n_0 ));
  FDRE \cmd_depth_reg[0] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(\cmd_depth[0]_i_1_n_0 ),
        .Q(cmd_depth_reg__0[0]),
        .R(SR));
  FDRE \cmd_depth_reg[1] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(cmd_queue_n_24),
        .Q(cmd_depth_reg__0[1]),
        .R(SR));
  FDRE \cmd_depth_reg[2] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(cmd_queue_n_23),
        .Q(cmd_depth_reg__0[2]),
        .R(SR));
  FDRE \cmd_depth_reg[3] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(cmd_queue_n_22),
        .Q(cmd_depth_reg__0[3]),
        .R(SR));
  FDRE \cmd_depth_reg[4] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(cmd_queue_n_21),
        .Q(cmd_depth_reg__0[4]),
        .R(SR));
  FDRE \cmd_depth_reg[5] 
       (.C(CLK),
        .CE(cmd_queue_n_308),
        .D(cmd_queue_n_20),
        .Q(cmd_depth_reg__0[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    cmd_empty_i_2
       (.I0(cmd_depth_reg__0[4]),
        .I1(cmd_depth_reg__0[5]),
        .I2(cmd_depth_reg__0[1]),
        .I3(cmd_depth_reg__0[0]),
        .I4(cmd_depth_reg__0[3]),
        .I5(cmd_depth_reg__0[2]),
        .O(cmd_empty_i_2_n_0));
  FDSE cmd_empty_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_342),
        .Q(cmd_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[0]_i_1__0 
       (.I0(cmd_mask_i[0]),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(E),
        .I4(p_0_out[14]),
        .O(\cmd_mask_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd_mask_q[0]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[0]),
        .O(cmd_mask_i[0]));
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[1]_i_1__0 
       (.I0(cmd_mask_i[1]),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(E),
        .I4(p_0_out[15]),
        .O(\cmd_mask_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFEFBFA)) 
    \cmd_mask_q[1]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .O(cmd_mask_i[1]));
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[2]_i_1__0 
       (.I0(cmd_mask_i[2]),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(E),
        .I4(p_0_out[16]),
        .O(\cmd_mask_q[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFBF9FEFCFAF8)) 
    \cmd_mask_q[2]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[2]),
        .O(cmd_mask_i[2]));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFB00)) 
    \cmd_mask_q[3]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(\cmd_mask_q[3]_i_2__0_n_0 ),
        .I2(\cmd_mask_q[3]_i_3__0_n_0 ),
        .I3(E),
        .I4(\cmd_mask_q[3]_i_4__0_n_0 ),
        .I5(p_0_out[17]),
        .O(\cmd_mask_q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cmd_mask_q[3]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\cmd_mask_q[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd_mask_q[3]_i_3__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(\cmd_mask_q[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cmd_mask_q[3]_i_4__0 
       (.I0(E),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .O(\cmd_mask_q[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFBFFFB00)) 
    \cmd_mask_q[4]_i_1__0 
       (.I0(cmd_mask_i[4]),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(E),
        .I4(p_0_out[18]),
        .O(\cmd_mask_q[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFCCFBC8)) 
    \cmd_mask_q[4]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(\masked_addr_q[4]_i_2__0_n_0 ),
        .I4(s_axi_arsize[0]),
        .O(cmd_mask_i[4]));
  FDRE \cmd_mask_q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[0]_i_1__0_n_0 ),
        .Q(p_0_out[14]),
        .R(SR));
  FDRE \cmd_mask_q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[1]_i_1__0_n_0 ),
        .Q(p_0_out[15]),
        .R(SR));
  FDRE \cmd_mask_q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[2]_i_1__0_n_0 ),
        .Q(p_0_out[16]),
        .R(SR));
  FDRE \cmd_mask_q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[3]_i_1__0_n_0 ),
        .Q(p_0_out[17]),
        .R(SR));
  FDRE \cmd_mask_q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cmd_mask_q[4]_i_1__0_n_0 ),
        .Q(p_0_out[18]),
        .R(SR));
  FDRE cmd_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_343),
        .Q(cmd_push_block),
        .R(1'b0));
  ntps_top_auto_ds_0_axi_data_fifo_v2_1_axic_fifo_8 cmd_queue
       (.CLK(CLK),
        .CO(last_incr_split0),
        .D({cmd_queue_n_20,cmd_queue_n_21,cmd_queue_n_22,cmd_queue_n_23,cmd_queue_n_24}),
        .E(cmd_queue_n_308),
        .Q(cmd_depth_reg__0),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[4] ({\S_AXI_AADDR_Q_reg_n_0_[4] ,\S_AXI_AADDR_Q_reg_n_0_[3] ,\S_AXI_AADDR_Q_reg_n_0_[2] ,\S_AXI_AADDR_Q_reg_n_0_[1] ,\S_AXI_AADDR_Q_reg_n_0_[0] }),
        .\S_AXI_AID_Q_reg[2] (S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[6] ({\m_axi_arsize[2] [7:0],S_AXI_ASIZE_Q}),
        .\S_AXI_ALEN_Q_reg[7] ({\S_AXI_ALEN_Q_reg_n_0_[7] ,\S_AXI_ALEN_Q_reg_n_0_[6] ,\S_AXI_ALEN_Q_reg_n_0_[5] ,\S_AXI_ALEN_Q_reg_n_0_[4] ,p_0_in}),
        .S_AXI_AREADY_I_reg(cmd_queue_n_337),
        .S_AXI_AREADY_I_reg_0(E),
        .S_AXI_AREADY_I_reg_1(S_AXI_AREADY_I_i_5__0_n_0),
        .S_AXI_AREADY_I_reg_2(command_ongoing_i_2__0_n_0),
        .\S_AXI_RRESP_ACC_reg[1] (D),
        .\S_AXI_RRESP_ACC_reg[1]_0 (\S_AXI_RRESP_ACC_reg[1] ),
        .\S_AXI_RRESP_ACC_reg[1]_1 (\S_AXI_RRESP_ACC_reg[1]_0 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159] (\WORD_LANE[4].S_AXI_RDATA_II_reg[159] ),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 (\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 ),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191] (\WORD_LANE[5].S_AXI_RDATA_II_reg[191] ),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 (\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[192] (\WORD_LANE[6].S_AXI_RDATA_II_reg[192] ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223] (\WORD_LANE[6].S_AXI_RDATA_II_reg[223] ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 (\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 ),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255] (\WORD_LANE[7].S_AXI_RDATA_II_reg[255] ),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 (\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 ),
        .access_fit_mi_side_q(access_fit_mi_side_q),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_incr_q_reg(S_AXI_AREADY_I_i_7__0_n_0),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (S_AXI_AREADY_I_i_2__0_n_0),
        .aresetn(aresetn),
        .\cmd_depth_reg[1] (\cmd_depth[3]_i_2_n_0 ),
        .\cmd_depth_reg[2] (\cmd_depth_reg[2]_0 ),
        .\cmd_depth_reg[4] (cmd_empty_i_2_n_0),
        .cmd_empty(cmd_empty),
        .cmd_empty_reg(cmd_queue_n_342),
        .\cmd_mask_q_reg[4] (p_0_out[18:14]),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_queue_n_343),
        .command_ongoing_reg(cmd_queue_n_338),
        .command_ongoing_reg_0(command_ongoing_reg_n_0),
        .\current_word_1_reg[0] (\current_word_1_reg[0] ),
        .\current_word_1_reg[1] (\current_word_1_reg[1] ),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .\current_word_1_reg[3]_0 (\current_word_1_reg[3]_0 ),
        .\current_word_1_reg[3]_1 (Q),
        .\current_word_1_reg[4] (\current_word_1_reg[4] ),
        .\current_word_1_reg[4]_0 (\current_word_1_reg[4]_0 ),
        .din({p_0_out[30],\m_axi_arsize[2] [10:8]}),
        .dout(dout),
        .\downsized_len_q_reg[7] (downsized_len_q),
        .first_mi_word_reg(first_mi_word_reg),
        .first_word(first_word),
        .\fix_len_q_reg[4] (fix_len_q),
        .fix_need_to_split_q(fix_need_to_split_q),
        .\goreg_dm.dout_i_reg[10] (\goreg_dm.dout_i_reg[10] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] (cmd_queue_n_32),
        .\gpr1.dout_i_reg[7]_0 (cmd_queue_n_33),
        .\gpr1.dout_i_reg[7]_1 (cmd_queue_n_35),
        .\gpr1.dout_i_reg[7]_10 (cmd_queue_n_44),
        .\gpr1.dout_i_reg[7]_11 (cmd_queue_n_45),
        .\gpr1.dout_i_reg[7]_12 (cmd_queue_n_46),
        .\gpr1.dout_i_reg[7]_13 (cmd_queue_n_305),
        .\gpr1.dout_i_reg[7]_14 (cmd_queue_n_306),
        .\gpr1.dout_i_reg[7]_15 (cmd_queue_n_307),
        .\gpr1.dout_i_reg[7]_16 (cmd_queue_n_310),
        .\gpr1.dout_i_reg[7]_17 (cmd_queue_n_311),
        .\gpr1.dout_i_reg[7]_18 (cmd_queue_n_334),
        .\gpr1.dout_i_reg[7]_19 (cmd_queue_n_335),
        .\gpr1.dout_i_reg[7]_2 (cmd_queue_n_36),
        .\gpr1.dout_i_reg[7]_20 (cmd_queue_n_336),
        .\gpr1.dout_i_reg[7]_3 (cmd_queue_n_37),
        .\gpr1.dout_i_reg[7]_4 (cmd_queue_n_38),
        .\gpr1.dout_i_reg[7]_5 (cmd_queue_n_39),
        .\gpr1.dout_i_reg[7]_6 (cmd_queue_n_40),
        .\gpr1.dout_i_reg[7]_7 (cmd_queue_n_41),
        .\gpr1.dout_i_reg[7]_8 (cmd_queue_n_42),
        .\gpr1.dout_i_reg[7]_9 (cmd_queue_n_43),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\next_mi_addr_reg[8] (cmd_queue_n_34),
        .\next_mi_addr_reg[8]_0 (cmd_queue_n_333),
        .p_0_in1_in({cmd_queue_n_25,cmd_queue_n_26,cmd_queue_n_27,cmd_queue_n_28,cmd_queue_n_29,cmd_queue_n_30,cmd_queue_n_31}),
        .\pushed_commands_reg[7] (pushed_commands_reg),
        .pushed_new_cmd(pushed_new_cmd),
        .\queue_id_reg[0] (cmd_queue_n_341),
        .\queue_id_reg[1] (cmd_queue_n_340),
        .\queue_id_reg[2] (cmd_queue_n_339),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .si_full_size_q(si_full_size_q),
        .\size_mask_q_reg[4] (size_mask_q),
        .\split_addr_mask_q_reg[4] ({\split_addr_mask_q_reg_n_0_[4] ,\split_addr_mask_q_reg_n_0_[3] ,\split_addr_mask_q_reg_n_0_[2] ,\split_addr_mask_q_reg_n_0_[1] ,\split_addr_mask_q_reg_n_0_[0] }),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] ({\unalignment_addr_q_reg_n_0_[4] ,\unalignment_addr_q_reg_n_0_[3] ,\unalignment_addr_q_reg_n_0_[2] ,\unalignment_addr_q_reg_n_0_[1] ,\unalignment_addr_q_reg_n_0_[0] }),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (wrap_rest_len),
        .\wrap_unaligned_len_q_reg[1] (wrap_unaligned_len_q[1:0]));
  LUT2 #(
    .INIT(4'h8)) 
    command_ongoing_i_2__0
       (.I0(E),
        .I1(s_axi_arvalid),
        .O(command_ongoing_i_2__0_n_0));
  FDRE command_ongoing_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_338),
        .Q(command_ongoing_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \downsized_len_q[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[0]),
        .O(\downsized_len_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hEFFFECCC)) 
    \downsized_len_q[1]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[1]),
        .O(\downsized_len_q[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFAFFCF0F0A0)) 
    \downsized_len_q[2]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(\masked_addr_q[4]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[2]),
        .O(\downsized_len_q[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAFAFFCF0A0A0)) 
    \downsized_len_q[3]_i_1__0 
       (.I0(\masked_addr_q[5]_i_3__0_n_0 ),
        .I1(\masked_addr_q[5]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[3]),
        .O(\downsized_len_q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[4]_i_1__0 
       (.I0(\downsized_len_q[4]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[4]),
        .O(\downsized_len_q[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAFFFC00AA00)) 
    \downsized_len_q[4]_i_2__0 
       (.I0(\masked_addr_q[2]_i_2__0_n_0 ),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(\num_transactions_q[0]_i_2__0_n_0 ),
        .O(\downsized_len_q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \downsized_len_q[5]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[5]),
        .O(\downsized_len_q[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \downsized_len_q[6]_i_1__0 
       (.I0(\masked_addr_q[4]_i_2__0_n_0 ),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[6]),
        .O(\downsized_len_q[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \downsized_len_q[7]_i_1__0 
       (.I0(\masked_addr_q[5]_i_2__0_n_0 ),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[7]),
        .O(\downsized_len_q[7]_i_1__0_n_0 ));
  FDRE \downsized_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[0]_i_1__0_n_0 ),
        .Q(downsized_len_q[0]),
        .R(SR));
  FDRE \downsized_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[1]_i_1__0_n_0 ),
        .Q(downsized_len_q[1]),
        .R(SR));
  FDRE \downsized_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[2]_i_1__0_n_0 ),
        .Q(downsized_len_q[2]),
        .R(SR));
  FDRE \downsized_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[3]_i_1__0_n_0 ),
        .Q(downsized_len_q[3]),
        .R(SR));
  FDRE \downsized_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[4]_i_1__0_n_0 ),
        .Q(downsized_len_q[4]),
        .R(SR));
  FDRE \downsized_len_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[5]_i_1__0_n_0 ),
        .Q(downsized_len_q[5]),
        .R(SR));
  FDRE \downsized_len_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[6]_i_1__0_n_0 ),
        .Q(downsized_len_q[6]),
        .R(SR));
  FDRE \downsized_len_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\downsized_len_q[7]_i_1__0_n_0 ),
        .Q(downsized_len_q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \fix_len_q[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(\fix_len_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \fix_len_q[2]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(\fix_len_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fix_len_q[3]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(\fix_len_q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fix_len_q[4]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\fix_len_q[4]_i_1__0_n_0 ));
  FDRE \fix_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[0]_i_1__0_n_0 ),
        .Q(fix_len_q[0]),
        .R(SR));
  FDRE \fix_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(fix_len_q[1]),
        .R(SR));
  FDRE \fix_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[2]_i_1__0_n_0 ),
        .Q(fix_len_q[2]),
        .R(SR));
  FDRE \fix_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[3]_i_1__0_n_0 ),
        .Q(fix_len_q[3]),
        .R(SR));
  FDRE \fix_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\fix_len_q[4]_i_1__0_n_0 ),
        .Q(fix_len_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    fix_need_to_split_q_i_1__0
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arburst[1]),
        .I4(s_axi_arburst[0]),
        .O(fix_need_to_split));
  FDRE fix_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(fix_need_to_split),
        .Q(fix_need_to_split_q),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split_q_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(\num_transactions_q[1]_i_1__0_n_0 ),
        .I3(incr_need_to_split_q_i_2__0_n_0),
        .I4(\num_transactions_q[4]_i_1__0_n_0 ),
        .I5(num_transactions[0]),
        .O(incr_need_to_split));
  LUT6 #(
    .INIT(64'hA8A0A880A8A02800)) 
    incr_need_to_split_q_i_2__0
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[7]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen[5]),
        .O(incr_need_to_split_q_i_2__0_n_0));
  FDRE incr_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(incr_need_to_split),
        .Q(incr_need_to_split_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hAAAACFFF)) 
    legal_wrap_len_q_i_1__0
       (.I0(legal_wrap_len_q_i_2__0_n_0),
        .I1(data0),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(legal_wrap_len_q_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h002202AA00FFFFFF)) 
    legal_wrap_len_q_i_2__0
       (.I0(legal_wrap_len_q_i_4__0_n_0),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[2]),
        .O(legal_wrap_len_q_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    legal_wrap_len_q_i_3__0
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[3]),
        .O(data0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    legal_wrap_len_q_i_4__0
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[2]),
        .O(legal_wrap_len_q_i_4__0_n_0));
  FDRE legal_wrap_len_q_reg
       (.C(CLK),
        .CE(E),
        .D(legal_wrap_len_q_i_1__0_n_0),
        .Q(legal_wrap_len_q),
        .R(SR));
  LUT5 #(
    .INIT(32'h00E2AAAA)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[0]),
        .I3(access_is_incr_q),
        .I4(split_ongoing),
        .O(m_axi_araddr[0]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[10]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(m_axi_araddr[10]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[11]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .O(m_axi_araddr[11]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[12]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .O(m_axi_araddr[12]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[13]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .O(m_axi_araddr[13]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[14]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .O(m_axi_araddr[14]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[15]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .O(m_axi_araddr[15]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[16]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .O(m_axi_araddr[16]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[17]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .O(m_axi_araddr[17]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[18]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .O(m_axi_araddr[18]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[19]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h00E2AAAA)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[1]),
        .I3(access_is_incr_q),
        .I4(split_ongoing),
        .O(m_axi_araddr[1]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[20]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .O(m_axi_araddr[20]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[21]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .O(m_axi_araddr[21]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[22]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .O(m_axi_araddr[22]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[23]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .O(m_axi_araddr[23]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[24]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .O(m_axi_araddr[24]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[25]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .O(m_axi_araddr[25]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[26]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .O(m_axi_araddr[26]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[27]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .O(m_axi_araddr[27]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[28]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .O(m_axi_araddr[28]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[29]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .O(m_axi_araddr[29]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[2]),
        .I3(next_mi_addr[2]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_araddr[2]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[30]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .O(m_axi_araddr[30]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[31]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .O(m_axi_araddr[31]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[3]),
        .I3(next_mi_addr[3]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_araddr[3]));
  LUT6 #(
    .INIT(64'hFF00AAAAE2E2AAAA)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[4]),
        .I3(next_mi_addr[4]),
        .I4(split_ongoing),
        .I5(access_is_incr_q),
        .O(m_axi_araddr[4]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[5]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .O(m_axi_araddr[5]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[6]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .O(m_axi_araddr[6]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[7]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .O(m_axi_araddr[7]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[8]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .O(m_axi_araddr[8]));
  LUT6 #(
    .INIT(64'hBFB3BFBF8C808080)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(split_ongoing),
        .I2(access_is_incr_q),
        .I3(masked_addr_q[9]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .O(m_axi_araddr[9]));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \m_axi_arburst[0]_INST_0 
       (.I0(S_AXI_ABURST_Q[0]),
        .I1(access_fit_mi_side_q),
        .I2(access_is_fix_q),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(m_axi_arburst[0]));
  LUT5 #(
    .INIT(32'h8A888A8A)) 
    \m_axi_arburst[1]_INST_0 
       (.I0(S_AXI_ABURST_Q[1]),
        .I1(access_fit_mi_side_q),
        .I2(access_is_fix_q),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(m_axi_arburst[1]));
  CARRY4 \m_axi_arlen[0]_INST_0 
       (.CI(1'b0),
        .CO({\m_axi_arlen[0]_INST_0_n_0 ,\m_axi_arlen[0]_INST_0_n_1 ,\m_axi_arlen[0]_INST_0_n_2 ,\m_axi_arlen[0]_INST_0_n_3 }),
        .CYINIT(1'b1),
        .DI({cmd_queue_n_28,cmd_queue_n_29,cmd_queue_n_30,cmd_queue_n_31}),
        .O(\m_axi_arsize[2] [3:0]),
        .S({\m_axi_arlen[0]_INST_0_i_5_n_0 ,\m_axi_arlen[0]_INST_0_i_6_n_0 ,\m_axi_arlen[0]_INST_0_i_7_n_0 ,\m_axi_arlen[0]_INST_0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_arlen[0]_INST_0_i_5 
       (.I0(cmd_queue_n_42),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_41),
        .I3(cmd_queue_n_335),
        .I4(cmd_queue_n_46),
        .I5(wrap_unaligned_len_q[3]),
        .O(\m_axi_arlen[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_arlen[0]_INST_0_i_6 
       (.I0(cmd_queue_n_40),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_39),
        .I3(cmd_queue_n_334),
        .I4(cmd_queue_n_46),
        .I5(wrap_unaligned_len_q[2]),
        .O(\m_axi_arlen[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0C1D3F1DF3E2C0E2)) 
    \m_axi_arlen[0]_INST_0_i_7 
       (.I0(cmd_queue_n_36),
        .I1(access_fit_mi_side_q),
        .I2(p_0_in[1]),
        .I3(last_incr_split0),
        .I4(cmd_queue_n_35),
        .I5(cmd_queue_n_311),
        .O(\m_axi_arlen[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0C1D3F1DF3E2C0E2)) 
    \m_axi_arlen[0]_INST_0_i_8 
       (.I0(cmd_queue_n_33),
        .I1(access_fit_mi_side_q),
        .I2(p_0_in[0]),
        .I3(last_incr_split0),
        .I4(cmd_queue_n_32),
        .I5(cmd_queue_n_310),
        .O(\m_axi_arlen[0]_INST_0_i_8_n_0 ));
  CARRY4 \m_axi_arlen[4]_INST_0 
       (.CI(\m_axi_arlen[0]_INST_0_n_0 ),
        .CO({\NLW_m_axi_arlen[4]_INST_0_CO_UNCONNECTED [3],\m_axi_arlen[4]_INST_0_n_1 ,\m_axi_arlen[4]_INST_0_n_2 ,\m_axi_arlen[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,cmd_queue_n_25,cmd_queue_n_26,cmd_queue_n_27}),
        .O(\m_axi_arsize[2] [7:4]),
        .S({\m_axi_arlen[4]_INST_0_i_4_n_0 ,\m_axi_arlen[4]_INST_0_i_5_n_0 ,\m_axi_arlen[4]_INST_0_i_6_n_0 ,\m_axi_arlen[4]_INST_0_i_7_n_0 }));
  CARRY4 \m_axi_arlen[4]_INST_0_i_24 
       (.CI(1'b0),
        .CO({\m_axi_arlen[4]_INST_0_i_24_n_0 ,\m_axi_arlen[4]_INST_0_i_24_n_1 ,\m_axi_arlen[4]_INST_0_i_24_n_2 ,\m_axi_arlen[4]_INST_0_i_24_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axi_arlen[4]_INST_0_i_24_O_UNCONNECTED [3:0]),
        .S({1'b1,\m_axi_arlen[4]_INST_0_i_30_n_0 ,\m_axi_arlen[4]_INST_0_i_31_n_0 ,\m_axi_arlen[4]_INST_0_i_32_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axi_arlen[4]_INST_0_i_30 
       (.I0(pushed_commands_reg[6]),
        .I1(pushed_commands_reg[7]),
        .O(\m_axi_arlen[4]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h09000009)) 
    \m_axi_arlen[4]_INST_0_i_31 
       (.I0(num_transactions_q[3]),
        .I1(pushed_commands_reg[3]),
        .I2(pushed_commands_reg[5]),
        .I3(pushed_commands_reg[4]),
        .I4(num_transactions_q[4]),
        .O(\m_axi_arlen[4]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axi_arlen[4]_INST_0_i_32 
       (.I0(pushed_commands_reg[2]),
        .I1(num_transactions_q[2]),
        .I2(pushed_commands_reg[0]),
        .I3(num_transactions_q[0]),
        .I4(num_transactions_q[1]),
        .I5(pushed_commands_reg[1]),
        .O(\m_axi_arlen[4]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_arlen[4]_INST_0_i_4 
       (.I0(cmd_queue_n_43),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_307),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[7]),
        .O(\m_axi_arlen[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_arlen[4]_INST_0_i_5 
       (.I0(cmd_queue_n_45),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_305),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[6]),
        .O(\m_axi_arlen[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1D1D1D)) 
    \m_axi_arlen[4]_INST_0_i_6 
       (.I0(cmd_queue_n_44),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_306),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .I5(wrap_unaligned_len_q[5]),
        .O(\m_axi_arlen[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E21DE21D1D1DE2)) 
    \m_axi_arlen[4]_INST_0_i_7 
       (.I0(cmd_queue_n_38),
        .I1(last_incr_split0),
        .I2(cmd_queue_n_37),
        .I3(cmd_queue_n_336),
        .I4(cmd_queue_n_46),
        .I5(wrap_unaligned_len_q[4]),
        .O(\m_axi_arlen[4]_INST_0_i_7_n_0 ));
  CARRY4 \m_axi_arlen[4]_INST_0_i_9 
       (.CI(\m_axi_arlen[4]_INST_0_i_24_n_0 ),
        .CO({\NLW_m_axi_arlen[4]_INST_0_i_9_CO_UNCONNECTED [3:1],last_incr_split0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axi_arlen[4]_INST_0_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(S_AXI_ALOCK_Q),
        .I1(fix_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(wrap_need_to_split_q),
        .O(m_axi_arlock));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \masked_addr_q[0]_i_1__0 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(masked_addr[0]));
  LUT6 #(
    .INIT(64'h00007F00FF007F00)) 
    \masked_addr_q[10]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_araddr[10]),
        .I4(s_axi_arsize[2]),
        .I5(\num_transactions_q[0]_i_2__0_n_0 ),
        .O(masked_addr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[11]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(\num_transactions_q[1]_i_1__0_n_0 ),
        .O(masked_addr[11]));
  LUT6 #(
    .INIT(64'h202A2A2AAAAAAAAA)) 
    \masked_addr_q[12]_i_1__0 
       (.I0(s_axi_araddr[12]),
        .I1(\masked_addr_q[12]_i_2__0_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arsize[2]),
        .O(masked_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[12]_i_2__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[6]),
        .O(\masked_addr_q[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h47FFFFFF00000000)) 
    \masked_addr_q[13]_i_1__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(s_axi_araddr[13]),
        .O(\masked_addr_q[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \masked_addr_q[14]_i_1__0 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(masked_addr[14]));
  LUT6 #(
    .INIT(64'h0000004700000000)) 
    \masked_addr_q[1]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_araddr[1]),
        .O(masked_addr[1]));
  LUT6 #(
    .INIT(64'h000000080000222A)) 
    \masked_addr_q[2]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[2]),
        .I5(\masked_addr_q[2]_i_2__0_n_0 ),
        .O(masked_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[2]_i_2__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .O(\masked_addr_q[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \masked_addr_q[3]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(\masked_addr_q[7]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .O(masked_addr[3]));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \masked_addr_q[4]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(\masked_addr_q[4]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[1]),
        .O(masked_addr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[4]_i_2__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[4]),
        .O(\masked_addr_q[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h000A202A)) 
    \masked_addr_q[5]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\masked_addr_q[5]_i_2__0_n_0 ),
        .I4(\masked_addr_q[5]_i_3__0_n_0 ),
        .O(masked_addr[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[5]_i_2__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[5]),
        .O(\masked_addr_q[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[5]_i_3__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .O(\masked_addr_q[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[6]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(\masked_addr_q[6]_i_2__0_n_0 ),
        .O(masked_addr[6]));
  LUT6 #(
    .INIT(64'hFACCFACCFACC0ACC)) 
    \masked_addr_q[6]_i_2__0 
       (.I0(\masked_addr_q[2]_i_2__0_n_0 ),
        .I1(\num_transactions_q[0]_i_2__0_n_0 ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[0]),
        .O(\masked_addr_q[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[7]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_araddr[7]),
        .O(masked_addr[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[3]),
        .O(\masked_addr_q[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_3 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[7]),
        .O(\masked_addr_q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA2A)) 
    \masked_addr_q[8]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(\masked_addr_q[8]_i_2__0_n_0 ),
        .O(masked_addr[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC00000)) 
    \masked_addr_q[8]_i_2__0 
       (.I0(\masked_addr_q[4]_i_2__0_n_0 ),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\masked_addr_q[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[9]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(\masked_addr_q[9]_i_2__0_n_0 ),
        .O(masked_addr[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAACFC00000)) 
    \masked_addr_q[9]_i_2__0 
       (.I0(\masked_addr_q[5]_i_2__0_n_0 ),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[7]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\masked_addr_q[9]_i_2__0_n_0 ));
  FDRE \masked_addr_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[0]),
        .Q(masked_addr_q[0]),
        .R(SR));
  FDRE \masked_addr_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[10]),
        .Q(masked_addr_q[10]),
        .R(SR));
  FDRE \masked_addr_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[11]),
        .Q(masked_addr_q[11]),
        .R(SR));
  FDRE \masked_addr_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[12]),
        .Q(masked_addr_q[12]),
        .R(SR));
  FDRE \masked_addr_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\masked_addr_q[13]_i_1__0_n_0 ),
        .Q(masked_addr_q[13]),
        .R(SR));
  FDRE \masked_addr_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[14]),
        .Q(masked_addr_q[14]),
        .R(SR));
  FDRE \masked_addr_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(masked_addr_q[15]),
        .R(SR));
  FDRE \masked_addr_q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(masked_addr_q[16]),
        .R(SR));
  FDRE \masked_addr_q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(masked_addr_q[17]),
        .R(SR));
  FDRE \masked_addr_q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(masked_addr_q[18]),
        .R(SR));
  FDRE \masked_addr_q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(masked_addr_q[19]),
        .R(SR));
  FDRE \masked_addr_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[1]),
        .Q(masked_addr_q[1]),
        .R(SR));
  FDRE \masked_addr_q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(masked_addr_q[20]),
        .R(SR));
  FDRE \masked_addr_q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(masked_addr_q[21]),
        .R(SR));
  FDRE \masked_addr_q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(masked_addr_q[22]),
        .R(SR));
  FDRE \masked_addr_q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(masked_addr_q[23]),
        .R(SR));
  FDRE \masked_addr_q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(masked_addr_q[24]),
        .R(SR));
  FDRE \masked_addr_q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(masked_addr_q[25]),
        .R(SR));
  FDRE \masked_addr_q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(masked_addr_q[26]),
        .R(SR));
  FDRE \masked_addr_q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(masked_addr_q[27]),
        .R(SR));
  FDRE \masked_addr_q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(masked_addr_q[28]),
        .R(SR));
  FDRE \masked_addr_q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(masked_addr_q[29]),
        .R(SR));
  FDRE \masked_addr_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[2]),
        .Q(masked_addr_q[2]),
        .R(SR));
  FDRE \masked_addr_q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(masked_addr_q[30]),
        .R(SR));
  FDRE \masked_addr_q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(masked_addr_q[31]),
        .R(SR));
  FDRE \masked_addr_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[3]),
        .Q(masked_addr_q[3]),
        .R(SR));
  FDRE \masked_addr_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[4]),
        .Q(masked_addr_q[4]),
        .R(SR));
  FDRE \masked_addr_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[5]),
        .Q(masked_addr_q[5]),
        .R(SR));
  FDRE \masked_addr_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[6]),
        .Q(masked_addr_q[6]),
        .R(SR));
  FDRE \masked_addr_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[7]),
        .Q(masked_addr_q[7]),
        .R(SR));
  FDRE \masked_addr_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[8]),
        .Q(masked_addr_q[8]),
        .R(SR));
  FDRE \masked_addr_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(masked_addr[9]),
        .Q(masked_addr_q[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[10] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[10]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[10]),
        .O(pre_mi_addr[10]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[12] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[12]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[12]),
        .O(pre_mi_addr[12]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[11] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[11]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[11]),
        .O(pre_mi_addr[11]));
  LUT6 #(
    .INIT(64'h47444777FFFFFFFF)) 
    \next_mi_addr[12]_i_5__0 
       (.I0(next_mi_addr[10]),
        .I1(cmd_queue_n_333),
        .I2(masked_addr_q[10]),
        .I3(cmd_queue_n_34),
        .I4(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I5(\split_addr_mask_q_reg_n_0_[10] ),
        .O(\next_mi_addr[12]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[12]_i_6__0 
       (.I0(\split_addr_mask_q_reg_n_0_[9] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[9]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[9]),
        .O(pre_mi_addr[9]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[16] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[16]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[16]),
        .O(pre_mi_addr[16]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[15] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[15]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[15]),
        .O(pre_mi_addr[15]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[14] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[14]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[14]),
        .O(pre_mi_addr[14]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[16]_i_5__0 
       (.I0(\split_addr_mask_q_reg_n_0_[13] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[13]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[13]),
        .O(pre_mi_addr[13]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[20] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[20]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[20]),
        .O(pre_mi_addr[20]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[19] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[19]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[19]),
        .O(pre_mi_addr[19]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[18] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[18]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[18]),
        .O(pre_mi_addr[18]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[20]_i_5__0 
       (.I0(\split_addr_mask_q_reg_n_0_[17] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[17]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[17]),
        .O(pre_mi_addr[17]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[24] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[24]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[24]),
        .O(pre_mi_addr[24]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[23] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[23]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[23]),
        .O(pre_mi_addr[23]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[22] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[22]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[22]),
        .O(pre_mi_addr[22]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[24]_i_5__0 
       (.I0(\split_addr_mask_q_reg_n_0_[21] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[21]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[21]),
        .O(pre_mi_addr[21]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[28] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[28]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[28]),
        .O(pre_mi_addr[28]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[27] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[27]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[27]),
        .O(pre_mi_addr[27]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[26] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[26]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[26]),
        .O(pre_mi_addr[26]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[28]_i_5__0 
       (.I0(\split_addr_mask_q_reg_n_0_[25] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[25]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[25]),
        .O(pre_mi_addr[25]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[2]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[2] ),
        .I1(cmd_queue_n_333),
        .I2(next_mi_addr[2]),
        .I3(masked_addr_q[2]),
        .I4(cmd_queue_n_34),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .O(pre_mi_addr[2]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_2__0 
       (.I0(\split_addr_mask_q_reg_n_0_[31] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[31]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[31]),
        .O(pre_mi_addr[31]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_3__0 
       (.I0(\split_addr_mask_q_reg_n_0_[30] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[30]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[30]),
        .O(pre_mi_addr[30]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[31]_i_4__0 
       (.I0(\split_addr_mask_q_reg_n_0_[29] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[29]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[29]),
        .O(pre_mi_addr[29]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[3]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[3] ),
        .I1(cmd_queue_n_333),
        .I2(next_mi_addr[3]),
        .I3(masked_addr_q[3]),
        .I4(cmd_queue_n_34),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .O(pre_mi_addr[3]));
  LUT6 #(
    .INIT(64'hA280A2A2A2808080)) 
    \next_mi_addr[4]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[4] ),
        .I1(cmd_queue_n_333),
        .I2(next_mi_addr[4]),
        .I3(masked_addr_q[4]),
        .I4(cmd_queue_n_34),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .O(pre_mi_addr[4]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[5]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[5] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[5]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[5]),
        .O(pre_mi_addr[5]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[6]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[6] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[6]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[6]),
        .O(pre_mi_addr[6]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[7]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[7] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[7]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[7]),
        .O(pre_mi_addr[7]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[8]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[8] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I2(cmd_queue_n_34),
        .I3(masked_addr_q[8]),
        .I4(cmd_queue_n_333),
        .I5(next_mi_addr[8]),
        .O(pre_mi_addr[8]));
  FDRE \next_mi_addr_reg[10] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_6 ),
        .Q(next_mi_addr[10]),
        .R(SR));
  FDRE \next_mi_addr_reg[11] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_5 ),
        .Q(next_mi_addr[11]),
        .R(SR));
  FDRE \next_mi_addr_reg[12] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_4 ),
        .Q(next_mi_addr[12]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[12]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[12]_i_1_n_0 ,\next_mi_addr_reg[12]_i_1_n_1 ,\next_mi_addr_reg[12]_i_1_n_2 ,\next_mi_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pre_mi_addr[10],1'b0}),
        .O({\next_mi_addr_reg[12]_i_1_n_4 ,\next_mi_addr_reg[12]_i_1_n_5 ,\next_mi_addr_reg[12]_i_1_n_6 ,\next_mi_addr_reg[12]_i_1_n_7 }),
        .S({pre_mi_addr[12:11],\next_mi_addr[12]_i_5__0_n_0 ,pre_mi_addr[9]}));
  FDRE \next_mi_addr_reg[13] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_7 ),
        .Q(next_mi_addr[13]),
        .R(SR));
  FDRE \next_mi_addr_reg[14] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_6 ),
        .Q(next_mi_addr[14]),
        .R(SR));
  FDRE \next_mi_addr_reg[15] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_5 ),
        .Q(next_mi_addr[15]),
        .R(SR));
  FDRE \next_mi_addr_reg[16] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[16]_i_1_n_4 ),
        .Q(next_mi_addr[16]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[16]_i_1 
       (.CI(\next_mi_addr_reg[12]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[16]_i_1_n_0 ,\next_mi_addr_reg[16]_i_1_n_1 ,\next_mi_addr_reg[16]_i_1_n_2 ,\next_mi_addr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[16]_i_1_n_4 ,\next_mi_addr_reg[16]_i_1_n_5 ,\next_mi_addr_reg[16]_i_1_n_6 ,\next_mi_addr_reg[16]_i_1_n_7 }),
        .S(pre_mi_addr[16:13]));
  FDRE \next_mi_addr_reg[17] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_7 ),
        .Q(next_mi_addr[17]),
        .R(SR));
  FDRE \next_mi_addr_reg[18] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_6 ),
        .Q(next_mi_addr[18]),
        .R(SR));
  FDRE \next_mi_addr_reg[19] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_5 ),
        .Q(next_mi_addr[19]),
        .R(SR));
  FDRE \next_mi_addr_reg[20] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[20]_i_1_n_4 ),
        .Q(next_mi_addr[20]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[20]_i_1 
       (.CI(\next_mi_addr_reg[16]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[20]_i_1_n_0 ,\next_mi_addr_reg[20]_i_1_n_1 ,\next_mi_addr_reg[20]_i_1_n_2 ,\next_mi_addr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[20]_i_1_n_4 ,\next_mi_addr_reg[20]_i_1_n_5 ,\next_mi_addr_reg[20]_i_1_n_6 ,\next_mi_addr_reg[20]_i_1_n_7 }),
        .S(pre_mi_addr[20:17]));
  FDRE \next_mi_addr_reg[21] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_7 ),
        .Q(next_mi_addr[21]),
        .R(SR));
  FDRE \next_mi_addr_reg[22] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_6 ),
        .Q(next_mi_addr[22]),
        .R(SR));
  FDRE \next_mi_addr_reg[23] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_5 ),
        .Q(next_mi_addr[23]),
        .R(SR));
  FDRE \next_mi_addr_reg[24] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[24]_i_1_n_4 ),
        .Q(next_mi_addr[24]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[24]_i_1 
       (.CI(\next_mi_addr_reg[20]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[24]_i_1_n_0 ,\next_mi_addr_reg[24]_i_1_n_1 ,\next_mi_addr_reg[24]_i_1_n_2 ,\next_mi_addr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[24]_i_1_n_4 ,\next_mi_addr_reg[24]_i_1_n_5 ,\next_mi_addr_reg[24]_i_1_n_6 ,\next_mi_addr_reg[24]_i_1_n_7 }),
        .S(pre_mi_addr[24:21]));
  FDRE \next_mi_addr_reg[25] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_7 ),
        .Q(next_mi_addr[25]),
        .R(SR));
  FDRE \next_mi_addr_reg[26] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_6 ),
        .Q(next_mi_addr[26]),
        .R(SR));
  FDRE \next_mi_addr_reg[27] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_5 ),
        .Q(next_mi_addr[27]),
        .R(SR));
  FDRE \next_mi_addr_reg[28] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[28]_i_1_n_4 ),
        .Q(next_mi_addr[28]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[28]_i_1 
       (.CI(\next_mi_addr_reg[24]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[28]_i_1_n_0 ,\next_mi_addr_reg[28]_i_1_n_1 ,\next_mi_addr_reg[28]_i_1_n_2 ,\next_mi_addr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[28]_i_1_n_4 ,\next_mi_addr_reg[28]_i_1_n_5 ,\next_mi_addr_reg[28]_i_1_n_6 ,\next_mi_addr_reg[28]_i_1_n_7 }),
        .S(pre_mi_addr[28:25]));
  FDRE \next_mi_addr_reg[29] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[29]),
        .R(SR));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[2]),
        .Q(next_mi_addr[2]),
        .R(SR));
  FDRE \next_mi_addr_reg[30] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[30]),
        .R(SR));
  FDRE \next_mi_addr_reg[31] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[31]),
        .R(SR));
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[28]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3:2],\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_next_mi_addr_reg[31]_i_1_O_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({1'b0,pre_mi_addr[31:29]}));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[3]),
        .Q(next_mi_addr[3]),
        .R(SR));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[4]),
        .Q(next_mi_addr[4]),
        .R(SR));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[5]),
        .Q(next_mi_addr[5]),
        .R(SR));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[6]),
        .Q(next_mi_addr[6]),
        .R(SR));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[7]),
        .Q(next_mi_addr[7]),
        .R(SR));
  FDRE \next_mi_addr_reg[8] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[8]),
        .Q(next_mi_addr[8]),
        .R(SR));
  FDRE \next_mi_addr_reg[9] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[12]_i_1_n_7 ),
        .Q(next_mi_addr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hAAAAC000)) 
    \num_transactions_q[0]_i_1 
       (.I0(\num_transactions_q[0]_i_2__0_n_0 ),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(num_transactions[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \num_transactions_q[0]_i_2__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[6]),
        .O(\num_transactions_q[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \num_transactions_q[1]_i_1__0 
       (.I0(\num_transactions_q[1]_i_2__0_n_0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[4]),
        .I5(s_axi_arsize[2]),
        .O(\num_transactions_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \num_transactions_q[1]_i_2__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .O(\num_transactions_q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CC0000000000)) 
    \num_transactions_q[2]_i_1__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[2]),
        .O(\num_transactions_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \num_transactions_q[3]_i_1__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(num_transactions[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \num_transactions_q[4]_i_1__0 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .O(\num_transactions_q[4]_i_1__0_n_0 ));
  FDRE \num_transactions_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(num_transactions[0]),
        .Q(num_transactions_q[0]),
        .R(SR));
  FDRE \num_transactions_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\num_transactions_q[1]_i_1__0_n_0 ),
        .Q(num_transactions_q[1]),
        .R(SR));
  FDRE \num_transactions_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\num_transactions_q[2]_i_1__0_n_0 ),
        .Q(num_transactions_q[2]),
        .R(SR));
  FDRE \num_transactions_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(num_transactions[3]),
        .Q(num_transactions_q[3]),
        .R(SR));
  FDRE \num_transactions_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\num_transactions_q[4]_i_1__0_n_0 ),
        .Q(num_transactions_q[4]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1__0 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1__0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[2]_i_1__0 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pushed_commands[3]_i_1__0 
       (.I0(pushed_commands_reg[3]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .I3(pushed_commands_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pushed_commands[4]_i_1__0 
       (.I0(pushed_commands_reg[4]),
        .I1(pushed_commands_reg[3]),
        .I2(pushed_commands_reg[2]),
        .I3(pushed_commands_reg[0]),
        .I4(pushed_commands_reg[1]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pushed_commands[5]_i_1__0 
       (.I0(pushed_commands_reg[5]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .I3(pushed_commands_reg[2]),
        .I4(pushed_commands_reg[3]),
        .I5(pushed_commands_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[6]_i_1__0 
       (.I0(pushed_commands_reg[6]),
        .I1(\pushed_commands[7]_i_3__0_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[7]_i_1__0 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[7]_i_2__0 
       (.I0(pushed_commands_reg[7]),
        .I1(pushed_commands_reg[6]),
        .I2(\pushed_commands[7]_i_3__0_n_0 ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pushed_commands[7]_i_3__0 
       (.I0(pushed_commands_reg[5]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .I3(pushed_commands_reg[2]),
        .I4(pushed_commands_reg[3]),
        .I5(pushed_commands_reg[4]),
        .O(\pushed_commands[7]_i_3__0_n_0 ));
  FDRE \pushed_commands_reg[0] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[1] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[4]),
        .Q(pushed_commands_reg[4]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[5]),
        .Q(pushed_commands_reg[5]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[6]),
        .Q(pushed_commands_reg[6]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[7]),
        .Q(pushed_commands_reg[7]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \queue_id_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_341),
        .Q(s_axi_rid[0]),
        .R(SR));
  FDRE \queue_id_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_340),
        .Q(s_axi_rid[1]),
        .R(SR));
  FDRE \queue_id_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_339),
        .Q(s_axi_rid[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    si_full_size_q_i_1__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(si_full_size));
  FDRE si_full_size_q_reg
       (.C(CLK),
        .CE(E),
        .D(si_full_size),
        .Q(si_full_size_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[1]));
  FDRE \size_mask_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(SR));
  FDRE \size_mask_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(SR));
  FDRE \size_mask_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[2]),
        .R(SR));
  FDRE \size_mask_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[3]),
        .R(SR));
  FDRE \size_mask_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \split_addr_mask_q[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(split_addr_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \split_addr_mask_q[1]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(split_addr_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \split_addr_mask_q[2]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(split_addr_mask[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \split_addr_mask_q[3]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .O(split_addr_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \split_addr_mask_q[4]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(split_addr_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \split_addr_mask_q[5]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(split_addr_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \split_addr_mask_q[6]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(split_addr_mask[6]));
  FDRE \split_addr_mask_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[0]),
        .Q(\split_addr_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[10] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[11] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[12] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[13] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[14] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[15] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[16] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[17] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[18] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[19] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[1]),
        .Q(\split_addr_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[20] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[21] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[22] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[23] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[24] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[25] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[26] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[27] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[28] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[29] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[2]),
        .Q(\split_addr_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[30] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[31] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[3]),
        .Q(\split_addr_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[4]),
        .Q(\split_addr_mask_q_reg_n_0_[4] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[5]),
        .Q(\split_addr_mask_q_reg_n_0_[5] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(split_addr_mask[6]),
        .Q(\split_addr_mask_q_reg_n_0_[6] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[7] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[8] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[9] ),
        .R(SR));
  FDRE split_ongoing_reg
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_out[30]),
        .Q(split_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hEC00)) 
    \unalignment_addr_q[0]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[2]),
        .O(\unalignment_addr_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \unalignment_addr_q[1]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arsize[2]),
        .O(\unalignment_addr_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \unalignment_addr_q[2]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_araddr[4]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .O(\unalignment_addr_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \unalignment_addr_q[3]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\unalignment_addr_q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \unalignment_addr_q[4]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .O(\unalignment_addr_q[4]_i_1__0_n_0 ));
  FDRE \unalignment_addr_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[0]_i_1__0_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[1]_i_1__0_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[2]_i_1__0_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[3]_i_1__0_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \unalignment_addr_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\unalignment_addr_q[4]_i_1__0_n_0 ),
        .Q(\unalignment_addr_q_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    wrap_need_to_split_q_i_1__0
       (.I0(wrap_need_to_split_q_i_2__0_n_0),
        .I1(wrap_need_to_split_q_i_3_n_0),
        .I2(wrap_unaligned_len[2]),
        .I3(wrap_unaligned_len[0]),
        .I4(access_is_wrap),
        .I5(legal_wrap_len_q_i_1__0_n_0),
        .O(wrap_need_to_split));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFF8C808)) 
    wrap_need_to_split_q_i_2__0
       (.I0(\masked_addr_q[7]_i_3_n_0 ),
        .I1(s_axi_araddr[7]),
        .I2(s_axi_arsize[2]),
        .I3(\masked_addr_q[7]_i_2__0_n_0 ),
        .I4(s_axi_araddr[3]),
        .O(wrap_need_to_split_q_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    wrap_need_to_split_q_i_3
       (.I0(wrap_unaligned_len[4]),
        .I1(s_axi_araddr[9]),
        .I2(\masked_addr_q[9]_i_2__0_n_0 ),
        .I3(s_axi_araddr[5]),
        .I4(wrap_need_to_split_q_i_4_n_0),
        .I5(wrap_unaligned_len[6]),
        .O(wrap_need_to_split_q_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF00E2E2FF00)) 
    wrap_need_to_split_q_i_4
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(\masked_addr_q[5]_i_2__0_n_0 ),
        .I4(s_axi_arsize[2]),
        .I5(s_axi_arsize[1]),
        .O(wrap_need_to_split_q_i_4_n_0));
  FDRE wrap_need_to_split_q_reg
       (.C(CLK),
        .CE(E),
        .D(wrap_need_to_split),
        .Q(wrap_need_to_split_q),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wrap_rest_len[0]_i_1__0 
       (.I0(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[1]_i_1__0 
       (.I0(wrap_unaligned_len_q[1]),
        .I1(wrap_unaligned_len_q[0]),
        .O(\wrap_rest_len[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wrap_rest_len[2]_i_1__0 
       (.I0(wrap_unaligned_len_q[2]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .O(wrap_rest_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wrap_rest_len[3]_i_1__0 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wrap_rest_len[4]_i_1__0 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[3]),
        .I2(wrap_unaligned_len_q[0]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[2]),
        .O(wrap_rest_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wrap_rest_len[5]_i_1__0 
       (.I0(wrap_unaligned_len_q[5]),
        .I1(wrap_unaligned_len_q[4]),
        .I2(wrap_unaligned_len_q[2]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[0]),
        .I5(wrap_unaligned_len_q[3]),
        .O(wrap_rest_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrap_rest_len[6]_i_1__0 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2__0_n_0 ),
        .O(wrap_rest_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_rest_len[7]_i_1__0 
       (.I0(wrap_unaligned_len_q[7]),
        .I1(wrap_unaligned_len_q[6]),
        .I2(\wrap_rest_len[7]_i_2__0_n_0 ),
        .O(wrap_rest_len0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wrap_rest_len[7]_i_2__0 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .I4(wrap_unaligned_len_q[3]),
        .I5(wrap_unaligned_len_q[5]),
        .O(\wrap_rest_len[7]_i_2__0_n_0 ));
  FDRE \wrap_rest_len_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[0]),
        .Q(wrap_rest_len[0]),
        .R(SR));
  FDRE \wrap_rest_len_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wrap_rest_len[1]_i_1__0_n_0 ),
        .Q(wrap_rest_len[1]),
        .R(SR));
  FDRE \wrap_rest_len_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[2]),
        .Q(wrap_rest_len[2]),
        .R(SR));
  FDRE \wrap_rest_len_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[3]),
        .Q(wrap_rest_len[3]),
        .R(SR));
  FDRE \wrap_rest_len_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[4]),
        .Q(wrap_rest_len[4]),
        .R(SR));
  FDRE \wrap_rest_len_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[5]),
        .Q(wrap_rest_len[5]),
        .R(SR));
  FDRE \wrap_rest_len_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[6]),
        .Q(wrap_rest_len[6]),
        .R(SR));
  FDRE \wrap_rest_len_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[7]),
        .Q(wrap_rest_len[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAA8880)) 
    \wrap_unaligned_len_q[0]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[2]),
        .I5(\masked_addr_q[2]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \wrap_unaligned_len_q[1]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(\masked_addr_q[7]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .O(wrap_unaligned_len[1]));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A808)) 
    \wrap_unaligned_len_q[2]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(\masked_addr_q[4]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[1]),
        .O(wrap_unaligned_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hAAA08A80)) 
    \wrap_unaligned_len_q[3]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\masked_addr_q[5]_i_2__0_n_0 ),
        .I4(\masked_addr_q[5]_i_3__0_n_0 ),
        .O(wrap_unaligned_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[4]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(\masked_addr_q[6]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \wrap_unaligned_len_q[5]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_araddr[7]),
        .O(wrap_unaligned_len[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000080)) 
    \wrap_unaligned_len_q[6]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(\masked_addr_q[8]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[7]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(\masked_addr_q[9]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[7]));
  FDRE \wrap_unaligned_len_q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[0]),
        .Q(wrap_unaligned_len_q[0]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[1]),
        .Q(wrap_unaligned_len_q[1]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[2]),
        .Q(wrap_unaligned_len_q[2]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[3]),
        .Q(wrap_unaligned_len_q[3]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[4]),
        .Q(wrap_unaligned_len_q[4]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[5]),
        .Q(wrap_unaligned_len_q[5]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[6]),
        .Q(wrap_unaligned_len_q[6]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(wrap_unaligned_len[7]),
        .Q(wrap_unaligned_len_q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_axi_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_axi_downsizer
   (s_axi_awready,
    m_axi_awaddr,
    s_axi_arready,
    m_axi_araddr,
    s_axi_rlast,
    m_axi_awvalid,
    s_axi_bid,
    s_axi_rdata,
    din,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_wlast,
    \m_axi_arsize[2] ,
    s_axi_rid,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_bready,
    s_axi_bvalid,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_arvalid,
    s_axi_rvalid,
    m_axi_rready,
    s_axi_rresp,
    m_axi_awlock,
    m_axi_awburst,
    m_axi_wstrb,
    m_axi_wdata,
    s_axi_bresp,
    m_axi_arlock,
    m_axi_arburst,
    s_axi_awvalid,
    aresetn,
    s_axi_awaddr,
    s_axi_awsize,
    s_axi_awlen,
    m_axi_bvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_rready,
    m_axi_rlast,
    m_axi_awready,
    m_axi_arready,
    m_axi_rdata,
    CLK,
    s_axi_awid,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_arid,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_rvalid,
    m_axi_rresp,
    s_axi_wstrb,
    s_axi_wdata,
    m_axi_bresp);
  output s_axi_awready;
  output [31:0]m_axi_awaddr;
  output s_axi_arready;
  output [31:0]m_axi_araddr;
  output s_axi_rlast;
  output m_axi_awvalid;
  output [2:0]s_axi_bid;
  output [255:0]s_axi_rdata;
  output [10:0]din;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_wlast;
  output [10:0]\m_axi_arsize[2] ;
  output [2:0]s_axi_rid;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_bready;
  output s_axi_bvalid;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_arvalid;
  output s_axi_rvalid;
  output m_axi_rready;
  output [1:0]s_axi_rresp;
  output [0:0]m_axi_awlock;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  output [1:0]s_axi_bresp;
  output [0:0]m_axi_arlock;
  output [1:0]m_axi_arburst;
  input s_axi_awvalid;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input m_axi_bvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input m_axi_rlast;
  input m_axi_awready;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input CLK;
  input [2:0]s_axi_awid;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [2:0]s_axi_arid;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input [31:0]s_axi_wstrb;
  input [255:0]s_axi_wdata;
  input [1:0]m_axi_bresp;

  wire CLK;
  wire [1:0]S_AXI_RRESP_ACC;
  wire \USE_READ.read_addr_inst_n_27 ;
  wire \USE_READ.read_addr_inst_n_321 ;
  wire \USE_READ.read_addr_inst_n_332 ;
  wire \USE_READ.read_addr_inst_n_336 ;
  wire \USE_READ.read_addr_inst_n_337 ;
  wire \USE_READ.read_addr_inst_n_338 ;
  wire \USE_READ.read_addr_inst_n_339 ;
  wire \USE_READ.read_addr_inst_n_340 ;
  wire \USE_READ.read_addr_inst_n_341 ;
  wire \USE_READ.read_data_inst_n_1 ;
  wire \USE_READ.read_data_inst_n_10 ;
  wire \USE_READ.read_data_inst_n_11 ;
  wire \USE_READ.read_data_inst_n_3 ;
  wire \USE_READ.read_data_inst_n_4 ;
  wire \USE_READ.read_data_inst_n_8 ;
  wire \USE_READ.read_data_inst_n_9 ;
  wire \USE_WRITE.USE_SPLIT.write_resp_inst_n_0 ;
  wire \USE_WRITE.write_addr_inst_n_18 ;
  wire \USE_WRITE.write_data_inst_n_10 ;
  wire \USE_WRITE.write_data_inst_n_11 ;
  wire \USE_WRITE.write_data_inst_n_12 ;
  wire \USE_WRITE.write_data_inst_n_6 ;
  wire \USE_WRITE.write_data_inst_n_7 ;
  wire \USE_WRITE.write_data_inst_n_8 ;
  wire \USE_WRITE.write_data_inst_n_9 ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[4].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[5].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[6].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[7].S_AXI_RDATA_II_reg ;
  wire aresetn;
  wire [2:0]cmd_size_ii;
  wire [3:1]current_word_1;
  wire [3:0]current_word_1_0;
  wire [10:0]din;
  wire first_mi_word;
  wire first_word;
  wire [7:7]length_counter_1_reg;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [10:0]\m_axi_arsize[2] ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [4:0]p_0_in;
  wire p_11_out;
  wire p_14_out;
  wire p_17_out;
  wire p_20_out;
  wire p_22_out;
  wire p_2_in;
  wire p_2_out;
  wire p_5_out;
  wire p_8_out;
  wire pop_mi_data;
  wire [4:0]rd_cmd_first_word;
  wire rd_cmd_fix;
  wire [7:0]rd_cmd_length;
  wire rd_cmd_mirror;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [2:0]s_axi_arid;
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
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [7:0]wr_cmd_b_repeat;
  wire wr_cmd_b_split;
  wire [4:0]wr_cmd_first_word;
  wire wr_cmd_fix;
  wire [7:0]wr_cmd_length;
  wire [4:4]wr_cmd_mask;

  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_a_downsizer__parameterized0 \USE_READ.read_addr_inst 
       (.CLK(CLK),
        .D({\USE_READ.read_addr_inst_n_336 ,\USE_READ.read_addr_inst_n_337 }),
        .E(s_axi_arready),
        .Q(current_word_1),
        .SR(\USE_WRITE.write_addr_inst_n_18 ),
        .\S_AXI_RRESP_ACC_reg[1] (S_AXI_RRESP_ACC),
        .\S_AXI_RRESP_ACC_reg[1]_0 (\USE_READ.read_data_inst_n_11 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (p_22_out),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\WORD_LANE[0].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (p_20_out),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (p_17_out),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (p_14_out),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159] (p_11_out),
        .\WORD_LANE[4].S_AXI_RDATA_II_reg[159]_0 (\WORD_LANE[4].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191] (p_8_out),
        .\WORD_LANE[5].S_AXI_RDATA_II_reg[191]_0 (\WORD_LANE[5].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[192] (\USE_READ.read_addr_inst_n_321 ),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223] (p_5_out),
        .\WORD_LANE[6].S_AXI_RDATA_II_reg[223]_0 (\WORD_LANE[6].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255] (p_2_out),
        .\WORD_LANE[7].S_AXI_RDATA_II_reg[255]_0 (\WORD_LANE[7].S_AXI_RDATA_II_reg ),
        .aresetn(aresetn),
        .\cmd_depth_reg[2]_0 (\USE_READ.read_addr_inst_n_332 ),
        .\current_word_1_reg[0] (\USE_READ.read_data_inst_n_10 ),
        .\current_word_1_reg[1] (\USE_READ.read_data_inst_n_4 ),
        .\current_word_1_reg[3] ({\USE_READ.read_addr_inst_n_338 ,\USE_READ.read_addr_inst_n_339 ,\USE_READ.read_addr_inst_n_340 ,\USE_READ.read_addr_inst_n_341 }),
        .\current_word_1_reg[3]_0 (\USE_READ.read_data_inst_n_9 ),
        .\current_word_1_reg[4] (\USE_READ.read_addr_inst_n_27 ),
        .\current_word_1_reg[4]_0 (\USE_READ.read_data_inst_n_8 ),
        .dout({rd_cmd_fix,rd_cmd_mirror,rd_cmd_first_word,rd_cmd_length}),
        .first_mi_word_reg(pop_mi_data),
        .first_word(first_word),
        .\goreg_dm.dout_i_reg[10] (\USE_READ.read_data_inst_n_1 ),
        .\goreg_dm.dout_i_reg[9] (\USE_READ.read_data_inst_n_3 ),
        .\length_counter_1_reg[7] (length_counter_1_reg),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .\m_axi_arsize[2] (\m_axi_arsize[2] ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid));
  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_r_downsizer \USE_READ.read_data_inst 
       (.CLK(CLK),
        .D({\USE_READ.read_addr_inst_n_27 ,\USE_READ.read_addr_inst_n_338 ,\USE_READ.read_addr_inst_n_339 ,\USE_READ.read_addr_inst_n_340 ,\USE_READ.read_addr_inst_n_341 }),
        .E(pop_mi_data),
        .Q(length_counter_1_reg),
        .SR(\USE_WRITE.write_addr_inst_n_18 ),
        .\S_AXI_RRESP_ACC_reg[1]_0 (\USE_READ.read_data_inst_n_11 ),
        .\S_AXI_RRESP_ACC_reg[1]_1 (S_AXI_RRESP_ACC),
        .\S_AXI_RRESP_ACC_reg[1]_2 ({\USE_READ.read_addr_inst_n_336 ,\USE_READ.read_addr_inst_n_337 }),
        .\cmd_depth_reg[2] (\USE_READ.read_data_inst_n_1 ),
        .\current_word_1_reg[1]_0 (\USE_READ.read_data_inst_n_10 ),
        .\current_word_1_reg[3]_0 (current_word_1),
        .\current_word_1_reg[4]_0 (\USE_READ.read_data_inst_n_4 ),
        .\current_word_1_reg[4]_1 (\USE_READ.read_data_inst_n_8 ),
        .\current_word_1_reg[4]_2 (\USE_READ.read_data_inst_n_9 ),
        .dout({rd_cmd_fix,rd_cmd_mirror,rd_cmd_first_word,rd_cmd_length}),
        .empty_fwft_i_reg(\USE_READ.read_addr_inst_n_332 ),
        .empty_fwft_i_reg_0(\USE_READ.read_addr_inst_n_321 ),
        .empty_fwft_i_reg_1(p_22_out),
        .empty_fwft_i_reg_2(p_20_out),
        .empty_fwft_i_reg_3(p_17_out),
        .empty_fwft_i_reg_4(p_14_out),
        .empty_fwft_i_reg_5(p_11_out),
        .empty_fwft_i_reg_6(p_8_out),
        .empty_fwft_i_reg_7(p_5_out),
        .empty_fwft_i_reg_8(p_2_out),
        .first_word(first_word),
        .\length_counter_1_reg[7]_0 (\USE_READ.read_data_inst_n_3 ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .\s_axi_rdata[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[159] (\WORD_LANE[4].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[191] (\WORD_LANE[5].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[223] (\WORD_LANE[6].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[255] (\WORD_LANE[7].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[31] (\WORD_LANE[0].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg ),
        .s_axi_rready(s_axi_rready));
  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_b_downsizer \USE_WRITE.USE_SPLIT.write_resp_inst 
       (.CLK(CLK),
        .SR(\USE_WRITE.write_addr_inst_n_18 ),
        .\USE_B_CHANNEL.cmd_b_depth_reg[2] (\USE_WRITE.USE_SPLIT.write_resp_inst_n_0 ),
        .dout({wr_cmd_b_split,wr_cmd_b_repeat}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_a_downsizer \USE_WRITE.write_addr_inst 
       (.CLK(CLK),
        .D(p_0_in[3:0]),
        .E(s_axi_awready),
        .Q({current_word_1_0[3:2],current_word_1_0[0]}),
        .SR(\USE_WRITE.write_addr_inst_n_18 ),
        .\S_AXI_BRESP_ACC_reg[0] ({wr_cmd_b_split,wr_cmd_b_repeat}),
        .aresetn(aresetn),
        .\current_word_1_reg[0] (\USE_WRITE.write_data_inst_n_10 ),
        .\current_word_1_reg[1] (\USE_WRITE.write_data_inst_n_9 ),
        .\current_word_1_reg[2] (\USE_WRITE.write_data_inst_n_11 ),
        .\current_word_1_reg[3] (\USE_WRITE.write_data_inst_n_8 ),
        .\current_word_1_reg[4] (\USE_WRITE.write_data_inst_n_12 ),
        .din(din),
        .dout({wr_cmd_fix,wr_cmd_first_word,wr_cmd_mask,cmd_size_ii,wr_cmd_length}),
        .first_mi_word(first_mi_word),
        .first_word_reg(p_2_in),
        .first_word_reg_0(\USE_WRITE.write_data_inst_n_6 ),
        .\goreg_dm.dout_i_reg[12] (\USE_WRITE.write_data_inst_n_7 ),
        .\goreg_dm.dout_i_reg[18] (p_0_in[4]),
        .\goreg_dm.dout_i_reg[9] (m_axi_wlast),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\repeat_cnt_reg[2] (\USE_WRITE.USE_SPLIT.write_resp_inst_n_0 ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_w_downsizer \USE_WRITE.write_data_inst 
       (.CLK(CLK),
        .D(p_0_in[4]),
        .E(p_2_in),
        .Q({current_word_1_0[3:2],current_word_1_0[0]}),
        .SR(\USE_WRITE.write_addr_inst_n_18 ),
        .\current_word_1_reg[1]_0 (\USE_WRITE.write_data_inst_n_9 ),
        .\current_word_1_reg[1]_1 (\USE_WRITE.write_data_inst_n_10 ),
        .\current_word_1_reg[2]_0 (\USE_WRITE.write_data_inst_n_11 ),
        .\current_word_1_reg[4]_0 (\USE_WRITE.write_data_inst_n_6 ),
        .\current_word_1_reg[4]_1 (\USE_WRITE.write_data_inst_n_7 ),
        .\current_word_1_reg[4]_2 (\USE_WRITE.write_data_inst_n_8 ),
        .dout({wr_cmd_fix,wr_cmd_first_word,wr_cmd_mask,cmd_size_ii,wr_cmd_length}),
        .first_mi_word(first_mi_word),
        .\goreg_dm.dout_i_reg[17] (p_0_in[3:0]),
        .m_axi_wlast(m_axi_wlast),
        .\m_axi_wstrb[0] (\USE_WRITE.write_data_inst_n_12 ));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_b_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_b_downsizer
   (\USE_B_CHANNEL.cmd_b_depth_reg[2] ,
    m_axi_bready,
    s_axi_bvalid,
    s_axi_bresp,
    SR,
    CLK,
    dout,
    s_axi_bready,
    m_axi_bvalid,
    m_axi_bresp);
  output \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  output m_axi_bready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input CLK;
  input [8:0]dout;
  input s_axi_bready;
  input m_axi_bvalid;
  input [1:0]m_axi_bresp;

  wire CLK;
  wire [0:0]SR;
  wire [1:0]S_AXI_BRESP_ACC;
  wire \S_AXI_BRESP_ACC[0]_i_1_n_0 ;
  wire \S_AXI_BRESP_ACC[1]_i_1_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  wire [8:0]dout;
  wire first_mi_word;
  wire last_word;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [7:0]next_repeat_cnt;
  wire p_1_in;
  wire \repeat_cnt[1]_i_1_n_0 ;
  wire \repeat_cnt[2]_i_2_n_0 ;
  wire \repeat_cnt[3]_i_2_n_0 ;
  wire \repeat_cnt[4]_i_2_n_0 ;
  wire \repeat_cnt[5]_i_2_n_0 ;
  wire \repeat_cnt[6]_i_2_n_0 ;
  wire \repeat_cnt[7]_i_2_n_0 ;
  wire [7:0]repeat_cnt_reg__0;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_INST_0_i_1_n_0;
  wire s_axi_bvalid_INST_0_i_2_n_0;

  LUT6 #(
    .INIT(64'hCCCCECAECCCCCCCC)) 
    \S_AXI_BRESP_ACC[0]_i_1 
       (.I0(S_AXI_BRESP_ACC[0]),
        .I1(m_axi_bresp[0]),
        .I2(S_AXI_BRESP_ACC[1]),
        .I3(m_axi_bresp[1]),
        .I4(first_mi_word),
        .I5(dout[8]),
        .O(\S_AXI_BRESP_ACC[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hCECC)) 
    \S_AXI_BRESP_ACC[1]_i_1 
       (.I0(S_AXI_BRESP_ACC[1]),
        .I1(m_axi_bresp[1]),
        .I2(first_mi_word),
        .I3(dout[8]),
        .O(\S_AXI_BRESP_ACC[1]_i_1_n_0 ));
  FDRE \S_AXI_BRESP_ACC_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(\S_AXI_BRESP_ACC[0]_i_1_n_0 ),
        .Q(S_AXI_BRESP_ACC[0]),
        .R(SR));
  FDRE \S_AXI_BRESP_ACC_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(\S_AXI_BRESP_ACC[1]_i_1_n_0 ),
        .Q(S_AXI_BRESP_ACC[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    fifo_gen_inst_i_9__1
       (.I0(repeat_cnt_reg__0[2]),
        .I1(repeat_cnt_reg__0[7]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(s_axi_bvalid_INST_0_i_2_n_0),
        .O(\USE_B_CHANNEL.cmd_b_depth_reg[2] ));
  LUT3 #(
    .INIT(8'hA8)) 
    first_mi_word_i_1
       (.I0(m_axi_bvalid),
        .I1(s_axi_bvalid_INST_0_i_1_n_0),
        .I2(s_axi_bready),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    first_mi_word_i_2
       (.I0(s_axi_bvalid_INST_0_i_1_n_0),
        .O(last_word));
  FDSE first_mi_word_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(last_word),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axi_bready_INST_0
       (.I0(s_axi_bvalid_INST_0_i_1_n_0),
        .I1(s_axi_bready),
        .O(m_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \repeat_cnt[0]_i_1 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(next_repeat_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \repeat_cnt[1]_i_1 
       (.I0(repeat_cnt_reg__0[1]),
        .I1(dout[1]),
        .I2(repeat_cnt_reg__0[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\repeat_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA051111FA05)) 
    \repeat_cnt[2]_i_1 
       (.I0(\repeat_cnt[2]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(repeat_cnt_reg__0[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(next_repeat_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \repeat_cnt[2]_i_2 
       (.I0(dout[0]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[0]),
        .O(\repeat_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[3]_i_1 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg__0[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(next_repeat_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \repeat_cnt[3]_i_2 
       (.I0(repeat_cnt_reg__0[1]),
        .I1(dout[1]),
        .I2(repeat_cnt_reg__0[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\repeat_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[4]_i_1 
       (.I0(dout[3]),
        .I1(repeat_cnt_reg__0[3]),
        .I2(\repeat_cnt[4]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(next_repeat_cnt[4]));
  LUT6 #(
    .INIT(64'h0000000511110005)) 
    \repeat_cnt[4]_i_2 
       (.I0(\repeat_cnt[2]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(repeat_cnt_reg__0[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(\repeat_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[5]_i_1 
       (.I0(dout[4]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(\repeat_cnt[5]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(next_repeat_cnt[5]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[5]_i_2 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg__0[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(\repeat_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[6]_i_1 
       (.I0(dout[5]),
        .I1(repeat_cnt_reg__0[5]),
        .I2(\repeat_cnt[6]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[6]),
        .I4(first_mi_word),
        .I5(dout[6]),
        .O(next_repeat_cnt[6]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[6]_i_2 
       (.I0(dout[3]),
        .I1(repeat_cnt_reg__0[3]),
        .I2(\repeat_cnt[4]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(\repeat_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[7]_i_1 
       (.I0(dout[6]),
        .I1(repeat_cnt_reg__0[6]),
        .I2(\repeat_cnt[7]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[7]),
        .I4(first_mi_word),
        .I5(dout[7]),
        .O(next_repeat_cnt[7]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[7]_i_2 
       (.I0(dout[4]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(\repeat_cnt[5]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(\repeat_cnt[7]_i_2_n_0 ));
  FDRE \repeat_cnt_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[0]),
        .Q(repeat_cnt_reg__0[0]),
        .R(SR));
  FDRE \repeat_cnt_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(\repeat_cnt[1]_i_1_n_0 ),
        .Q(repeat_cnt_reg__0[1]),
        .R(SR));
  FDRE \repeat_cnt_reg[2] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[2]),
        .Q(repeat_cnt_reg__0[2]),
        .R(SR));
  FDRE \repeat_cnt_reg[3] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[3]),
        .Q(repeat_cnt_reg__0[3]),
        .R(SR));
  FDRE \repeat_cnt_reg[4] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[4]),
        .Q(repeat_cnt_reg__0[4]),
        .R(SR));
  FDRE \repeat_cnt_reg[5] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[5]),
        .Q(repeat_cnt_reg__0[5]),
        .R(SR));
  FDRE \repeat_cnt_reg[6] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[6]),
        .Q(repeat_cnt_reg__0[6]),
        .R(SR));
  FDRE \repeat_cnt_reg[7] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[7]),
        .Q(repeat_cnt_reg__0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCECAECCCCCCCC)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(S_AXI_BRESP_ACC[0]),
        .I1(m_axi_bresp[0]),
        .I2(S_AXI_BRESP_ACC[1]),
        .I3(m_axi_bresp[1]),
        .I4(first_mi_word),
        .I5(dout[8]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hCECC)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(S_AXI_BRESP_ACC[1]),
        .I1(m_axi_bresp[1]),
        .I2(first_mi_word),
        .I3(dout[8]),
        .O(s_axi_bresp[1]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_bvalid_INST_0
       (.I0(m_axi_bvalid),
        .I1(s_axi_bvalid_INST_0_i_1_n_0),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    s_axi_bvalid_INST_0_i_1
       (.I0(dout[8]),
        .I1(s_axi_bvalid_INST_0_i_2_n_0),
        .I2(repeat_cnt_reg__0[1]),
        .I3(repeat_cnt_reg__0[7]),
        .I4(repeat_cnt_reg__0[2]),
        .O(s_axi_bvalid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_bvalid_INST_0_i_2
       (.I0(repeat_cnt_reg__0[3]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(repeat_cnt_reg__0[5]),
        .I3(first_mi_word),
        .I4(repeat_cnt_reg__0[6]),
        .I5(repeat_cnt_reg__0[0]),
        .O(s_axi_bvalid_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_r_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_r_downsizer
   (first_word,
    \cmd_depth_reg[2] ,
    Q,
    \length_counter_1_reg[7]_0 ,
    \current_word_1_reg[4]_0 ,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[4]_1 ,
    \current_word_1_reg[4]_2 ,
    \current_word_1_reg[1]_0 ,
    \S_AXI_RRESP_ACC_reg[1]_0 ,
    \S_AXI_RRESP_ACC_reg[1]_1 ,
    \s_axi_rdata[31] ,
    \s_axi_rdata[63] ,
    \s_axi_rdata[95] ,
    \s_axi_rdata[127] ,
    \s_axi_rdata[159] ,
    \s_axi_rdata[191] ,
    \s_axi_rdata[223] ,
    \s_axi_rdata[255] ,
    SR,
    E,
    m_axi_rlast,
    CLK,
    s_axi_rready,
    empty_fwft_i_reg,
    dout,
    m_axi_rresp,
    D,
    empty_fwft_i_reg_0,
    empty_fwft_i_reg_1,
    m_axi_rdata,
    empty_fwft_i_reg_2,
    empty_fwft_i_reg_3,
    empty_fwft_i_reg_4,
    empty_fwft_i_reg_5,
    empty_fwft_i_reg_6,
    empty_fwft_i_reg_7,
    empty_fwft_i_reg_8,
    \S_AXI_RRESP_ACC_reg[1]_2 );
  output first_word;
  output \cmd_depth_reg[2] ;
  output [0:0]Q;
  output \length_counter_1_reg[7]_0 ;
  output \current_word_1_reg[4]_0 ;
  output [2:0]\current_word_1_reg[3]_0 ;
  output \current_word_1_reg[4]_1 ;
  output \current_word_1_reg[4]_2 ;
  output \current_word_1_reg[1]_0 ;
  output \S_AXI_RRESP_ACC_reg[1]_0 ;
  output [1:0]\S_AXI_RRESP_ACC_reg[1]_1 ;
  output [31:0]\s_axi_rdata[31] ;
  output [31:0]\s_axi_rdata[63] ;
  output [31:0]\s_axi_rdata[95] ;
  output [31:0]\s_axi_rdata[127] ;
  output [31:0]\s_axi_rdata[159] ;
  output [31:0]\s_axi_rdata[191] ;
  output [31:0]\s_axi_rdata[223] ;
  output [31:0]\s_axi_rdata[255] ;
  input [0:0]SR;
  input [0:0]E;
  input m_axi_rlast;
  input CLK;
  input s_axi_rready;
  input empty_fwft_i_reg;
  input [14:0]dout;
  input [1:0]m_axi_rresp;
  input [4:0]D;
  input [0:0]empty_fwft_i_reg_0;
  input [0:0]empty_fwft_i_reg_1;
  input [31:0]m_axi_rdata;
  input [0:0]empty_fwft_i_reg_2;
  input [0:0]empty_fwft_i_reg_3;
  input [0:0]empty_fwft_i_reg_4;
  input [0:0]empty_fwft_i_reg_5;
  input [0:0]empty_fwft_i_reg_6;
  input [0:0]empty_fwft_i_reg_7;
  input [0:0]empty_fwft_i_reg_8;
  input [1:0]\S_AXI_RRESP_ACC_reg[1]_2 ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \S_AXI_RRESP_ACC_reg[1]_0 ;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1]_1 ;
  wire [1:0]\S_AXI_RRESP_ACC_reg[1]_2 ;
  wire \cmd_depth_reg[2] ;
  wire [4:0]current_word_1;
  wire \current_word_1_reg[1]_0 ;
  wire [2:0]\current_word_1_reg[3]_0 ;
  wire \current_word_1_reg[4]_0 ;
  wire \current_word_1_reg[4]_1 ;
  wire \current_word_1_reg[4]_2 ;
  wire [14:0]dout;
  wire empty_fwft_i_reg;
  wire [0:0]empty_fwft_i_reg_0;
  wire [0:0]empty_fwft_i_reg_1;
  wire [0:0]empty_fwft_i_reg_2;
  wire [0:0]empty_fwft_i_reg_3;
  wire [0:0]empty_fwft_i_reg_4;
  wire [0:0]empty_fwft_i_reg_5;
  wire [0:0]empty_fwft_i_reg_6;
  wire [0:0]empty_fwft_i_reg_7;
  wire [0:0]empty_fwft_i_reg_8;
  wire first_word;
  wire \length_counter_1[1]_i_1__0_n_0 ;
  wire \length_counter_1[2]_i_2__0_n_0 ;
  wire \length_counter_1[3]_i_2__0_n_0 ;
  wire \length_counter_1[5]_i_2_n_0 ;
  wire \length_counter_1[6]_i_2__0_n_0 ;
  wire \length_counter_1[6]_i_3_n_0 ;
  wire \length_counter_1[6]_i_4_n_0 ;
  wire [6:0]length_counter_1_reg;
  wire \length_counter_1_reg[7]_0 ;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [7:0]next_length_counter__0;
  wire [31:0]\s_axi_rdata[127] ;
  wire [31:0]\s_axi_rdata[159] ;
  wire [31:0]\s_axi_rdata[191] ;
  wire [31:0]\s_axi_rdata[223] ;
  wire [31:0]\s_axi_rdata[255] ;
  wire [31:0]\s_axi_rdata[31] ;
  wire [31:0]\s_axi_rdata[63] ;
  wire [31:0]\s_axi_rdata[95] ;
  wire s_axi_rready;

  FDRE \S_AXI_RRESP_ACC_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\S_AXI_RRESP_ACC_reg[1]_2 [0]),
        .Q(\S_AXI_RRESP_ACC_reg[1]_1 [0]),
        .R(SR));
  FDRE \S_AXI_RRESP_ACC_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\S_AXI_RRESP_ACC_reg[1]_2 [1]),
        .Q(\S_AXI_RRESP_ACC_reg[1]_1 [1]),
        .R(SR));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[0] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[31] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[10] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[31] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[11] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[31] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[12] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[31] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[13] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[31] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[14] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[31] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[15] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[31] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[16] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[31] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[17] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[31] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[18] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[31] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[19] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[31] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[1] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[31] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[20] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[31] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[21] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[31] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[22] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[31] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[23] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[31] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[24] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[31] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[25] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[31] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[26] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[31] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[27] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[31] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[28] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[31] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[29] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[31] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[2] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[31] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[30] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[31] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[31] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[31] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[3] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[31] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[4] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[31] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[5] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[31] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[6] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[31] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[7] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[31] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[8] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[31] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[9] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_1),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[31] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[32] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[63] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[33] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[63] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[34] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[63] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[35] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[63] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[36] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[63] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[37] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[63] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[38] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[63] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[39] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[63] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[40] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[63] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[41] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[63] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[42] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[63] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[43] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[63] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[44] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[63] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[45] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[63] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[46] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[63] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[47] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[63] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[48] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[63] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[49] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[63] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[50] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[63] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[51] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[63] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[52] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[63] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[53] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[63] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[54] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[63] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[55] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[63] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[56] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[63] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[57] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[63] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[58] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[63] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[59] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[63] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[60] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[63] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[61] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[63] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[62] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[63] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[63] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_2),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[63] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[64] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[95] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[65] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[95] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[66] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[95] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[67] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[95] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[68] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[95] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[69] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[95] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[70] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[95] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[71] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[95] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[72] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[95] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[73] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[95] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[74] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[95] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[75] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[95] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[76] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[95] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[77] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[95] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[78] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[95] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[79] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[95] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[80] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[95] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[81] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[95] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[82] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[95] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[83] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[95] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[84] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[95] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[85] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[95] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[86] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[95] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[87] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[95] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[88] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[95] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[89] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[95] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[90] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[95] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[91] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[95] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[92] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[95] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[93] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[95] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[94] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[95] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[95] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_3),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[95] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[100] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[127] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[101] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[127] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[102] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[127] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[103] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[127] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[104] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[127] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[105] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[127] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[106] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[127] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[107] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[127] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[108] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[127] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[109] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[127] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[110] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[127] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[111] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[127] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[112] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[127] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[113] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[127] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[114] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[127] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[115] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[127] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[116] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[127] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[117] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[127] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[118] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[127] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[119] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[127] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[120] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[127] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[121] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[127] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[122] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[127] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[123] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[127] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[124] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[127] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[125] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[127] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[126] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[127] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[127] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[127] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[96] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[127] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[97] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[127] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[98] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[127] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[99] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_4),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[127] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[128] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[159] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[129] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[159] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[130] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[159] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[131] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[159] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[132] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[159] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[133] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[159] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[134] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[159] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[135] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[159] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[136] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[159] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[137] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[159] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[138] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[159] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[139] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[159] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[140] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[159] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[141] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[159] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[142] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[159] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[143] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[159] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[144] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[159] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[145] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[159] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[146] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[159] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[147] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[159] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[148] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[159] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[149] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[159] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[150] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[159] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[151] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[159] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[152] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[159] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[153] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[159] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[154] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[159] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[155] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[159] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[156] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[159] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[157] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[159] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[158] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[159] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[4].S_AXI_RDATA_II_reg[159] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_5),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[159] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[160] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[191] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[161] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[191] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[162] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[191] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[163] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[191] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[164] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[191] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[165] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[191] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[166] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[191] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[167] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[191] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[168] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[191] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[169] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[191] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[170] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[191] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[171] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[191] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[172] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[191] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[173] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[191] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[174] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[191] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[175] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[191] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[176] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[191] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[177] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[191] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[178] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[191] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[179] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[191] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[180] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[191] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[181] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[191] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[182] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[191] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[183] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[191] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[184] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[191] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[185] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[191] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[186] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[191] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[187] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[191] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[188] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[191] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[189] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[191] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[190] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[191] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[5].S_AXI_RDATA_II_reg[191] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_6),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[191] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[192] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[223] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[193] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[223] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[194] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[223] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[195] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[223] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[196] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[223] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[197] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[223] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[198] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[223] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[199] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[223] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[200] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[223] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[201] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[223] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[202] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[223] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[203] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[223] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[204] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[223] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[205] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[223] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[206] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[223] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[207] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[223] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[208] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[223] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[209] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[223] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[210] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[223] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[211] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[223] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[212] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[223] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[213] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[223] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[214] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[223] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[215] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[223] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[216] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[223] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[217] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[223] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[218] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[223] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[219] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[223] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[220] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[223] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[221] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[223] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[222] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[223] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[6].S_AXI_RDATA_II_reg[223] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_7),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[223] [31]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[224] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[255] [0]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[225] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[255] [1]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[226] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[255] [2]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[227] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[255] [3]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[228] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[255] [4]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[229] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[255] [5]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[230] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[255] [6]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[231] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[255] [7]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[232] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[255] [8]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[233] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[255] [9]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[234] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[255] [10]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[235] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[255] [11]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[236] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[255] [12]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[237] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[255] [13]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[238] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[255] [14]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[239] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[255] [15]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[240] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[255] [16]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[241] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[255] [17]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[242] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[255] [18]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[243] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[255] [19]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[244] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[255] [20]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[245] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[255] [21]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[246] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[255] [22]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[247] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[255] [23]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[248] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[255] [24]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[249] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[255] [25]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[250] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[255] [26]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[251] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[255] [27]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[252] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[255] [28]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[253] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[255] [29]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[254] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[255] [30]),
        .R(empty_fwft_i_reg_0));
  FDRE \WORD_LANE[7].S_AXI_RDATA_II_reg[255] 
       (.C(CLK),
        .CE(empty_fwft_i_reg_8),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[255] [31]),
        .R(empty_fwft_i_reg_0));
  LUT6 #(
    .INIT(64'hCCCCCCA0000000A0)) 
    \current_word_1[4]_i_3__0 
       (.I0(\current_word_1_reg[3]_0 [0]),
        .I1(dout[9]),
        .I2(\current_word_1_reg[3]_0 [1]),
        .I3(dout[14]),
        .I4(first_word),
        .I5(dout[10]),
        .O(\current_word_1_reg[4]_0 ));
  FDRE \current_word_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(current_word_1[0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\current_word_1_reg[3]_0 [0]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\current_word_1_reg[3]_0 [1]),
        .R(SR));
  FDRE \current_word_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\current_word_1_reg[3]_0 [2]),
        .R(SR));
  FDRE \current_word_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(current_word_1[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFDFFFDDDFFFFFFFF)) 
    fifo_gen_inst_i_23
       (.I0(s_axi_rready),
        .I1(empty_fwft_i_reg),
        .I2(dout[7]),
        .I3(first_word),
        .I4(Q),
        .I5(\length_counter_1_reg[7]_0 ),
        .O(\cmd_depth_reg[2] ));
  FDSE first_mi_word_reg
       (.C(CLK),
        .CE(E),
        .D(m_axi_rlast),
        .Q(first_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1__0 
       (.I0(length_counter_1_reg[0]),
        .I1(first_word),
        .I2(dout[0]),
        .O(next_length_counter__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \length_counter_1[1]_i_1__0 
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_word),
        .I4(dout[0]),
        .O(\length_counter_1[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA051111FA05)) 
    \length_counter_1[2]_i_1__0 
       (.I0(\length_counter_1[2]_i_2__0_n_0 ),
        .I1(dout[1]),
        .I2(length_counter_1_reg[1]),
        .I3(length_counter_1_reg[2]),
        .I4(first_word),
        .I5(dout[2]),
        .O(next_length_counter__0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \length_counter_1[2]_i_2__0 
       (.I0(dout[0]),
        .I1(first_word),
        .I2(length_counter_1_reg[0]),
        .O(\length_counter_1[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC355CCAACCAA)) 
    \length_counter_1[3]_i_1__0 
       (.I0(length_counter_1_reg[3]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(first_word),
        .I4(length_counter_1_reg[2]),
        .I5(\length_counter_1[3]_i_2__0_n_0 ),
        .O(next_length_counter__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \length_counter_1[3]_i_2__0 
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_word),
        .I4(dout[0]),
        .O(\length_counter_1[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBB444B4)) 
    \length_counter_1[4]_i_1__0 
       (.I0(\length_counter_1[6]_i_2__0_n_0 ),
        .I1(\length_counter_1[6]_i_3_n_0 ),
        .I2(length_counter_1_reg[4]),
        .I3(first_word),
        .I4(dout[4]),
        .O(next_length_counter__0[4]));
  LUT6 #(
    .INIT(64'hC3AAC355CCAACCAA)) 
    \length_counter_1[5]_i_1__0 
       (.I0(length_counter_1_reg[5]),
        .I1(dout[5]),
        .I2(dout[4]),
        .I3(first_word),
        .I4(length_counter_1_reg[4]),
        .I5(\length_counter_1[5]_i_2_n_0 ),
        .O(next_length_counter__0[5]));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \length_counter_1[5]_i_2 
       (.I0(dout[3]),
        .I1(first_word),
        .I2(length_counter_1_reg[3]),
        .I3(dout[2]),
        .I4(length_counter_1_reg[2]),
        .I5(\length_counter_1[6]_i_2__0_n_0 ),
        .O(\length_counter_1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE21DE2E2E2E2E2E2)) 
    \length_counter_1[6]_i_1__0 
       (.I0(length_counter_1_reg[6]),
        .I1(first_word),
        .I2(dout[6]),
        .I3(\length_counter_1[6]_i_2__0_n_0 ),
        .I4(\length_counter_1[6]_i_3_n_0 ),
        .I5(\length_counter_1[6]_i_4_n_0 ),
        .O(next_length_counter__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \length_counter_1[6]_i_2__0 
       (.I0(length_counter_1_reg[0]),
        .I1(dout[0]),
        .I2(length_counter_1_reg[1]),
        .I3(first_word),
        .I4(dout[1]),
        .O(\length_counter_1[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \length_counter_1[6]_i_3 
       (.I0(length_counter_1_reg[2]),
        .I1(dout[2]),
        .I2(length_counter_1_reg[3]),
        .I3(first_word),
        .I4(dout[3]),
        .O(\length_counter_1[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \length_counter_1[6]_i_4 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[4]),
        .I2(length_counter_1_reg[5]),
        .I3(first_word),
        .I4(dout[5]),
        .O(\length_counter_1[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \length_counter_1[7]_i_1__0 
       (.I0(Q),
        .I1(first_word),
        .I2(dout[7]),
        .I3(\length_counter_1_reg[7]_0 ),
        .O(next_length_counter__0[7]));
  FDRE \length_counter_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[0]),
        .Q(length_counter_1_reg[0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\length_counter_1[1]_i_1__0_n_0 ),
        .Q(length_counter_1_reg[1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[2]),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[3]),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[4]),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[5]),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[6]),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[7]),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE02)) 
    \s_axi_rdata[255]_INST_0_i_5 
       (.I0(\current_word_1_reg[3]_0 [2]),
        .I1(dout[14]),
        .I2(first_word),
        .I3(dout[11]),
        .O(\current_word_1_reg[4]_2 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \s_axi_rdata[255]_INST_0_i_6 
       (.I0(current_word_1[4]),
        .I1(dout[14]),
        .I2(first_word),
        .I3(dout[12]),
        .O(\current_word_1_reg[4]_1 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \s_axi_rdata[255]_INST_0_i_8 
       (.I0(current_word_1[0]),
        .I1(dout[14]),
        .I2(first_word),
        .I3(dout[8]),
        .O(\current_word_1_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7504)) 
    \s_axi_rresp[1]_INST_0_i_4 
       (.I0(\S_AXI_RRESP_ACC_reg[1]_1 [1]),
        .I1(\S_AXI_RRESP_ACC_reg[1]_1 [0]),
        .I2(m_axi_rresp[0]),
        .I3(m_axi_rresp[1]),
        .I4(dout[13]),
        .I5(first_word),
        .O(\S_AXI_RRESP_ACC_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0047000000000000)) 
    s_axi_rvalid_INST_0_i_5
       (.I0(dout[6]),
        .I1(first_word),
        .I2(length_counter_1_reg[6]),
        .I3(\length_counter_1[6]_i_2__0_n_0 ),
        .I4(\length_counter_1[6]_i_3_n_0 ),
        .I5(\length_counter_1[6]_i_4_n_0 ),
        .O(\length_counter_1_reg[7]_0 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "256" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "2" *) (* C_M_AXI_DATA_WIDTH = "32" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "8" *) (* C_RATIO_LOG = "3" *) (* C_SUPPORTS_ID = "1" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "5" *) 
(* C_S_AXI_DATA_WIDTH = "256" *) (* C_S_AXI_ID_WIDTH = "3" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "256" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_top
   (s_axi_aclk,
    s_axi_aresetn,
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
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* KEEP = "true" *) input s_axi_aclk;
  (* KEEP = "true" *) input s_axi_aresetn;
  input [2:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [2:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [2:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [2:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* KEEP = "true" *) input m_axi_aclk;
  (* KEEP = "true" *) input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [2:0]s_axi_arid;
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
  wire [2:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [2:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [2:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_axi_downsizer \gen_downsizer.gen_simple_downsizer.axi_downsizer_inst 
       (.CLK(s_axi_aclk),
        .aresetn(s_axi_aresetn),
        .din({m_axi_awsize,m_axi_awlen}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .\m_axi_arsize[2] ({m_axi_arsize,m_axi_arlen}),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_w_downsizer" *) 
module ntps_top_auto_ds_0_axi_dwidth_converter_v2_1_w_downsizer
   (first_mi_word,
    m_axi_wlast,
    D,
    Q,
    \current_word_1_reg[4]_0 ,
    \current_word_1_reg[4]_1 ,
    \current_word_1_reg[4]_2 ,
    \current_word_1_reg[1]_0 ,
    \current_word_1_reg[1]_1 ,
    \current_word_1_reg[2]_0 ,
    \m_axi_wstrb[0] ,
    SR,
    E,
    CLK,
    dout,
    \goreg_dm.dout_i_reg[17] );
  output first_mi_word;
  output m_axi_wlast;
  output [0:0]D;
  output [2:0]Q;
  output \current_word_1_reg[4]_0 ;
  output \current_word_1_reg[4]_1 ;
  output \current_word_1_reg[4]_2 ;
  output \current_word_1_reg[1]_0 ;
  output \current_word_1_reg[1]_1 ;
  output \current_word_1_reg[2]_0 ;
  output \m_axi_wstrb[0] ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [17:0]dout;
  input [3:0]\goreg_dm.dout_i_reg[17] ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [4:1]current_word_1;
  wire \current_word_1_reg[1]_0 ;
  wire \current_word_1_reg[1]_1 ;
  wire \current_word_1_reg[2]_0 ;
  wire \current_word_1_reg[4]_0 ;
  wire \current_word_1_reg[4]_1 ;
  wire \current_word_1_reg[4]_2 ;
  wire [17:0]dout;
  wire first_mi_word;
  wire [3:0]\goreg_dm.dout_i_reg[17] ;
  wire \length_counter_1[1]_i_1_n_0 ;
  wire \length_counter_1[2]_i_2_n_0 ;
  wire \length_counter_1[3]_i_2_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[6]_i_2_n_0 ;
  wire [7:0]length_counter_1_reg;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire \m_axi_wstrb[0] ;
  wire [7:0]next_length_counter;

  LUT4 #(
    .INIT(16'hFE02)) 
    \current_word_1[1]_i_2 
       (.I0(current_word_1[1]),
        .I1(first_mi_word),
        .I2(dout[17]),
        .I3(dout[13]),
        .O(\current_word_1_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \current_word_1[1]_i_3 
       (.I0(Q[0]),
        .I1(first_mi_word),
        .I2(dout[17]),
        .I3(dout[12]),
        .O(\current_word_1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \current_word_1[2]_i_2__0 
       (.I0(Q[1]),
        .I1(first_mi_word),
        .I2(dout[17]),
        .I3(dout[14]),
        .O(\current_word_1_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h202A8A808A808A80)) 
    \current_word_1[4]_i_1 
       (.I0(dout[11]),
        .I1(current_word_1[4]),
        .I2(\current_word_1_reg[4]_0 ),
        .I3(dout[16]),
        .I4(\current_word_1_reg[4]_1 ),
        .I5(\current_word_1_reg[4]_2 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_word_1[4]_i_2 
       (.I0(first_mi_word),
        .I1(dout[17]),
        .O(\current_word_1_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000AF200000000)) 
    \current_word_1[4]_i_3 
       (.I0(\current_word_1_reg[1]_0 ),
        .I1(\current_word_1_reg[1]_1 ),
        .I2(dout[9]),
        .I3(dout[8]),
        .I4(dout[10]),
        .I5(\current_word_1_reg[2]_0 ),
        .O(\current_word_1_reg[4]_1 ));
  FDRE \current_word_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\goreg_dm.dout_i_reg[17] [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\goreg_dm.dout_i_reg[17] [1]),
        .Q(current_word_1[1]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\goreg_dm.dout_i_reg[17] [2]),
        .Q(Q[1]),
        .R(SR));
  FDRE \current_word_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\goreg_dm.dout_i_reg[17] [3]),
        .Q(Q[2]),
        .R(SR));
  FDRE \current_word_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D),
        .Q(current_word_1[4]),
        .R(SR));
  FDSE first_word_reg
       (.C(CLK),
        .CE(E),
        .D(m_axi_wlast),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1 
       (.I0(length_counter_1_reg[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(next_length_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \length_counter_1[1]_i_1 
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\length_counter_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA051111FA05)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1[2]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(length_counter_1_reg[1]),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(next_length_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \length_counter_1[2]_i_2 
       (.I0(dout[0]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[0]),
        .O(\length_counter_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC3AAC355CCAACCAA)) 
    \length_counter_1[3]_i_1 
       (.I0(length_counter_1_reg[3]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[2]),
        .I5(\length_counter_1[3]_i_2_n_0 ),
        .O(next_length_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \length_counter_1[3]_i_2 
       (.I0(length_counter_1_reg[1]),
        .I1(dout[1]),
        .I2(length_counter_1_reg[0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(\length_counter_1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[4]_i_1 
       (.I0(dout[3]),
        .I1(length_counter_1_reg[3]),
        .I2(\length_counter_1[4]_i_2_n_0 ),
        .I3(length_counter_1_reg[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(next_length_counter[4]));
  LUT6 #(
    .INIT(64'h0000000511110005)) 
    \length_counter_1[4]_i_2 
       (.I0(\length_counter_1[2]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(length_counter_1_reg[1]),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[5]_i_1 
       (.I0(dout[4]),
        .I1(length_counter_1_reg[4]),
        .I2(m_axi_wlast_INST_0_i_2_n_0),
        .I3(length_counter_1_reg[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(next_length_counter[5]));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[6]_i_1 
       (.I0(dout[5]),
        .I1(length_counter_1_reg[5]),
        .I2(\length_counter_1[6]_i_2_n_0 ),
        .I3(length_counter_1_reg[6]),
        .I4(first_mi_word),
        .I5(dout[6]),
        .O(next_length_counter[6]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \length_counter_1[6]_i_2 
       (.I0(dout[3]),
        .I1(length_counter_1_reg[3]),
        .I2(\length_counter_1[4]_i_2_n_0 ),
        .I3(length_counter_1_reg[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(\length_counter_1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[7]_i_1 
       (.I0(dout[6]),
        .I1(length_counter_1_reg[6]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[7]),
        .I4(first_mi_word),
        .I5(dout[7]),
        .O(next_length_counter[7]));
  FDRE \length_counter_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[0]),
        .Q(length_counter_1_reg[0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\length_counter_1[1]_i_1_n_0 ),
        .Q(length_counter_1_reg[1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[2]),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[3]),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[4]),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[5]),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[6]),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[7]),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE02)) 
    \m_axi_wdata[31]_INST_0_i_6 
       (.I0(Q[2]),
        .I1(first_mi_word),
        .I2(dout[17]),
        .I3(dout[15]),
        .O(\current_word_1_reg[4]_2 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \m_axi_wdata[31]_INST_0_i_8 
       (.I0(current_word_1[4]),
        .I1(first_mi_word),
        .I2(dout[17]),
        .I3(dout[16]),
        .O(\m_axi_wstrb[0] ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    m_axi_wlast_INST_0
       (.I0(dout[6]),
        .I1(length_counter_1_reg[6]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[7]),
        .I4(first_mi_word),
        .I5(dout[7]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    m_axi_wlast_INST_0_i_1
       (.I0(dout[4]),
        .I1(length_counter_1_reg[4]),
        .I2(m_axi_wlast_INST_0_i_2_n_0),
        .I3(length_counter_1_reg[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[2]),
        .I1(length_counter_1_reg[2]),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(length_counter_1_reg[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module ntps_top_auto_ds_0_dmem
   (D,
    ram_rd_en_i,
    clk,
    E,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] );
  output [31:0]D;
  input ram_rd_en_i;
  input clk;
  input [0:0]E;
  input [31:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;

  wire [31:0]D;
  wire [0:0]E;
  wire clk;
  wire [31:0]din;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [31:0]p_0_out;
  wire ram_rd_en_i;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC(din[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC(p_0_out[29:28]),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_30_31
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[31:30]),
        .DOB(NLW_RAM_reg_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[10]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[11]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[12]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[13]),
        .Q(D[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[14]),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[15]),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[16]),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[17]),
        .Q(D[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[18]),
        .Q(D[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[19]),
        .Q(D[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[20]),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[21]),
        .Q(D[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[22]),
        .Q(D[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[23]),
        .Q(D[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[24]),
        .Q(D[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[25]),
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[26]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[27]),
        .Q(D[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[28]),
        .Q(D[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[29]),
        .Q(D[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[30]),
        .Q(D[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[31]),
        .Q(D[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[8]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[9]),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module ntps_top_auto_ds_0_dmem_17
   (D,
    ram_rd_en_i,
    clk,
    E,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] );
  output [31:0]D;
  input ram_rd_en_i;
  input clk;
  input [0:0]E;
  input [31:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;

  wire [31:0]D;
  wire [0:0]E;
  wire clk;
  wire [31:0]din;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [31:0]p_0_out;
  wire ram_rd_en_i;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC(din[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC(p_0_out[29:28]),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_30_31
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[31:30]),
        .DOB(NLW_RAM_reg_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(E));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[10]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[11]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[12]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[13]),
        .Q(D[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[14]),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[15]),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[16]),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[17]),
        .Q(D[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[18]),
        .Q(D[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[19]),
        .Q(D[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[20]),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[21]),
        .Q(D[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[22]),
        .Q(D[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[23]),
        .Q(D[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[24]),
        .Q(D[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[25]),
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[26]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[27]),
        .Q(D[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[28]),
        .Q(D[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[29]),
        .Q(D[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[30]),
        .Q(D[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[31]),
        .Q(D[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[8]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[9]),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module ntps_top_auto_ds_0_dmem__parameterized0
   (D,
    ram_rd_en_i,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    count_d10_in);
  output [8:0]D;
  input ram_rd_en_i;
  input clk;
  input EN;
  input [8:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]count_d10_in;

  wire [8:0]D;
  wire EN;
  wire clk;
  wire [4:0]count_d10_in;
  wire [8:0]din;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [8:0]p_0_out;
  wire ram_rd_en_i;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED;

  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(count_d10_in),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  RAM32M RAM_reg_0_31_6_8
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(count_d10_in),
        .DIA(din[7:6]),
        .DIB({1'b0,din[8]}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB({NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED[1],p_0_out[8]}),
        .DOC(NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(ram_rd_en_i),
        .D(p_0_out[8]),
        .Q(D[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module ntps_top_auto_ds_0_fifo_generator_ramfifo
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire RD_RST;
  wire RST;
  wire RST_FULL_FF;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_7 ;
  wire \gwss.wsts/ram_full_comb ;
  wire [4:0]p_10_out;
  wire p_1_out;
  wire [4:0]p_20_out;
  wire p_4_out;
  wire [2:0]p_9_out;
  wire ram_rd_en_i;
  wire rd_en;
  wire rst;
  wire rstblk_n_1;
  wire wr_en;

  ntps_top_auto_ds_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[4] (p_10_out),
        .\gcc0.gc0.count_reg[2] (p_9_out),
        .\gcc0.gc0.count_reg[3] (\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .\gpr1.dout_i_reg[1] (p_20_out),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(p_4_out),
        .Q({RST,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[4] (p_20_out[4:3]),
        .\gcc0.gc0.count_d1_reg[2] (p_9_out),
        .\gpr1.dout_i_reg[1] (p_10_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_memory \gntv_or_sync_fifo.mem 
       (.E(p_4_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_20_out),
        .\gcc0.gc0.count_d1_reg[4] (p_10_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .ram_rd_en_i(ram_rd_en_i));
  ntps_top_auto_ds_0_reset_blk_ramfifo rstblk
       (.Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .\gcc0.gc0.count_reg[1] ({RST,RST_FULL_FF}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module ntps_top_auto_ds_0_fifo_generator_ramfifo_12
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire RD_RST;
  wire RST;
  wire RST_FULL_FF;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_7 ;
  wire \gwss.wsts/ram_full_comb ;
  wire [4:0]p_10_out;
  wire p_1_out;
  wire [4:0]p_20_out;
  wire p_4_out;
  wire [2:0]p_9_out;
  wire ram_rd_en_i;
  wire rd_en;
  wire rst;
  wire rstblk_n_1;
  wire wr_en;

  ntps_top_auto_ds_0_rd_logic_13 \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[4] (p_10_out),
        .\gcc0.gc0.count_reg[2] (p_9_out),
        .\gcc0.gc0.count_reg[3] (\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .\gpr1.dout_i_reg[1] (p_20_out),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_logic_14 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_4_out),
        .Q({RST,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[4] (p_20_out[4:3]),
        .\gcc0.gc0.count_d1_reg[2] (p_9_out),
        .\gpr1.dout_i_reg[1] (p_10_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_memory_15 \gntv_or_sync_fifo.mem 
       (.E(p_4_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_20_out),
        .\gcc0.gc0.count_d1_reg[4] (p_10_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .ram_rd_en_i(ram_rd_en_i));
  ntps_top_auto_ds_0_reset_blk_ramfifo_16 rstblk
       (.Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .\gcc0.gc0.count_reg[1] ({RST,RST_FULL_FF}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module ntps_top_auto_ds_0_fifo_generator_ramfifo__parameterized0
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [8:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [8:0]din;

  wire RD_RST;
  wire RST;
  wire RST_FULL_FF;
  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_7 ;
  wire \gwss.wsts/ram_full_comb ;
  wire [4:0]p_10_out;
  wire p_1_out;
  wire [4:0]p_20_out;
  wire p_4_out;
  wire [2:0]p_9_out;
  wire ram_rd_en_i;
  wire rd_en;
  wire rst;
  wire rstblk_n_1;
  wire wr_en;

  ntps_top_auto_ds_0_rd_logic_0 \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[4] (p_10_out),
        .\gcc0.gc0.count_reg[2] (p_9_out),
        .\gcc0.gc0.count_reg[3] (\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .\gpr1.dout_i_reg[1] (p_20_out),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_logic_1 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_4_out),
        .Q({RST,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[4] (p_20_out[4:3]),
        .\gcc0.gc0.count_d1_reg[2] (p_9_out),
        .\gpr1.dout_i_reg[1] (p_10_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_7 ),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_7 ),
        .EN(p_4_out),
        .clk(clk),
        .count_d10_in(p_10_out),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_20_out),
        .ram_rd_en_i(ram_rd_en_i));
  ntps_top_auto_ds_0_reset_blk_ramfifo_2 rstblk
       (.Q({RD_RST,rstblk_n_1}),
        .clk(clk),
        .\gcc0.gc0.count_reg[1] ({RST,RST_FULL_FF}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module ntps_top_auto_ds_0_fifo_generator_top
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module ntps_top_auto_ds_0_fifo_generator_top_11
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_ramfifo_12 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module ntps_top_auto_ds_0_fifo_generator_top__parameterized0
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [8:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [8:0]din;

  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "32" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "32" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) (* C_HAS_ALMOST_FULL = "0" *) 
(* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_HAS_AXI_WR_CHANNEL = "0" *) 
(* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) 
(* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) 
(* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
(* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) 
(* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) (* C_HAS_SRST = "0" *) 
(* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) (* C_HAS_WR_ACK = "0" *) 
(* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) (* C_IMPLEMENTATION_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) (* C_MEMORY_TYPE = "2" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) (* C_OPTIMIZATION_MODE = "0" *) 
(* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) (* C_PRELOAD_LATENCY = "0" *) 
(* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
(* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) 
(* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_RACH_TYPE = "0" *) 
(* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) (* C_RD_DEPTH = "32" *) 
(* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_WACH = "0" *) 
(* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_UNDERFLOW_LOW = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) 
(* C_USE_DEFAULT_SETTINGS = "0" *) (* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) 
(* C_USE_ECC_AXIS = "0" *) (* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_EMBEDDED_REG = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) 
(* C_USE_PIPELINE_REG = "0" *) (* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) 
(* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) 
(* C_WR_DATA_COUNT_WIDTH = "6" *) (* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) 
(* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) 
(* C_WR_PNTR_WIDTH = "5" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [31:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [4:0]prog_empty_thresh;
  wire [4:0]prog_empty_thresh_assert;
  wire [4:0]prog_empty_thresh_negate;
  wire [4:0]prog_full_thresh;
  wire [4:0]prog_full_thresh_assert;
  wire [4:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [3:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [63:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [7:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ntps_top_auto_ds_0_fifo_generator_v12_0_synth_10 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "32" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "32" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) (* C_HAS_ALMOST_FULL = "0" *) 
(* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_HAS_AXI_WR_CHANNEL = "0" *) 
(* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) 
(* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) 
(* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
(* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) 
(* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) (* C_HAS_SRST = "0" *) 
(* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) (* C_HAS_WR_ACK = "0" *) 
(* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) (* C_IMPLEMENTATION_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) (* C_MEMORY_TYPE = "2" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) (* C_OPTIMIZATION_MODE = "0" *) 
(* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) (* C_PRELOAD_LATENCY = "0" *) 
(* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
(* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) 
(* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_RACH_TYPE = "0" *) 
(* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) (* C_RD_DEPTH = "32" *) 
(* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_WACH = "0" *) 
(* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_UNDERFLOW_LOW = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) 
(* C_USE_DEFAULT_SETTINGS = "0" *) (* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) 
(* C_USE_ECC_AXIS = "0" *) (* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_EMBEDDED_REG = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) 
(* C_USE_PIPELINE_REG = "0" *) (* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) 
(* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) 
(* C_WR_DATA_COUNT_WIDTH = "6" *) (* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) 
(* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) 
(* C_WR_PNTR_WIDTH = "5" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0__1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [31:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [4:0]prog_empty_thresh;
  wire [4:0]prog_empty_thresh_assert;
  wire [4:0]prog_empty_thresh_negate;
  wire [4:0]prog_full_thresh;
  wire [4:0]prog_full_thresh_assert;
  wire [4:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [3:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [63:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [7:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ntps_top_auto_ds_0_fifo_generator_v12_0_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "9" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "9" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) (* C_HAS_ALMOST_FULL = "0" *) 
(* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_HAS_AXI_WR_CHANNEL = "0" *) 
(* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) 
(* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) 
(* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
(* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) 
(* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) (* C_HAS_SRST = "0" *) 
(* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) (* C_HAS_WR_ACK = "0" *) 
(* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) (* C_IMPLEMENTATION_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) (* C_MEMORY_TYPE = "2" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) (* C_OPTIMIZATION_MODE = "0" *) 
(* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) (* C_PRELOAD_LATENCY = "0" *) 
(* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
(* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) 
(* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_RACH_TYPE = "0" *) 
(* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) (* C_RD_DEPTH = "32" *) 
(* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_WACH = "0" *) 
(* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_UNDERFLOW_LOW = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) 
(* C_USE_DEFAULT_SETTINGS = "0" *) (* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) 
(* C_USE_ECC_AXIS = "0" *) (* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_EMBEDDED_REG = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) 
(* C_USE_PIPELINE_REG = "0" *) (* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) 
(* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) 
(* C_WR_DATA_COUNT_WIDTH = "6" *) (* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) 
(* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) 
(* C_WR_PNTR_WIDTH = "5" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [8:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [8:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [4:0]prog_empty_thresh;
  wire [4:0]prog_empty_thresh_assert;
  wire [4:0]prog_empty_thresh_negate;
  wire [4:0]prog_full_thresh;
  wire [4:0]prog_full_thresh_assert;
  wire [4:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [3:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [63:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [7:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [3:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ntps_top_auto_ds_0_fifo_generator_v12_0_synth__parameterized0 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0_synth
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0_synth_10
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [31:0]din;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_top_11 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module ntps_top_auto_ds_0_fifo_generator_v12_0_synth__parameterized0
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    clk,
    rst,
    din);
  output [8:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input clk;
  input rst;
  input [8:0]din;

  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  ntps_top_auto_ds_0_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module ntps_top_auto_ds_0_memory
   (dout,
    ram_rd_en_i,
    clk,
    E,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output [31:0]dout;
  input ram_rd_en_i;
  input clk;
  input [0:0]E;
  input [31:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [0:0]E;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire [31:0]p_0_out;
  wire ram_rd_en_i;

  ntps_top_auto_ds_0_dmem \gdm.dm 
       (.D(p_0_out),
        .E(E),
        .clk(clk),
        .din(din),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .ram_rd_en_i(ram_rd_en_i));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[9]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module ntps_top_auto_ds_0_memory_15
   (dout,
    ram_rd_en_i,
    clk,
    E,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output [31:0]dout;
  input ram_rd_en_i;
  input clk;
  input [0:0]E;
  input [31:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [0:0]E;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire [31:0]p_0_out;
  wire ram_rd_en_i;

  ntps_top_auto_ds_0_dmem_17 \gdm.dm 
       (.D(p_0_out),
        .E(E),
        .clk(clk),
        .din(din),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .ram_rd_en_i(ram_rd_en_i));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(clk),
        .CE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[9]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module ntps_top_auto_ds_0_memory__parameterized0
   (dout,
    ram_rd_en_i,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    count_d10_in,
    E);
  output [8:0]dout;
  input ram_rd_en_i;
  input clk;
  input EN;
  input [8:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]count_d10_in;
  input [0:0]E;

  wire [0:0]E;
  wire EN;
  wire clk;
  wire [4:0]count_d10_in;
  wire [8:0]din;
  wire [8:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [8:0]p_0_out;
  wire ram_rd_en_i;

  ntps_top_auto_ds_0_dmem__parameterized0 \gdm.dm 
       (.D(p_0_out),
        .EN(EN),
        .clk(clk),
        .count_d10_in(count_d10_in),
        .din(din),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .ram_rd_en_i(ram_rd_en_i));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(p_0_out[8]),
        .Q(dout[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module ntps_top_auto_ds_0_rd_bin_cntr
   (\gpr1.dout_i_reg[1] ,
    ram_full_comb,
    ram_empty_fb_i_reg,
    \gcc0.gc0.count_reg[2] ,
    ram_empty_fb_i_reg_0,
    \gcc0.gc0.count_reg[3] ,
    \gcc0.gc0.count_d1_reg[4] ,
    p_1_out,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_18_out,
    \gpregsm1.curr_fwft_state_reg[0]_0 ,
    ram_full_fb_i_reg,
    E,
    clk,
    Q);
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input ram_empty_fb_i_reg_0;
  input \gcc0.gc0.count_reg[3] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input p_1_out;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_18_out;
  input \gpregsm1.curr_fwft_state_reg[0]_0 ;
  input ram_full_fb_i_reg;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire \gpregsm1.curr_fwft_state_reg[0]_0 ;
  wire p_18_out;
  wire p_1_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_5_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_full_i_i_3_n_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire [4:0]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(Q),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT6 #(
    .INIT(64'hFAAA8888AAAA8888)) 
    ram_empty_fb_i_i_1
       (.I0(p_18_out),
        .I1(ram_full_i_i_3_n_0),
        .I2(ram_empty_fb_i_i_2_n_0),
        .I3(\gpregsm1.curr_fwft_state_reg[0]_0 ),
        .I4(ram_full_fb_i_reg),
        .I5(ram_empty_fb_i_i_5_n_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[1]),
        .I1(\gcc0.gc0.count_d1_reg[4] [1]),
        .I2(\gcc0.gc0.count_d1_reg[4] [0]),
        .I3(rd_pntr_plus1[0]),
        .I4(\gcc0.gc0.count_d1_reg[4] [2]),
        .I5(rd_pntr_plus1[2]),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_fb_i_i_5
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .O(ram_empty_fb_i_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFA8A8FFA8A8A8A8)) 
    ram_full_i_i_1
       (.I0(p_1_out),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(ram_full_i_i_3_n_0),
        .I3(\gpr1.dout_i_reg[1] [0]),
        .I4(\gcc0.gc0.count_reg[2] [0]),
        .I5(ram_full_i_i_4_n_0),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_3
       (.I0(ram_full_i_i_5_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_full_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gcc0.gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gcc0.gc0.count_reg[2] [1]),
        .I4(ram_empty_fb_i_reg_0),
        .I5(\gcc0.gc0.count_reg[3] ),
        .O(ram_full_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_5
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module ntps_top_auto_ds_0_rd_bin_cntr_22
   (\gpr1.dout_i_reg[1] ,
    ram_full_comb,
    ram_empty_fb_i_reg,
    \gcc0.gc0.count_reg[2] ,
    ram_empty_fb_i_reg_0,
    \gcc0.gc0.count_reg[3] ,
    \gcc0.gc0.count_d1_reg[4] ,
    p_1_out,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_18_out,
    \gpregsm1.curr_fwft_state_reg[0]_0 ,
    ram_full_fb_i_reg,
    E,
    clk,
    Q);
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input ram_empty_fb_i_reg_0;
  input \gcc0.gc0.count_reg[3] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input p_1_out;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_18_out;
  input \gpregsm1.curr_fwft_state_reg[0]_0 ;
  input ram_full_fb_i_reg;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire \gpregsm1.curr_fwft_state_reg[0]_0 ;
  wire p_18_out;
  wire p_1_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_5_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_full_i_i_3_n_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire [4:0]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(Q),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT6 #(
    .INIT(64'hFAAA8888AAAA8888)) 
    ram_empty_fb_i_i_1
       (.I0(p_18_out),
        .I1(ram_full_i_i_3_n_0),
        .I2(ram_empty_fb_i_i_2_n_0),
        .I3(\gpregsm1.curr_fwft_state_reg[0]_0 ),
        .I4(ram_full_fb_i_reg),
        .I5(ram_empty_fb_i_i_5_n_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[1]),
        .I1(\gcc0.gc0.count_d1_reg[4] [1]),
        .I2(\gcc0.gc0.count_d1_reg[4] [0]),
        .I3(rd_pntr_plus1[0]),
        .I4(\gcc0.gc0.count_d1_reg[4] [2]),
        .I5(rd_pntr_plus1[2]),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_fb_i_i_5
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .O(ram_empty_fb_i_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFA8A8FFA8A8A8A8)) 
    ram_full_i_i_1
       (.I0(p_1_out),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(ram_full_i_i_3_n_0),
        .I3(\gpr1.dout_i_reg[1] [0]),
        .I4(\gcc0.gc0.count_reg[2] [0]),
        .I5(ram_full_i_i_4_n_0),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_3
       (.I0(ram_full_i_i_5_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_full_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gcc0.gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gcc0.gc0.count_reg[2] [1]),
        .I4(ram_empty_fb_i_reg_0),
        .I5(\gcc0.gc0.count_reg[3] ),
        .O(ram_full_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_5
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module ntps_top_auto_ds_0_rd_bin_cntr_7
   (\gpr1.dout_i_reg[1] ,
    ram_full_comb,
    ram_empty_fb_i_reg,
    \gcc0.gc0.count_reg[2] ,
    ram_empty_fb_i_reg_0,
    \gcc0.gc0.count_reg[3] ,
    \gcc0.gc0.count_d1_reg[4] ,
    p_1_out,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_18_out,
    \gpregsm1.curr_fwft_state_reg[0]_0 ,
    ram_full_fb_i_reg,
    E,
    clk,
    Q);
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input ram_empty_fb_i_reg_0;
  input \gcc0.gc0.count_reg[3] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input p_1_out;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_18_out;
  input \gpregsm1.curr_fwft_state_reg[0]_0 ;
  input ram_full_fb_i_reg;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire \gpregsm1.curr_fwft_state_reg[0]_0 ;
  wire p_18_out;
  wire p_1_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_5_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_full_i_i_3_n_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire [4:0]rd_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(Q),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT6 #(
    .INIT(64'hFAAA8888AAAA8888)) 
    ram_empty_fb_i_i_1
       (.I0(p_18_out),
        .I1(ram_full_i_i_3_n_0),
        .I2(ram_empty_fb_i_i_2_n_0),
        .I3(\gpregsm1.curr_fwft_state_reg[0]_0 ),
        .I4(ram_full_fb_i_reg),
        .I5(ram_empty_fb_i_i_5_n_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[1]),
        .I1(\gcc0.gc0.count_d1_reg[4] [1]),
        .I2(\gcc0.gc0.count_d1_reg[4] [0]),
        .I3(rd_pntr_plus1[0]),
        .I4(\gcc0.gc0.count_d1_reg[4] [2]),
        .I5(rd_pntr_plus1[2]),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_fb_i_i_5
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .O(ram_empty_fb_i_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFA8A8FFA8A8A8A8)) 
    ram_full_i_i_1
       (.I0(p_1_out),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(ram_full_i_i_3_n_0),
        .I3(\gpr1.dout_i_reg[1] [0]),
        .I4(\gcc0.gc0.count_reg[2] [0]),
        .I5(ram_full_i_i_4_n_0),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_3
       (.I0(ram_full_i_i_5_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_full_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gcc0.gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gcc0.gc0.count_reg[2] [1]),
        .I4(ram_empty_fb_i_reg_0),
        .I5(\gcc0.gc0.count_reg[3] ),
        .O(ram_full_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_5
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module ntps_top_auto_ds_0_rd_fwft
   (empty,
    ram_full_i_reg,
    E,
    ram_rd_en_i,
    \gc0.count_d1_reg[4] ,
    ram_empty_fb_i_reg,
    ram_full_i_reg_0,
    clk,
    Q,
    p_18_out,
    rd_en,
    wr_en,
    p_1_out);
  output empty;
  output ram_full_i_reg;
  output [0:0]E;
  output ram_rd_en_i;
  output [0:0]\gc0.count_d1_reg[4] ;
  output ram_empty_fb_i_reg;
  output ram_full_i_reg_0;
  input clk;
  input [1:0]Q;
  input p_18_out;
  input rd_en;
  input wr_en;
  input p_1_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\gc0.count_d1_reg[4] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_rd_en_i;
  wire rd_en;
  wire wr_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(\gc0.count_d1_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[31]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gpr1.dout_i[31]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(ram_rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_2
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_18_out),
        .O(ram_full_i_reg_0));
  LUT6 #(
    .INIT(64'h00000000BAAA0000)) 
    ram_full_i_i_6
       (.I0(p_18_out),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I3(curr_fwft_state),
        .I4(wr_en),
        .I5(p_1_out),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module ntps_top_auto_ds_0_rd_fwft_20
   (empty,
    ram_full_i_reg,
    E,
    ram_rd_en_i,
    \gc0.count_d1_reg[4] ,
    ram_empty_fb_i_reg,
    ram_full_i_reg_0,
    clk,
    Q,
    p_18_out,
    rd_en,
    wr_en,
    p_1_out);
  output empty;
  output ram_full_i_reg;
  output [0:0]E;
  output ram_rd_en_i;
  output [0:0]\gc0.count_d1_reg[4] ;
  output ram_empty_fb_i_reg;
  output ram_full_i_reg_0;
  input clk;
  input [1:0]Q;
  input p_18_out;
  input rd_en;
  input wr_en;
  input p_1_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\gc0.count_d1_reg[4] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_rd_en_i;
  wire rd_en;
  wire wr_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(\gc0.count_d1_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[31]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gpr1.dout_i[31]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(ram_rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_2
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_18_out),
        .O(ram_full_i_reg_0));
  LUT6 #(
    .INIT(64'h00000000BAAA0000)) 
    ram_full_i_i_6
       (.I0(p_18_out),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I3(curr_fwft_state),
        .I4(wr_en),
        .I5(p_1_out),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module ntps_top_auto_ds_0_rd_fwft_5
   (empty,
    ram_full_i_reg,
    E,
    ram_rd_en_i,
    \gc0.count_d1_reg[4] ,
    ram_empty_fb_i_reg,
    ram_full_i_reg_0,
    clk,
    Q,
    p_18_out,
    rd_en,
    wr_en,
    p_1_out);
  output empty;
  output ram_full_i_reg;
  output [0:0]E;
  output ram_rd_en_i;
  output [0:0]\gc0.count_d1_reg[4] ;
  output ram_empty_fb_i_reg;
  output ram_full_i_reg_0;
  input clk;
  input [1:0]Q;
  input p_18_out;
  input rd_en;
  input wr_en;
  input p_1_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\gc0.count_d1_reg[4] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_rd_en_i;
  wire rd_en;
  wire wr_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(\gc0.count_d1_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[8]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gpr1.dout_i[8]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(ram_rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_18_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_2
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_18_out),
        .O(ram_full_i_reg_0));
  LUT6 #(
    .INIT(64'h00000000BAAA0000)) 
    ram_full_i_i_6
       (.I0(p_18_out),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I3(curr_fwft_state),
        .I4(wr_en),
        .I5(p_1_out),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module ntps_top_auto_ds_0_rd_logic
   (empty,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    E,
    ram_rd_en_i,
    clk,
    Q,
    \gcc0.gc0.count_reg[2] ,
    \gcc0.gc0.count_reg[3] ,
    rd_en,
    wr_en,
    p_1_out,
    \gcc0.gc0.count_d1_reg[4] ,
    ram_full_fb_i_reg);
  output empty;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output [0:0]E;
  output ram_rd_en_i;
  input clk;
  input [1:0]Q;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input \gcc0.gc0.count_reg[3] ;
  input rd_en;
  input wr_en;
  input p_1_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input ram_full_fb_i_reg;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.rfwft_n_1 ;
  wire \gr1.rfwft_n_5 ;
  wire \gr1.rfwft_n_6 ;
  wire p_14_out;
  wire p_18_out;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_rd_en_i;
  wire rd_en;
  wire rpntr_n_6;
  wire wr_en;

  ntps_top_auto_ds_0_rd_fwft \gr1.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[4] (p_14_out),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gr1.rfwft_n_5 ),
        .ram_full_i_reg(\gr1.rfwft_n_1 ),
        .ram_full_i_reg_0(\gr1.rfwft_n_6 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_rd_status_flags_ss \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_18_out(p_18_out),
        .ram_empty_fb_i_reg_0(rpntr_n_6));
  ntps_top_auto_ds_0_rd_bin_cntr rpntr
       (.E(p_14_out),
        .Q(Q[1]),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_reg[2] (\gcc0.gc0.count_reg[2] ),
        .\gcc0.gc0.count_reg[3] (\gcc0.gc0.count_reg[3] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.rfwft_n_6 ),
        .\gpregsm1.curr_fwft_state_reg[0]_0 (\gr1.rfwft_n_5 ),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(rpntr_n_6),
        .ram_empty_fb_i_reg_0(\gr1.rfwft_n_1 ),
        .ram_full_comb(ram_full_comb),
        .ram_full_fb_i_reg(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module ntps_top_auto_ds_0_rd_logic_0
   (empty,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    E,
    ram_rd_en_i,
    clk,
    Q,
    \gcc0.gc0.count_reg[2] ,
    \gcc0.gc0.count_reg[3] ,
    rd_en,
    wr_en,
    p_1_out,
    \gcc0.gc0.count_d1_reg[4] ,
    ram_full_fb_i_reg);
  output empty;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output [0:0]E;
  output ram_rd_en_i;
  input clk;
  input [1:0]Q;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input \gcc0.gc0.count_reg[3] ;
  input rd_en;
  input wr_en;
  input p_1_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input ram_full_fb_i_reg;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.rfwft_n_1 ;
  wire \gr1.rfwft_n_5 ;
  wire \gr1.rfwft_n_6 ;
  wire p_14_out;
  wire p_18_out;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_rd_en_i;
  wire rd_en;
  wire rpntr_n_6;
  wire wr_en;

  ntps_top_auto_ds_0_rd_fwft_5 \gr1.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[4] (p_14_out),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gr1.rfwft_n_5 ),
        .ram_full_i_reg(\gr1.rfwft_n_1 ),
        .ram_full_i_reg_0(\gr1.rfwft_n_6 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_rd_status_flags_ss_6 \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_18_out(p_18_out),
        .ram_empty_fb_i_reg_0(rpntr_n_6));
  ntps_top_auto_ds_0_rd_bin_cntr_7 rpntr
       (.E(p_14_out),
        .Q(Q[1]),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_reg[2] (\gcc0.gc0.count_reg[2] ),
        .\gcc0.gc0.count_reg[3] (\gcc0.gc0.count_reg[3] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.rfwft_n_6 ),
        .\gpregsm1.curr_fwft_state_reg[0]_0 (\gr1.rfwft_n_5 ),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(rpntr_n_6),
        .ram_empty_fb_i_reg_0(\gr1.rfwft_n_1 ),
        .ram_full_comb(ram_full_comb),
        .ram_full_fb_i_reg(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module ntps_top_auto_ds_0_rd_logic_13
   (empty,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    E,
    ram_rd_en_i,
    clk,
    Q,
    \gcc0.gc0.count_reg[2] ,
    \gcc0.gc0.count_reg[3] ,
    rd_en,
    wr_en,
    p_1_out,
    \gcc0.gc0.count_d1_reg[4] ,
    ram_full_fb_i_reg);
  output empty;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_comb;
  output [0:0]E;
  output ram_rd_en_i;
  input clk;
  input [1:0]Q;
  input [2:0]\gcc0.gc0.count_reg[2] ;
  input \gcc0.gc0.count_reg[3] ;
  input rd_en;
  input wr_en;
  input p_1_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input ram_full_fb_i_reg;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_reg[2] ;
  wire \gcc0.gc0.count_reg[3] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.rfwft_n_1 ;
  wire \gr1.rfwft_n_5 ;
  wire \gr1.rfwft_n_6 ;
  wire p_14_out;
  wire p_18_out;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire ram_rd_en_i;
  wire rd_en;
  wire rpntr_n_6;
  wire wr_en;

  ntps_top_auto_ds_0_rd_fwft_20 \gr1.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[4] (p_14_out),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gr1.rfwft_n_5 ),
        .ram_full_i_reg(\gr1.rfwft_n_1 ),
        .ram_full_i_reg_0(\gr1.rfwft_n_6 ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_en(rd_en),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_rd_status_flags_ss_21 \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_18_out(p_18_out),
        .ram_empty_fb_i_reg_0(rpntr_n_6));
  ntps_top_auto_ds_0_rd_bin_cntr_22 rpntr
       (.E(p_14_out),
        .Q(Q[1]),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_reg[2] (\gcc0.gc0.count_reg[2] ),
        .\gcc0.gc0.count_reg[3] (\gcc0.gc0.count_reg[3] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.rfwft_n_6 ),
        .\gpregsm1.curr_fwft_state_reg[0]_0 (\gr1.rfwft_n_5 ),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(rpntr_n_6),
        .ram_empty_fb_i_reg_0(\gr1.rfwft_n_1 ),
        .ram_full_comb(ram_full_comb),
        .ram_full_fb_i_reg(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module ntps_top_auto_ds_0_rd_status_flags_ss
   (p_18_out,
    ram_empty_fb_i_reg_0,
    clk,
    Q);
  output p_18_out;
  input ram_empty_fb_i_reg_0;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_18_out;
  wire ram_empty_fb_i_reg_0;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module ntps_top_auto_ds_0_rd_status_flags_ss_21
   (p_18_out,
    ram_empty_fb_i_reg_0,
    clk,
    Q);
  output p_18_out;
  input ram_empty_fb_i_reg_0;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_18_out;
  wire ram_empty_fb_i_reg_0;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module ntps_top_auto_ds_0_rd_status_flags_ss_6
   (p_18_out,
    ram_empty_fb_i_reg_0,
    clk,
    Q);
  output p_18_out;
  input ram_empty_fb_i_reg_0;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_18_out;
  wire ram_empty_fb_i_reg_0;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module ntps_top_auto_ds_0_reset_blk_ramfifo
   (Q,
    \gcc0.gc0.count_reg[1] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_reg[1] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_reg[1] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  wire rst_rd_reg1;
  wire rst_rd_reg2;
  wire rst_wr_reg1;
  wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module ntps_top_auto_ds_0_reset_blk_ramfifo_16
   (Q,
    \gcc0.gc0.count_reg[1] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_reg[1] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_reg[1] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  wire rst_rd_reg1;
  wire rst_rd_reg2;
  wire rst_wr_reg1;
  wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module ntps_top_auto_ds_0_reset_blk_ramfifo_2
   (Q,
    \gcc0.gc0.count_reg[1] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_reg[1] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_reg[1] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  wire rst_rd_reg1;
  wire rst_rd_reg2;
  wire rst_wr_reg1;
  wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_reg[1] [1]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module ntps_top_auto_ds_0_wr_bin_cntr
   (ram_full_i_reg,
    Q,
    \gpr1.dout_i_reg[1] ,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output ram_full_i_reg;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input [1:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [4:3]p_9_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(p_9_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_9_out[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(p_9_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[3]),
        .Q(p_9_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[4]),
        .Q(p_9_out[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_7
       (.I0(p_9_out[3]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_9_out[4]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module ntps_top_auto_ds_0_wr_bin_cntr_19
   (ram_full_i_reg,
    Q,
    \gpr1.dout_i_reg[1] ,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output ram_full_i_reg;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input [1:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [4:3]p_9_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(p_9_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_9_out[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(p_9_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[3]),
        .Q(p_9_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[4]),
        .Q(p_9_out[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_7
       (.I0(p_9_out[3]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_9_out[4]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module ntps_top_auto_ds_0_wr_bin_cntr_4
   (ram_full_i_reg,
    Q,
    \gpr1.dout_i_reg[1] ,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output ram_full_i_reg;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input [1:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [4:3]p_9_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(p_9_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_9_out[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(p_9_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(p_9_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[3]),
        .Q(p_9_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[4]),
        .Q(p_9_out[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_7
       (.I0(p_9_out[3]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_9_out[4]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module ntps_top_auto_ds_0_wr_logic
   (p_1_out,
    full,
    ram_full_i_reg,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    clk,
    Q,
    \gc0.count_d1_reg[4] ,
    wr_en);
  output p_1_out;
  output full;
  output ram_full_i_reg;
  output [2:0]\gcc0.gc0.count_d1_reg[2] ;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input ram_full_comb;
  input clk;
  input [1:0]Q;
  input [1:0]\gc0.count_d1_reg[4] ;
  input wr_en;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire wr_en;

  ntps_top_auto_ds_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(\gcc0.gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (Q[1]),
        .ram_full_i_reg(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module ntps_top_auto_ds_0_wr_logic_1
   (p_1_out,
    full,
    ram_full_i_reg,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    clk,
    Q,
    \gc0.count_d1_reg[4] ,
    wr_en);
  output p_1_out;
  output full;
  output ram_full_i_reg;
  output [2:0]\gcc0.gc0.count_d1_reg[2] ;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input ram_full_comb;
  input clk;
  input [1:0]Q;
  input [1:0]\gc0.count_d1_reg[4] ;
  input wr_en;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire wr_en;

  ntps_top_auto_ds_0_wr_status_flags_ss_3 \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_bin_cntr_4 wpntr
       (.E(E),
        .Q(\gcc0.gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (Q[1]),
        .ram_full_i_reg(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module ntps_top_auto_ds_0_wr_logic_14
   (p_1_out,
    full,
    ram_full_i_reg,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    ram_full_comb,
    clk,
    Q,
    \gc0.count_d1_reg[4] ,
    wr_en);
  output p_1_out;
  output full;
  output ram_full_i_reg;
  output [2:0]\gcc0.gc0.count_d1_reg[2] ;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input ram_full_comb;
  input clk;
  input [1:0]Q;
  input [1:0]\gc0.count_d1_reg[4] ;
  input wr_en;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire [1:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire wr_en;

  ntps_top_auto_ds_0_wr_status_flags_ss_18 \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  ntps_top_auto_ds_0_wr_bin_cntr_19 wpntr
       (.E(E),
        .Q(\gcc0.gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (Q[1]),
        .ram_full_i_reg(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module ntps_top_auto_ds_0_wr_status_flags_ss
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    ram_empty_fb_i_i_4
       (.I0(p_1_out),
        .I1(wr_en),
        .O(ram_empty_fb_i_reg));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module ntps_top_auto_ds_0_wr_status_flags_ss_18
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    ram_empty_fb_i_i_4
       (.I0(p_1_out),
        .I1(wr_en),
        .O(ram_empty_fb_i_reg));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module ntps_top_auto_ds_0_wr_status_flags_ss_3
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  LUT2 #(
    .INIT(4'hB)) 
    ram_empty_fb_i_i_4
       (.I0(p_1_out),
        .I1(wr_en),
        .O(ram_empty_fb_i_reg));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
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
