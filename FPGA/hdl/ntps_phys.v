//======================================================================
//
// npts_phys.v
// -----------
// This module contains the Xilinx 10G Ethernet PHY IPs.
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

module ntps_phys (
                  input wire           sys_reset,
                  output wire          clk156,
                  output wire          areset_clk156,

                  // Port 0.
                  input wire           xphy_refclk_n,
                  input wire           xphy_refclk_p,
                  input wire           sfp_module_detect_n_0,
                  input wire           sfp_signal_lost_0,
                  input wire           sfp_tx_fault_0,
                  output wire          sfp_tx_disable_0,
                  input wire           xphy_rxp_0,
                  input wire           xphy_rxn_0,
                  output wire          xphy_txp_0,
                  output wire          xphy_txn_0,
                  input wire [63  : 0] xgmii_txd_0,
                  input wire [7   : 0] xgmii_txc_0,
                  output wire [63 : 0] xgmii_rxd_0,
                  output wire [7  : 0] xgmii_rxc_0,


                  // Port 1.
                  input wire  [2 : 0]  xphy_config_1,
                  output wire [4 : 0]  xphy_status_1,
                  input wire           sfp_module_detect_n_1,
                  input wire           sfp_signal_lost_1,
                  input wire           sfp_tx_fault_1,
                  output wire          sfp_tx_disable_1,
                  input wire           xphy_rxp_1,
                  input wire           xphy_rxn_1,
                  output wire          xphy_txp_1,
                  output wire          xphy_txn_1,
                  input wire  [63 : 0] xgmii_txd_1,
                  input wire  [7  : 0] xgmii_txc_1,
                  output wire [63 : 0] xgmii_rxd_1,
                  output wire [7  : 0] xgmii_rxc_1,

                  );

  //----------------------------------------------------------------
  // Internal wires.
  //----------------------------------------------------------------
  // Shared signals. From phy0 to phy1..3.
  wire         clk156;
  wire         areset_clk156;
  wire         gtrxreset;
  wire         gttxreset;
  wire         qplllock;
  wire         qplloutclk;
  wire         qplloutrefclk;
  wire         reset_counter_done;
  wire         txuserrdy;
  wire         txusrclk;
  wire         txusrclk2;


  //----------------------------------------------------------------
  // phy0
  // This is the instance of the master PHY that contains
  // clock generation etc.
  //----------------------------------------------------------------
  ten_gig_eth_pcs_pma_ip_shared_logic_in_core phy0 (
    .refclk_n               (xphy_refclk_n),
    .refclk_p               (xphy_refclk_p),
    .coreclk_out            (clk156),
    .dclk                   (clk156),
    .rxrecclk_out           (),
    .txusrclk_out           (txusrclk),
    .txusrclk2_out          (txusrclk2),
    .reset                  (sys_reset),
    .areset_datapathclk_out (areset_clk156),
    .gttxreset_out          (gttxreset),
    .gtrxreset_out          (gtrxreset),
    .txuserrdy_out          (txuserrdy),
    .qplllock_out           (qplllock),
    .qplloutclk_out         (qplloutclk),
    .qplloutrefclk_out      (qplloutrefclk),
    .reset_counter_done_out (reset_counter_done),
    .xgmii_txd              (xgmii_txd),
    .xgmii_txc              (xgmii_txc),
    .xgmii_rxd              (xgmii_rxd),
    .xgmii_rxc              (xgmii_rxc),
    .txp                    (xphy_txp),
    .txn                    (xphy_txn),
    .rxp                    (xphy_rxp),
    .rxn                    (xphy_rxn),
    .mdc                    (mdc),
    .mdio_in                (mdio_out),
    .mdio_out               (mdio_in),
    .mdio_tri               (mdio_tri),
    .prtad                  (PRTAD),
    .core_status            (core_status),
    .resetdone_out          (),
    .signal_detect          (signal_detect),
    .tx_fault               (tx_fault),
    .drp_req                (drp_req),
    .drp_gnt                (drp_gnt),
    .drp_den_o              (drp_den_o),
    .drp_dwe_o              (drp_dwe_o),
    .drp_daddr_o            (drp_daddr_o),
    .drp_di_o               (drp_di_o),
    .drp_drdy_o             (drp_drdy_o),
    .drp_drpdo_o            (drp_drpdo_o),
    .drp_den_i              (drp_den_i),
    .drp_dwe_i              (drp_dwe_i),
    .drp_daddr_i            (drp_daddr_i),
    .drp_di_i               (drp_di_i),
    .drp_drdy_i             (drp_drdy_i),
    .drp_drpdo_i            (drp_drpdo_i),
    .pma_pmd_type           (pma_pmd_type),
    .tx_disable             (tx_disable_if),
    .sim_speedup_control    (1'h0)
  );


  //----------------------------------------------------------------
  // PHY1
  //----------------------------------------------------------------
  localparam [4:0] PRTAD_1 = 5'd1;

  wire          drp_gnt_1;
  wire          drp_req_1;
  wire          drp_den_o_1;
  wire          drp_dwe_o_1;
  wire [15 : 0] drp_daddr_o_1;
  wire [15 : 0] drp_di_o_1;
  wire          drp_drdy_o_1;
  wire [15 : 0] drp_drpdo_o_1;
  wire          drp_den_i_1;
  wire          drp_dwe_i_1;
  wire [15 : 0] drp_daddr_i_1;
  wire [15 : 0] drp_di_i_1;
  wire          drp_drdy_i_1;
  wire [15 : 0] drp_drpdo_i_1;
  wire          signal_detect_1;
  wire          tx_disable_if_1;
  wire [2 : 0]  pma_pmd_type_1;
  wire [7 : 0]  core_status_1;

  assign drp_gnt_1        = drp_req_1;
  assign drp_den_i_1      = drp_den_o_1;
  assign drp_dwe_i_1      = drp_dwe_o_1;
  assign drp_daddr_i_1    = drp_daddr_o_1;
  assign drp_di_i_1       = drp_di_o_1;
  assign drp_drdy_i_1     = drp_drdy_o_1;
  assign drp_drpdo_i_1    = drp_drpdo_o_1;
  assign signal_detect_1  = ~sfp_signal_lost_1;
  assign sfp_tx_disable_1 = tx_disable_if_1 | ~xphy_config_1[0];
  assign xphy_status_1[0] = qplllock;
  assign xphy_status_1[1] = ~sfp_module_detect_n_1;
  assign xphy_status_1[2] = signal_detect_1;
  assign xphy_status_1[3] = tx_fault;
  assign xphy_status_1[4] = core_status_1[0];

  assign pma_pmd_type_1   = xphy_config_1[2 : 1] == 2'b00 ? 3'b101 : // 10GBASE-ER
                            xphy_config_1[2 : 1] == 2'b01 ? 3'b110 : // 10GBASE-LR
                                                            3'b111;  // 10GBASE-SR


  ten_gig_eth_pcs_pma_ip phy1 (
    .coreclk                (clk156),
    .dclk                   (clk156),
    .rxrecclk_out           (),
    .txusrclk               (txusrclk),
    .txusrclk2              (txusrclk2),
    .areset                 (sys_reset),
    .txoutclk               (),
    .areset_coreclk         (areset_clk156),
    .gttxreset              (gttxreset),
    .gtrxreset              (gtrxreset),
    .txuserrdy              (txuserrdy),
    .qplllock               (qplllock),
    .qplloutclk             (qplloutclk),
    .qplloutrefclk          (qplloutrefclk),
    .reset_counter_done     (reset_counter_done),
    .xgmii_txd              (xgmii_txd_1),
    .xgmii_txc              (xgmii_txc_1),
    .xgmii_rxd              (xgmii_rxd_1),
    .xgmii_rxc              (xgmii_rxc_1),
    .txp                    (xphy_txp_1),
    .txn                    (xphy_txn_1),
    .rxp                    (xphy_rxp_1),
    .rxn                    (xphy_rxn_1),
    .mdc                    (mdc),
    .mdio_in                (mdio_out),
    .mdio_out               (mdio_in),
    .mdio_tri               (mdio_tri),
    .prtad                  (PRTAD_1),
    .core_status            (core_status_1),
    .pma_pmd_type           (pma_pmd_type_1),
    .tx_resetdone           (),
    .rx_resetdone           (),
    .signal_detect          (signal_detect_1),
    .tx_fault               (sfp_tx_fault_1),
    .tx_disable             (tx_disable_if_1),
    .drp_req                (drp_req_1),
    .drp_gnt                (drp_gnt_1),
    .drp_den_o              (drp_den_o_1),
    .drp_dwe_o              (drp_dwe_o_1),
    .drp_daddr_o            (drp_daddr_o_1),
    .drp_di_o               (drp_di_o_1),
    .drp_drdy_o             (drp_drdy_o_1),
    .drp_drpdo_o            (drp_drpdo_o_1),
    .drp_den_i              (drp_den_i_1),
    .drp_dwe_i              (drp_dwe_i_1),
    .drp_daddr_i            (drp_daddr_i_1),
    .drp_di_i               (drp_di_i_1),
    .drp_drdy_i             (drp_drdy_i_1),
    .drp_drpdo_i            (drp_drpdo_i_1),
    .sim_speedup_control    (1'h0)
  );

endmodule // ntps_phys

`default_nettype wire

//======================================================================
// EOF ntps_phys.v
//======================================================================
