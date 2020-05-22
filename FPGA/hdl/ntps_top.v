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
                  parameter GIT_HASH   = 0
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
  // Wires.
  //----------------------------------------------------------------
  // Wires for clocks.
  wire pcie_clk;       // 100Mhz PCI express clock
  wire sys_clk;
  wire clk50;          // sys_clk/4
  wire axi_aclk;       // 125MHz AXI clock derived from PCIe clock


  // Wires for pps_test.
  wire test_PPS_OUT;
  wire test_TEN_MHZ_OUT;


  // Wires for PCI-AXI:
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


  // Wires for NTP clocks.
  wire         PLL_locked_A;
  wire [63:0]  NTP_TIME_A;
  wire         NTP_TIME_A_UPD;
  wire         ntp_clock_topA_LED1;
  wire         ntp_clock_topA_LED2;
  wire         SYNC_OK_A;

  wire         PLL_locked_B;
  wire [63:0]  NTP_TIME_B;
  wire         NTP_TIME_B_UPD;
  wire         ntp_clock_topB_LED1;
  wire         ntp_clock_topB_LED2;
  wire         SYNC_OK_B;


  // Shared MDIO signals
  wire         phy_mdc;
  wire         phy_mdio_o;
  wire         network_path_shared_0_mdio_out;
  wire         network_path_shared_0_mdio_tri;
  wire         network_path_1_mdio_out;
  wire         network_path_1_mdio_tri;
  wire         network_path_2_mdio_out;
  wire         network_path_2_mdio_tri;
  wire         network_path_3_mdio_out;
  wire         network_path_3_mdio_tri;


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
  wire [255:0] keymem_top_0_key;
  wire         keymem_top_0_key_ack;



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
                     );


  //----------------------------------------------------------------
  // pps_test
  // Test pulse and clock output signals.
  //----------------------------------------------------------------
  pps_test pps_test_0 (
    .areset       (reset),
    .clk_in       (sys_clk),
    .PPS_OUT      (test_PPS_OUT),
    .TEN_MHZ_OUT  (test_TEN_MHZ_OUT)
  );


  //----------------------------------------------------------------
  // ntps_interfaces.
  // All external/physical interfaces including pci-axi bridge
  // and NTP clocks.
  //----------------------------------------------------------------
  ntps_interfaces #(
                    .BUILD_INFO(BUILD_INFO),
                    .GIT_HASH(GIT_HASH)
                   )
 ntps_interfaces_0 (
     .reset         (reset),

     .pcie_perst    (pcie_perst),
     .pcie_clk      (pcie_clk),
     .pci_exp_rxn   (pci_exp_rxn),
     .pci_exp_rxp   (pci_exp_rxp),
     .pci_exp_txn   (pci_exp_txn),
     .pci_exp_txp   (pci_exp_txp),

     .user_link_up  (user_link_up),
     .pmbus_clk     (pmbus_clk),
     .pmbus_data    (pmbus_data),
     .pmbus_alert   (pmbus_alert),

     .phy_mdio_o    (phy_mdio_o),
     .phy_mdc       (phy_mdc),
     .mdio_out_0    (network_path_shared_0_mdio_out),
     .mdio_out_1    (network_path_1_mdio_out),
     .mdio_out_2    (network_path_2_mdio_out),
     .mdio_out_3    (network_path_3_mdio_out),
     .mdio_tri_0    (network_path_shared_0_mdio_tri),
     .mdio_tri_1    (network_path_1_mdio_tri),
     .mdio_tri_2    (network_path_2_mdio_tri),
     .mdio_tri_3    (network_path_3_mdio_tri),

     .axi_aclk      (axi_aclk),
     .axi_aresetn   (axi_aresetn),
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

     .PPS_INA_N     (PPS_INA_N),
     .PPS_INA_P     (PPS_INA_P),
     .PPS_OUTA      (PPS_OUTA),
     .TEN_MHZ_INA_N (TEN_MHZ_INA_clk_n),
     .TEN_MHZ_INA_P (TEN_MHZ_INA_clk_p),
     .TEN_MHZ_OUTA  (TEN_MHZ_OUTA),
     .NTP_TIMEA     (NTP_TIME_A),
     .NTP_TIME_UPDA (NTP_TIME_A_UPD),
     .NTP_LED1A     (ntp_clock_topA_LED1),
     .NTP_LED2A     (ntp_clock_topA_LED2),
     .SYNC_OKA      (SYNC_OK_A),
     .PLL_LOCKEDA   (PLL_locked_A),

     .PPS_INB_N     (PPS_INB_N),
     .PPS_INB_P     (PPS_INB_P),
     .PPS_OUTB      (PPS_OUTB),
     .TEN_MHZ_INB_N (TEN_MHZ_INB_clk_n),
     .TEN_MHZ_INB_P (TEN_MHZ_INB_clk_p),
     .TEN_MHZ_OUTB  (TEN_MHZ_OUTB),
     .NTP_TIMEB     (NTP_TIME_B),
     .NTP_TIME_UPDB (NTP_TIME_B_UPD),
     .NTP_LED1B     (ntp_clock_topB_LED1),
     .NTP_LED2B     (ntp_clock_topB_LED2),
     .SYNC_OKB      (SYNC_OK_B),
     .PLL_LOCKEDB   (PLL_locked_B)
    );


  //----------------------------------------------------------------
  // network_path_shared with associated keymem.
  //----------------------------------------------------------------
  network_path_shared #(.PRTAD(0)) network_path_shared_0 (
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

    .ntp_time_a          (NTP_TIME_A),
    .ntp_time_upd_a      (NTP_TIME_A_UPD),
    .ntp_time_b          (NTP_TIME_B),
    .ntp_time_upd_b      (NTP_TIME_B_UPD),
    .ntp_sync_ok_a       (SYNC_OK_A),
    .ntp_sync_ok_b       (SYNC_OK_B),

    .key_req             (network_path_shared_0_key_req),
    .key_id              (network_path_shared_0_key_id),
    .key_ack             (keymem_top_0_key_ack),
    .key                 (keymem_top_0_key),

    .xphy_refclk_n       (xphy_refclk_n),
    .xphy_refclk_p       (xphy_refclk_p),
    .xphy_txp            (xphy0_txp),
    .xphy_txn            (xphy0_txn),
    .xphy_rxp            (xphy0_rxp),
    .xphy_rxn            (xphy0_rxn),
    .signal_lost         (sfp_signal_lost0),
    .module_detect_n     (sfp_module_detect0_n),
    .tx_fault            (sfp_tx_fault0),
    .tx_disable          (sfp_tx_disable0),

    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_shared_0_mdio_out),
    .mdio_tri            (network_path_shared_0_mdio_tri),

    .clk156              (clk156),
    .txusrclk            (txusrclk),
    .txusrclk2           (txusrclk2),
    .areset_clk156       (areset_clk156),
    .gttxreset           (gttxreset),
    .gtrxreset           (gtrxreset),
    .txuserrdy           (txuserrdy),
    .qplllock            (qplllock),
    .qplloutclk          (qplloutclk),
    .qplloutrefclk       (qplloutrefclk),
    .reset_counter_done  (reset_counter_done),

    // Dangling port.
    .tx_resetdone(),

    .sys_reset           (reset),
    .sim_speedup_control (1'b0)
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
  // network_path 1.
  //----------------------------------------------------------------
  network_path_top #(.PRTAD(1),
                     .AXI_NP_INDEX(4),
                     .AXI_KM_INDEX(9)
             )
  network_path_top_1 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
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
    .s_axi_araddr        (m_axi_araddr),
    .s_axi_arready       (m_axi_arready),
    .s_axi_arvalid       (m_axi_arvalid),
    .s_axi_awaddr        (m_axi_awaddr),
    .s_axi_awready       (m_axi_awready),
    .s_axi_awvalid       (m_axi_awvalid),
    .s_axi_bready        (m_axi_bready),
    .s_axi_bresp         (m_axi_bresp),
    .s_axi_bvalid        (m_axi_bvalid),
    .s_axi_rdata         (m_axi_rdata),
    .s_axi_rready        (m_axi_rready),
    .s_axi_rresp         (m_axi_rresp),
    .s_axi_rvalid        (m_axi_rvalid),
    .s_axi_wdata         (m_axi_wdata),
    .s_axi_wready        (m_axi_wready),
    .s_axi_wstrb         (m_axi_wstrb),
    .s_axi_wvalid        (m_axi_wvalid),
    .s_axi_awprot        (m_axi_awprot),
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


  //----------------------------------------------------------------
  // network_path 2.
  //----------------------------------------------------------------
  network_path_top #(.PRTAD(2),
                     .AXI_NP_INDEX(5),
                     .AXI_KM_INDEX(10)
             )
  network_path_top_2 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_2_mdio_out),
    .mdio_tri            (network_path_2_mdio_tri),
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
    .s_axi_araddr        (m_axi_araddr),
    .s_axi_arready       (m_axi_arready),
    .s_axi_arvalid       (m_axi_arvalid),
    .s_axi_awaddr        (m_axi_awaddr),
    .s_axi_awready       (m_axi_awready),
    .s_axi_awvalid       (m_axi_awvalid),
    .s_axi_bready        (m_axi_bready),
    .s_axi_bresp         (m_axi_bresp),
    .s_axi_bvalid        (m_axi_bvalid),
    .s_axi_rdata         (m_axi_rdata),
    .s_axi_rready        (m_axi_rready),
    .s_axi_rresp         (m_axi_rresp),
    .s_axi_rvalid        (m_axi_rvalid),
    .s_axi_wdata         (m_axi_wdata),
    .s_axi_wready        (m_axi_wready),
    .s_axi_wstrb         (m_axi_wstrb),
    .s_axi_wvalid        (m_axi_wvalid),
    .s_axi_awprot        (m_axi_awprot),
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


  //----------------------------------------------------------------
  // Network path 3.
  //----------------------------------------------------------------
  network_path_top #(.PRTAD(3),
                     .AXI_NP_INDEX(6),
                     .AXI_KM_INDEX(11)
             )
  network_path_top_3 (
    .areset_clk156       (areset_clk156),
    .clk156              (clk156),
    .gtrxreset           (gtrxreset),
    .gttxreset           (gttxreset),
    .mdc                 (phy_mdc),
    .mdio_in             (phy_mdio_o),
    .mdio_out            (network_path_3_mdio_out),
    .mdio_tri            (network_path_3_mdio_tri),
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
    .s_axi_araddr        (m_axi_araddr),
    .s_axi_arready       (m_axi_arready),
    .s_axi_arvalid       (m_axi_arvalid),
    .s_axi_awaddr        (m_axi_awaddr),
    .s_axi_awready       (m_axi_awready),
    .s_axi_awvalid       (m_axi_awvalid),
    .s_axi_bready        (m_axi_bready),
    .s_axi_bresp         (m_axi_bresp),
    .s_axi_bvalid        (m_axi_bvalid),
    .s_axi_rdata         (m_axi_rdata),
    .s_axi_rready        (m_axi_rready),
    .s_axi_rresp         (m_axi_rresp),
    .s_axi_rvalid        (m_axi_rvalid),
    .s_axi_wdata         (m_axi_wdata),
    .s_axi_wready        (m_axi_wready),
    .s_axi_wstrb         (m_axi_wstrb),
    .s_axi_wvalid        (m_axi_wvalid),
    .s_axi_awprot        (m_axi_awprot),
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

endmodule // ntps_top

`default_nettype wire

//======================================================================
// EOF ntps_top.v
//======================================================================
