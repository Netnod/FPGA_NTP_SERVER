//======================================================================
//
// ntps_top.v
// ----------
// Top level module for the NTP, NTS FPGA design.
//
//
// Author: Rolf Andersson (rolf@mechanicalmen.se)
//
// Copyright (c) 2016, The Swedish Post and Telecom Authority (PTS)
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

module ntps_top #(
                  parameter BUILD_INFO = 0,
                  parameter GIT_HASH = 0
                 )
                 (
                  input wire        reset,

                  input wire        SYS_CLK_N,
                  input wire        SYS_CLK_P,

                  input wire        PPS_INA_N,
                  input wire        PPS_INA_P,
                  input wire        PPS_INB_N,
                  input wire        PPS_INB_P,
                  input wire        TEN_MHZ_INA_clk_n,
                  input wire        TEN_MHZ_INA_clk_p,
                  input wire        TEN_MHZ_INB_clk_n,
                  input wire        TEN_MHZ_INB_clk_p,
                  output wire       TEN_MHZ_OUTA,
                  output wire       TEN_MHZ_OUTB,
                  output wire       PPS_OUTA,
                  output wire       PPS_OUTB,

                  input wire        PCIE_CLK_N,
                  input wire        PCIE_CLK_P,
                  input wire        pcie_perst,

                  input wire [7:0]  pci_exp_rxn,
                  input wire [7:0]  pci_exp_rxp,
                  output wire [7:0] pci_exp_txn,
                  output wire [7:0] pci_exp_txp,

                  input wire        pmbus_alert,
                  inout wire        pmbus_clk,
                  inout wire        pmbus_data,

                  inout wire        i2c_clk,
                  inout wire        i2c_data,
                  output wire       i2c_mux_rst_n,
                  output wire       si5324_rst_n,

                  input wire        xphy_refclk_n,
                  input wire        xphy_refclk_p,

                  input wire        xphy0_rxn,
                  input wire        xphy0_rxp,
                  output wire       xphy0_txn,
                  output wire       xphy0_txp,
                  input wire        xphy1_rxn,
                  input wire        xphy1_rxp,
                  output wire       xphy1_txn,
                  output wire       xphy1_txp,
                  input wire        xphy2_rxn,
                  input wire        xphy2_rxp,
                  output wire       xphy2_txn,
                  output wire       xphy2_txp,
                  input wire        xphy3_rxn,
                  input wire        xphy3_rxp,
                  output wire       xphy3_txn,
                  output wire       xphy3_txp,

                  input wire        sfp_module_detect0_n,
                  input wire        sfp_module_detect1_n,
                  input wire        sfp_module_detect2_n,
                  input wire        sfp_module_detect3_n,
                  input wire        sfp_signal_lost0,
                  input wire        sfp_signal_lost1,
                  input wire        sfp_signal_lost2,
                  input wire        sfp_signal_lost3,
                  output wire       sfp_tx_disable0,
                  output wire       sfp_tx_disable1,
                  output wire       sfp_tx_disable2,
                  output wire       sfp_tx_disable3,
                  input wire        sfp_tx_fault0,
                  input wire        sfp_tx_fault1,
                  input wire        sfp_tx_fault2,
                  input wire        sfp_tx_fault3,

                  output wire       HEAD2,
                  output wire       HEAD4,
                  output wire       HEAD6,
                  output wire       HEAD8,
                  output wire       HEAD10,
                  output wire       HEAD12,
                  output wire       HEAD14,
                  output wire       HEAD16,
                  output wire       HEAD18,
                  output wire       HEAD20,
                  output wire       HEAD22,
                  output wire       HEAD24,
                  output wire       HEAD26,
                  output wire       HEAD28,
                  output wire       HEAD30,
                  output wire       HEAD32,
                  output wire       HEAD34,
                  output wire       HEAD36,

                  output wire       LED0,
                  output wire       LED1,
                  output wire       LED2,
                  output wire       LED3,
                  output wire       LED4,
                  output wire       LED5,
                  output wire       LED6,
                  output wire       LED7
                 );


  //----------------------------------------------------------------
  // Pin Assignments.
  //----------------------------------------------------------------
  assign HEAD2  = test_TEN_MHZ_OUT;
  assign HEAD4  = 1'b0;
  assign HEAD6  = 1'b0;
  assign HEAD8  = 1'b0;
  assign HEAD10 = test_PPS_OUT;
  assign HEAD12 = 1'b0;
  assign HEAD14 = 1'b0;
  assign HEAD16 = 1'b0;
  assign HEAD18 = 1'b0;
  assign HEAD20 = 1'b0;
  assign HEAD22 = 1'b0;
  assign HEAD24 = 1'b0;
  assign HEAD26 = 1'b0;
  assign HEAD28 = 1'b0;
  assign HEAD30 = 1'b0;
  assign HEAD32 = 1'b0;
  assign HEAD34 = 1'b0;
  assign HEAD36 = 1'b0;

  // Debug Leds
  assign LED0  = PLL_locked_A;
  assign LED1  = ntp_clock_topA_LED1;
  assign LED2  = ntp_clock_topA_LED2;
  assign LED3  = 1'b0;
  assign LED4  = PLL_locked_B;
  assign LED5  = ntp_clock_topB_LED1;
  assign LED6  = ntp_clock_topB_LED2;
  assign LED7  = user_link_up;


  //----------------------------------------------------------------
  // ntps_clocks
  // clock generators, clock control and clock tree allocations.
  //----------------------------------------------------------------
  wire pcie_clk;       // 100Mhz PCI express clock
  wire sys_clk;
  wire clk50;          // sys_clk/4
  wire axi_aclk;       // 125MHz AXI clock derived from PCIe clock

  ntps_clocks clocks(
                     .reset(reset),
                     .pcie_clk_n(PCIE_CLK_N),
                     .pcie_clk_p(PCIE_CLK_P),
                     .pcie_clk(pcie_clk),
                     .sys_clk_n(SYS_CLK_N),
                     .sys_clk_p(SYS_CLK_P),
                     .sys_clk(sys_clk),
                     .clk50(clk50),
                     .i2c_clk(i2c_clk),
                     .i2c_data(i2c_data),
                     .i2c_mux_rst_n(i2c_mux_rst_n),
                     .si5324_rst_n(si5324_rst_n)
                     .pps_out(test_PPS_OUT),
                     .ten_mhz_out(test_TEN_MHZ_OUT)
                     );


  //----------------------------------------------------------------
  // pps_test
  // Test pulse and clock output signals.
  //----------------------------------------------------------------
  wire test_PPS_OUT;
  wire test_TEN_MHZ_OUT;

  pps_test pps_test_0 (
    .areset       (reset),
    .clk_in       (sys_clk),
    .PPS_OUT      (test_PPS_OUT),
    .TEN_MHZ_OUT  (test_TEN_MHZ_OUT)
  );


  //----------------------------------------------------------------
  // PCIe to AXI subsystem, note the aggregated outputs
  //----------------------------------------------------------------
  wire             axi_aresetn;
  wire             user_link_up;

  wire [384-1:0]   m_axi_awaddr;
  wire [36-1:0]    m_axi_awprot;
  wire [12-1:0]    m_axi_awvalid;
  wire [12-1:0]    m_axi_awready;
  wire [384-1:0]   m_axi_wdata;
  wire [384/8-1:0] m_axi_wstrb;
  wire [12-1:0]    m_axi_wvalid;
  wire [12-1:0]    m_axi_wready;
  wire [24-1:0]    m_axi_bresp;
  wire [12-1:0]    m_axi_bvalid;
  wire [12-1:0]    m_axi_bready;
  wire [384-1:0]   m_axi_araddr;
  wire [36-1:0]    m_axi_arprot;
  wire [12-1:0]    m_axi_arvalid;
  wire [12-1:0]    m_axi_arready;
  wire [384-1:0]   m_axi_rdata;
  wire [24-1:0]    m_axi_rresp;
  wire [12-1:0]    m_axi_rvalid;
  wire [12-1:0]    m_axi_rready;

  pcie_axi pcie_axi_0 (
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
  // NTP clocks
  //----------------------------------------------------------------
  wire         PLL_locked_A;
  wire [63:0]  NTP_TIME_A;
  wire         NTP_TIME_A_UPD;
  wire         ntp_clock_topA_LED1;
  wire         ntp_clock_topA_LED2;
  wire         SYNC_OK_A;

  ntp_clock_top ntp_clock_topA (
    .reset        (reset),
    .axi_aclk     (axi_aclk),
    .axi_aresetn  (axi_aresetn),
    .axi_araddr   (m_axi_araddr [0*32 +: 5]),
    .axi_arprot   (m_axi_arprot [0*3 +: 3]),
    .axi_arready  (m_axi_arready[0*1 +: 1]),
    .axi_arvalid  (m_axi_arvalid[0*1 +: 1]),
    .axi_awaddr   (m_axi_awaddr [0*32 +: 5]),
    .axi_awprot   (m_axi_awprot [0*3 +: 3]),
    .axi_awready  (m_axi_awready[0*1 +: 1]),
    .axi_awvalid  (m_axi_awvalid[0*1 +: 1]),
    .axi_bready   (m_axi_bready [0*1 +: 1]),
    .axi_bresp    (m_axi_bresp  [0*2 +: 2]),
    .axi_bvalid   (m_axi_bvalid [0*1 +: 1]),
    .axi_rdata    (m_axi_rdata  [0*32 +: 32]),
    .axi_rready   (m_axi_rready [0*1 +: 1]),
    .axi_rresp    (m_axi_rresp  [0*2 +: 2]),
    .axi_rvalid   (m_axi_rvalid [0*1 +: 1]),
    .axi_wdata    (m_axi_wdata  [0*32 +: 32]),
    .axi_wready   (m_axi_wready [0*1 +: 1]),
    .axi_wstrb    (m_axi_wstrb  [0*32/8 +: 32/8]),
    .axi_wvalid   (m_axi_wvalid [0*1 +: 1]),
    .PPS_IN_N     (PPS_INA_N),
    .PPS_IN_P     (PPS_INA_P),
    .PPS_OUT      (PPS_OUTA),
    .TEN_MHZ_IN_N (TEN_MHZ_INA_clk_n),
    .TEN_MHZ_IN_P (TEN_MHZ_INA_clk_p),
    .TEN_MHZ_OUT  (TEN_MHZ_OUTA),
    .PLL_locked   (PLL_locked_A),
    .NTP_TIME     (NTP_TIME_A),
    .NTP_TIME_UPD (NTP_TIME_A_UPD),
    .LED1         (ntp_clock_topA_LED1),
    .LED2         (ntp_clock_topA_LED2),
    .SYNC_OK      (SYNC_OK_A)
    );

  wire         PLL_locked_B;
  wire [63:0]  NTP_TIME_B;
  wire         NTP_TIME_B_UPD;
  wire         ntp_clock_topB_LED1;
  wire         ntp_clock_topB_LED2;
  wire         SYNC_OK_B;

  ntp_clock_top ntp_clock_topB (
    .reset        (reset),
    .axi_aclk     (axi_aclk),
    .axi_aresetn  (axi_aresetn),
    .axi_araddr   (m_axi_araddr [1*32 +: 5]),
    .axi_arprot   (m_axi_arprot [1*3 +: 3]),
    .axi_arready  (m_axi_arready[1*1 +: 1]),
    .axi_arvalid  (m_axi_arvalid[1*1 +: 1]),
    .axi_awaddr   (m_axi_awaddr [1*32 +: 5]),
    .axi_awprot   (m_axi_awprot [1*3 +: 3]),
    .axi_awready  (m_axi_awready[1*1 +: 1]),
    .axi_awvalid  (m_axi_awvalid[1*1 +: 1]),
    .axi_bready   (m_axi_bready [1*1 +: 1]),
    .axi_bresp    (m_axi_bresp  [1*2 +: 2]),
    .axi_bvalid   (m_axi_bvalid [1*1 +: 1]),
    .axi_rdata    (m_axi_rdata  [1*32 +: 32]),
    .axi_rready   (m_axi_rready [1*1 +: 1]),
    .axi_rresp    (m_axi_rresp  [1*2 +: 2]),
    .axi_rvalid   (m_axi_rvalid [1*1 +: 1]),
    .axi_wdata    (m_axi_wdata  [1*32 +: 32]),
    .axi_wready   (m_axi_wready [1*1 +: 1]),
    .axi_wstrb    (m_axi_wstrb  [1*32/8 +: 32/8]),
    .axi_wvalid   (m_axi_wvalid [1*1 +: 1]),
    .PPS_IN_N     (PPS_INB_N),
    .PPS_IN_P     (PPS_INB_P),
    .PPS_OUT      (PPS_OUTB),
    .TEN_MHZ_IN_N (TEN_MHZ_INB_clk_n),
    .TEN_MHZ_IN_P (TEN_MHZ_INB_clk_p),
    .TEN_MHZ_OUT  (TEN_MHZ_OUTB),
    .PLL_locked   (PLL_locked_B),
    .NTP_TIME     (NTP_TIME_B),
    .NTP_TIME_UPD (NTP_TIME_B_UPD),
    .LED1         (ntp_clock_topB_LED1),
    .LED2         (ntp_clock_topB_LED2),
    .SYNC_OK      (SYNC_OK_B)
    );


  //----------------------------------------------------------------
  // network_path_shared with associated keymem.
  //----------------------------------------------------------------
  // Shared MDIO signals
  wire         phy_mdc;
  wire         phy_mdio_o;
  wire         mdio_mux_0_mdio_out;

  // Shared network paths signals
  wire         areset_clk156;
  wire         clk156;
  wire         gtrxreset;
  wire         gttxreset;
  wire         qplllock;
  wire         qplloutclk;
  wire         qplloutrefclk;
  wire         reset_counter_done;
  wire         txuserrdy;
  wire         txusrclk;
  wire         txusrclk2;

  wire [31:0]  network_path_shared_0_key_id;
  wire         network_path_shared_0_key_req;
  wire         network_path_shared_0_mdio_out;
  wire         network_path_shared_0_mdio_tri;
  wire [255:0] keymem_top_0_key;
  wire         keymem_top_0_key_ack;

  network_path_shared #(.PRTAD(0)) network_path_shared_0 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .key                 (keymem_top_0_key),
    .key_ack             (keymem_top_0_key_ack),
    .key_id              (network_path_shared_0_key_id),
    .key_req             (network_path_shared_0_key_req),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_shared_0_mdio_out),
    .mdio_tri            (network_path_shared_0_mdio_tri),
    .module_detect_n     (sfp_module_detect0_n),
    .ntp_time_a          (NTP_TIME_A),
    .ntp_time_b          (NTP_TIME_B),
    .ntp_time_upd_a      (NTP_TIME_A_UPD),
    .ntp_time_upd_b      (NTP_TIME_B_UPD),
    .ntp_sync_ok_a       (SYNC_OK_A),
    .ntp_sync_ok_b       (SYNC_OK_B),
    .qplllock            (qplllock),
    .qplloutclk          (qplloutclk),
    .qplloutrefclk       (qplloutrefclk),
    .reset_counter_done  (reset_counter_done),
    .s_axi_clk           (axi_aclk),
    .s_axi_aresetn       (axi_aresetn),
    .s_axi_araddr        (m_axi_araddr [3*32 +: 32]),
    .s_axi_arready       (m_axi_arready[3*1 +: 1]),
    .s_axi_arvalid       (m_axi_arvalid[3*1 +: 1]),
    .s_axi_awaddr        (m_axi_awaddr [3*32 +: 32]),
    .s_axi_awready       (m_axi_awready[3*1 +: 1]),
    .s_axi_awvalid       (m_axi_awvalid[3*1 +: 1]),
    .s_axi_bready        (m_axi_bready [3*1 +: 1]),
    .s_axi_bresp         (m_axi_bresp  [3*2 +: 2]),
    .s_axi_bvalid        (m_axi_bvalid [3*1 +: 1]),
    .s_axi_rdata         (m_axi_rdata  [3*32 +: 32]),
    .s_axi_rready        (m_axi_rready [3*1 +: 1]),
    .s_axi_rresp         (m_axi_rresp  [3*2 +: 2]),
    .s_axi_rvalid        (m_axi_rvalid [3*1 +: 1]),
    .s_axi_wdata         (m_axi_wdata  [3*32 +: 32]),
    .s_axi_wready        (m_axi_wready [3*1 +: 1]),
    .s_axi_wstrb         (m_axi_wstrb  [3*32/8 +: 32/8]),
    .s_axi_wvalid        (m_axi_wvalid [3*1 +: 1]),
    .signal_lost         (sfp_signal_lost0),
    .sim_speedup_control (1'b0),
    .sys_reset           (reset),
    .tx_disable          (sfp_tx_disable0),
    .tx_fault            (sfp_tx_fault0),
    .txuserrdy           (txuserrdy),
    .txusrclk            (txusrclk),
    .txusrclk2           (txusrclk2),
    .xphy_refclk_n       (xphy_refclk_n),
    .xphy_refclk_p       (xphy_refclk_p),
    .xphy_rxn            (xphy0_rxn),
    .xphy_rxp            (xphy0_rxp),
    .xphy_txn            (xphy0_txn),
    .xphy_txp            (xphy0_txp)
  );

  keymem_top keymem_top_0 (
    .key           (keymem_top_0_key),
    .key_ack       (keymem_top_0_key_ack),
    .key_clk       (clk156),
    .key_id        (network_path_shared_0_key_id),
    .key_req       (network_path_shared_0_key_req),
    .s_axi_clk     (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [8*32 +: 15]),
    .s_axi_arprot  (m_axi_arprot [8*3 +: 3]),
    .s_axi_arready (m_axi_arready[8*1 +: 1]),
    .s_axi_arvalid (m_axi_arvalid[8*1 +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [8*32 +: 15]),
    .s_axi_awprot  (m_axi_awprot [8*3 +: 3]),
    .s_axi_awready (m_axi_awready[8*1 +: 1]),
    .s_axi_awvalid (m_axi_awvalid[8*1 +: 1]),
    .s_axi_bready  (m_axi_bready [8*1 +: 1]),
    .s_axi_bresp   (m_axi_bresp  [8*2 +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [8*1 +: 1]),
    .s_axi_rdata   (m_axi_rdata  [8*32 +: 32]),
    .s_axi_rready  (m_axi_rready [8*1 +: 1]),
    .s_axi_rresp   (m_axi_rresp  [8*2 +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [8*1 +: 1]),
    .s_axi_wdata   (m_axi_wdata  [8*32 +: 32]),
    .s_axi_wready  (m_axi_wready [8*1 +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [8*32/8 +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [8*1 +: 1])
   );


  //----------------------------------------------------------------
  // network_path 1 with associated keymem.
  //----------------------------------------------------------------
  wire [31:0]  network_path_1_key_id;
  wire         network_path_1_key_req;
  wire         network_path_1_mdio_out;
  wire         network_path_1_mdio_tri;
  wire [255:0] keymem_top_1_key;
  wire         keymem_top_1_key_ack;

  network_path  #(.PRTAD(1)) network_path_1 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .key                 (keymem_top_1_key),
    .key_ack             (keymem_top_1_key_ack),
    .key_id              (network_path_1_key_id),
    .key_req             (network_path_1_key_req),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_1_mdio_out),
    .mdio_tri            (network_path_1_mdio_tri),
    .module_detect_n     (sfp_module_detect1_n),
    .ntp_time_a          (NTP_TIME_A),
    .ntp_time_b          (NTP_TIME_B),
    .ntp_time_upd_a      (NTP_TIME_A_UPD),
    .ntp_time_upd_b      (NTP_TIME_B_UPD),
    .ntp_sync_ok_a       (SYNC_OK_A),
    .ntp_sync_ok_b       (SYNC_OK_B),
    .qplllock            (qplllock),
    .qplloutclk          (qplloutclk),
    .qplloutrefclk       (qplloutrefclk),
    .reset_counter_done  (reset_counter_done),
    .s_axi_clk           (axi_aclk),
    .s_axi_aresetn       (axi_aresetn),
    .s_axi_araddr        (m_axi_araddr [4*32 +: 32]),
    .s_axi_arready       (m_axi_arready[4*1 +: 1]),
    .s_axi_arvalid       (m_axi_arvalid[4*1 +: 1]),
    .s_axi_awaddr        (m_axi_awaddr [4*32 +: 32]),
    .s_axi_awready       (m_axi_awready[4*1 +: 1]),
    .s_axi_awvalid       (m_axi_awvalid[4*1 +: 1]),
    .s_axi_bready        (m_axi_bready [4*1 +: 1]),
    .s_axi_bresp         (m_axi_bresp  [4*2 +: 2]),
    .s_axi_bvalid        (m_axi_bvalid [4*1 +: 1]),
    .s_axi_rdata         (m_axi_rdata  [4*32 +: 32]),
    .s_axi_rready        (m_axi_rready [4*1 +: 1]),
    .s_axi_rresp         (m_axi_rresp  [4*2 +: 2]),
    .s_axi_rvalid        (m_axi_rvalid [4*1 +: 1]),
    .s_axi_wdata         (m_axi_wdata  [4*32 +: 32]),
    .s_axi_wready        (m_axi_wready [4*1 +: 1]),
    .s_axi_wstrb         (m_axi_wstrb  [4*32/8 +: 32/8]),
    .s_axi_wvalid        (m_axi_wvalid [4*1 +: 1]),
    .signal_lost         (sfp_signal_lost1),
    .sim_speedup_control (1'b0),
    .sys_reset           (reset),
    .tx_disable          (sfp_tx_disable1),
    .tx_fault            (sfp_tx_fault1),
    .txuserrdy           (txuserrdy),
    .txusrclk            (txusrclk),
    .txusrclk2           (txusrclk2),
    .xphy_rxn            (xphy1_rxn),
    .xphy_rxp            (xphy1_rxp),
    .xphy_txn            (xphy1_txn),
    .xphy_txp            (xphy1_txp)
  );

  keymem_top keymem_top_1 (
    .key           (keymem_top_1_key),
    .key_ack       (keymem_top_1_key_ack),
    .key_clk       (clk156),
    .key_id        (network_path_1_key_id),
    .key_req       (network_path_1_key_req),
    .s_axi_clk     (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [9*32 +: 15]),
    .s_axi_arprot  (m_axi_arprot [9*3 +: 3]),
    .s_axi_arready (m_axi_arready[9*1 +: 1]),
    .s_axi_arvalid (m_axi_arvalid[9*1 +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [9*32 +: 15]),
    .s_axi_awprot  (m_axi_awprot [9*3 +: 3]),
    .s_axi_awready (m_axi_awready[9*1 +: 1]),
    .s_axi_awvalid (m_axi_awvalid[9*1 +: 1]),
    .s_axi_bready  (m_axi_bready [9*1 +: 1]),
    .s_axi_bresp   (m_axi_bresp  [9*2 +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [9*1 +: 1]),
    .s_axi_rdata   (m_axi_rdata  [9*32 +: 32]),
    .s_axi_rready  (m_axi_rready [9*1 +: 1]),
    .s_axi_rresp   (m_axi_rresp  [9*2 +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [9*1 +: 1]),
    .s_axi_wdata   (m_axi_wdata  [9*32 +: 32]),
    .s_axi_wready  (m_axi_wready [9*1 +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [9*32/8 +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [9*1 +: 1])
  );


  //----------------------------------------------------------------
  // network_path 2 with associated keymem.
  //----------------------------------------------------------------
  wire [31:0]  network_path_2_key_id;
  wire         network_path_2_key_req;
  wire         network_path_2_mdio_out;
  wire         network_path_2_mdio_tri;
  wire [255:0] keymem_top_2_key;
  wire         keymem_top_2_key_ack;

  network_path  #(.PRTAD(2)) network_path_2 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .key                 (keymem_top_2_key),
    .key_ack             (keymem_top_2_key_ack),
    .key_id              (network_path_2_key_id),
    .key_req             (network_path_2_key_req),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_2_mdio_out),
    .mdio_tri            (network_path_2_mdio_tri),
    .module_detect_n     (sfp_module_detect2_n),
    .ntp_time_a          (NTP_TIME_A),
    .ntp_time_b          (NTP_TIME_B),
    .ntp_time_upd_a      (NTP_TIME_A_UPD),
    .ntp_time_upd_b      (NTP_TIME_B_UPD),
    .ntp_sync_ok_a       (SYNC_OK_A),
    .ntp_sync_ok_b       (SYNC_OK_B),
    .qplllock            (qplllock),
    .qplloutclk          (qplloutclk),
    .qplloutrefclk       (qplloutrefclk),
    .reset_counter_done  (reset_counter_done),
    .s_axi_clk           (axi_aclk),
    .s_axi_aresetn       (axi_aresetn),
    .s_axi_araddr        (m_axi_araddr [5*32 +: 32]),
    .s_axi_arready       (m_axi_arready[5*1 +: 1]),
    .s_axi_arvalid       (m_axi_arvalid[5*1 +: 1]),
    .s_axi_awaddr        (m_axi_awaddr [5*32 +: 32]),
    .s_axi_awready       (m_axi_awready[5*1 +: 1]),
    .s_axi_awvalid       (m_axi_awvalid[5*1 +: 1]),
    .s_axi_bready        (m_axi_bready [5*1 +: 1]),
    .s_axi_bresp         (m_axi_bresp  [5*2 +: 2]),
    .s_axi_bvalid        (m_axi_bvalid [5*1 +: 1]),
    .s_axi_rdata         (m_axi_rdata  [5*32 +: 32]),
    .s_axi_rready        (m_axi_rready [5*1 +: 1]),
    .s_axi_rresp         (m_axi_rresp  [5*2 +: 2]),
    .s_axi_rvalid        (m_axi_rvalid [5*1 +: 1]),
    .s_axi_wdata         (m_axi_wdata  [5*32 +: 32]),
    .s_axi_wready        (m_axi_wready [5*1 +: 1]),
    .s_axi_wstrb         (m_axi_wstrb  [5*32/8 +: 32/8]),
    .s_axi_wvalid        (m_axi_wvalid [5*1 +: 1]),
    .signal_lost         (sfp_signal_lost2),
    .sim_speedup_control (1'b0),
    .sys_reset           (reset),
    .tx_disable          (sfp_tx_disable2),
    .tx_fault            (sfp_tx_fault2),
    .txuserrdy           (txuserrdy),
    .txusrclk            (txusrclk),
    .txusrclk2           (txusrclk2),
    .xphy_rxn            (xphy2_rxn),
    .xphy_rxp            (xphy2_rxp),
    .xphy_txn            (xphy2_txn),
    .xphy_txp            (xphy2_txp)
  );

  keymem_top keymem_top_2 (
    .key           (keymem_top_2_key),
    .key_ack       (keymem_top_2_key_ack),
    .key_clk       (clk156),
    .key_id        (network_path_2_key_id),
    .key_req       (network_path_2_key_req),
    .s_axi_clk     (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [10*32 +: 15]),
    .s_axi_arprot  (m_axi_arprot [10*3 +: 3]),
    .s_axi_arready (m_axi_arready[10*1 +: 1]),
    .s_axi_arvalid (m_axi_arvalid[10*1 +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [10*32 +: 15]),
    .s_axi_awprot  (m_axi_awprot [10*3 +: 3]),
    .s_axi_awready (m_axi_awready[10*1 +: 1]),
    .s_axi_awvalid (m_axi_awvalid[10*1 +: 1]),
    .s_axi_bready  (m_axi_bready [10*1 +: 1]),
    .s_axi_bresp   (m_axi_bresp  [10*2 +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [10*1 +: 1]),
    .s_axi_rdata   (m_axi_rdata  [10*32 +: 32]),
    .s_axi_rready  (m_axi_rready [10*1 +: 1]),
    .s_axi_rresp   (m_axi_rresp  [10*2 +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [10*1 +: 1]),
    .s_axi_wdata   (m_axi_wdata  [10*32 +: 32]),
    .s_axi_wready  (m_axi_wready [10*1 +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [10*32/8 +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [10*1 +: 1])
  );


  //----------------------------------------------------------------
  // Network path 3 with associated keymem.
  //----------------------------------------------------------------
  wire [31:0]  network_path_3_key_id;
  wire         network_path_3_key_req;
  wire         network_path_3_mdio_out;
  wire         network_path_3_mdio_tri;

  wire [255:0] keymem_top_3_key;
  wire         keymem_top_3_key_ack;

  network_path  #(.PRTAD(3)) network_path_3 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .key                 (keymem_top_3_key),
    .key_ack             (keymem_top_3_key_ack),
    .key_id              (network_path_3_key_id),
    .key_req             (network_path_3_key_req),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_3_mdio_out),
    .mdio_tri            (network_path_3_mdio_tri),
    .module_detect_n     (sfp_module_detect3_n),
    .ntp_time_a          (NTP_TIME_A),
    .ntp_time_b          (NTP_TIME_B),
    .ntp_time_upd_a      (NTP_TIME_A_UPD),
    .ntp_time_upd_b      (NTP_TIME_B_UPD),
    .ntp_sync_ok_a       (SYNC_OK_A),
    .ntp_sync_ok_b       (SYNC_OK_B),
    .qplllock            (qplllock),
    .qplloutclk          (qplloutclk),
    .qplloutrefclk       (qplloutrefclk),
    .reset_counter_done  (reset_counter_done),
    .s_axi_clk           (axi_aclk),
    .s_axi_aresetn       (axi_aresetn),
    .s_axi_araddr        (m_axi_araddr [6*32 +: 32]),
    .s_axi_arready       (m_axi_arready[6*1 +: 1]),
    .s_axi_arvalid       (m_axi_arvalid[6*1 +: 1]),
    .s_axi_awaddr        (m_axi_awaddr [6*32 +: 32]),
    .s_axi_awready       (m_axi_awready[6*1 +: 1]),
    .s_axi_awvalid       (m_axi_awvalid[6*1 +: 1]),
    .s_axi_bready        (m_axi_bready [6*1 +: 1]),
    .s_axi_bresp         (m_axi_bresp  [6*2 +: 2]),
    .s_axi_bvalid        (m_axi_bvalid [6*1 +: 1]),
    .s_axi_rdata         (m_axi_rdata  [6*32 +: 32]),
    .s_axi_rready        (m_axi_rready [6*1 +: 1]),
    .s_axi_rresp         (m_axi_rresp  [6*2 +: 2]),
    .s_axi_rvalid        (m_axi_rvalid [6*1 +: 1]),
    .s_axi_wdata         (m_axi_wdata  [6*32 +: 32]),
    .s_axi_wready        (m_axi_wready [6*1 +: 1]),
    .s_axi_wstrb         (m_axi_wstrb  [6*32/8 +: 32/8]),
    .s_axi_wvalid        (m_axi_wvalid [6*1 +: 1]),
    .signal_lost         (sfp_signal_lost3),
    .sim_speedup_control (1'b0),
    .sys_reset           (reset),
    .tx_disable          (sfp_tx_disable3),
    .tx_fault            (sfp_tx_fault3),
    .txuserrdy           (txuserrdy),
    .txusrclk            (txusrclk),
    .txusrclk2           (txusrclk2),
    .xphy_rxn            (xphy3_rxn),
    .xphy_rxp            (xphy3_rxp),
    .xphy_txn            (xphy3_txn),
    .xphy_txp            (xphy3_txp)
  );

  keymem_top keymem_top_3 (
    .key           (keymem_top_3_key),
    .key_ack       (keymem_top_3_key_ack),
    .key_clk       (clk156),
    .key_id        (network_path_3_key_id),
    .key_req       (network_path_3_key_req),
    .s_axi_clk     (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [11*32 +: 15]),
    .s_axi_arprot  (m_axi_arprot [11*3 +: 3]),
    .s_axi_arready (m_axi_arready[11*1 +: 1]),
    .s_axi_arvalid (m_axi_arvalid[11*1 +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [11*32 +: 15]),
    .s_axi_awprot  (m_axi_awprot [11*3 +: 3]),
    .s_axi_awready (m_axi_awready[11*1 +: 1]),
    .s_axi_awvalid (m_axi_awvalid[11*1 +: 1]),
    .s_axi_bready  (m_axi_bready [11*1 +: 1]),
    .s_axi_bresp   (m_axi_bresp  [11*2 +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [11*1 +: 1]),
    .s_axi_rdata   (m_axi_rdata  [11*32 +: 32]),
    .s_axi_rready  (m_axi_rready [11*1 +: 1]),
    .s_axi_rresp   (m_axi_rresp  [11*2 +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [11*1 +: 1]),
    .s_axi_wdata   (m_axi_wdata  [11*32 +: 32]),
    .s_axi_wready  (m_axi_wready [11*1 +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [11*32/8 +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [11*1 +: 1])
  );


  //----------------------------------------------------------------
  // Merge mdio outputs from network paths
  //----------------------------------------------------------------
  mdio_mux mdio_mux_0 (
    .mdio_out   (mdio_mux_0_mdio_out),
    .mdio_out_0 (network_path_shared_0_mdio_out),
    .mdio_out_1 (network_path_1_mdio_out),
    .mdio_out_2 (network_path_2_mdio_out),
    .mdio_out_3 (network_path_3_mdio_out),
    .mdio_tri_0 (network_path_shared_0_mdio_tri),
    .mdio_tri_1 (network_path_1_mdio_tri),
    .mdio_tri_2 (network_path_2_mdio_tri),
    .mdio_tri_3 (network_path_3_mdio_tri)
  );


  //----------------------------------------------------------------
  // Ethernet lite module for MDIO control only
  //----------------------------------------------------------------
  ntps_top_axi_ethernetlite_0_0 mdio_ctrl_0 (
    .phy_col       (1'b0),
    .phy_crs       (1'b0),
    .phy_dv        (1'b0),
    .phy_mdc       (phy_mdc),
    .phy_mdio_i    (mdio_mux_0_mdio_out),
    .phy_mdio_o    (phy_mdio_o),
    .phy_rx_clk    (1'b0),
    .phy_rx_data   (4'b0),
    .phy_rx_er     (1'b0),
    .phy_tx_clk    (1'b0),
    .s_axi_aclk    (axi_aclk),
    .s_axi_aresetn (axi_aresetn),
    .s_axi_araddr  (m_axi_araddr [2*32 +: 13]),
    .s_axi_arready (m_axi_arready[2*1 +: 1]),
    .s_axi_arvalid (m_axi_arvalid[2*1 +: 1]),
    .s_axi_awaddr  (m_axi_awaddr [2*32 +: 13]),
    .s_axi_awready (m_axi_awready[2*1 +: 1]),
    .s_axi_awvalid (m_axi_awvalid[2*1 +: 1]),
    .s_axi_bready  (m_axi_bready [2*1 +: 1]),
    .s_axi_bresp   (m_axi_bresp  [2*2 +: 2]),
    .s_axi_bvalid  (m_axi_bvalid [2*1 +: 1]),
    .s_axi_rdata   (m_axi_rdata  [2*32 +: 32]),
    .s_axi_rready  (m_axi_rready [2*1 +: 1]),
    .s_axi_rresp   (m_axi_rresp  [2*2 +: 2]),
    .s_axi_rvalid  (m_axi_rvalid [2*1 +: 1]),
    .s_axi_wdata   (m_axi_wdata  [2*32 +: 32]),
    .s_axi_wready  (m_axi_wready [2*1 +: 1]),
    .s_axi_wstrb   (m_axi_wstrb  [2*32/8 +: 32/8]),
    .s_axi_wvalid  (m_axi_wvalid [2*1 +: 1])
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
    .pmbus_alert    (pmbus_alert),
    .pmbus_clk      (pmbus_clk),
    .pmbus_data     (pmbus_data),
    .s_axi_clk      (axi_aclk),
    .s_axi_aresetn  (axi_aresetn),
    .s_axi_araddr   (m_axi_araddr [7*32 +: 32]),
    .s_axi_arready  (m_axi_arready[7*1 +: 1]),
    .s_axi_arvalid  (m_axi_arvalid[7*1 +: 1]),
    .s_axi_awaddr   (m_axi_awaddr [7*32 +: 32]),
    .s_axi_awready  (m_axi_awready[7*1 +: 1]),
    .s_axi_awvalid  (m_axi_awvalid[7*1 +: 1]),
    .s_axi_bready   (m_axi_bready [7*1 +: 1]),
    .s_axi_bresp    (m_axi_bresp  [7*2 +: 2]),
    .s_axi_bvalid   (m_axi_bvalid [7*1 +: 1]),
    .s_axi_rdata    (m_axi_rdata  [7*32 +: 32]),
    .s_axi_rready   (m_axi_rready [7*1 +: 1]),
    .s_axi_rresp    (m_axi_rresp  [7*2 +: 2]),
    .s_axi_rvalid   (m_axi_rvalid [7*1 +: 1]),
    .s_axi_wdata    (m_axi_wdata  [7*32 +: 32]),
    .s_axi_wready   (m_axi_wready [7*1 +: 1]),
    .s_axi_wstrb    (m_axi_wstrb  [7*32/8 +: 32/8]),
    .s_axi_wvalid   (m_axi_wvalid [7*1 +: 1])
    );


endmodule // ntps_top

`default_nettype wire

//======================================================================
// EOF ntps_top.v
//======================================================================
