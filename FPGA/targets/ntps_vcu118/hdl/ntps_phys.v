//======================================================================
//
// npts_phys.v
// -----------
// This module contains the implementation of Ethernet PHYs. This
// version is heavily based on ther verilog-ethernet VCU118 10G
// example by Alex Forencich.
//
//
// Author: Joachim Strombergson
//
// Copyright (c) 2020, Netnod Internet Exchange i Sverige AB (Netnod).
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
                  input wire           reset,
                  input  wire          clk_125mhz_p,
                  input  wire          clk_125mhz_n,
                  output wire          clk156,
                  output wire          areset_clk156,

                  input wire           mdc,
                  input wire           mdio_in,
                  output wire          mdio_out,

                  // Port 0.
                  input wire           xphy_refclk_n,
                  input wire           xphy_refclk_p,

                  input wire  [2 : 0]  xphy_config_0,
                  output wire [4 : 0]  xphy_status_0,
                  input wire           sfp_module_detect_n_0,
                  input wire           sfp_signal_lost_0,
                  input wire           sfp_tx_fault_0,
                  output wire          sfp_tx_disable_0,
                  input wire           xphy_rxp_0,
                  input wire           xphy_rxn_0,
                  output wire          xphy_txp_0,
                  output wire          xphy_txn_0,


                  // External ports for QSFP interface 0.
                  output wire          qsfp0_tx0_p,
                  output wire          qsfp0_tx0_n,
                  input  wire          qsfp0_rx0_p,
                  input  wire          qsfp0_rx0_n,
                  output wire          qsfp0_tx1_p,
                  output wire          qsfp0_tx1_n,
                  input  wire          qsfp0_rx1_p,
                  input  wire          qsfp0_rx1_n,
                  output wire          qsfp0_tx2_p,
                  output wire          qsfp0_tx2_n,
                  input  wire          qsfp0_rx2_p,
                  input  wire          qsfp0_rx2_n,
                  output wire          qsfp0_tx3_p,
                  output wire          qsfp0_tx3_n,
                  input  wire          qsfp0_rx3_p,
                  input  wire          qsfp0_rx3_n,
                  input  wire          qsfp0_mgt_refclk_0_p,
                  input  wire          qsfp0_mgt_refclk_0_n,
                  output wire          qsfp0_modsell,
                  output wire          qsfp0_resetl,
                  input  wire          qsfp0_modprsl,
                  input  wire          qsfp0_intl,
                  output wire          qsfp0_lpmode,


                  // XGMII ports for QSFP interface 0.
                  input wire [63  : 0] qsfp0_xgmii_txd_0,
                  input wire [7   : 0] qsfp0_xgmii_txc_0,
                  output wire [63 : 0] qsfp0_xgmii_rxd_0,
                  output wire [7  : 0] qsfp0_xgmii_rxc_0,

                  input wire [63  : 0] qsfp0_xgmii_txd_1,
                  input wire [7   : 0] qsfp0_xgmii_txc_1,
                  output wire [63 : 0] qsfp0_xgmii_rxd_1,
                  output wire [7  : 0] qsfp0_xgmii_rxc_1,

                  input wire [63  : 0] qsfp0_xgmii_txd_2,
                  input wire [7   : 0] qsfp0_xgmii_txc_2,
                  output wire [63 : 0] qsfp0_xgmii_rxd_2,
                  output wire [7  : 0] qsfp0_xgmii_rxc_2,

                  input wire [63  : 0] qsfp0_xgmii_txd_3,
                  input wire [7   : 0] qsfp0_xgmii_txc_3,
                  output wire [63 : 0] qsfp0_xgmii_rxd_3,
                  output wire [7  : 0] qsfp0_xgmii_rxc_3,


                  // External ports for QSFP interface 1.
                  output wire          qsfp1_tx0_p,
                  output wire          qsfp1_tx0_n,
                  input  wire          qsfp1_rx0_p,
                  input  wire          qsfp1_rx0_n,
                  output wire          qsfp1_tx1_p,
                  output wire          qsfp1_tx1_n,
                  input  wire          qsfp1_rx1_p,
                  input  wire          qsfp1_rx1_n,
                  output wire          qsfp1_tx2_p,
                  output wire          qsfp1_tx2_n,
                  input  wire          qsfp1_rx2_p,
                  input  wire          qsfp1_rx2_n,
                  output wire          qsfp1_tx3_p,
                  output wire          qsfp1_tx3_n,
                  input  wire          qsfp1_rx3_p,
                  input  wire          qsfp1_rx3_n,
                  input  wire          qsfp1_mgt_refclk_0_p,
                  input  wire          qsfp1_mgt_refclk_0_n,
                  output wire          qsfp1_modsell,
                  output wire          qsfp1_resetl,
                  input  wire          qsfp1_modprsl,
                  input  wire          qsfp1_intl,
                  output wire          qsfp1_lpmode,


                  // XGMII ports for QSFP interface 1.
                  input wire [63  : 0] qsfp1_xgmii_txd_0,
                  input wire [7   : 0] qsfp1_xgmii_txc_0,
                  output wire [63 : 0] qsfp1_xgmii_rxd_0,
                  output wire [7  : 0] qsfp1_xgmii_rxc_0,

                  input wire [63  : 0] qsfp1_xgmii_txd_1,
                  input wire [7   : 0] qsfp1_xgmii_txc_1,
                  output wire [63 : 0] qsfp1_xgmii_rxd_1,
                  output wire [7  : 0] qsfp1_xgmii_rxc_1,

                  input wire [63  : 0] qsfp1_xgmii_txd_2,
                  input wire [7   : 0] qsfp1_xgmii_txc_2,
                  output wire [63 : 0] qsfp1_xgmii_rxd_2,
                  output wire [7  : 0] qsfp1_xgmii_rxc_2,

                  input wire [63  : 0] qsfp1_xgmii_txd_3,
                  input wire [7   : 0] qsfp1_xgmii_txc_3,
                  output wire [63 : 0] qsfp1_xgmii_rxd_3,
                  output wire [7  : 0] qsfp1_xgmii_rxc_3

                  );

  //----------------------------------------------------------------
  // Internal wires.
  //----------------------------------------------------------------
  wire       clk_125mhz_ibufg;
  wire       clk_125mhz_mmcm_out;
  wire       clk_125mhz_int;
  wire       rst_125mhz_int;
  wire       mmcm_locked;
  wire       mmcm_clkfb;

  wire       clk_156mhz_int;
  wire       rst_156mhz_int;

  wire [7:0] gt_txclkout;
  wire       gt_txusrclk;
  wire [7:0] gt_rxclkout;
  wire [7:0] gt_rxusrclk;
  wire       gt_reset_tx_done;
  wire       gt_reset_rx_done;
  wire [7:0] gt_txprgdivresetdone;
  wire [7:0] gt_txpmaresetdone;
  wire [7:0] gt_rxprgdivresetdone;
  wire [7:0] gt_rxpmaresetdone;
  wire       gt_tx_reset = ~((&gt_txprgdivresetdone) & (&gt_txpmaresetdone));
  wire       gt_rx_reset = ~&gt_rxpmaresetdone;
  reg        gt_userclk_tx_active = 1'b0;
  reg [7:0]  gt_userclk_rx_active = 1'b0;


  //----------------------------------------------------------------
  // Assignments.
  //----------------------------------------------------------------
  assign qsfp0_modsell = 1'b0;
  assign qsfp0_resetl  = 1'b1;
  assign qsfp0_lpmode  = 1'b0;

  assign qsfp1_modsell = 1'b0;
  assign qsfp1_resetl  = 1'b1;
  assign qsfp1_lpmode  = 1'b0;

  assign qsfp1_tx_clk_1_int = clk_156mhz_int;
  assign qsfp1_tx_rst_1_int = rst_156mhz_int;
  assign qsfp1_rx_clk_1_int = gt_rxusrclk[0];

  assign clk156        = clk_156mhz_int;
  assign areset_clk156 = rst_156mhz_int;


  //----------------------------------------------------------------
  // Moudule instantiations.
  //----------------------------------------------------------------
  IBUFGDS #(
    .DIFF_TERM("FALSE"),
    .IBUF_LOW_PWR("FALSE")
    )
  clk_125mhz_ibufg_inst (
    .O   (clk_125mhz_ibufg),
    .I   (clk_125mhz_p),
    .IB  (clk_125mhz_n)
    );

  // MMCM instance
  // 125 MHz in, 125 MHz out
  // PFD range: 10 MHz to 500 MHz
  // VCO range: 800 MHz to 1600 MHz
  // M = 8, D = 1 sets Fvco = 1000 MHz (in range)
  // Divide by 8 to get output frequency of 125 MHz
  MMCME3_BASE #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKOUT0_DIVIDE_F(8),
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE(0),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE(0),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.5),
    .CLKOUT2_PHASE(0),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.5),
    .CLKOUT3_PHASE(0),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.5),
    .CLKOUT4_PHASE(0),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.5),
    .CLKOUT5_PHASE(0),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.5),
    .CLKOUT6_PHASE(0),
    .CLKFBOUT_MULT_F(8),
    .CLKFBOUT_PHASE(0),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010),
    .CLKIN1_PERIOD(8.0),
    .STARTUP_WAIT("FALSE"),
    .CLKOUT4_CASCADE("FALSE")
    )
  clk_mmcm_inst (
    .CLKIN1(clk_125mhz_ibufg),
    .CLKFBIN(mmcm_clkfb),
    .RST(reset),
    .PWRDWN(1'b0),
    .CLKOUT0(clk_125mhz_mmcm_out),
    .CLKOUT0B(),
    .CLKOUT1(),
    .CLKOUT1B(),
    .CLKOUT2(),
    .CLKOUT2B(),
    .CLKOUT3(),
    .CLKOUT3B(),
    .CLKOUT4(),
    .CLKOUT5(),
    .CLKOUT6(),
    .CLKFBOUT(mmcm_clkfb),
    .CLKFBOUTB(),
    .LOCKED(mmcm_locked)
    );


  BUFG
    clk_125mhz_bufg_inst (
      .I(clk_125mhz_mmcm_out),
      .O(clk_125mhz_int)
      );


  sync_reset #(
    .N(4)
    )
  sync_reset_125mhz_inst (
    .clk(clk_125mhz_int),
    .rst(~mmcm_locked),
    .out(rst_125mhz_int)
    );


  //----------------------------------------------------------------
  // 10G PHYs
  //----------------------------------------------------------------
  assign qsfp1_tx_clk_1_int = clk_156mhz_int;
  assign qsfp1_tx_rst_1_int = rst_156mhz_int;
  assign qsfp1_rx_clk_1_int = gt_rxusrclk[0];

  sync_reset #(
    .N(4)
  )
  qsfp1_rx_rst_1_reset_sync_inst (
    .clk(qsfp1_rx_clk_1_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp1_rx_rst_1_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp1_phy_1_inst (
    .tx_clk(qsfp1_tx_clk_1_int),
    .tx_rst(qsfp1_tx_rst_1_int),
    .rx_clk(qsfp1_rx_clk_1_int),
    .rx_rst(qsfp1_rx_rst_1_int),
    .xgmii_txd(qsfp0_xgmii_txd_0),
    .xgmii_txc(qsfp0_xgmii_txc_0),
    .xgmii_rxd(qsfp0_xgmii_rxd_0),
    .xgmii_rxc(qsfp0_xgmii_rxc_0),
    .serdes_tx_data(qsfp1_gt_txdata_1),
    .serdes_tx_hdr(qsfp1_gt_txheader_1),
    .serdes_rx_data(qsfp1_gt_rxdata_1),
    .serdes_rx_hdr(qsfp1_gt_rxheader_1),
    .serdes_rx_bitslip(qsfp1_gt_rxgearboxslip_1),
    .rx_block_lock(qsfp1_rx_block_lock_1),
    .rx_high_ber()
  );


  assign qsfp1_tx_clk_2_int = clk_156mhz_int;
  assign qsfp1_tx_rst_2_int = rst_156mhz_int;
  assign qsfp1_rx_clk_2_int = gt_rxusrclk[1];

  sync_reset #(
    .N(4)
  )
  qsfp1_rx_rst_2_reset_sync_inst (
    .clk(qsfp1_rx_clk_2_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp1_rx_rst_2_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp1_phy_2_inst (
    .tx_clk(qsfp1_tx_clk_2_int),
    .tx_rst(qsfp1_tx_rst_2_int),
    .rx_clk(qsfp1_rx_clk_2_int),
    .rx_rst(qsfp1_rx_rst_2_int),
    .xgmii_txd(qsfp0_xgmii_txd_1),
    .xgmii_txc(qsfp0_xgmii_txc_1),
    .xgmii_rxd(qsfp0_xgmii_rxd_1),
    .xgmii_rxc(qsfp0_xgmii_rxc_1),
    .serdes_tx_data(qsfp1_gt_txdata_2),
    .serdes_tx_hdr(qsfp1_gt_txheader_2),
    .serdes_rx_data(qsfp1_gt_rxdata_2),
    .serdes_rx_hdr(qsfp1_gt_rxheader_2),
    .serdes_rx_bitslip(qsfp1_gt_rxgearboxslip_2),
    .rx_block_lock(qsfp1_rx_block_lock_2),
    .rx_high_ber()
  );


  assign qsfp1_tx_clk_3_int = clk_156mhz_int;
  assign qsfp1_tx_rst_3_int = rst_156mhz_int;
  assign qsfp1_rx_clk_3_int = gt_rxusrclk[2];

  sync_reset #(
    .N(4)
  )
  qsfp1_rx_rst_3_reset_sync_inst (
    .clk(qsfp1_rx_clk_3_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp1_rx_rst_3_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp1_phy_3_inst (
    .tx_clk(qsfp1_tx_clk_3_int),
    .tx_rst(qsfp1_tx_rst_3_int),
    .rx_clk(qsfp1_rx_clk_3_int),
    .rx_rst(qsfp1_rx_rst_3_int),
    .xgmii_txd(qsfp0_xgmii_txd_2),
    .xgmii_txc(qsfp0_xgmii_txc_2),
    .xgmii_rxd(qsfp0_xgmii_rxd_2),
    .xgmii_rxc(qsfp0_xgmii_rxc_2),
    .serdes_tx_data(qsfp1_gt_txdata_3),
    .serdes_tx_hdr(qsfp1_gt_txheader_3),
    .serdes_rx_data(qsfp1_gt_rxdata_3),
    .serdes_rx_hdr(qsfp1_gt_rxheader_3),
    .serdes_rx_bitslip(qsfp1_gt_rxgearboxslip_3),
    .rx_block_lock(qsfp1_rx_block_lock_3),
    .rx_high_ber()
);


  assign qsfp1_tx_clk_4_int = clk_156mhz_int;
  assign qsfp1_tx_rst_4_int = rst_156mhz_int;
  assign qsfp1_rx_clk_4_int = gt_rxusrclk[3];

  sync_reset #(
    .N(4)
  )
  qsfp1_rx_rst_4_reset_sync_inst (
    .clk(qsfp1_rx_clk_4_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp1_rx_rst_4_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp1_phy_4_inst (
    .tx_clk(qsfp1_tx_clk_4_int),
    .tx_rst(qsfp1_tx_rst_4_int),
    .rx_clk(qsfp1_rx_clk_4_int),
    .rx_rst(qsfp1_rx_rst_4_int),
    .xgmii_txd(qsfp0_xgmii_txd_3),
    .xgmii_txc(qsfp0_xgmii_txc_3),
    .xgmii_rxd(qsfp0_xgmii_rxd_3),
    .xgmii_rxc(qsfp0_xgmii_rxc_3),
    .serdes_tx_data(qsfp1_gt_txdata_4),
    .serdes_tx_hdr(qsfp1_gt_txheader_4),
    .serdes_rx_data(qsfp1_gt_rxdata_4),
    .serdes_rx_hdr(qsfp1_gt_rxheader_4),
    .serdes_rx_bitslip(qsfp1_gt_rxgearboxslip_4),
    .rx_block_lock(qsfp1_rx_block_lock_4),
    .rx_high_ber()
  );


  assign qsfp2_tx_clk_1_int = clk_156mhz_int;
  assign qsfp2_tx_rst_1_int = rst_156mhz_int;
  assign qsfp2_rx_clk_1_int = gt_rxusrclk[4];

  sync_reset #(
    .N(4)
  )
  qsfp2_rx_rst_1_reset_sync_inst (
    .clk(qsfp2_rx_clk_1_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp2_rx_rst_1_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp2_phy_1_inst (
    .tx_clk(qsfp2_tx_clk_1_int),
    .tx_rst(qsfp2_tx_rst_1_int),
    .rx_clk(qsfp2_rx_clk_1_int),
    .rx_rst(qsfp2_rx_rst_1_int),
    .xgmii_txd(qsfp1_xgmii_txd_0),
    .xgmii_txc(qsfp1_xgmii_txc_0),
    .xgmii_rxd(qsfp1_xgmii_rxd_0),
    .xgmii_rxc(qsfp1_xgmii_rxc_0),
    .serdes_tx_data(qsfp2_gt_txdata_1),
    .serdes_tx_hdr(qsfp2_gt_txheader_1),
    .serdes_rx_data(qsfp2_gt_rxdata_1),
    .serdes_rx_hdr(qsfp2_gt_rxheader_1),
    .serdes_rx_bitslip(qsfp2_gt_rxgearboxslip_1),
    .rx_block_lock(qsfp2_rx_block_lock_1),
    .rx_high_ber()
  );


  assign qsfp2_tx_clk_2_int = clk_156mhz_int;
  assign qsfp2_tx_rst_2_int = rst_156mhz_int;
  assign qsfp2_rx_clk_2_int = gt_rxusrclk[5];

  sync_reset #(
    .N(4)
  )
  qsfp2_rx_rst_2_reset_sync_inst (
    .clk(qsfp2_rx_clk_2_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp2_rx_rst_2_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp2_phy_2_inst (
    .tx_clk(qsfp2_tx_clk_2_int),
    .tx_rst(qsfp2_tx_rst_2_int),
    .rx_clk(qsfp2_rx_clk_2_int),
    .rx_rst(qsfp2_rx_rst_2_int),
    .xgmii_txd(qsfp1_xgmii_txd_1),
    .xgmii_txc(qsfp1_xgmii_txc_1),
    .xgmii_rxd(qsfp1_xgmii_rxd_1),
    .xgmii_rxc(qsfp1_xgmii_rxc_1),
    .serdes_tx_data(qsfp2_gt_txdata_2),
    .serdes_tx_hdr(qsfp2_gt_txheader_2),
    .serdes_rx_data(qsfp2_gt_rxdata_2),
    .serdes_rx_hdr(qsfp2_gt_rxheader_2),
    .serdes_rx_bitslip(qsfp2_gt_rxgearboxslip_2),
    .rx_block_lock(qsfp2_rx_block_lock_2),
    .rx_high_ber()
  );


  assign qsfp2_tx_clk_3_int = clk_156mhz_int;
  assign qsfp2_tx_rst_3_int = rst_156mhz_int;
  assign qsfp2_rx_clk_3_int = gt_rxusrclk[6];

  sync_reset #(
    .N(4)
  )
  qsfp2_rx_rst_3_reset_sync_inst (
    .clk(qsfp2_rx_clk_3_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp2_rx_rst_3_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp2_phy_3_inst (
    .tx_clk(qsfp2_tx_clk_3_int),
    .tx_rst(qsfp2_tx_rst_3_int),
    .rx_clk(qsfp2_rx_clk_3_int),
    .rx_rst(qsfp2_rx_rst_3_int),
    .xgmii_txd(qsfp1_xgmii_txd_2),
    .xgmii_txc(qsfp1_xgmii_txc_2),
    .xgmii_rxd(qsfp1_xgmii_rxd_2),
    .xgmii_rxc(qsfp1_xgmii_rxc_2),
    .serdes_tx_data(qsfp2_gt_txdata_3),
    .serdes_tx_hdr(qsfp2_gt_txheader_3),
    .serdes_rx_data(qsfp2_gt_rxdata_3),
    .serdes_rx_hdr(qsfp2_gt_rxheader_3),
    .serdes_rx_bitslip(qsfp2_gt_rxgearboxslip_3),
    .rx_block_lock(qsfp2_rx_block_lock_3),
    .rx_high_ber()
  );


  assign qsfp2_tx_clk_4_int = clk_156mhz_int;
  assign qsfp2_tx_rst_4_int = rst_156mhz_int;
  assign qsfp2_rx_clk_4_int = gt_rxusrclk[7];

  sync_reset #(
    .N(4)
  )
  qsfp2_rx_rst_4_reset_sync_inst (
    .clk(qsfp2_rx_clk_4_int),
    .rst(~gt_reset_rx_done),
    .out(qsfp2_rx_rst_4_int)
  );

  eth_phy_10g #(
    .BIT_REVERSE(1)
  )
  qsfp2_phy_4_inst (
    .tx_clk(qsfp2_tx_clk_4_int),
    .tx_rst(qsfp2_tx_rst_4_int),
    .rx_clk(qsfp2_rx_clk_4_int),
    .rx_rst(qsfp2_rx_rst_4_int),
    .xgmii_txd(qsfp1_xgmii_txd_3),
    .xgmii_txc(qsfp1_xgmii_txc_3),
    .xgmii_rxd(qsfp1_xgmii_rxd_3),
    .xgmii_rxc(qsfp1_xgmii_rxc_3),
    .serdes_tx_data(qsfp2_gt_txdata_4),
    .serdes_tx_hdr(qsfp2_gt_txheader_4),
    .serdes_rx_data(qsfp2_gt_rxdata_4),
    .serdes_rx_hdr(qsfp2_gt_rxheader_4),
    .serdes_rx_bitslip(qsfp2_gt_rxgearboxslip_4),
    .rx_block_lock(qsfp2_rx_block_lock_4),
    .rx_high_ber()
  );


endmodule // ntps_phys

`default_nettype wire

//======================================================================
// EOF ntps_phys.v
//======================================================================
