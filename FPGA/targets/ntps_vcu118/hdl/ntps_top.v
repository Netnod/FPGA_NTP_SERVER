//======================================================================
//
// ntps_top.v
// ----------
// Top level module for the NTP, NTS FPGA design.
//
//
// Author: Rolf Andersson (rolf@mechanicalmen.se)
//
// Copyright 2016-2021 Netnod Internet Exchange i Sverige AB
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

module ntps_top #(
		  parameter NUM_PCIE_LANES = 1
                  )
  (
   input wire                       reset,

   input  wire                      clk_125mhz_p,
   input  wire                      clk_125mhz_n,
   input wire 		            clk_300MHz_p,
   input wire 		            clk_300MHz_n,

   input wire 	                    pmbus_alert,
   inout wire 	                    pmbus_clk,
   inout wire 	                    pmbus_data,

   input wire 		            pcie_perstn_rst,
   input wire 		            pcie_clk_p, // pcie_mgt_clkp
   input wire 		            pcie_clk_n, // pcie_mgt_clkn
   output wire [NUM_PCIE_LANES-1:0] pci_exp_txp,
   output wire [NUM_PCIE_LANES-1:0] pci_exp_txn,
   input  wire [NUM_PCIE_LANES-1:0] pci_exp_rxp,
   input  wire [NUM_PCIE_LANES-1:0] pci_exp_rxn,

   input  wire                      qsfp1_mgt_refclk_0_p,
   input  wire                      qsfp1_mgt_refclk_0_n,

   output wire                      qsfp1_tx1_p,
   output wire                      qsfp1_tx1_n,
   input  wire                      qsfp1_rx1_p,
   input  wire                      qsfp1_rx1_n,
   output wire                      qsfp1_tx2_p,
   output wire                      qsfp1_tx2_n,
   input  wire                      qsfp1_rx2_p,
   input  wire                      qsfp1_rx2_n,
   output wire                      qsfp1_tx3_p,
   output wire                      qsfp1_tx3_n,
   input  wire                      qsfp1_rx3_p,
   input  wire                      qsfp1_rx3_n,
   output wire                      qsfp1_tx4_p,
   output wire                      qsfp1_tx4_n,
   input  wire                      qsfp1_rx4_p,
   input  wire                      qsfp1_rx4_n,
   output wire                      qsfp1_modsell,
   output wire                      qsfp1_resetl,
   input  wire                      qsfp1_modprsl,
   input  wire                      qsfp1_intl,
   output wire                      qsfp1_lpmode,

   input wire 	                    PPS_INA_P,
   input wire 	                    PPS_INA_N,
   output wire 	                    PPS_OUTA,
   input wire 	                    TEN_MHZ_INA_P,
   input wire 	                    TEN_MHZ_INA_N,
   output wire 	                    TEN_MHZ_OUTA,

   input wire 	                    PPS_INB_P,
   input wire 	                    PPS_INB_N,
   output wire 	                    PPS_OUTB,
   input wire 	                    TEN_MHZ_INB_P,
   input wire 	                    TEN_MHZ_INB_N,
   output wire 	                    TEN_MHZ_OUTB,

   output wire 		            led_0,
   output wire 		            led_1,
   output wire 		            led_2,
   output wire 		            led_3,
   output wire 		            led_4,
   output wire 		            led_5,
   output wire 		            led_6,
   output wire 		            led_7
   );


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  wire          pcie_perst;
  wire          areset_clk156;
  wire          clk156;
  wire          pcie_clk;
  wire          pcie_clk_gt;
  wire          clk_125mhz_ibufg;
  wire          clk_300MHz;
  wire          clk50;

  wire          i2c_clk;
  wire          i2c_data;
  wire          i2c_mux_rst_n;
  wire          si5324_rst_n;

  wire          HEAD2;
  wire          HEAD4;
  wire          HEAD6;
  wire          HEAD8;
  wire          HEAD10;
  wire          HEAD12;
  wire          HEAD14;
  wire          HEAD16;
  wire          HEAD18;
  wire          HEAD20;
  wire          HEAD22;
  wire          HEAD24;
  wire          HEAD26;
  wire          HEAD28;
  wire          HEAD30;
  wire          HEAD32;
  wire          HEAD34;
  wire          HEAD36;

  wire          user_link_up;

  wire [63 : 0] ntp_time;
  wire          PLL_locked_A;
  wire          ntp_clock_topA_LED1;
  wire          ntp_clock_topA_LED2;
  wire          PLL_locked_B;
  wire          ntp_clock_topB_LED1;
  wire          ntp_clock_topB_LED2;
  wire          test_PPS_OUT;
  wire          test_TEN_MHZ_OUT;

  // Port 0
  wire [63 : 0] xgmii_txd_0;
  wire [7  : 0] xgmii_txc_0;
  wire [63 : 0] xgmii_rxd_0;
  wire [7  : 0] xgmii_rxc_0;
  wire [1 : 0]  api_ext_command_0;
  wire [31 : 0] api_ext_address_0;
  wire [31 : 0] api_ext_write_data_0;
  wire [1 : 0]  api_ext_status_0;
  wire [31 : 0] api_ext_read_data_0;

  // Port 1
  wire [63 : 0] xgmii_txd_1;
  wire [7  : 0] xgmii_txc_1;
  wire [63 : 0] xgmii_rxd_1;
  wire [7  : 0] xgmii_rxc_1;
  wire [1 : 0]  api_ext_command_1;
  wire [31 : 0] api_ext_address_1;
  wire [31 : 0] api_ext_write_data_1;
  wire [1 : 0]  api_ext_status_1;
  wire [31 : 0] api_ext_read_data_1;

  // Port 2
  wire [63 : 0] xgmii_txd_2;
  wire [7  : 0] xgmii_txc_2;
  wire [63 : 0] xgmii_rxd_2;
  wire [7  : 0] xgmii_rxc_2;
  wire [1 : 0]  api_ext_command_2;
  wire [31 : 0] api_ext_address_2;
  wire [31 : 0] api_ext_write_data_2;
  wire [1 : 0]  api_ext_status_2;
  wire [31 : 0] api_ext_read_data_2;

  // Port 3
  wire [63 : 0] xgmii_txd_3;
  wire [7  : 0] xgmii_txc_3;
  wire [63 : 0] xgmii_rxd_3;
  wire [7  : 0] xgmii_rxc_3;
  wire [1 : 0]  api_ext_command_3;
  wire [31 : 0] api_ext_address_3;
  wire [31 : 0] api_ext_write_data_3;
  wire [1 : 0]  api_ext_status_3;
  wire [31 : 0] api_ext_read_data_3;

  // Port 4
  wire [63 : 0] xgmii_txd_4;
  wire [7  : 0] xgmii_txc_4;
  wire [63 : 0] xgmii_rxd_4;
  wire [7  : 0] xgmii_rxc_4;
  wire [1 : 0]  api_ext_command_4;
  wire [31 : 0] api_ext_address_4;
  wire [31 : 0] api_ext_write_data_4;
  wire [1 : 0]  api_ext_status_4;
  wire [31 : 0] api_ext_read_data_4;


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
  assign led_0  = PLL_locked_A;
  assign led_1  = ntp_clock_topA_LED1;
  assign led_2  = ntp_clock_topA_LED2;
  assign led_3  = 1'b0;
  assign led_4  = PLL_locked_B;
  assign led_5  = ntp_clock_topB_LED1;
  assign led_6  = ntp_clock_topB_LED2;
  assign led_7  = user_link_up;


  //----------------------------------------------------------------
  // Clock tree input buffers.
  //----------------------------------------------------------------
  // PCIe clock from external source.
  IBUFDS_GTE4 refclk_ibuf(
                          .O(pcie_clk_gt),
                          .ODIV2(pcie_clk),
                          .I(pcie_clk_p),
                          .CEB(1'b0),
                          .IB(pcie_clk_n)
                         );

  // 125 MHz System clock from external source.
  IBUFGDS #(
            .DIFF_TERM("FALSE"),
            .IBUF_LOW_PWR("FALSE")
           )
  clk_125mhz_ibufg_inst (
                         .O(clk_125mhz_ibufg),
                         .I(clk_125mhz_p),
                         .IB(clk_125mhz_n)
                        );

  // 300 MHz System clock from external source.
  IBUFDS clk_300MHz_ds_buf(
                           .I(clk_300MHz_p),
                           .IB(clk_300MHz_n),
                            .O(clk_300MHz)
                           );

  // Input buffers for NTP clock A
  wire ten_mhz_ina;
  IBUFDS ten_mhz_ina_ds_buf
    (.I(TEN_MHZ_INA_P),
     .IB(TEN_MHZ_INA_N),
     .O(ten_mhz_ina));

  wire pps_ina;
  IBUFDS pps_ina_ds_buf
    (.I(PPS_INA_P),
     .IB(PPS_INA_N),
     .O(pps_ina));

  // Input buffers for NTP clock B
  wire ten_mhz_inb;
  IBUFDS ten_mhz_inb_ds_buf
    (.I(TEN_MHZ_INB_P),
     .IB(TEN_MHZ_INB_N),
     .O(ten_mhz_inb));

  wire pps_inb;
  IBUFDS pps_inb_ds_buf
    (.I(PPS_INB_P),
     .IB(PPS_INB_N),
     .O(pps_inb));

  //----------------------------------------------------------------
  // System reset
  //----------------------------------------------------------------
  IBUF pcie_perstn_ibuf(.O(pcie_perst), .I(pcie_perstn_rst));


  //----------------------------------------------------------------
  // ntps_clocks
  // clock generators, clock control.
  //----------------------------------------------------------------
  ntps_clocks clocks(
                     .reset         (reset),
                     .sys_clk       (clk_300MHz),
                     .clk50         (clk50),
                     .i2c_clk       (i2c_clk),
                     .i2c_data      (i2c_data),
                     .i2c_mux_rst_n (i2c_mux_rst_n),
                     .si5324_rst_n  (si5324_rst_n),
                     .PPS_OUT       (test_PPS_OUT),
                     .TEN_MHZ_OUT   (test_TEN_MHZ_OUT)
                     );


  //----------------------------------------------------------------
  // ntps_interfaces.
  // All external/physical interfaces including pci-axi bridge
  // and NTP clocks.
  //----------------------------------------------------------------
  ntps_interfaces #(
		    .NUM_PCIE_LANES(NUM_PCIE_LANES)
                   )
 ntps_interfaces_0 (
     .reset                 (reset),

     .clk50                 (clk50),
     .clk156                (clk156),
     .areset_clk156         (areset_clk156),
     .clk_125mhz            (clk_125mhz_ibufg),

     .pcie_perst            (pcie_perst),
     .pcie_clk              (pcie_clk),
     .pcie_clk_gt           (pcie_clk_gt),
     .pci_exp_rxn           (pci_exp_rxn),
     .pci_exp_rxp           (pci_exp_rxp),
     .pci_exp_txn           (pci_exp_txn),
     .pci_exp_txp           (pci_exp_txp),

     .user_link_up          (user_link_up),

     .pmbus_alert           (pmbus_alert),
     .pmbus_clk             (pmbus_clk),
     .pmbus_data            (pmbus_data),

     .qsfp1_mgt_refclk_0_p  (qsfp1_mgt_refclk_0_p),
     .qsfp1_mgt_refclk_0_n  (qsfp1_mgt_refclk_0_n),

     .qsfp1_tx1_p           (qsfp1_tx1_p),
     .qsfp1_tx1_n           (qsfp1_tx1_n),
     .qsfp1_rx1_p           (qsfp1_rx1_p),
     .qsfp1_rx1_n           (qsfp1_rx1_n),
     .qsfp1_tx2_p           (qsfp1_tx2_p),
     .qsfp1_tx2_n           (qsfp1_tx2_n),
     .qsfp1_rx2_p           (qsfp1_rx2_p),
     .qsfp1_rx2_n           (qsfp1_rx2_n),
     .qsfp1_tx3_p           (qsfp1_tx3_p),
     .qsfp1_tx3_n           (qsfp1_tx3_n),
     .qsfp1_rx3_p           (qsfp1_rx3_p),
     .qsfp1_rx3_n           (qsfp1_rx3_n),
     .qsfp1_tx4_p           (qsfp1_tx4_p),
     .qsfp1_tx4_n           (qsfp1_tx4_n),
     .qsfp1_rx4_p           (qsfp1_rx4_p),
     .qsfp1_rx4_n           (qsfp1_rx4_n),
     .qsfp1_modsell         (qsfp1_modsell),
     .qsfp1_resetl          (qsfp1_resetl),
     .qsfp1_modprsl         (qsfp1_modprsl),
     .qsfp1_intl            (qsfp1_intl),
     .qsfp1_lpmode          (qsfp1_lpmode),

     // Port 0.
     .xgmii_txd_0           (xgmii_txd_0),
     .xgmii_txc_0           (xgmii_txc_0),
     .xgmii_rxd_0           (xgmii_rxd_0),
     .xgmii_rxc_0           (xgmii_rxc_0),
     .api_ext_command_0     (api_ext_command_0),
     .api_ext_address_0     (api_ext_address_0),
     .api_ext_write_data_0  (api_ext_write_data_0),
     .api_ext_status_0      (api_ext_status_0),
     .api_ext_read_data_0   (api_ext_read_data_0),

     // Port 1.
     .xgmii_txd_1           (xgmii_txd_1),
     .xgmii_txc_1           (xgmii_txc_1),
     .xgmii_rxd_1           (xgmii_rxd_1),
     .xgmii_rxc_1           (xgmii_rxc_1),
     .api_ext_command_1     (api_ext_command_1),
     .api_ext_address_1     (api_ext_address_1),
     .api_ext_write_data_1  (api_ext_write_data_1),
     .api_ext_status_1      (api_ext_status_1),
     .api_ext_read_data_1   (api_ext_read_data_1),

     // Port 2.
     .xgmii_txd_2           (xgmii_txd_2),
     .xgmii_txc_2           (xgmii_txc_2),
     .xgmii_rxd_2           (xgmii_rxd_2),
     .xgmii_rxc_2           (xgmii_rxc_2),
     .api_ext_command_2     (api_ext_command_2),
     .api_ext_address_2     (api_ext_address_2),
     .api_ext_write_data_2  (api_ext_write_data_2),
     .api_ext_status_2      (api_ext_status_2),
     .api_ext_read_data_2   (api_ext_read_data_2),

     // Port 3.
     .xgmii_txd_3           (xgmii_txd_3),
     .xgmii_txc_3           (xgmii_txc_3),
     .xgmii_rxd_3           (xgmii_rxd_3),
     .xgmii_rxc_3           (xgmii_rxc_3),
     .api_ext_command_3     (api_ext_command_3),
     .api_ext_address_3     (api_ext_address_3),
     .api_ext_write_data_3  (api_ext_write_data_3),
     .api_ext_status_3      (api_ext_status_3),
     .api_ext_read_data_3   (api_ext_read_data_3),

     // Port 4.
     .xgmii_txd_4           (xgmii_txd_4),
     .xgmii_txc_4           (xgmii_txc_4),
     .xgmii_rxd_4           (xgmii_rxd_4),
     .xgmii_rxc_4           (xgmii_rxc_4),
     .api_ext_command_4     (api_ext_command_4),
     .api_ext_address_4     (api_ext_address_4),
     .api_ext_write_data_4  (api_ext_write_data_4),
     .api_ext_status_4      (api_ext_status_4),
     .api_ext_read_data_4   (api_ext_read_data_4),

     .ntp_time              (ntp_time),

     // NTP clocks.
     .PPS_INA               (pps_ina),
     .PPS_OUTA              (PPS_OUTA),
     .TEN_MHZ_INA           (ten_mhz_ina),
     .TEN_MHZ_OUTA          (TEN_MHZ_OUTA),
     .NTP_LED1A             (ntp_clock_topA_LED1),
     .NTP_LED2A             (ntp_clock_topA_LED2),
     .PLL_LOCKEDA           (PLL_locked_A),

     .PPS_INB               (pps_inb),
     .PPS_OUTB              (PPS_OUTB),
     .TEN_MHZ_INB           (ten_mhz_inb),
     .TEN_MHZ_OUTB          (TEN_MHZ_OUTB),
     .NTP_LED1B             (ntp_clock_topB_LED1),
     .NTP_LED2B             (ntp_clock_topB_LED2),
     .PLL_LOCKEDB           (PLL_locked_B)
    );


  //----------------------------------------------------------------
  // network_path_shared_0.
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(40),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(1)
                        )
  network_path_shared_0 (
     .clk156             (clk156),
     .areset_clk156      (areset_clk156),
     .sys_reset          (reset),

     .xgmii_rxd          (xgmii_rxd_0),
     .xgmii_rxc          (xgmii_rxc_0),
     .xgmii_txd          (xgmii_txd_0),
     .xgmii_txc          (xgmii_txc_0),

     .ntp_time           (ntp_time),

     .api_ext_command    (api_ext_command_0),
     .api_ext_address    (api_ext_address_0),
     .api_ext_write_data (api_ext_write_data_0),
     .api_ext_status     (api_ext_status_0),
     .api_ext_read_data  (api_ext_read_data_0)
     );

  assign xgmii_txd_1 = 64'h0707070707070707;
  assign xgmii_txc_1 = 8'hff;
  assign xgmii_txd_2 = 64'h0707070707070707;
  assign xgmii_txc_2 = 8'hff;
  assign xgmii_txd_3 = 64'h0707070707070707;
  assign xgmii_txc_3 = 8'hff;
  assign xgmii_txd_4 = 64'h0707070707070707;
  assign xgmii_txc_4 = 8'hff;

