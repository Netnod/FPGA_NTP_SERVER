// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_pcie3:3.0
// IP Revision: 10

(* X_CORE_INFO = "ntps_top_axi_pcie3_0_0_core_top,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "ntps_top_axi_pcie3_0_0,ntps_top_axi_pcie3_0_0_core_top,{}" *)
(* CORE_GENERATION_INFO = "ntps_top_axi_pcie3_0_0,ntps_top_axi_pcie3_0_0_core_top,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_pcie3,x_ipVersion=3.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,COMPONENT_NAME=axi_pcie3_v3_0,PL_UPSTREAM_FACING=true,TL_LEGACY_MODE_ENABLE=false,PCIE_BLK_LOCN=1,PL_LINK_CAP_MAX_LINK_WIDTH=8,PL_LINK_CAP_MAX_LINK_SPEED=2,REF_CLK_FREQ=0,AXI_ADDR_WIDTH=32,AXI_DATA_WIDTH=256,CORE_CLK_FREQ=1,PLL_TYPE=2,USER_CLK_FREQ=2,EN_AXI_SLAVE_IF=false,EN_AXI_MAS\
TER_IF=true,SILICON_REV=Production,PIPE_SIM=false,EXT_CH_GT_DRP=false,PCIE3_DRP=false,DEDICATE_PERST=false,SYS_RESET_POLARITY=0,MCAP_ENABLEMENT=NONE,MCAP_FPGA_BITSTREAM_VERSION=0x00000000,EXT_STARTUP_PRIMITIVE=false,PF0_VENDOR_ID=0x10EE,PF0_DEVICE_ID=0x7028,PF0_REVISION_ID=0x00,PF0_SUBSYSTEM_VENDOR_ID=0x10EE,PF0_SUBSYSTEM_ID=0x0007,PF0_CLASS_CODE=0x058000,PF0_BAR0_APERTURE_SIZE=0x0D,PF0_BAR0_CONTROL=0x4,PF0_BAR1_APERTURE_SIZE=0x05,PF0_BAR1_CONTROL=0x0,PF0_BAR2_APERTURE_SIZE=0x05,PF0_BAR2_CONTROL\
=0x0,PF0_BAR3_APERTURE_SIZE=0x05,PF0_BAR3_CONTROL=0x0,PF0_BAR4_APERTURE_SIZE=0x05,PF0_BAR4_CONTROL=0x0,PF0_BAR5_APERTURE_SIZE=0x05,PF0_BAR5_CONTROL=0x0,PCIEBAR_NUM=1,C_PCIEBAR2AXIBAR_0=0x0000000000000000,C_PCIEBAR2AXIBAR_1=0x0000000000000000,C_PCIEBAR2AXIBAR_2=0x0000000000000000,C_PCIEBAR2AXIBAR_3=0x0000000000000000,C_PCIEBAR2AXIBAR_4=0x0000000000000000,C_PCIEBAR2AXIBAR_5=0x0000000000000000,PF0_INTERRUPT_PIN=0x1,PF0_MSI_CAP_MULTIMSGCAP=0,C_COMP_TIMEOUT=0,C_TIMEOUT0_SEL=0xE,C_TIMEOUT1_SEL=0xF,C_T\
IMEOUT_MULT=0x3,C_OLD_BRIDGE_TIMEOUT=0,C_AXIBAR_NUM=1,C_AXIBAR_0=0x0000000000000000,C_AXIBAR_1=0x0000000000000000,C_AXIBAR_2=0x0000000000000000,C_AXIBAR_3=0x0000000000000000,C_AXIBAR_4=0x0000000000000000,C_AXIBAR_5=0x0000000000000000,C_AXIBAR_HIGHADDR_0=0x0000000000000000,C_AXIBAR_HIGHADDR_1=0x0000000000000000,C_AXIBAR_HIGHADDR_2=0x0000000000000000,C_AXIBAR_HIGHADDR_3=0x0000000000000000,C_AXIBAR_HIGHADDR_4=0x0000000000000000,C_AXIBAR_HIGHADDR_5=0x0000000000000000,C_AXIBAR2PCIEBAR_0=0x00000000000\
00000,C_AXIBAR2PCIEBAR_1=0x0000000000000000,C_AXIBAR2PCIEBAR_2=0x0000000000000000,C_AXIBAR2PCIEBAR_3=0x0000000000000000,C_AXIBAR2PCIEBAR_4=0x0000000000000000,C_AXIBAR2PCIEBAR_5=0x0000000000000000,C_INCLUDE_BAROFFSET_REG=1,C_BASEADDR=0x00001000,C_HIGHADDR=0x00001FFF,VU9P_BOARD=FALSE,VCU118_BOARD=FALSE,ENABLE_JTAG_DBG=FALSE,ENABLE_IBERT=false,C_S_AXI_ID_WIDTH=4,C_M_AXI_ID_WIDTH=3,SHARED_LOGIC=0,SHARED_LOGIC_CLK=false,SHARED_LOGIC_BOTH=false,SHARED_LOGIC_GTC=false,EN_TRANSCEIVER_STATUS_PORTS=false,\
C_S_AXI_NUM_READ=8,C_M_AXI_NUM_READ=8,C_S_AXI_NUM_WRITE=8,C_M_AXI_NUM_WRITE=8,IS_BOARD_PROJECT=1,EN_GT_SELECTION=false,SELECT_QUAD=GTH_Quad_128,ULTRASCALE=FALSE,ULTRASCALE_PLUS=FALSE,MSI_ENABLED=TRUE,DEV_PORT_TYPE=0,MSIX_EN=FALSE,MSIX_IMPL_EXT=TRUE,RX_DETECT=0,C_ATS_ENABLE=FALSE,C_ATS_CAP_NEXTPTR=0x000,C_PR_CAP_NEXTPTR=0x000,C_PRI_ENABLE=FALSE,AXI_ACLK_LOOPBACK=TRUE,CFG_EXT_IF=FALSE,C_S_AXI_SUPPORTS_NARROW_BURST=0,xlnx_ref_board=VC709,NO_SLV_ERR=FALSE,C_LAST_CORE_CAP_ADDR=0x100,C_VSEC_CAP_ADDR=0\
x128,EXT_XVC_VSEC_ENABLE=false,AXSIZE_BYTE_ACCESS_EN=FALSE,GT_TX_PD=false}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ntps_top_axi_pcie3_0_0 (
  sys_rst_n,
  cfg_ltssm_state,
  user_link_up,
  axi_ctl_aclk,
  intx_msi_request,
  msi_vector_num,
  m_axi_awready,
  m_axi_wready,
  m_axi_bid,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_arready,
  m_axi_rid,
  m_axi_rdata,
  m_axi_ruser,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  pci_exp_rxp,
  pci_exp_rxn,
  refclk,
  s_axi_ctl_awaddr,
  s_axi_ctl_awvalid,
  s_axi_ctl_wdata,
  s_axi_ctl_wstrb,
  s_axi_ctl_wvalid,
  s_axi_ctl_bready,
  s_axi_ctl_araddr,
  s_axi_ctl_arvalid,
  s_axi_ctl_rready,
  axi_aclk,
  axi_aresetn,
  axi_ctl_aresetn,
  interrupt_out,
  intx_msi_grant,
  msi_enable,
  msi_vector_width,
  m_axi_awid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_wdata,
  m_axi_wuser,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_bready,
  m_axi_arid,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_rready,
  pci_exp_txp,
  pci_exp_txn,
  s_axi_ctl_awready,
  s_axi_ctl_wready,
  s_axi_ctl_bresp,
  s_axi_ctl_bvalid,
  s_axi_ctl_arready,
  s_axi_ctl_rdata,
  s_axi_ctl_rresp,
  s_axi_ctl_rvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.sys_rst_n, BOARD.ASSOCIATED_PARAM SYS_RST_N_BOARD_INTERFACE, TYPE PCIE_PERST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst_n RST" *)
input wire sys_rst_n;
output wire [5 : 0] cfg_ltssm_state;
output wire user_link_up;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axi_ctl_aclk, ASSOCIATED_BUSIF S_AXI_CTL, FREQ_HZ 125000000, ASSOCIATED_RESET axi_ctl_aresetn, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_ctl_aclk CLK" *)
input wire axi_ctl_aclk;
input wire intx_msi_request;
input wire [4 : 0] msi_vector_num;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *)
input wire [2 : 0] m_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *)
input wire [2 : 0] m_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [255 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RUSER" *)
input wire [31 : 0] m_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxp" *)
input wire [7 : 0] pci_exp_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxn" *)
input wire [7 : 0] pci_exp_rxn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK CLK" *)
input wire refclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWADDR" *)
input wire [11 : 0] s_axi_ctl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWVALID" *)
input wire s_axi_ctl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL WDATA" *)
input wire [31 : 0] s_axi_ctl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL WSTRB" *)
input wire [3 : 0] s_axi_ctl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL WVALID" *)
input wire s_axi_ctl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL BREADY" *)
input wire s_axi_ctl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARADDR" *)
input wire [11 : 0] s_axi_ctl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARVALID" *)
input wire s_axi_ctl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL RREADY" *)
input wire s_axi_ctl_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axi_aclk, ASSOCIATED_BUSIF M_AXI:S_AXI:S_AXI_CTL, FREQ_HZ 125000000, ASSOCIATED_RESET axi_aresetn, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_aclk CLK" *)
output wire axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST" *)
output wire axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_ctl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_ctl_aresetn RST" *)
output wire axi_ctl_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.interrupt_out, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.interrupt_out INTERRUPT" *)
output wire interrupt_out;
output wire intx_msi_grant;
output wire msi_enable;
output wire [2 : 0] msi_vector_width;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *)
output wire [2 : 0] m_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [255 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *)
output wire [31 : 0] m_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [31 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *)
output wire [2 : 0] m_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, HAS_BURST.VALUE_SRC CONSTANT, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 32, RUSER_WIDTH 32, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txp" *)
output wire [7 : 0] pci_exp_txp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_7x_mgt, BOARD.ASSOCIATED_PARAM PCIE_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txn" *)
output wire [7 : 0] pci_exp_txn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWREADY" *)
output wire s_axi_ctl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL WREADY" *)
output wire s_axi_ctl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL BRESP" *)
output wire [1 : 0] s_axi_ctl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL BVALID" *)
output wire s_axi_ctl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARREADY" *)
output wire s_axi_ctl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL RDATA" *)
output wire [31 : 0] s_axi_ctl_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL RRESP" *)
output wire [1 : 0] s_axi_ctl_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, W\
USER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTL RVALID" *)
output wire s_axi_ctl_rvalid;

  ntps_top_axi_pcie3_0_0_core_top #(
    .COMPONENT_NAME("axi_pcie3_v3_0"),
    .PL_UPSTREAM_FACING("true"),
    .TL_LEGACY_MODE_ENABLE("false"),
    .PCIE_BLK_LOCN(1),
    .PL_LINK_CAP_MAX_LINK_WIDTH(8),
    .PL_LINK_CAP_MAX_LINK_SPEED(2),
    .REF_CLK_FREQ(0),
    .AXI_ADDR_WIDTH(32),
    .AXI_DATA_WIDTH(256),
    .CORE_CLK_FREQ(1),
    .PLL_TYPE(2),
    .USER_CLK_FREQ(2),
    .EN_AXI_SLAVE_IF("false"),
    .EN_AXI_MASTER_IF("true"),
    .SILICON_REV("Production"),
    .PIPE_SIM("false"),
    .EXT_CH_GT_DRP("false"),
    .PCIE3_DRP("false"),
    .DEDICATE_PERST("false"),
    .SYS_RESET_POLARITY(0),
    .MCAP_ENABLEMENT("NONE"),
    .MCAP_FPGA_BITSTREAM_VERSION(32'H00000000),
    .EXT_STARTUP_PRIMITIVE("false"),
    .PF0_VENDOR_ID(16'H10EE),
    .PF0_DEVICE_ID(16'H7028),
    .PF0_REVISION_ID(8'H00),
    .PF0_SUBSYSTEM_VENDOR_ID(16'H10EE),
    .PF0_SUBSYSTEM_ID(16'H0007),
    .PF0_CLASS_CODE(24'H058000),
    .PF0_BAR0_APERTURE_SIZE(5'H0D),
    .PF0_BAR0_CONTROL(3'H4),
    .PF0_BAR1_APERTURE_SIZE(5'H05),
    .PF0_BAR1_CONTROL(3'H0),
    .PF0_BAR2_APERTURE_SIZE(5'H05),
    .PF0_BAR2_CONTROL(3'H0),
    .PF0_BAR3_APERTURE_SIZE(5'H05),
    .PF0_BAR3_CONTROL(3'H0),
    .PF0_BAR4_APERTURE_SIZE(5'H05),
    .PF0_BAR4_CONTROL(3'H0),
    .PF0_BAR5_APERTURE_SIZE(5'H05),
    .PF0_BAR5_CONTROL(3'H0),
    .PCIEBAR_NUM(1),
    .C_PCIEBAR2AXIBAR_0(64'H0000000000000000),
    .C_PCIEBAR2AXIBAR_1(64'H0000000000000000),
    .C_PCIEBAR2AXIBAR_2(64'H0000000000000000),
    .C_PCIEBAR2AXIBAR_3(64'H0000000000000000),
    .C_PCIEBAR2AXIBAR_4(64'H0000000000000000),
    .C_PCIEBAR2AXIBAR_5(64'H0000000000000000),
    .PF0_INTERRUPT_PIN(3'H1),
    .PF0_MSI_CAP_MULTIMSGCAP(0),
    .C_COMP_TIMEOUT(0),
    .C_TIMEOUT0_SEL(4'HE),
    .C_TIMEOUT1_SEL(4'HF),
    .C_TIMEOUT_MULT(3'H3),
    .C_OLD_BRIDGE_TIMEOUT(0),
    .C_AXIBAR_NUM(1),
    .C_AXIBAR_0(64'H0000000000000000),
    .C_AXIBAR_1(64'H0000000000000000),
    .C_AXIBAR_2(64'H0000000000000000),
    .C_AXIBAR_3(64'H0000000000000000),
    .C_AXIBAR_4(64'H0000000000000000),
    .C_AXIBAR_5(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_0(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_1(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_2(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_3(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_4(64'H0000000000000000),
    .C_AXIBAR_HIGHADDR_5(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_0(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_1(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_2(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_3(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_4(64'H0000000000000000),
    .C_AXIBAR2PCIEBAR_5(64'H0000000000000000),
    .C_INCLUDE_BAROFFSET_REG(1),
    .C_BASEADDR(32'H00001000),
    .C_HIGHADDR(32'H00001FFF),
    .VU9P_BOARD("FALSE"),
    .VCU118_BOARD("FALSE"),
    .ENABLE_JTAG_DBG("FALSE"),
    .ENABLE_IBERT("false"),
    .C_S_AXI_ID_WIDTH(4),
    .C_M_AXI_ID_WIDTH(3),
    .SHARED_LOGIC(0),
    .SHARED_LOGIC_CLK("false"),
    .SHARED_LOGIC_BOTH("false"),
    .SHARED_LOGIC_GTC("false"),
    .EN_TRANSCEIVER_STATUS_PORTS("false"),
    .C_S_AXI_NUM_READ(8),
    .C_M_AXI_NUM_READ(8),
    .C_S_AXI_NUM_WRITE(8),
    .C_M_AXI_NUM_WRITE(8),
    .IS_BOARD_PROJECT(1),
    .EN_GT_SELECTION("false"),
    .SELECT_QUAD("GTH_Quad_128"),
    .ULTRASCALE("FALSE"),
    .ULTRASCALE_PLUS("FALSE"),
    .MSI_ENABLED("TRUE"),
    .DEV_PORT_TYPE(0),
    .MSIX_EN("FALSE"),
    .MSIX_IMPL_EXT("TRUE"),
    .RX_DETECT(0),
    .C_ATS_ENABLE("FALSE"),
    .C_ATS_CAP_NEXTPTR(12'H000),
    .C_PR_CAP_NEXTPTR(12'H000),
    .C_PRI_ENABLE("FALSE"),
    .AXI_ACLK_LOOPBACK("TRUE"),
    .CFG_EXT_IF("FALSE"),
    .C_S_AXI_SUPPORTS_NARROW_BURST(0),
    .xlnx_ref_board("VC709"),
    .NO_SLV_ERR("FALSE"),
    .C_LAST_CORE_CAP_ADDR(12'H100),
    .C_VSEC_CAP_ADDR(12'H128),
    .EXT_XVC_VSEC_ENABLE("false"),
    .AXSIZE_BYTE_ACCESS_EN("FALSE"),
    .GT_TX_PD("false")
  ) inst (
    .sys_rst_n(sys_rst_n),
    .cfg_ltssm_state(cfg_ltssm_state),
    .user_link_up(user_link_up),
    .axi_ctl_aclk(axi_ctl_aclk),
    .sys_clk_gt(1'B0),
    .intx_msi_request(intx_msi_request),
    .msi_vector_num(msi_vector_num),
    .msix_entry_num(11'B0),
    .s_axi_awid(4'B0),
    .s_axi_awaddr(32'B0),
    .s_axi_awregion(4'B0),
    .s_axi_awlen(8'B0),
    .s_axi_awsize(3'B0),
    .s_axi_awburst(2'B0),
    .s_axi_awvalid(1'B0),
    .s_axi_wdata(256'B0),
    .s_axi_wuser(32'B0),
    .s_axi_wstrb(32'B0),
    .s_axi_wlast(1'B0),
    .s_axi_wvalid(1'B0),
    .s_axi_bready(1'B0),
    .s_axi_arid(4'B0),
    .s_axi_araddr(32'B0),
    .s_axi_arregion(4'B0),
    .s_axi_arlen(8'B0),
    .s_axi_arsize(3'B0),
    .s_axi_arburst(2'B0),
    .s_axi_arvalid(1'B0),
    .s_axi_rready(1'B0),
    .m_axi_awready(m_axi_awready),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(m_axi_bid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(m_axi_rid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_ruser(m_axi_ruser),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .pci_exp_rxp(pci_exp_rxp),
    .pci_exp_rxn(pci_exp_rxn),
    .refclk(refclk),
    .s_axi_ctl_awaddr(s_axi_ctl_awaddr),
    .s_axi_ctl_awvalid(s_axi_ctl_awvalid),
    .s_axi_ctl_wdata(s_axi_ctl_wdata),
    .s_axi_ctl_wstrb(s_axi_ctl_wstrb),
    .s_axi_ctl_wvalid(s_axi_ctl_wvalid),
    .s_axi_ctl_bready(s_axi_ctl_bready),
    .s_axi_ctl_araddr(s_axi_ctl_araddr),
    .s_axi_ctl_arvalid(s_axi_ctl_arvalid),
    .s_axi_ctl_rready(s_axi_ctl_rready),
    .drp_clk(1'B0),
    .drp_en(1'B0),
    .drp_we(1'B0),
    .drp_addr(11'B0),
    .drp_di(16'B0),
    .ext_ch_gt_drpen(8'B0),
    .ext_ch_gt_drpwe(8'B0),
    .ext_ch_gt_drpaddr(72'B0),
    .ext_ch_gt_drpdi(128'B0),
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .axi_ctl_aresetn(axi_ctl_aresetn),
    .interrupt_out(interrupt_out),
    .intx_msi_grant(intx_msi_grant),
    .msi_enable(msi_enable),
    .msi_vector_width(msi_vector_width),
    .s_axi_awready(),
    .s_axi_wready(),
    .s_axi_bid(),
    .s_axi_bresp(),
    .s_axi_bvalid(),
    .s_axi_arready(),
    .s_axi_rid(),
    .s_axi_rdata(),
    .s_axi_ruser(),
    .s_axi_rresp(),
    .s_axi_rlast(),
    .s_axi_rvalid(),
    .m_axi_awid(m_axi_awid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wuser(m_axi_wuser),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(m_axi_arid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_rready(m_axi_rready),
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_txn(pci_exp_txn),
    .s_axi_ctl_awready(s_axi_ctl_awready),
    .s_axi_ctl_wready(s_axi_ctl_wready),
    .s_axi_ctl_bresp(s_axi_ctl_bresp),
    .s_axi_ctl_bvalid(s_axi_ctl_bvalid),
    .s_axi_ctl_arready(s_axi_ctl_arready),
    .s_axi_ctl_rdata(s_axi_ctl_rdata),
    .s_axi_ctl_rresp(s_axi_ctl_rresp),
    .s_axi_ctl_rvalid(s_axi_ctl_rvalid),
    .drp_rdy(),
    .drp_do(),
    .ext_ch_gt_drpclk(),
    .ext_ch_gt_drprdy(),
    .ext_ch_gt_drpdo(),
    .common_commands_in(26'B0),
    .pipe_rx_0_sigs(84'B0),
    .pipe_rx_1_sigs(84'B0),
    .pipe_rx_2_sigs(84'B0),
    .pipe_rx_3_sigs(84'B0),
    .pipe_rx_4_sigs(84'B0),
    .pipe_rx_5_sigs(84'B0),
    .pipe_rx_6_sigs(84'B0),
    .pipe_rx_7_sigs(84'B0),
    .pipe_rx_8_sigs(84'B0),
    .pipe_rx_9_sigs(84'B0),
    .pipe_rx_10_sigs(84'B0),
    .pipe_rx_11_sigs(84'B0),
    .pipe_rx_12_sigs(84'B0),
    .pipe_rx_13_sigs(84'B0),
    .pipe_rx_14_sigs(84'B0),
    .pipe_rx_15_sigs(84'B0),
    .common_commands_out(),
    .pipe_tx_0_sigs(),
    .pipe_tx_1_sigs(),
    .pipe_tx_2_sigs(),
    .pipe_tx_3_sigs(),
    .pipe_tx_4_sigs(),
    .pipe_tx_5_sigs(),
    .pipe_tx_6_sigs(),
    .pipe_tx_7_sigs(),
    .pipe_tx_8_sigs(),
    .pipe_tx_9_sigs(),
    .pipe_tx_10_sigs(),
    .pipe_tx_11_sigs(),
    .pipe_tx_12_sigs(),
    .pipe_tx_13_sigs(),
    .pipe_tx_14_sigs(),
    .pipe_tx_15_sigs(),
    .pipe_pclk_in(1'B0),
    .pipe_rxusrclk_in(1'B0),
    .pipe_rxoutclk_in(8'B0),
    .pipe_dclk_in(1'B0),
    .pipe_userclk1_in(1'B0),
    .pipe_userclk2_in(1'B0),
    .pipe_oobclk_in(1'B0),
    .pipe_mmcm_lock_in(1'B1),
    .pipe_txoutclk_out(),
    .pipe_rxoutclk_out(),
    .pipe_pclk_sel_out(),
    .pipe_gen3_out(),
    .pipe_mmcm_rst_n(1'B1),
    .pipe_txprbssel(3'B0),
    .pipe_rxprbssel(3'B0),
    .pipe_txprbsforceerr(1'B0),
    .pipe_rxprbscntreset(1'B0),
    .pipe_loopback(3'B0),
    .pipe_rxprbserr(),
    .pipe_txinhibit(8'B0),
    .pipe_rst_fsm(),
    .pipe_qrst_fsm(),
    .pipe_rate_fsm(),
    .pipe_sync_fsm_tx(),
    .pipe_sync_fsm_rx(),
    .pipe_drp_fsm(),
    .pipe_rst_idle(),
    .pipe_qrst_idle(),
    .pipe_rate_idle(),
    .pipe_eyescandataerror(),
    .pipe_rxstatus(),
    .pipe_dmonitorout(),
    .pipe_cpll_lock(),
    .pipe_qpll_lock(),
    .pipe_rxpmaresetdone(),
    .pipe_rxbufstatus(),
    .pipe_txphaligndone(),
    .pipe_txphinitdone(),
    .pipe_txdlysresetdone(),
    .pipe_rxphaligndone(),
    .pipe_rxdlysresetdone(),
    .pipe_rxsyncdone(),
    .pipe_rxdisperr(),
    .pipe_rxnotintable(),
    .pipe_rxcommadet(),
    .gt_ch_drp_rdy(),
    .pipe_debug_0(),
    .pipe_debug_1(),
    .pipe_debug_2(),
    .pipe_debug_3(),
    .pipe_debug_4(),
    .pipe_debug_5(),
    .pipe_debug_6(),
    .pipe_debug_7(),
    .pipe_debug_8(),
    .pipe_debug_9(),
    .pipe_debug(),
    .gt_pcieuserratedone(8'B0),
    .gt_loopback(24'B0),
    .gt_txprbsforceerr(8'B0),
    .gt_txinhibit(8'B0),
    .gt_txprbssel(32'B0),
    .gt_rxprbssel(32'B0),
    .gt_rxprbscntreset(8'B0),
    .gt_txelecidle(),
    .gt_txresetdone(),
    .gt_rxresetdone(),
    .gt_rxpmaresetdone(),
    .gt_txphaligndone(),
    .gt_txphinitdone(),
    .gt_txdlysresetdone(),
    .gt_rxphaligndone(),
    .gt_rxdlysresetdone(),
    .gt_rxsyncdone(),
    .gt_eyescandataerror(),
    .gt_rxprbserr(),
    .gt_dmonfiforeset(8'B0),
    .gt_dmonitorclk(8'B0),
    .gt_dmonitorout(),
    .gt_rxcommadet(),
    .gt_phystatus(),
    .gt_rxvalid(),
    .gt_rxcdrlock(),
    .gt_pcierateidle(),
    .gt_pcieuserratestart(),
    .gt_gtpowergood(),
    .gt_cplllock(),
    .gt_rxoutclk(),
    .gt_rxrecclkout(),
    .gt_qpll1lock(),
    .gt_rxstatus(),
    .gt_rxbufstatus(),
    .gt_bufgtdiv(),
    .phy_txeq_ctrl(),
    .phy_txeq_preset(),
    .phy_rst_fsm(),
    .phy_txeq_fsm(),
    .phy_rxeq_fsm(),
    .phy_rst_idle(),
    .phy_rrst_n(),
    .phy_prst_n(),
    .ext_qpll1refclk(),
    .ext_qpll1rate(),
    .ext_qpll1pd(),
    .ext_qpll1reset(),
    .ext_qpll1lock_out(2'B0),
    .ext_qpll1outclk_out(2'B0),
    .ext_qpll1outrefclk_out(2'B0),
    .int_qpll1lock_out(),
    .int_qpll1outrefclk_out(),
    .int_qpll1outclk_out(),
    .int_pclk_out_slave(),
    .int_pipe_rxusrclk_out(),
    .int_rxoutclk_out(),
    .int_dclk_out(),
    .int_userclk1_out(),
    .int_userclk2_out(),
    .int_oobclk_out(),
    .int_qplllock_out(),
    .int_qplloutclk_out(),
    .int_qplloutrefclk_out(),
    .int_pclk_sel_slave(8'B0),
    .qpll_drp_crscode(12'B0),
    .qpll_drp_fsm(18'B0),
    .qpll_drp_done(2'B0),
    .qpll_drp_reset(2'B0),
    .qpll_qplllock(2'B0),
    .qpll_qplloutclk(2'B0),
    .qpll_qplloutrefclk(2'B0),
    .qpll_qplld(),
    .qpll_qpllreset(),
    .qpll_drp_clk(),
    .qpll_drp_rst_n(),
    .qpll_drp_ovrd(),
    .qpll_drp_gen3(),
    .qpll_drp_start(),
    .cfg_interrupt_msix_address(64'B0),
    .cfg_interrupt_msix_data(32'B0),
    .cfg_interrupt_msix_enable(),
    .cfg_interrupt_msix_mask(),
    .cfg_interrupt_msix_int(1'B0),
    .cfg_interrupt_msix_vf_enable(),
    .cfg_interrupt_msix_vf_mask(),
    .cfg_interrupt_msix_sent(),
    .cfg_interrupt_msix_fail(),
    .mcap_design_switch(),
    .mcap_eos_in(1'B0),
    .startup_cfgclk(),
    .startup_cfgmclk(),
    .startup_di(),
    .startup_eos(),
    .startup_preq(),
    .startup_do(4'B0),
    .startup_dts(4'B0),
    .startup_fcsbo(1'B0),
    .startup_fcsbts(1'B0),
    .startup_gsr(1'B0),
    .startup_gts(1'B0),
    .startup_keyclearb(1'B1),
    .startup_pack(1'B0),
    .startup_usrcclko(1'B0),
    .startup_usrcclkts(1'B1),
    .startup_usrdoneo(1'B0),
    .startup_usrdonets(1'B1),
    .cap_req(),
    .cap_gnt(1'B1),
    .cap_rel(1'B0),
    .s_axis_rq_tdata(256'B0),
    .s_axis_rq_tkeep(8'B0),
    .s_axis_rq_tuser(60'B0),
    .s_axis_rq_tlast(1'B0),
    .s_axis_rq_tvalid(1'B0),
    .s_axis_rq_tready(),
    .m_axis_cq_tdata(),
    .m_axis_cq_tkeep(),
    .m_axis_cq_tuser(),
    .m_axis_cq_tlast(),
    .m_axis_cq_tvalid(),
    .m_axis_cq_tready(1'B0),
    .cfg_status_ats_stu(),
    .cfg_status_ats_en(),
    .cfg_status_pr_en(),
    .cfg_status_pr_rst(),
    .cfg_status_pr_uprgi(),
    .cfg_status_set_uprgi(1'B0),
    .cfg_status_pr_rf(),
    .cfg_status_set_rf(1'B0),
    .cfg_status_set_s(1'B0),
    .cfg_status_clr_s(1'B0),
    .cfg_status_ost_pr_alloc(),
    .cfg_ext_read_received(),
    .cfg_ext_write_received(),
    .cfg_ext_register_number(),
    .cfg_ext_function_number(),
    .cfg_ext_write_data(),
    .cfg_ext_write_byte_enable(),
    .cfg_ext_read_data(32'B0),
    .cfg_ext_read_data_valid(1'B0),
    .free_run_clock(1'B0),
    .gt_tx_powerdown(3'B0)
  );
endmodule
