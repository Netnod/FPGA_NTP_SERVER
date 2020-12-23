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
                  input  wire          clk_125mhz,
                  output wire          areset_clk156,
                  output wire          clk156,

                  // i2c for board management
                  inout  wire          i2c_scl,
                  inout  wire          i2c_sda,

                  // Blinkenlights.
                  output wire [7:0]    led,

                  // External ports for QSFP interface 1.
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
                  output wire          qsfp1_tx4_p,
                  output wire          qsfp1_tx4_n,
                  input  wire          qsfp1_rx4_p,
                  input  wire          qsfp1_rx4_n,
                  input  wire          qsfp1_mgt_refclk_0_p,
                  input  wire          qsfp1_mgt_refclk_0_n,
                  output wire          qsfp1_modsell,
                  output wire          qsfp1_resetl,
                  input  wire          qsfp1_modprsl,
                  input  wire          qsfp1_intl,
                  output wire          qsfp1_lpmode,

                  // XGMII ports for QSFP interface 1.
                  input  wire [63 : 0] qsfp1_xgmii_txd_1,
                  input  wire [7  : 0] qsfp1_xgmii_txc_1,
                  output wire [63 : 0] qsfp1_xgmii_rxd_1,
                  output wire [7  : 0] qsfp1_xgmii_rxc_1,
                  input  wire [63 : 0] qsfp1_xgmii_txd_2,
                  input  wire [7  : 0] qsfp1_xgmii_txc_2,
                  output wire [63 : 0] qsfp1_xgmii_rxd_2,
                  output wire [7  : 0] qsfp1_xgmii_rxc_2,
                  input  wire [63 : 0] qsfp1_xgmii_txd_3,
                  input  wire [7  : 0] qsfp1_xgmii_txc_3,
                  output wire [63 : 0] qsfp1_xgmii_rxd_3,
                  output wire [7  : 0] qsfp1_xgmii_rxc_3,
                  input  wire [63 : 0] qsfp1_xgmii_txd_4,
                  input  wire [7  : 0] qsfp1_xgmii_txc_4,
                  output wire [63 : 0] qsfp1_xgmii_rxd_4,
                  output wire [7  : 0] qsfp1_xgmii_rxc_4,

                  // External ports for QSFP interface 2.
                  output wire          qsfp2_tx1_p,
                  output wire          qsfp2_tx1_n,
                  input  wire          qsfp2_rx1_p,
                  input  wire          qsfp2_rx1_n,
                  output wire          qsfp2_tx2_p,
                  output wire          qsfp2_tx2_n,
                  input  wire          qsfp2_rx2_p,
                  input  wire          qsfp2_rx2_n,
                  output wire          qsfp2_tx3_p,
                  output wire          qsfp2_tx3_n,
                  input  wire          qsfp2_rx3_p,
                  input  wire          qsfp2_rx3_n,
                  output wire          qsfp2_tx4_p,
                  output wire          qsfp2_tx4_n,
                  input  wire          qsfp2_rx4_p,
                  input  wire          qsfp2_rx4_n,
                  output wire          qsfp2_modsell,
                  output wire          qsfp2_resetl,
                  input  wire          qsfp2_modprsl,
                  input  wire          qsfp2_intl,
                  output wire          qsfp2_lpmode,

                  // XGMII ports for QSFP interface 2.
                  input  wire [63 : 0] qsfp2_xgmii_txd_1,
                  input  wire [7  : 0] qsfp2_xgmii_txc_1,
                  output wire [63 : 0] qsfp2_xgmii_rxd_1,
                  output wire [7  : 0] qsfp2_xgmii_rxc_1,
                  input  wire [63 : 0] qsfp2_xgmii_txd_2,
                  input  wire [7  : 0] qsfp2_xgmii_txc_2,
                  output wire [63 : 0] qsfp2_xgmii_rxd_2,
                  output wire [7  : 0] qsfp2_xgmii_rxc_2,
                  input  wire [63 : 0] qsfp2_xgmii_txd_3,
                  input  wire [7  : 0] qsfp2_xgmii_txc_3,
                  output wire [63 : 0] qsfp2_xgmii_rxd_3,
                  output wire [7  : 0] qsfp2_xgmii_rxc_3,
                  input  wire [63 : 0] qsfp2_xgmii_txd_4,
                  input  wire [7  : 0] qsfp2_xgmii_txc_4,
                  output wire [63 : 0] qsfp2_xgmii_rxd_4,
                  output wire [7  : 0] qsfp2_xgmii_rxc_4
                  );


  //----------------------------------------------------------------
  // Internal wires.
  //----------------------------------------------------------------
  wire        clk_125mhz_mmcm_out;
  wire        clk_125mhz_int;
  wire        rst_125mhz_int;
  wire        mmcm_locked;
  wire        mmcm_clkfb;

  wire        clk_156mhz_int;
  wire        rst_156mhz_int;

  wire [7:0]  gt_txclkout;
  wire        gt_txusrclk;
  wire [7:0]  gt_rxclkout;
  wire [7:0]  gt_rxusrclk;
  wire        gt_reset_tx_done;
  wire        gt_reset_rx_done;
  wire [7:0]  gt_txprgdivresetdone;
  wire [7:0]  gt_txpmaresetdone;
  wire [7:0]  gt_rxprgdivresetdone;
  wire [7:0]  gt_rxpmaresetdone;
  wire        gt_tx_reset = ~((&gt_txprgdivresetdone) & (&gt_txpmaresetdone));
  wire        gt_rx_reset = ~&gt_rxpmaresetdone;
  reg         gt_userclk_tx_active = 1'b0;
  reg [7:0]   gt_userclk_rx_active = 1'b0;

  wire        qsfp1_mgt_refclk_0;

  wire [5:0]  qsfp1_gt_txheader_1;
  wire [63:0] qsfp1_gt_txdata_1;
  wire        qsfp1_gt_rxgearboxslip_1;
  wire [5:0]  qsfp1_gt_rxheader_1;
  wire [1:0]  qsfp1_gt_rxheadervalid_1;
  wire [63:0] qsfp1_gt_rxdata_1;
  wire [1:0]  qsfp1_gt_rxdatavalid_1;

  wire [5:0]  qsfp1_gt_txheader_2;
  wire [63:0] qsfp1_gt_txdata_2;
  wire        qsfp1_gt_rxgearboxslip_2;
  wire [5:0]  qsfp1_gt_rxheader_2;
  wire [1:0]  qsfp1_gt_rxheadervalid_2;
  wire [63:0] qsfp1_gt_rxdata_2;
  wire [1:0]  qsfp1_gt_rxdatavalid_2;

  wire [5:0]  qsfp1_gt_txheader_3;
  wire [63:0] qsfp1_gt_txdata_3;
  wire        qsfp1_gt_rxgearboxslip_3;
  wire [5:0]  qsfp1_gt_rxheader_3;
  wire [1:0]  qsfp1_gt_rxheadervalid_3;
  wire [63:0] qsfp1_gt_rxdata_3;
  wire [1:0]  qsfp1_gt_rxdatavalid_3;

  wire [5:0]  qsfp1_gt_txheader_4;
  wire [63:0] qsfp1_gt_txdata_4;
  wire        qsfp1_gt_rxgearboxslip_4;
  wire [5:0]  qsfp1_gt_rxheader_4;
  wire [1:0]  qsfp1_gt_rxheadervalid_4;
  wire [63:0] qsfp1_gt_rxdata_4;
  wire [1:0]  qsfp1_gt_rxdatavalid_4;

  wire [5:0]  qsfp2_gt_txheader_1;
  wire [63:0] qsfp2_gt_txdata_1;
  wire        qsfp2_gt_rxgearboxslip_1;
  wire [5:0]  qsfp2_gt_rxheader_1;
  wire [1:0]  qsfp2_gt_rxheadervalid_1;
  wire [63:0] qsfp2_gt_rxdata_1;
  wire [1:0]  qsfp2_gt_rxdatavalid_1;

  wire [5:0]  qsfp2_gt_txheader_2;
  wire [63:0] qsfp2_gt_txdata_2;
  wire        qsfp2_gt_rxgearboxslip_2;
  wire [5:0]  qsfp2_gt_rxheader_2;
  wire [1:0]  qsfp2_gt_rxheadervalid_2;
  wire [63:0] qsfp2_gt_rxdata_2;
  wire [1:0]  qsfp2_gt_rxdatavalid_2;

  wire [5:0]  qsfp2_gt_txheader_3;
  wire [63:0] qsfp2_gt_txdata_3;
  wire        qsfp2_gt_rxgearboxslip_3;
  wire [5:0]  qsfp2_gt_rxheader_3;
  wire [1:0]  qsfp2_gt_rxheadervalid_3;
  wire [63:0] qsfp2_gt_rxdata_3;
  wire [1:0]  qsfp2_gt_rxdatavalid_3;

  wire [5:0]  qsfp2_gt_txheader_4;
  wire [63:0] qsfp2_gt_txdata_4;
  wire        qsfp2_gt_rxgearboxslip_4;
  wire [5:0]  qsfp2_gt_rxheader_4;
  wire [1:0]  qsfp2_gt_rxheadervalid_4;
  wire [63:0] qsfp2_gt_rxdata_4;
  wire [1:0]  qsfp2_gt_rxdatavalid_4;

  wire        qsfp1_tx_clk_1_int;
  wire        qsfp1_tx_rst_1_int;
  wire        qsfp1_rx_clk_1_int;
  wire        qsfp1_rx_rst_1_int;
  wire        qsfp1_tx_clk_2_int;
  wire        qsfp1_tx_rst_2_int;
  wire        qsfp1_rx_clk_2_int;
  wire        qsfp1_rx_rst_2_int;
  wire        qsfp1_tx_clk_3_int;
  wire        qsfp1_tx_rst_3_int;
  wire        qsfp1_rx_clk_3_int;
  wire        qsfp1_rx_rst_3_int;
  wire        qsfp1_tx_clk_4_int;
  wire        qsfp1_tx_rst_4_int;
  wire        qsfp1_rx_clk_4_int;
  wire        qsfp1_rx_rst_4_int;
  wire        qsfp1_rx_block_lock_1;
  wire        qsfp1_rx_block_lock_2;
  wire        qsfp1_rx_block_lock_3;
  wire        qsfp1_rx_block_lock_4;

  wire        qsfp2_tx_clk_1_int;
  wire        qsfp2_tx_rst_1_int;
  wire        qsfp2_rx_clk_1_int;
  wire        qsfp2_rx_rst_1_int;
  wire        qsfp2_tx_clk_2_int;
  wire        qsfp2_tx_rst_2_int;
  wire        qsfp2_rx_clk_2_int;
  wire        qsfp2_rx_rst_2_int;
  wire        qsfp2_tx_clk_3_int;
  wire        qsfp2_tx_rst_3_int;
  wire        qsfp2_rx_clk_3_int;
  wire        qsfp2_rx_rst_3_int;
  wire        qsfp2_tx_clk_4_int;
  wire        qsfp2_tx_rst_4_int;
  wire        qsfp2_rx_clk_4_int;
  wire        qsfp2_rx_rst_4_int;
  wire        qsfp2_rx_block_lock_1;
  wire        qsfp2_rx_block_lock_2;
  wire        qsfp2_rx_block_lock_3;
  wire        qsfp2_rx_block_lock_4;

  // SI570 I2C.
  wire        i2c_scl_i;
  wire        i2c_scl_o = 1'b1;
  wire        i2c_scl_t = 1'b1;
  wire        i2c_sda_i;
  wire        i2c_sda_o = 1'b1;
  wire        i2c_sda_t = 1'b1;


  //----------------------------------------------------------------
  // Assignments.
  //----------------------------------------------------------------
  assign qsfp1_modsell = 1'b0;
  assign qsfp1_resetl  = 1'b1;
  assign qsfp1_lpmode  = 1'b0;

  assign qsfp2_modsell = 1'b0;
  assign qsfp2_resetl  = 1'b1;
  assign qsfp2_lpmode  = 1'b0;

  assign qsfp1_tx_clk_1_int = clk_156mhz_int;
  assign qsfp1_tx_rst_1_int = rst_156mhz_int;
  assign qsfp1_rx_clk_1_int = gt_rxusrclk[0];

  assign clk_156mhz_int = gt_txusrclk;
  assign clk156         = clk_156mhz_int;
  assign areset_clk156  = rst_156mhz_int;

  assign i2c_scl_i = i2c_scl;
  assign i2c_scl   = i2c_scl_t ? 1'bz : i2c_scl_o;
  assign i2c_sda_i = i2c_sda;
  assign i2c_sda   = i2c_sda_t ? 1'bz : i2c_sda_o;

  assign led = {qsfp2_rx_block_lock_4, qsfp2_rx_block_lock_3,
                qsfp2_rx_block_lock_2, qsfp2_rx_block_lock_1,
                qsfp1_rx_block_lock_4, qsfp1_rx_block_lock_3,
                qsfp1_rx_block_lock_2, qsfp1_rx_block_lock_1};


  //----------------------------------------------------------------
  // Moudule instantiations.
  //----------------------------------------------------------------
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
    .CLKIN1(clk_125mhz),
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


  IBUFDS_GTE4 ibufds_gte4_qsfp1_mgt_refclk_0_inst (
    .I             (qsfp1_mgt_refclk_0_p),
    .IB            (qsfp1_mgt_refclk_0_n),
    .CEB           (1'b0),
    .O             (qsfp1_mgt_refclk_0),
    .ODIV2         ()
  );


  BUFG_GT bufg_gt_tx_usrclk_inst (
    .CE      (1'b1),
    .CEMASK  (1'b0),
    .CLR     (gt_tx_reset),
    .CLRMASK (1'b0),
    .DIV     (3'd0),
    .I       (gt_txclkout[0]),
    .O       (gt_txusrclk)
  );

  always @(posedge gt_txusrclk, posedge gt_tx_reset) begin
    if (gt_tx_reset) begin
      gt_userclk_tx_active <= 1'b0;
    end else begin
      gt_userclk_tx_active <= 1'b1;
    end
  end


  genvar n;
  generate
    for (n = 0; n < 8; n = n + 1) begin
      BUFG_GT bufg_gt_rx_usrclk_inst (
                .CE      (1'b1),
                .CEMASK  (1'b0),
                .CLR     (gt_rx_reset),
                .CLRMASK (1'b0),
                .DIV     (3'd0),
                .I       (gt_rxclkout[n]),
                .O       (gt_rxusrclk[n])
                );

      always @(posedge gt_rxusrclk[n], posedge gt_rx_reset) begin
        if (gt_rx_reset) begin
          gt_userclk_rx_active[n] <= 1'b0;
        end else begin
          gt_userclk_rx_active[n] <= 1'b1;
        end
      end

    end
  endgenerate


  sync_reset #(
    .N(4)
  )
  sync_reset_156mhz_inst (
    .clk(clk_156mhz_int),
    .rst(~gt_reset_tx_done),
    .out(rst_156mhz_int)
  );


  //----------------------------------------------------------------
  // gtwizard.
  //----------------------------------------------------------------
  gtwizard_ultrascale_0
    qsfp_gty_inst (
    .gtwiz_userclk_tx_active_in(&gt_userclk_tx_active),
    .gtwiz_userclk_rx_active_in(&gt_userclk_rx_active),

    .gtwiz_reset_clk_freerun_in(clk_125mhz_int),
    .gtwiz_reset_all_in(rst_125mhz_int),

    .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
    .gtwiz_reset_tx_datapath_in(1'b0),

    .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
    .gtwiz_reset_rx_datapath_in(1'b0),

    .gtwiz_reset_rx_cdr_stable_out(),

    .gtwiz_reset_tx_done_out(gt_reset_tx_done),
    .gtwiz_reset_rx_done_out(gt_reset_rx_done),

    .gtrefclk00_in({2{qsfp1_mgt_refclk_0}}),

    .qpll0outclk_out(),
    .qpll0outrefclk_out(),

    .gtyrxn_in({qsfp2_rx4_n, qsfp2_rx3_n, qsfp2_rx2_n, qsfp2_rx1_n,
                qsfp1_rx4_n, qsfp1_rx3_n, qsfp1_rx2_n, qsfp1_rx1_n}),

    .gtyrxp_in({qsfp2_rx4_p, qsfp2_rx3_p, qsfp2_rx2_p, qsfp2_rx1_p,
                qsfp1_rx4_p, qsfp1_rx3_p, qsfp1_rx2_p, qsfp1_rx1_p}),

    .rxusrclk_in(gt_rxusrclk),
    .rxusrclk2_in(gt_rxusrclk),

    .gtwiz_userdata_tx_in({qsfp2_gt_txdata_4, qsfp2_gt_txdata_3,
                           qsfp2_gt_txdata_2, qsfp2_gt_txdata_1,
                           qsfp1_gt_txdata_4, qsfp1_gt_txdata_3,
                           qsfp1_gt_txdata_2, qsfp1_gt_txdata_1}),

    .txheader_in({qsfp2_gt_txheader_4, qsfp2_gt_txheader_3,
                  qsfp2_gt_txheader_2, qsfp2_gt_txheader_1,
                  qsfp1_gt_txheader_4, qsfp1_gt_txheader_3,
                  qsfp1_gt_txheader_2, qsfp1_gt_txheader_1}),

    .txsequence_in({8{1'b0}}),

    .txusrclk_in({8{gt_txusrclk}}),
    .txusrclk2_in({8{gt_txusrclk}}),

    .gtpowergood_out(),

    .gtytxn_out({qsfp2_tx4_n, qsfp2_tx3_n, qsfp2_tx2_n, qsfp2_tx1_n,
                 qsfp1_tx4_n, qsfp1_tx3_n, qsfp1_tx2_n, qsfp1_tx1_n}),

    .gtytxp_out({qsfp2_tx4_p, qsfp2_tx3_p, qsfp2_tx2_p, qsfp2_tx1_p,
                 qsfp1_tx4_p, qsfp1_tx3_p, qsfp1_tx2_p, qsfp1_tx1_p}),

    .rxgearboxslip_in({qsfp2_gt_rxgearboxslip_4, qsfp2_gt_rxgearboxslip_3,
                       qsfp2_gt_rxgearboxslip_2, qsfp2_gt_rxgearboxslip_1,
                       qsfp1_gt_rxgearboxslip_4, qsfp1_gt_rxgearboxslip_3,
                       qsfp1_gt_rxgearboxslip_2, qsfp1_gt_rxgearboxslip_1}),

    .gtwiz_userdata_rx_out({qsfp2_gt_rxdata_4, qsfp2_gt_rxdata_3,
                            qsfp2_gt_rxdata_2, qsfp2_gt_rxdata_1,
                            qsfp1_gt_rxdata_4, qsfp1_gt_rxdata_3,
                            qsfp1_gt_rxdata_2, qsfp1_gt_rxdata_1}),

    .rxdatavalid_out({qsfp2_gt_rxdatavalid_4, qsfp2_gt_rxdatavalid_3,
                      qsfp2_gt_rxdatavalid_2, qsfp2_gt_rxdatavalid_1,
                      qsfp1_gt_rxdatavalid_4, qsfp1_gt_rxdatavalid_3,
                      qsfp1_gt_rxdatavalid_2, qsfp1_gt_rxdatavalid_1}),

    .rxheader_out({qsfp2_gt_rxheader_4, qsfp2_gt_rxheader_3,
                   qsfp2_gt_rxheader_2, qsfp2_gt_rxheader_1,
                   qsfp1_gt_rxheader_4, qsfp1_gt_rxheader_3,
                   qsfp1_gt_rxheader_2, qsfp1_gt_rxheader_1}),

    .rxheadervalid_out({qsfp2_gt_rxheadervalid_4, qsfp2_gt_rxheadervalid_3,
                        qsfp2_gt_rxheadervalid_2, qsfp2_gt_rxheadervalid_1,
                        qsfp1_gt_rxheadervalid_4, qsfp1_gt_rxheadervalid_3,
                        qsfp1_gt_rxheadervalid_2, qsfp1_gt_rxheadervalid_1}),

    .rxoutclk_out(gt_rxclkout),
    .rxpmaresetdone_out(gt_rxpmaresetdone),
    .rxprgdivresetdone_out(gt_rxprgdivresetdone),
    .rxstartofseq_out(),

    .txoutclk_out(gt_txclkout),
    .txpmaresetdone_out(gt_txpmaresetdone),
    .txprgdivresetdone_out(gt_txprgdivresetdone)
  );


  //----------------------------------------------------------------
  // 10G PHYs
  //----------------------------------------------------------------
  wire [63 : 0] qsfp1_xgmii_txd_1_int;
  wire [7  : 0] qsfp1_xgmii_txc_1_int;
  wire [63 : 0] qsfp1_xgmii_rxd_1_int;
  wire [7  : 0] qsfp1_xgmii_rxc_1_int;

  xgmii_fifo qsfp1_tx_fifo_1 (
    .wr_rst(rst_156mhz_int),
    .wr_clk(clk_156mhz_int),
    .wr_data(qsfp1_xgmii_txd_1),
    .wr_ctrl(qsfp1_xgmii_txc_1),

    .rd_clk(qsfp1_tx_clk_1_int),
    .rd_data(qsfp1_xgmii_txd_1_int),
    .rd_ctrl(qsfp1_xgmii_txc_1_int)
  );

  xgmii_fifo qsfp1_rx_fifo_1 (
    .wr_rst(qsfp1_rx_rst_1_int),
    .wr_clk(qsfp1_rx_clk_1_int),
    .wr_data(qsfp1_xgmii_rxd_1_int),
    .wr_ctrl(qsfp1_xgmii_rxc_1_int),

    .rd_clk(clk_156mhz_int),
    .rd_data(qsfp1_xgmii_rxd_1),
    .rd_ctrl(qsfp1_xgmii_rxc_1)
  );

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
    .xgmii_txd(qsfp1_xgmii_txd_1_int),
    .xgmii_txc(qsfp1_xgmii_txc_1_int),
    .xgmii_rxd(qsfp1_xgmii_rxd_1_int),
    .xgmii_rxc(qsfp1_xgmii_rxc_1_int),
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
    .xgmii_txd(qsfp1_xgmii_txd_2),
    .xgmii_txc(qsfp1_xgmii_txc_2),
    .xgmii_rxd(qsfp1_xgmii_rxd_2),
    .xgmii_rxc(qsfp1_xgmii_rxc_2),
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
    .xgmii_txd(qsfp1_xgmii_txd_3),
    .xgmii_txc(qsfp1_xgmii_txc_3),
    .xgmii_rxd(qsfp1_xgmii_rxd_3),
    .xgmii_rxc(qsfp1_xgmii_rxc_3),
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
    .xgmii_txd(qsfp1_xgmii_txd_4),
    .xgmii_txc(qsfp1_xgmii_txc_4),
    .xgmii_rxd(qsfp1_xgmii_rxd_4),
    .xgmii_rxc(qsfp1_xgmii_rxc_4),
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
    .xgmii_txd(qsfp2_xgmii_txd_1),
    .xgmii_txc(qsfp2_xgmii_txc_1),
    .xgmii_rxd(qsfp2_xgmii_rxd_1),
    .xgmii_rxc(qsfp2_xgmii_rxc_1),
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
    .xgmii_txd(qsfp2_xgmii_txd_2),
    .xgmii_txc(qsfp2_xgmii_txc_2),
    .xgmii_rxd(qsfp2_xgmii_rxd_2),
    .xgmii_rxc(qsfp2_xgmii_rxc_2),
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
    .xgmii_txd(qsfp2_xgmii_txd_3),
    .xgmii_txc(qsfp2_xgmii_txc_3),
    .xgmii_rxd(qsfp2_xgmii_rxd_3),
    .xgmii_rxc(qsfp2_xgmii_rxc_3),
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
    .xgmii_txd(qsfp2_xgmii_txd_4),
    .xgmii_txc(qsfp2_xgmii_txc_4),
    .xgmii_rxd(qsfp2_xgmii_rxd_4),
    .xgmii_rxc(qsfp2_xgmii_rxc_4),
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