/*
  //----------------------------------------------------------------
  // network_path_shared_1
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(2),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(0)
                        )
  network_path_shared_1 (
     .clk156             (clk156),
     .areset_clk156      (areset_clk156),
     .sys_reset          (reset),

     .xgmii_rxd          (xgmii_rxd_1),
     .xgmii_rxc          (xgmii_rxc_1),
     .xgmii_txd          (xgmii_txd_1),
     .xgmii_txc          (xgmii_txc_1),

     .ntp_time           (ntp_time),

     .api_ext_command    (api_ext_command_1),
     .api_ext_address    (api_ext_address_1),
     .api_ext_write_data (api_ext_write_data_1),
     .api_ext_status     (api_ext_status_1),
     .api_ext_read_data  (api_ext_read_data_1)
    );


  //----------------------------------------------------------------
  // network_path_shared_2
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(2),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(0)
                        )
  network_path_shared_2 (
     .clk156             (clk156),
     .areset_clk156      (areset_clk156),
     .sys_reset          (reset),

     .xgmii_rxd          (xgmii_rxd_2),
     .xgmii_rxc          (xgmii_rxc_2),
     .xgmii_txd          (xgmii_txd_2),
     .xgmii_txc          (xgmii_txc_2),

     .ntp_time           (ntp_time),

     .api_ext_command    (api_ext_command_2),
     .api_ext_address    (api_ext_address_2),
     .api_ext_write_data (api_ext_write_data_2),
     .api_ext_status     (api_ext_status_2),
     .api_ext_read_data  (api_ext_read_data_2)
    );


  //----------------------------------------------------------------
  // network_path_shared_3
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(2),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(0)
                        )
  network_path_shared_3 (
     .clk156             (clk156),
     .areset_clk156      (areset_clk156),
     .sys_reset          (reset),

     .xgmii_rxd          (xgmii_rxd_3),
     .xgmii_rxc          (xgmii_rxc_3),
     .xgmii_txd          (xgmii_txd_3),
     .xgmii_txc          (xgmii_txc_3),

     .ntp_time           (ntp_time),

     .api_ext_command    (api_ext_command_3),
     .api_ext_address    (api_ext_address_3),
     .api_ext_write_data (api_ext_write_data_3),
     .api_ext_status     (api_ext_status_3),
     .api_ext_read_data  (api_ext_read_data_3)
    );


  //----------------------------------------------------------------
  // network_path_shared_4
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(2),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(0)
                        )
  network_path_shared_4 (
     .clk156             (clk156),
     .areset_clk156      (areset_clk156),
     .sys_reset          (reset),

     .xgmii_rxd          (xgmii_rxd_4),
     .xgmii_rxc          (xgmii_rxc_4),
     .xgmii_txd          (xgmii_txd_4),
     .xgmii_txc          (xgmii_txc_4),

     .ntp_time           (ntp_time),

     .api_ext_command    (api_ext_command_4),
     .api_ext_address    (api_ext_address_4),
     .api_ext_write_data (api_ext_write_data_4),
     .api_ext_status     (api_ext_status_4),
     .api_ext_read_data  (api_ext_read_data_4)
    );
*/

endmodule // ntps_top

`default_nettype wire

//======================================================================
// EOF ntps_top.v
//======================================================================
