//======================================================================
//
// ntps_top.v
// ----------
// Top level module for the NTP, NTS FPGA design.
//
// Author: Rolf Andersson (rolf@mechanicalmen.se)
// Author: Christer Weinigel <wingel@netnod.se>
//
// Copyright 2016-2022 Netnod AB
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
// 3. Neither the name of the copyright holder nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
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

module ntps_top
   (
    input wire			     refclk_25,
    input wire                       refclk_25_rst,

    output wire internal_pps,
    output wire beat_send,
    output wire beat_recv,

    /* I2C interface */

    input  wire  scl_in,
    output wire  scl_low_n,
    input  wire  sda_in,
    output wire  sda_low_n,

    /* PPS interface */
    input  wire                      ten_mhz_ina,
    input  wire                      pps_ina,

    input  wire                      ten_mhz_inb,
    input  wire                      pps_inb,

    /*
     * Ethernet: QSFP28
     */
    input  wire       qsfp1_mgt_refclk_0_p,
    input  wire       qsfp1_mgt_refclk_0_n,

    output wire       qsfp1_tx1_p,
    output wire       qsfp1_tx1_n,
    input  wire       qsfp1_rx1_p,
    input  wire       qsfp1_rx1_n,
    output wire       qsfp1_tx2_p,
    output wire       qsfp1_tx2_n,
    input  wire       qsfp1_rx2_p,
    input  wire       qsfp1_rx2_n,
    output wire       qsfp1_tx3_p,
    output wire       qsfp1_tx3_n,
    input  wire       qsfp1_rx3_p,
    input  wire       qsfp1_rx3_n,
    output wire       qsfp1_tx4_p,
    output wire       qsfp1_tx4_n,
    input  wire       qsfp1_rx4_p,
    input  wire       qsfp1_rx4_n);

  localparam NUM_PATHS = 4;
  localparam NUM_SLAVES = NUM_PATHS + 4;

  //----------------------------------------------------------------
  // AXI clock
  //----------------------------------------------------------------

  wire axi_aclk = refclk_25;
  wire axi_aresetn = !refclk_25_rst;

  //----------------------------------------------------------------
  // AXI Lite bus
  //----------------------------------------------------------------

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

  //----------------------------------------------------------------
  // I2C to AXI bridges
  //----------------------------------------------------------------

  wire [NUM_SLAVES-1:0] i2c_axil_scl_i;
  wire [NUM_SLAVES-1:0] i2c_axil_scl_t;

  wire [NUM_SLAVES-1:0] i2c_axil_sda_i;
  wire [NUM_SLAVES-1:0] i2c_axil_sda_t;

  genvar ii;

  assign scl_low_n = &i2c_axil_scl_t;
  assign sda_low_n = &i2c_axil_sda_t;

  generate
    for (ii = 0; ii < NUM_SLAVES; ii = ii + 1) begin : generate_i2c

      assign i2c_axil_scl_i[ii] = scl_in;
      assign i2c_axil_sda_i[ii] = sda_in;

      i2c_slave_axil_master
        #(.DATA_WIDTH(32),
          .ADDR_WIDTH(32))
      i2c_slave_axil_master_i
        (.enable(1),
         .device_address(7'h40 + ii),

         .busy(),
         .bus_addressed(),
         .bus_active(),

         .i2c_scl_i(i2c_axil_scl_i[ii]),
         .i2c_scl_o(),
         .i2c_scl_t(i2c_axil_scl_t[ii]),

         .i2c_sda_i(i2c_axil_sda_i[ii]),
         .i2c_sda_o(),
         .i2c_sda_t(i2c_axil_sda_t[ii]),

         .clk                (axi_aclk),
         .rst                (!axi_aresetn),

         .m_axil_awaddr      (m_axi_awaddr  [ii*32 +: 32]),
         .m_axil_awprot      (m_axi_awprot  [ii*3 +: 3]),
         .m_axil_awvalid     (m_axi_awvalid [ii]),
         .m_axil_awready     (m_axi_awready [ii]),
         .m_axil_wdata       (m_axi_wdata   [ii*32 +: 32]),
         .m_axil_wstrb       (m_axi_wstrb   [ii*32/8 +: 32/8]),
         .m_axil_wvalid      (m_axi_wvalid  [ii]),
         .m_axil_wready      (m_axi_wready  [ii]),
         .m_axil_bresp       (m_axi_bresp   [ii*2 +: 2]),
         .m_axil_bvalid      (m_axi_bvalid  [ii]),
         .m_axil_bready      (m_axi_bready  [ii]),
         .m_axil_araddr      (m_axi_araddr  [ii*32 +: 32]),
         .m_axil_arprot      (m_axi_arprot  [ii*3 +: 3]),
         .m_axil_arvalid     (m_axi_arvalid [ii]),
         .m_axil_arready     (m_axi_arready [ii]),
         .m_axil_rdata       (m_axi_rdata   [ii*32 +: 32]),
         .m_axil_rresp       (m_axi_rresp   [ii*2 +: 2]),
         .m_axil_rvalid      (m_axi_rvalid  [ii]),
         .m_axil_rready      (m_axi_rready  [ii]));

    end
  endgenerate

  //----------------------------------------------------------------
  // Ethernet PHYs.
  //----------------------------------------------------------------

  wire clk156;
  wire areset_clk156;

  wire [32*NUM_PATHS-1 : 0] gen_config;
  wire [ 5*NUM_PATHS-1 : 0] xphy_status;

  wire [64*NUM_PATHS-1 : 0] xgmii_txd;
  wire [ 8*NUM_PATHS-1 : 0] xgmii_txc;
  wire [64*NUM_PATHS-1 : 0] xgmii_rxd;
  wire [ 8*NUM_PATHS-1 : 0] xgmii_rxc;

  ntps_phys phys
   (
    .refclk                (refclk_25),
    .refclk_rst            (refclk_25_rst),

    .clk156                (clk156),
    .areset_clk156         (areset_clk156),

    .xphy_config_0         (gen_config[0*32+29+:3]),
    .xphy_config_1         (gen_config[1*32+29+:3]),
    .xphy_config_2         (gen_config[2*32+29+:3]),
    .xphy_config_3         (gen_config[3*32+29+:3]),

    .xphy_status_0         (xphy_status[0*5+:5]),
    .xphy_status_1         (xphy_status[1*5+:5]),
    .xphy_status_2         (xphy_status[2*5+:5]),
    .xphy_status_3         (xphy_status[3*5+:5]),

    .qsfp1_mgt_refclk_0_p  (qsfp1_mgt_refclk_0_p),
    .qsfp1_mgt_refclk_0_n  (qsfp1_mgt_refclk_0_n),

    // External ports for QSFP interface 1.
    .qsfp1_tx1_p(qsfp1_tx1_p),
    .qsfp1_tx1_n(qsfp1_tx1_n),
    .qsfp1_rx1_p(qsfp1_rx1_p),
    .qsfp1_rx1_n(qsfp1_rx1_n),
    .qsfp1_tx2_p(qsfp1_tx2_p),
    .qsfp1_tx2_n(qsfp1_tx2_n),
    .qsfp1_rx2_p(qsfp1_rx2_p),
    .qsfp1_rx2_n(qsfp1_rx2_n),
    .qsfp1_tx3_p(qsfp1_tx3_p),
    .qsfp1_tx3_n(qsfp1_tx3_n),
    .qsfp1_rx3_p(qsfp1_rx3_p),
    .qsfp1_rx3_n(qsfp1_rx3_n),
    .qsfp1_tx4_p(qsfp1_tx4_p),
    .qsfp1_tx4_n(qsfp1_tx4_n),
    .qsfp1_rx4_p(qsfp1_rx4_p),
    .qsfp1_rx4_n(qsfp1_rx4_n),

    // XGMII ports for QSFP interface 1.
    .qsfp1_xgmii_txd_1(xgmii_txd[0*64 +: 64]),
    .qsfp1_xgmii_txc_1(xgmii_txc[0* 8 +:  8]),
    .qsfp1_xgmii_rxd_1(xgmii_rxd[0*64 +: 64]),
    .qsfp1_xgmii_rxc_1(xgmii_rxc[0* 8 +:  8]),
    .qsfp1_xgmii_txd_2(xgmii_txd[1*64 +: 64]),
    .qsfp1_xgmii_txc_2(xgmii_txc[1* 8 +:  8]),
    .qsfp1_xgmii_rxd_2(xgmii_rxd[1*64 +: 64]),
    .qsfp1_xgmii_rxc_2(xgmii_rxc[1* 8 +:  8]),
    .qsfp1_xgmii_txd_3(xgmii_txd[2*64 +: 64]),
    .qsfp1_xgmii_txc_3(xgmii_txc[2* 8 +:  8]),
    .qsfp1_xgmii_rxd_3(xgmii_rxd[2*64 +: 64]),
    .qsfp1_xgmii_rxc_3(xgmii_rxc[2* 8 +:  8]),
    .qsfp1_xgmii_txd_4(xgmii_txd[3*64 +: 64]),
    .qsfp1_xgmii_txc_4(xgmii_txc[3* 8 +:  8]),
    .qsfp1_xgmii_rxd_4(xgmii_rxd[3*64 +: 64]),
    .qsfp1_xgmii_rxc_4(xgmii_rxc[3* 8 +:  8]));


  //----------------------------------------------------------------
  // ntps_interfaces.
  // All external/physical interfaces including pci-axi bridge
  // and NTP clocks.
  //----------------------------------------------------------------
  ntps_interfaces
  #(
    .NUM_PATHS(NUM_PATHS),
    .NUM_SLAVES(NUM_SLAVES)
    )
  ntps_interfaces_0
   (
    .refclk                (refclk_25),
    .refclk_rst            (refclk_25_rst),

    .clk156                (clk156),
    .areset_clk156         (areset_clk156),

    .internal_pps              (internal_pps),
    .beat_send             (beat_send),
    .beat_recv             (beat_recv),

    // AXI interface
    .axi_aresetn           (axi_aresetn),
    .axi_aclk              (axi_aclk),
    .m_axi_awaddr          (m_axi_awaddr),
    .m_axi_awprot          (m_axi_awprot),
    .m_axi_awvalid         (m_axi_awvalid),
    .m_axi_awready         (m_axi_awready),
    .m_axi_wdata           (m_axi_wdata),
    .m_axi_wstrb           (m_axi_wstrb),
    .m_axi_wvalid          (m_axi_wvalid),
    .m_axi_wready          (m_axi_wready),
    .m_axi_bresp           (m_axi_bresp),
    .m_axi_bvalid          (m_axi_bvalid),
    .m_axi_bready          (m_axi_bready),
    .m_axi_araddr          (m_axi_araddr),
    .m_axi_arprot          (m_axi_arprot),
    .m_axi_arvalid         (m_axi_arvalid),
    .m_axi_arready         (m_axi_arready),
    .m_axi_rdata           (m_axi_rdata),
    .m_axi_rresp           (m_axi_rresp),
    .m_axi_rvalid          (m_axi_rvalid),
    .m_axi_rready          (m_axi_rready),

    .user_link_up          (0),

    // 10Gbit ports
    .xgmii_txd             (xgmii_txd),
    .xgmii_txc             (xgmii_txc),
    .xgmii_rxd             (xgmii_rxd),
    .xgmii_rxc             (xgmii_rxc),
    .gen_config            (gen_config),
    .xphy_status           (xphy_status),

    // NTP clocks
    .PPS_INA               (pps_ina),
    .PPS_OUTA              (),
    .TEN_MHZ_INA           (ten_mhz_ina),
    .TEN_MHZ_OUTA          (),
    .NTP_LED1A             (),
    .NTP_LED2A             (),
    .PLL_LOCKEDA           (),

    .PPS_INB               (pps_inb),
    .PPS_OUTB              (),
    .TEN_MHZ_INB           (ten_mhz_inb),
    .TEN_MHZ_OUTB          (),
    .NTP_LED1B             (),
    .NTP_LED2B             (),
    .PLL_LOCKEDB           ());

endmodule

`default_nettype wire

//======================================================================
// EOF ntps_top.v
//======================================================================
