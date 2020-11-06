//======================================================================
//
// npts_interfaces.v
// -----------------
// This module contains the external interfaces used in the
// ntps FPGA design.
//
//
// Author: Joachim Strombergson
//
// Copyright (c) 2020, The Swedish Post and Telecom Authority (PTS)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in
//    the documentation and/or other materials provided with the
//    distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
// COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
// ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//
//======================================================================

`default_nettype none

module ntps_interfaces #(
                         parameter NUM_SLAVES = 8,
                         parameter BUILD_INFO = 0,
                         parameter GIT_HASH   = 0
                         )
  (
    input wire            reset,

    // PCI-AXI interface and bridge.
    input wire            pcie_perst,
    input wire            pcie_clk,
    input wire [7:0]      pci_exp_rxn,
    input wire [7:0]      pci_exp_rxp,
    output wire [7:0]     pci_exp_txn,
    output wire [7:0]     pci_exp_txp,

    output wire           user_link_up,

    input wire            clk50,
    input wire            pmbus_alert,
    inout wire            pmbus_clk,
    inout wire            pmbus_data,

    output wire           clk156,
    output wire           areset_clk156,

    input wire            xphy_refclk_n,
    input wire            xphy_refclk_p,

    // Port 0.
    input wire            sfp_module_detect_n_0,
    input wire            sfp_signal_lost_0,
    input wire            sfp_tx_fault_0,
    output wire           sfp_tx_disable_0,
    input wire            xphy_rxp_0,
    input wire            xphy_rxn_0,
    output wire           xphy_txp_0,
    output wire           xphy_txn_0,
    input wire [63  : 0]  xgmii_txd_0,
    input wire [7   : 0]  xgmii_txc_0,
    output wire [63 : 0]  xgmii_rxd_0,
    output wire [7  : 0]  xgmii_rxc_0,
    output wire [1 : 0]   api_ext_command_0,
    output wire [31 : 0]  api_ext_address_0,
    output wire [31 : 0]  api_ext_write_data_0,
    input wire [1 : 0]    api_ext_status_0,
    input wire [31 : 0]   api_ext_read_data_0,

    // Port 1.
    input wire            sfp_module_detect_n_1,
    input wire            sfp_signal_lost_1,
    input wire            sfp_tx_fault_1,
    output wire           sfp_tx_disable_1,
    input wire            xphy_rxp_1,
    input wire            xphy_rxn_1,
    output wire           xphy_txp_1,
    output wire           xphy_txn_1,
    input wire [63  : 0]  xgmii_txd_1,
    input wire [7   : 0]  xgmii_txc_1,
    output wire [63 : 0]  xgmii_rxd_1,
    output wire [7  : 0]  xgmii_rxc_1,
    output wire [1 : 0]   api_ext_command_1,
    output wire [31 : 0]  api_ext_address_1,
    output wire [31 : 0]  api_ext_write_data_1,
    input wire [1 : 0]    api_ext_status_1,
    input wire [31 : 0]   api_ext_read_data_1,

    // Port 2.
    input wire            sfp_module_detect_n_2,
    input wire            sfp_signal_lost_2,
    input wire            sfp_tx_fault_2,
    output wire           sfp_tx_disable_2,
    input wire            xphy_rxp_2,
    input wire            xphy_rxn_2,
    output wire           xphy_txp_2,
    output wire           xphy_txn_2,
    input wire [63  : 0]  xgmii_txd_2,
    input wire [7   : 0]  xgmii_txc_2,
    output wire [63 : 0]  xgmii_rxd_2,
    output wire [7  : 0]  xgmii_rxc_2,
    output wire [1 : 0]   api_ext_command_2,
    output wire [31 : 0]  api_ext_address_2,
    output wire [31 : 0]  api_ext_write_data_2,
    input wire [1 : 0]    api_ext_status_2,
    input wire [31 : 0]   api_ext_read_data_2,

    // Port 3.
    input wire            sfp_module_detect_n_3,
    input wire            sfp_signal_lost_3,
    input wire            sfp_tx_fault_3,
    output wire           sfp_tx_disable_3,
    input wire            xphy_rxp_3,
    input wire            xphy_rxn_3,
    output wire           xphy_txp_3,
    output wire           xphy_txn_3,
    input wire [63  : 0]  xgmii_txd_3,
    input wire [7   : 0]  xgmii_txc_3,
    output wire [63 : 0]  xgmii_rxd_3,
    output wire [7  : 0]  xgmii_rxc_3,
    output wire [1 : 0]   api_ext_command_3,
    output wire [31 : 0]  api_ext_address_3,
    output wire [31 : 0]  api_ext_write_data_3,
    input wire [1 : 0]    api_ext_status_3,
    input wire [31 : 0]   api_ext_read_data_3,

    // NTP clocks.
    output wire [63 : 0]  ntp_time,

    input wire            PPS_INA,
    output wire           PPS_OUTA,
    input wire            TEN_MHZ_INA_N,
    input wire            TEN_MHZ_INA_P,
    output wire           TEN_MHZ_OUTA,
    output wire           NTP_LED1A,
    output wire           NTP_LED2A,
    output wire           PLL_LOCKEDA,

    input wire            PPS_INB,
    output wire           PPS_OUTB,
    input wire            TEN_MHZ_INB_N,
    input wire            TEN_MHZ_INB_P,
    output wire           TEN_MHZ_OUTB,
    output wire           NTP_LED1B,
    output wire           NTP_LED2B,
    output wire           PLL_LOCKEDB
   );


  //----------------------------------------------------------------
  // Local parameters.
  //----------------------------------------------------------------
  localparam AXI_NTPA    = 0;
  localparam AXI_NTPB    = 1;
  localparam AXI_ETHLITE = 2;
  localparam AXI_NP0     = 3;
  localparam AXI_NP1     = 4;
  localparam AXI_NP2     = 5;
  localparam AXI_NP3     = 6;
  localparam AXI_PVT     = 7;

  // Keeping these around to be able to assign AXI busses.
  localparam AXI_KEY0    = 8;
  localparam AXI_KEY1    = 9;
  localparam AXI_KEY2    = 10;
  localparam AXI_KEY3    = 11;


  //----------------------------------------------------------------
  // Internal wires.
  //----------------------------------------------------------------
  wire             axi_aresetn;
  wire             axi_aclk;
  wire [NUM_SLAVES*32-1:0]   m_axi_awaddr;
  wire [NUM_SLAVES*3-1:0]    m_axi_awprot;
  wire [NUM_SLAVES-1:0]      m_axi_awvalid;
  wire [NUM_SLAVES-1:0]      m_axi_awready;
  wire [NUM_SLAVES*32-1:0]   m_axi_wdata;
  wire [NUM_SLAVES*32/8-1:0] m_axi_wstrb;
  wire [NUM_SLAVES-1:0]      m_axi_wvalid;
  wire [NUM_SLAVES-1:0]      m_axi_wready;
  wire [NUM_SLAVES*2-1:0]    m_axi_bresp;
  wire [NUM_SLAVES-1:0]      m_axi_bvalid;
  wire [NUM_SLAVES-1:0]      m_axi_bready;
  wire [NUM_SLAVES*32-1:0]   m_axi_araddr;
  wire [NUM_SLAVES*3-1:0]    m_axi_arprot;
  wire [NUM_SLAVES-1:0]      m_axi_arvalid;
  wire [NUM_SLAVES-1:0]      m_axi_arready;
  wire [NUM_SLAVES*32-1:0]   m_axi_rdata;
  wire [NUM_SLAVES*2-1:0]    m_axi_rresp;
  wire [NUM_SLAVES-1:0]      m_axi_rvalid;
  wire [NUM_SLAVES-1:0]      m_axi_rready;

  wire             mdc;
  wire             mdio_in;
  wire             mdio_out;

  wire [31 : 0]    gen_config_0;
  wire [31 : 0]    gen_config_1;
  wire [31 : 0]    gen_config_2;
  wire [31 : 0]    gen_config_3;

  wire [4 : 0]     xphy_status_0;
  wire [4 : 0]     xphy_status_1;
  wire [4 : 0]     xphy_status_2;
  wire [4 : 0]     xphy_status_3;

  wire [63 : 0]    ntp_time_a;
  wire             ntp_time_upd_a;
  wire             ntp_sync_ok_a;
  wire [63 : 0]    ntp_time_b;
  wire             ntp_time_upd_b;
  wire             ntp_sync_ok_b;
  wire             ntp_sync_ok;


  //----------------------------------------------------------------
  // PCI-AXI instantiation.
  //----------------------------------------------------------------
  pcie_axi #(
			.NUM_SLAVES(NUM_SLAVES)
			)
   pcie_axi_0 (
    .reset         (reset),
    .pcie_perst    (pcie_perst),
    .pcie_clk      (pcie_clk),
    .pci_exp_rxn   (pci_exp_rxn),
    .pci_exp_rxp   (pci_exp_rxp),
    .pci_exp_txn   (pci_exp_txn),
    .pci_exp_txp   (pci_exp_txp),
    .axi_aresetn   (axi_aresetn),
    .axi_aclk      (axi_aclk),
    .m_axi_awaddr  (m_axi_awaddr),
    .m_axi_awprot  (m_axi_awprot),
    .m_axi_awvalid (m_axi_awvalid),
    .m_axi_awready (m_axi_awready),
    .m_axi_wdata   (m_axi_wdata),
    .m_axi_wstrb   (m_axi_wstrb),
    .m_axi_wvalid  (m_axi_wvalid),
    .m_axi_wready  (m_axi_wready),
    .m_axi_bresp   (m_axi_bresp),
    .m_axi_bvalid  (m_axi_bvalid),
    .m_axi_bready  (m_axi_bready),
    .m_axi_araddr  (m_axi_araddr),
    .m_axi_arprot  (m_axi_arprot),
    .m_axi_arvalid (m_axi_arvalid),
    .m_axi_arready (m_axi_arready),
    .m_axi_rdata   (m_axi_rdata),
    .m_axi_rresp   (m_axi_rresp),
    .m_axi_rvalid  (m_axi_rvalid),
    .m_axi_rready  (m_axi_rready),
    .user_link_up  (user_link_up)
   );


  //----------------------------------------------------------------
  // NTP clocks.
  //----------------------------------------------------------------
  ntp_clock_top ntp_clock_topA (
    .reset        (reset),
    .TEN_MHZ_IN_N (TEN_MHZ_INA_N),
    .TEN_MHZ_IN_P (TEN_MHZ_INA_P),
    .TEN_MHZ_OUT  (TEN_MHZ_OUTA),
    .PPS_IN       (PPS_INA),
    .PPS_OUT      (PPS_OUTA),
    .axi_aclk     (axi_aclk),
    .axi_aresetn  (axi_aresetn),
    .axi_araddr   (m_axi_araddr [(AXI_NTPA * 32) +: 5]),
    .axi_arprot   (m_axi_arprot [(AXI_NTPA * 3) +: 3]),
    .axi_arready  (m_axi_arready[(AXI_NTPA * 1) +: 1]),
    .axi_arvalid  (m_axi_arvalid[(AXI_NTPA * 1) +: 1]),
    .axi_awaddr   (m_axi_awaddr [(AXI_NTPA * 32) +: 5]),
    .axi_awprot   (m_axi_awprot [(AXI_NTPA * 3) +: 3]),
    .axi_awready  (m_axi_awready[(AXI_NTPA * 1) +: 1]),
    .axi_awvalid  (m_axi_awvalid[(AXI_NTPA * 1) +: 1]),
    .axi_bready   (m_axi_bready [(AXI_NTPA * 1) +: 1]),
    .axi_bresp    (m_axi_bresp  [(AXI_NTPA * 2) +: 2]),
    .axi_bvalid   (m_axi_bvalid [(AXI_NTPA * 1) +: 1]),
    .axi_rdata    (m_axi_rdata  [(AXI_NTPA * 32) +: 32]),
    .axi_rready   (m_axi_rready [(AXI_NTPA * 1) +: 1]),
    .axi_rresp    (m_axi_rresp  [(AXI_NTPA * 2) +: 2]),
    .axi_rvalid   (m_axi_rvalid [(AXI_NTPA * 1) +: 1]),
    .axi_wdata    (m_axi_wdata  [(AXI_NTPA * 32) +: 32]),
    .axi_wready   (m_axi_wready [(AXI_NTPA * 1) +: 1]),
    .axi_wstrb    (m_axi_wstrb  [(AXI_NTPA * 32/8) +: 32/8]),
    .axi_wvalid   (m_axi_wvalid [(AXI_NTPA * 1) +: 1]),
    .NTP_TIME     (ntp_time_a),
    .NTP_TIME_UPD (ntp_time_upd_a),
    .PLL_locked   (PLL_LOCKEDA),
    .LED1         (NTP_LED1A),
    .LED2         (NTP_LED2A),
    .LED3         (),
    .LED4         (),
    .LED5         (),
    .LED6         (),
    .LED7         (),
    .LED8         (),
    .SYNC_OK      (ntp_sync_ok_a),
    .test         ()
    );


  ntp_clock_top ntp_clock_topB (
    .reset        (reset),
    .TEN_MHZ_IN_N (TEN_MHZ_INB_N),
    .TEN_MHZ_IN_P (TEN_MHZ_INB_P),
    .TEN_MHZ_OUT  (TEN_MHZ_OUTB),
    .PPS_IN       (PPS_INB),
    .PPS_OUT      (PPS_OUTB),
    .axi_aclk     (axi_aclk),
    .axi_aresetn  (axi_aresetn),
    .axi_araddr   (m_axi_araddr [(AXI_NTPB * 32) +: 5]),
    .axi_arprot   (m_axi_arprot [(AXI_NTPB * 3) +: 3]),
    .axi_arready  (m_axi_arready[(AXI_NTPB * 1) +: 1]),
    .axi_arvalid  (m_axi_arvalid[(AXI_NTPB * 1) +: 1]),
    .axi_awaddr   (m_axi_awaddr [(AXI_NTPB * 32) +: 5]),
    .axi_awprot   (m_axi_awprot [(AXI_NTPB * 3) +: 3]),
    .axi_awready  (m_axi_awready[(AXI_NTPB * 1) +: 1]),
    .axi_awvalid  (m_axi_awvalid[(AXI_NTPB * 1) +: 1]),
    .axi_bready   (m_axi_bready [(AXI_NTPB * 1) +: 1]),
    .axi_bresp    (m_axi_bresp  [(AXI_NTPB * 2) +: 2]),
    .axi_bvalid   (m_axi_bvalid [(AXI_NTPB * 1) +: 1]),
    .axi_rdata    (m_axi_rdata  [(AXI_NTPB * 32) +: 32]),
    .axi_rready   (m_axi_rready [(AXI_NTPB * 1) +: 1]),
    .axi_rresp    (m_axi_rresp  [(AXI_NTPB * 2) +: 2]),
    .axi_rvalid   (m_axi_rvalid [(AXI_NTPB * 1) +: 1]),
    .axi_wdata    (m_axi_wdata  [(AXI_NTPB * 32) +: 32]),
    .axi_wready   (m_axi_wready [(AXI_NTPB * 1) +: 1]),
    .axi_wstrb    (m_axi_wstrb  [(AXI_NTPB * 32/8) +: 32/8]),
    .axi_wvalid   (m_axi_wvalid [(AXI_NTPB * 1) +: 1]),
    .NTP_TIME     (ntp_time_b),
    .NTP_TIME_UPD (ntp_time_upd_b),
    .PLL_locked   (PLL_LOCKEDB),
    .LED1         (NTP_LED1B),
    .LED2         (NTP_LED2B),
    .LED3         (),
    .LED4         (),
    .LED5         (),
    .LED6         (),
    .LED7         (),
    .LED8         (),
    .SYNC_OK      (ntp_sync_ok_b),
    .test         ()
    );


  //----------------------------------------------------------------
  // Common NTP clock select. Controlled by Port 0 config.
  //----------------------------------------------------------------
  ntp_clock_select ntp_clock_select_inst (
    .select         (gen_config_0[24]),
    .ntp_time_a     (ntp_time_a),
    .ntp_time_upd_a (ntp_time_upd_a),
    .ntp_time_b     (ntp_time_b),
    .ntp_time_upd_b (ntp_time_upd_b),
    .ntp_sync_ok_a  (ntp_sync_ok_a),
    .ntp_sync_ok_b  (ntp_sync_ok_b),
    .ntp_time       (ntp_time),
    .ntp_sync_ok    (ntp_sync_ok),
    .clk156         (clk156),
    .reset          (reset)
    );


  //----------------------------------------------------------------
  // Ethernet lite module for MDIO control only.
  //----------------------------------------------------------------
  ntps_top_axi_ethernetlite_0_0 mdio_axi_ethernetlite_inst (
    .phy_col       (1'b0),
    .phy_crs       (1'b0),
    .phy_dv        (1'b0),
    .phy_mdc       (mdc),
    .phy_mdio_i    (mdio_out),
    .phy_mdio_o    (mdio_in),
    .phy_rx_clk    (1'b0),
    .phy_rx_data   (4'b0),
    .phy_rx_er     (1'b0),
    .phy_tx_clk    (1'b0),
    .phy_rst_n     (),
    .phy_tx_en     (),
    .phy_tx_data   (),
    .phy_mdio_t    (),
    .ip2intc_irpt  (),
    .s_axi_aclk    (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [(AXI_ETHLITE * 32) +: 13]),
    .s_axi_arready (m_axi_arready[(AXI_ETHLITE * 1) +: 1]),
    .s_axi_arvalid (m_axi_arvalid[(AXI_ETHLITE * 1) +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [(AXI_ETHLITE * 32) +: 13]),
    .s_axi_awready (m_axi_awready[(AXI_ETHLITE * 1) +: 1]),
    .s_axi_awvalid (m_axi_awvalid[(AXI_ETHLITE * 1) +: 1]),
    .s_axi_bready  (m_axi_bready [(AXI_ETHLITE * 1) +: 1]),
    .s_axi_bresp   (m_axi_bresp  [(AXI_ETHLITE * 2) +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [(AXI_ETHLITE * 1) +: 1]),
    .s_axi_rdata   (m_axi_rdata  [(AXI_ETHLITE * 32) +: 32]),
    .s_axi_rready  (m_axi_rready [(AXI_ETHLITE * 1) +: 1]),
    .s_axi_rresp   (m_axi_rresp  [(AXI_ETHLITE * 2) +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [(AXI_ETHLITE * 1) +: 1]),
    .s_axi_wdata   (m_axi_wdata  [(AXI_ETHLITE * 32) +: 32]),
    .s_axi_wready  (m_axi_wready [(AXI_ETHLITE * 1) +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [(AXI_ETHLITE * 32/8) +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [(AXI_ETHLITE * 1) +: 1])
  );


  //----------------------------------------------------------------
  // pvtmon
  // Status registers for board power and temperature.
  // Also includes registers for build info to ID the FPGA design.
  //----------------------------------------------------------------
  pvtmon_top #(
               .BUILD_INFO(BUILD_INFO),
               .GIT_HASH(GIT_HASH)
               )
  pvtmon_top_0 (
    .clk50          (clk50),
    .rst            (reset),

    .pcie_link_up   (user_link_up),
    .pmbus_clk      (pmbus_clk),
    .pmbus_data     (pmbus_data),
    .pmbus_control  (),
    .pmbus_alert    (pmbus_alert),

    .s_axi_clk      (axi_aclk),
    .s_axi_aresetn  (axi_aresetn),
    .s_axi_araddr   (m_axi_araddr [(AXI_PVT * 32) +: 7]),
    .s_axi_arready  (m_axi_arready[(AXI_PVT * 1) +: 1]),
    .s_axi_arvalid  (m_axi_arvalid[(AXI_PVT * 1) +: 1]),
    .s_axi_awaddr   (m_axi_awaddr [(AXI_PVT * 32) +: 7]),
    .s_axi_awready  (m_axi_awready[(AXI_PVT * 1) +: 1]),
    .s_axi_awvalid  (m_axi_awvalid[(AXI_PVT * 1) +: 1]),
    .s_axi_bready   (m_axi_bready [(AXI_PVT * 1) +: 1]),
    .s_axi_bresp    (m_axi_bresp  [(AXI_PVT * 2) +: 2]),
    .s_axi_bvalid   (m_axi_bvalid [(AXI_PVT * 1) +: 1]),
    .s_axi_rdata    (m_axi_rdata  [(AXI_PVT * 32) +: 32]),
    .s_axi_rready   (m_axi_rready [(AXI_PVT * 1) +: 1]),
    .s_axi_rresp    (m_axi_rresp  [(AXI_PVT * 2) +: 2]),
    .s_axi_rvalid   (m_axi_rvalid [(AXI_PVT * 1) +: 1]),
    .s_axi_wdata    (m_axi_wdata  [(AXI_PVT * 32) +: 32]),
    .s_axi_wready   (m_axi_wready [(AXI_PVT * 1) +: 1]),
    .s_axi_wstrb    (m_axi_wstrb  [(AXI_PVT * 32/8) +: 32/8]),
    .s_axi_wvalid   (m_axi_wvalid [(AXI_PVT * 1) +: 1])
    );


  //----------------------------------------------------------------
  // Ethernet PHYs.
  //----------------------------------------------------------------
  ntps_phys phys(
                 .reset                 (reset),
                 .clk156                (clk156),
                 .areset_clk156         (areset_clk156),

                 .mdc                   (mdc),
                 .mdio_in               (mdio_in),
                 .mdio_out              (mdio_out),

                 .xphy_refclk_n         (xphy_refclk_n),
                 .xphy_refclk_p         (xphy_refclk_p),

                 .xphy_config_0         (gen_config_0[31 : 29]),
                 .xphy_status_0         (xphy_status_0),
                 .sfp_module_detect_n_0 (sfp_module_detect_n_0),
                 .sfp_signal_lost_0     (sfp_signal_lost_0),
                 .sfp_tx_fault_0        (sfp_tx_fault_0),
                 .sfp_tx_disable_0      (sfp_tx_disable_0),
                 .xphy_rxp_0            (xphy_rxp_0),
                 .xphy_rxn_0            (xphy_rxn_0),
                 .xphy_txp_0            (xphy_txp_0),
                 .xphy_txn_0            (xphy_txn_0),
                 .xgmii_txd_0           (xgmii_txd_0),
                 .xgmii_txc_0           (xgmii_txc_0),
                 .xgmii_rxd_0           (xgmii_rxd_0),
                 .xgmii_rxc_0           (xgmii_rxc_0),

                 .xphy_config_1         (gen_config_1[31 : 29]),
                 .xphy_status_1         (xphy_status_1),
                 .sfp_module_detect_n_1 (sfp_module_detect_n_1),
                 .sfp_signal_lost_1     (sfp_signal_lost_1),
                 .sfp_tx_fault_1        (sfp_tx_fault_1),
                 .sfp_tx_disable_1      (sfp_tx_disable_1),
                 .xphy_rxp_1            (xphy_rxp_1),
                 .xphy_rxn_1            (xphy_rxn_1),
                 .xphy_txp_1            (xphy_txp_1),
                 .xphy_txn_1            (xphy_txn_1),
                 .xgmii_txd_1           (xgmii_txd_1),
                 .xgmii_txc_1           (xgmii_txc_1),
                 .xgmii_rxd_1           (xgmii_rxd_1),
                 .xgmii_rxc_1           (xgmii_rxc_1),

                 .xphy_config_2         (gen_config_2[31 : 29]),
                 .xphy_status_2         (xphy_status_2),
                 .sfp_module_detect_n_2 (sfp_module_detect_n_2),
                 .sfp_signal_lost_2     (sfp_signal_lost_2),
                 .sfp_tx_fault_2        (sfp_tx_fault_2),
                 .sfp_tx_disable_2      (sfp_tx_disable_2),
                 .xphy_rxp_2            (xphy_rxp_2),
                 .xphy_rxn_2            (xphy_rxn_2),
                 .xphy_txp_2            (xphy_txp_2),
                 .xphy_txn_2            (xphy_txn_2),
                 .xgmii_txd_2           (xgmii_txd_2),
                 .xgmii_txc_2           (xgmii_txc_2),
                 .xgmii_rxd_2           (xgmii_rxd_2),
                 .xgmii_rxc_2           (xgmii_rxc_2),

                 .xphy_config_3         (gen_config_3[31 : 29]),
                 .xphy_status_3         (xphy_status_3),
                 .sfp_module_detect_n_3 (sfp_module_detect_n_3),
                 .sfp_signal_lost_3     (sfp_signal_lost_3),
                 .sfp_tx_fault_3        (sfp_tx_fault_3),
                 .sfp_tx_disable_3      (sfp_tx_disable_3),
                 .xphy_rxp_3            (xphy_rxp_3),
                 .xphy_rxn_3            (xphy_rxn_3),
                 .xphy_txp_3            (xphy_txp_3),
                 .xphy_txn_3            (xphy_txn_3),
                 .xgmii_txd_3           (xgmii_txd_3),
                 .xgmii_txc_3           (xgmii_txc_3),
                 .xgmii_rxd_3           (xgmii_rxd_3),
                 .xgmii_rxc_3           (xgmii_rxc_3)
                 );


  //----------------------------------------------------------------
  // network_path_axi_slave_0
  //----------------------------------------------------------------
  network_path_axi_slave network_path_axi_slave_0 (
    .pp_clk         (clk156),
    .gen_config     (gen_config_0),
    .ntp_config     (),
    .ntp_root_delay (),
    .ntp_root_disp  (),
    .ntp_ref_id     (),
    .ntp_ref_ts     (),
    .ntp_rx_ofs     (),
    .ntp_tx_ofs     (),
    .pp_status      (32'h0),
    .xphy_status    ({3'h0, xphy_status_0}),
    .ntp_sync_ok    (ntp_sync_ok),

    // Ports for API extension.
    .api_ext_command    (api_ext_command_0),
    .api_ext_address    (api_ext_address_0),
    .api_ext_write_data (api_ext_write_data_0),
    .api_ext_status     (api_ext_status_0),
    .api_ext_read_data  (api_ext_read_data_0),

    .S_AXI_ACLK    (axi_aclk),
    .S_AXI_ARESETN (axi_aresetn),
    .S_AXI_AWADDR  (m_axi_awaddr [(AXI_NP0 * 32) +: 9]),
    .S_AXI_AWVALID (m_axi_awvalid[(AXI_NP0 * 1) +: 1]),
    .S_AXI_AWREADY (m_axi_awready[(AXI_NP0 * 1) +: 1]),
    .S_AXI_WDATA   (m_axi_wdata  [(AXI_NP0 * 32) +: 32]),
    .S_AXI_WSTRB   (m_axi_wstrb  [(AXI_NP0 * 32/8) +: 32/8]),
    .S_AXI_WVALID  (m_axi_wvalid [(AXI_NP0 * 1) +: 1]),
    .S_AXI_WREADY  (m_axi_wready [(AXI_NP0 * 1) +: 1]),
    .S_AXI_BRESP   (m_axi_bresp  [(AXI_NP0 * 2) +: 2]),
    .S_AXI_BVALID  (m_axi_bvalid [(AXI_NP0 * 1) +: 1]),
    .S_AXI_BREADY  (m_axi_bready [(AXI_NP0 * 1) +: 1]),
    .S_AXI_ARADDR  (m_axi_araddr [(AXI_NP0 * 32) +: 9]),
    .S_AXI_ARVALID (m_axi_arvalid[(AXI_NP0 * 1) +: 1]),
    .S_AXI_ARREADY (m_axi_arready[(AXI_NP0 * 1) +: 1]),
    .S_AXI_RDATA   (m_axi_rdata  [(AXI_NP0 * 32) +: 32]),
    .S_AXI_RRESP   (m_axi_rresp  [(AXI_NP0 * 2) +: 2]),
    .S_AXI_RVALID  (m_axi_rvalid [(AXI_NP0 * 1) +: 1]),
    .S_AXI_RREADY  (m_axi_rready [(AXI_NP0 * 1) +: 1])
  );


  //----------------------------------------------------------------
  // network_path_axi_slave_1
  //----------------------------------------------------------------
  network_path_axi_slave network_path_axi_slave_1 (
    .pp_clk         (clk156),
    .gen_config     (gen_config_1),
    .ntp_config     (),
    .ntp_root_delay (),
    .ntp_root_disp  (),
    .ntp_ref_id     (),
    .ntp_ref_ts     (),
    .ntp_rx_ofs     (),
    .ntp_tx_ofs     (),
    .pp_status      (32'h0),
    .xphy_status    ({3'h0, xphy_status_1}),
    .ntp_sync_ok    (ntp_sync_ok),

    // Ports for API extension.
    .api_ext_command    (api_ext_command_1),
    .api_ext_address    (api_ext_address_1),
    .api_ext_write_data (api_ext_write_data_1),
    .api_ext_status     (api_ext_status_1),
    .api_ext_read_data  (api_ext_read_data_1),

    .S_AXI_ACLK    (axi_aclk),
    .S_AXI_ARESETN (axi_aresetn),
    .S_AXI_AWADDR  (m_axi_awaddr [(AXI_NP1 * 32) +: 9]),
    .S_AXI_AWVALID (m_axi_awvalid[(AXI_NP1 * 1) +: 1]),
    .S_AXI_AWREADY (m_axi_awready[(AXI_NP1 * 1) +: 1]),
    .S_AXI_WDATA   (m_axi_wdata  [(AXI_NP1 * 32) +: 32]),
    .S_AXI_WSTRB   (m_axi_wstrb  [(AXI_NP1 * 32/8) +: 32/8]),
    .S_AXI_WVALID  (m_axi_wvalid [(AXI_NP1 * 1) +: 1]),
    .S_AXI_WREADY  (m_axi_wready [(AXI_NP1 * 1) +: 1]),
    .S_AXI_BRESP   (m_axi_bresp  [(AXI_NP1 * 2) +: 2]),
    .S_AXI_BVALID  (m_axi_bvalid [(AXI_NP1 * 1) +: 1]),
    .S_AXI_BREADY  (m_axi_bready [(AXI_NP1 * 1) +: 1]),
    .S_AXI_ARADDR  (m_axi_araddr [(AXI_NP1 * 32) +: 9]),
    .S_AXI_ARVALID (m_axi_arvalid[(AXI_NP1 * 1) +: 1]),
    .S_AXI_ARREADY (m_axi_arready[(AXI_NP1 * 1) +: 1]),
    .S_AXI_RDATA   (m_axi_rdata  [(AXI_NP1 * 32) +: 32]),
    .S_AXI_RRESP   (m_axi_rresp  [(AXI_NP1 * 2) +: 2]),
    .S_AXI_RVALID  (m_axi_rvalid [(AXI_NP1 * 1) +: 1]),
    .S_AXI_RREADY  (m_axi_rready [(AXI_NP1 * 1) +: 1])
  );


  //----------------------------------------------------------------
  // network_path_axi_slave_2
  //----------------------------------------------------------------
  network_path_axi_slave network_path_axi_slave_2 (
    .pp_clk         (clk156),
    .gen_config     (gen_config_2),
    .ntp_config     (),
    .ntp_root_delay (),
    .ntp_root_disp  (),
    .ntp_ref_id     (),
    .ntp_ref_ts     (),
    .ntp_rx_ofs     (),
    .ntp_tx_ofs     (),
    .pp_status      (32'h0),
    .xphy_status    ({3'h0, xphy_status_2}),
    .ntp_sync_ok    (ntp_sync_ok),

    // Ports for API extension.
    .api_ext_command    (api_ext_command_2),
    .api_ext_address    (api_ext_address_2),
    .api_ext_write_data (api_ext_write_data_2),
    .api_ext_status     (api_ext_status_2),
    .api_ext_read_data  (api_ext_read_data_2),

    .S_AXI_ACLK    (axi_aclk),
    .S_AXI_ARESETN (axi_aresetn),
    .S_AXI_AWADDR  (m_axi_awaddr [(AXI_NP2 * 32) +: 9]),
    .S_AXI_AWVALID (m_axi_awvalid[(AXI_NP2 * 1) +: 1]),
    .S_AXI_AWREADY (m_axi_awready[(AXI_NP2 * 1) +: 1]),
    .S_AXI_WDATA   (m_axi_wdata  [(AXI_NP2 * 32) +: 32]),
    .S_AXI_WSTRB   (m_axi_wstrb  [(AXI_NP2 * 32/8) +: 32/8]),
    .S_AXI_WVALID  (m_axi_wvalid [(AXI_NP2 * 1) +: 1]),
    .S_AXI_WREADY  (m_axi_wready [(AXI_NP2 * 1) +: 1]),
    .S_AXI_BRESP   (m_axi_bresp  [(AXI_NP2 * 2) +: 2]),
    .S_AXI_BVALID  (m_axi_bvalid [(AXI_NP2 * 1) +: 1]),
    .S_AXI_BREADY  (m_axi_bready [(AXI_NP2 * 1) +: 1]),
    .S_AXI_ARADDR  (m_axi_araddr [(AXI_NP2 * 32) +: 9]),
    .S_AXI_ARVALID (m_axi_arvalid[(AXI_NP2 * 1) +: 1]),
    .S_AXI_ARREADY (m_axi_arready[(AXI_NP2 * 1) +: 1]),
    .S_AXI_RDATA   (m_axi_rdata  [(AXI_NP2 * 32) +: 32]),
    .S_AXI_RRESP   (m_axi_rresp  [(AXI_NP2 * 2) +: 2]),
    .S_AXI_RVALID  (m_axi_rvalid [(AXI_NP2 * 1) +: 1]),
    .S_AXI_RREADY  (m_axi_rready [(AXI_NP2 * 1) +: 1])
  );


  //----------------------------------------------------------------
  // network_path_axi_slave_3
  //----------------------------------------------------------------
  network_path_axi_slave network_path_axi_slave_3 (
    .pp_clk         (clk156),
    .gen_config     (gen_config_3),
    .ntp_config     (),
    .ntp_root_delay (),
    .ntp_root_disp  (),
    .ntp_ref_id     (),
    .ntp_ref_ts     (),
    .ntp_rx_ofs     (),
    .ntp_tx_ofs     (),
    .pp_status      (32'h0),
    .xphy_status    ({3'h0, xphy_status_3}),
    .ntp_sync_ok    (ntp_sync_ok),

    // Ports for API extension.
    .api_ext_command    (api_ext_command_3),
    .api_ext_address    (api_ext_address_3),
    .api_ext_write_data (api_ext_write_data_3),
    .api_ext_status     (api_ext_status_3),
    .api_ext_read_data  (api_ext_read_data_3),

    .S_AXI_ACLK    (axi_aclk),
    .S_AXI_ARESETN (axi_aresetn),
    .S_AXI_AWADDR  (m_axi_awaddr [(AXI_NP3 * 32) +: 9]),
    .S_AXI_AWVALID (m_axi_awvalid[(AXI_NP3 * 1) +: 1]),
    .S_AXI_AWREADY (m_axi_awready[(AXI_NP3 * 1) +: 1]),
    .S_AXI_WDATA   (m_axi_wdata  [(AXI_NP3 * 32) +: 32]),
    .S_AXI_WSTRB   (m_axi_wstrb  [(AXI_NP3 * 32/8) +: 32/8]),
    .S_AXI_WVALID  (m_axi_wvalid [(AXI_NP3 * 1) +: 1]),
    .S_AXI_WREADY  (m_axi_wready [(AXI_NP3 * 1) +: 1]),
    .S_AXI_BRESP   (m_axi_bresp  [(AXI_NP3 * 2) +: 2]),
    .S_AXI_BVALID  (m_axi_bvalid [(AXI_NP3 * 1) +: 1]),
    .S_AXI_BREADY  (m_axi_bready [(AXI_NP3 * 1) +: 1]),
    .S_AXI_ARADDR  (m_axi_araddr [(AXI_NP3 * 32) +: 9]),
    .S_AXI_ARVALID (m_axi_arvalid[(AXI_NP3 * 1) +: 1]),
    .S_AXI_ARREADY (m_axi_arready[(AXI_NP3 * 1) +: 1]),
    .S_AXI_RDATA   (m_axi_rdata  [(AXI_NP3 * 32) +: 32]),
    .S_AXI_RRESP   (m_axi_rresp  [(AXI_NP3 * 2) +: 2]),
    .S_AXI_RVALID  (m_axi_rvalid [(AXI_NP3 * 1) +: 1]),
    .S_AXI_RREADY  (m_axi_rready [(AXI_NP3 * 1) +: 1])
  );

endmodule // ntps_interfaces

`default_nettype wire

//======================================================================
// EOF ntps_interfaces.v
//======================================================================
