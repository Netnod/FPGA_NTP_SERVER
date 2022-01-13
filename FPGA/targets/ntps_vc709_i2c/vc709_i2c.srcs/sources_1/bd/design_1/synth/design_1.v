//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Thu Nov  4 00:32:14 2021
//Host        : sloth running 64-bit Debian GNU/Linux 11 (bullseye)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (axi_aclk,
    axi_aresetn,
    gpio_rtl_tri_i,
    gpio_rtl_tri_o,
    gpio_rtl_tri_t,
    led_8bits_tri_o,
    pci_express_x1_rxn,
    pci_express_x1_rxp,
    pci_express_x1_txn,
    pci_express_x1_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_ACLK, CLK_DOMAIN design_1_axi_pcie3_0_0_axi_aclk, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) output axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl TRI_I" *) input [7:0]gpio_rtl_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl TRI_O" *) output [7:0]gpio_rtl_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl TRI_T" *) output [7:0]gpio_rtl_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_8bits TRI_O" *) output [7:0]led_8bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x1 rxn" *) input pci_express_x1_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x1 rxp" *) input pci_express_x1_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x1 txn" *) output pci_express_x1_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x1 txp" *) output pci_express_x1_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input pcie_refclk_clk_p;

  wire [7:0]axi_gpio_0_GPIO2_TRI_I;
  wire [7:0]axi_gpio_0_GPIO2_TRI_O;
  wire [7:0]axi_gpio_0_GPIO2_TRI_T;
  wire [7:0]axi_gpio_0_GPIO_TRI_O;
  wire [31:0]axi_pcie3_0_M_AXI_ARADDR;
  wire [1:0]axi_pcie3_0_M_AXI_ARBURST;
  wire [3:0]axi_pcie3_0_M_AXI_ARCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_ARID;
  wire [7:0]axi_pcie3_0_M_AXI_ARLEN;
  wire axi_pcie3_0_M_AXI_ARLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_ARPROT;
  wire axi_pcie3_0_M_AXI_ARREADY;
  wire [2:0]axi_pcie3_0_M_AXI_ARSIZE;
  wire axi_pcie3_0_M_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_M_AXI_AWADDR;
  wire [1:0]axi_pcie3_0_M_AXI_AWBURST;
  wire [3:0]axi_pcie3_0_M_AXI_AWCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_AWID;
  wire [7:0]axi_pcie3_0_M_AXI_AWLEN;
  wire axi_pcie3_0_M_AXI_AWLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_AWPROT;
  wire axi_pcie3_0_M_AXI_AWREADY;
  wire [2:0]axi_pcie3_0_M_AXI_AWSIZE;
  wire axi_pcie3_0_M_AXI_AWVALID;
  wire [2:0]axi_pcie3_0_M_AXI_BID;
  wire axi_pcie3_0_M_AXI_BREADY;
  wire [1:0]axi_pcie3_0_M_AXI_BRESP;
  wire axi_pcie3_0_M_AXI_BVALID;
  wire [63:0]axi_pcie3_0_M_AXI_RDATA;
  wire [2:0]axi_pcie3_0_M_AXI_RID;
  wire axi_pcie3_0_M_AXI_RLAST;
  wire axi_pcie3_0_M_AXI_RREADY;
  wire [1:0]axi_pcie3_0_M_AXI_RRESP;
  wire axi_pcie3_0_M_AXI_RVALID;
  wire [63:0]axi_pcie3_0_M_AXI_WDATA;
  wire axi_pcie3_0_M_AXI_WLAST;
  wire axi_pcie3_0_M_AXI_WREADY;
  wire [7:0]axi_pcie3_0_M_AXI_WSTRB;
  wire axi_pcie3_0_M_AXI_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M00_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire axi_pcie3_0_pcie_7x_mgt_rxn;
  wire axi_pcie3_0_pcie_7x_mgt_rxp;
  wire [0:0]axi_pcie3_0_pcie_7x_mgt_txn;
  wire [0:0]axi_pcie3_0_pcie_7x_mgt_txp;
  wire pcie_perstn_1;
  wire pcie_refclk_1_CLK_N;
  wire pcie_refclk_1_CLK_P;
  wire [0:0]util_ds_buf_IBUF_OUT;

  assign axi_aclk = axi_pcie3_0_axi_aclk;
  assign axi_aresetn = axi_pcie3_0_axi_aresetn;
  assign axi_gpio_0_GPIO2_TRI_I = gpio_rtl_tri_i[7:0];
  assign axi_pcie3_0_pcie_7x_mgt_rxn = pci_express_x1_rxn;
  assign axi_pcie3_0_pcie_7x_mgt_rxp = pci_express_x1_rxp;
  assign gpio_rtl_tri_o[7:0] = axi_gpio_0_GPIO2_TRI_O;
  assign gpio_rtl_tri_t[7:0] = axi_gpio_0_GPIO2_TRI_T;
  assign led_8bits_tri_o[7:0] = axi_gpio_0_GPIO_TRI_O;
  assign pci_express_x1_txn = axi_pcie3_0_pcie_7x_mgt_txn;
  assign pci_express_x1_txp = axi_pcie3_0_pcie_7x_mgt_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n;
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p;
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(axi_gpio_0_GPIO2_TRI_I),
        .gpio2_io_o(axi_gpio_0_GPIO2_TRI_O),
        .gpio2_io_t(axi_gpio_0_GPIO2_TRI_T),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .s_axi_aclk(axi_pcie3_0_axi_aclk),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(axi_pcie3_0_axi_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID));
  design_1_axi_pcie3_0_0 axi_pcie3_0
       (.axi_aclk(axi_pcie3_0_axi_aclk),
        .axi_aresetn(axi_pcie3_0_axi_aresetn),
        .intx_msi_request(1'b0),
        .m_axi_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_pcie3_0_M_AXI_ARID),
        .m_axi_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .m_axi_arready(axi_pcie3_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_pcie3_0_M_AXI_AWID),
        .m_axi_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .m_axi_awready(axi_pcie3_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .m_axi_bid(axi_pcie3_0_M_AXI_BID),
        .m_axi_bready(axi_pcie3_0_M_AXI_BREADY),
        .m_axi_bresp(axi_pcie3_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .m_axi_rdata(axi_pcie3_0_M_AXI_RDATA),
        .m_axi_rid(axi_pcie3_0_M_AXI_RID),
        .m_axi_rlast(axi_pcie3_0_M_AXI_RLAST),
        .m_axi_rready(axi_pcie3_0_M_AXI_RREADY),
        .m_axi_rresp(axi_pcie3_0_M_AXI_RRESP),
        .m_axi_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .m_axi_wdata(axi_pcie3_0_M_AXI_WDATA),
        .m_axi_wlast(axi_pcie3_0_M_AXI_WLAST),
        .m_axi_wready(axi_pcie3_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_pcie3_0_M_AXI_WVALID),
        .msi_vector_num({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pci_exp_rxn(axi_pcie3_0_pcie_7x_mgt_rxn),
        .pci_exp_rxp(axi_pcie3_0_pcie_7x_mgt_rxp),
        .pci_exp_txn(axi_pcie3_0_pcie_7x_mgt_txn),
        .pci_exp_txp(axi_pcie3_0_pcie_7x_mgt_txp),
        .refclk(util_ds_buf_IBUF_OUT),
        .s_axi_ctl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_arvalid(1'b0),
        .s_axi_ctl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_awvalid(1'b0),
        .s_axi_ctl_bready(1'b0),
        .s_axi_ctl_rready(1'b0),
        .s_axi_ctl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_ctl_wvalid(1'b0),
        .sys_rst_n(pcie_perstn_1));
  design_1_axi_pcie3_0_axi_periph_0 axi_pcie3_0_axi_periph
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_ACLK(axi_pcie3_0_axi_aclk),
        .M00_ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .S00_AXI_arid(axi_pcie3_0_M_AXI_ARID),
        .S00_AXI_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie3_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .S00_AXI_awid(axi_pcie3_0_M_AXI_AWID),
        .S00_AXI_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie3_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .S00_AXI_bid(axi_pcie3_0_M_AXI_BID),
        .S00_AXI_bready(axi_pcie3_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie3_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie3_0_M_AXI_RDATA),
        .S00_AXI_rid(axi_pcie3_0_M_AXI_RID),
        .S00_AXI_rlast(axi_pcie3_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_pcie3_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie3_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie3_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_pcie3_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_pcie3_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie3_0_M_AXI_WVALID));
  design_1_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(pcie_refclk_1_CLK_N),
        .IBUF_DS_P(pcie_refclk_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
endmodule

module design_1_axi_pcie3_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [2:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [2:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_pcie3_0_axi_periph_ACLK_net;
  wire axi_pcie3_0_axi_periph_ARESETN_net;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_BID;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  wire [63:0]axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_RID;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RLAST;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  wire [63:0]axi_pcie3_0_axi_periph_to_s00_couplers_WDATA;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WLAST;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  wire [7:0]axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire s00_couplers_to_axi_pcie3_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[2:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[2:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_pcie3_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_pcie3_0_axi_periph_ACLK_net = M00_ACLK;
  assign axi_pcie3_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_pcie3_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_pcie3_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_pcie3_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_axi_pcie3_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_pcie3_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_pcie3_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_14LSA0R s00_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_pcie3_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_pcie3_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_pcie3_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_pcie3_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(axi_pcie3_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_pcie3_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_pcie3_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_pcie3_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_14LSA0R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [2:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire [0:0]s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [31:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [2:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire [0:0]s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [2:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [63:0]s00_couplers_to_auto_ds_RDATA;
  wire [2:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [63:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [7:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[2:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[2:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[2:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[2:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule
