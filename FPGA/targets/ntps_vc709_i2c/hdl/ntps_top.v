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

module ntps_top (
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
  wire clk50;
  wire axi_aclk;       // 125MHz AXI clock derived from PCIe clock

  // Wires for NTP clocks.
  wire PPS_INA;
  wire PPS_INB;


  // Wires for pps_test.
  wire test_PPS_OUT;
  wire test_TEN_MHZ_OUT;

  // Wires for PCI-AXI:
  wire             user_link_up;

  // Wires for NTP clocks.
  wire [63:0]  ntp_time;
  wire         PLL_locked_A;
  wire         ntp_clock_topA_LED1;
  wire         ntp_clock_topA_LED2;
  wire         PLL_locked_B;
  wire         ntp_clock_topB_LED1;
  wire         ntp_clock_topB_LED2;


  // Shared network paths signals
  wire           areset_clk156;
  wire           clk156;

  // Port 0
  wire [63  : 0] xgmii_txd_0;
  wire [7   : 0] xgmii_txc_0;
  wire [63 : 0]  xgmii_rxd_0;
  wire [7  : 0]  xgmii_rxc_0;
  wire [31:0]    gen_config_0;
  wire [31:0]    ntp_config_0;
  wire [31:0]    ntp_root_delay_0;
  wire [31:0]    ntp_root_disp_0;
  wire [31:0]    ntp_ref_id_0;
  wire [63:0]    ntp_ref_ts_0;
  wire [31:0]    ntp_rx_ofs_0;
  wire [31:0]    ntp_tx_ofs_0;
  wire [31:0]    pp_status_0;
  wire 	         ntp_sync_ok_0;
  wire [1 : 0]   api_ext_command_0;
  wire [31 : 0]  api_ext_address_0;
  wire [31 : 0]  api_ext_write_data_0;
  wire [1 : 0]   api_ext_status_0;
  wire [31 : 0]  api_ext_read_data_0;


  // Port 1
  wire [63  : 0] xgmii_txd_1;
  wire [7   : 0] xgmii_txc_1;
  wire [63 : 0]  xgmii_rxd_1;
  wire [7  : 0]  xgmii_rxc_1;
  wire [31:0]    gen_config_1;
  wire [31:0]    ntp_config_1;
  wire [31:0]    ntp_root_delay_1;
  wire [31:0]    ntp_root_disp_1;
  wire [31:0]    ntp_ref_id_1;
  wire [63:0]    ntp_ref_ts_1;
  wire [31:0]    ntp_rx_ofs_1;
  wire [31:0]    ntp_tx_ofs_1;
  wire [31:0]    pp_status_1;
  wire 	         ntp_sync_ok_1;
  wire [1 : 0]   api_ext_command_1;
  wire [31 : 0]  api_ext_address_1;
  wire [31 : 0]  api_ext_write_data_1;
  wire [1 : 0]   api_ext_status_1;
  wire [31 : 0]  api_ext_read_data_1;


  // Port 2
  wire [63  : 0] xgmii_txd_2;
  wire [7   : 0] xgmii_txc_2;
  wire [63 : 0]  xgmii_rxd_2;
  wire [7  : 0]  xgmii_rxc_2;
  wire [31:0]    gen_config_2;
  wire [31:0]    ntp_config_2;
  wire [31:0]    ntp_root_delay_2;
  wire [31:0]    ntp_root_disp_2;
  wire [31:0]    ntp_ref_id_2;
  wire [63:0]    ntp_ref_ts_2;
  wire [31:0]    ntp_rx_ofs_2;
  wire [31:0]    ntp_tx_ofs_2;
  wire [31:0]    pp_status_2;
  wire 	         ntp_sync_ok_2;
  wire [1 : 0]   api_ext_command_2;
  wire [31 : 0]  api_ext_address_2;
  wire [31 : 0]  api_ext_write_data_2;
  wire [1 : 0]   api_ext_status_2;
  wire [31 : 0]  api_ext_read_data_2;


  // Port 3
  wire [63  : 0] xgmii_txd_3;
  wire [7   : 0] xgmii_txc_3;
  wire [63 : 0]  xgmii_rxd_3;
  wire [7  : 0]  xgmii_rxc_3;
  wire [31:0]    gen_config_3;
  wire [31:0]    ntp_config_3;
  wire [31:0]    ntp_root_delay_3;
  wire [31:0]    ntp_root_disp_3;
  wire [31:0]    ntp_ref_id_3;
  wire [63:0]    ntp_ref_ts_3;
  wire [31:0]    ntp_rx_ofs_3;
  wire [31:0]    ntp_tx_ofs_3;
  wire [31:0]    pp_status_3;
  wire 	         ntp_sync_ok_3;
  wire [1 : 0]   api_ext_command_3;
  wire [31 : 0]  api_ext_address_3;
  wire [31 : 0]  api_ext_write_data_3;
  wire [1 : 0]   api_ext_status_3;
  wire [31 : 0]  api_ext_read_data_3;


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
  // Clock tree input buffers.
  // These must be in the top level module to make Vivado happy.
  //----------------------------------------------------------------
  // pcie_clk clock tree input buffer.
  ntps_top_util_ds_buf_0_0 util_ds_buf_0 (
     .IBUF_DS_N     (PCIE_CLK_N),
     .IBUF_DS_P     (PCIE_CLK_P),
     .IBUF_DS_ODIV2 (),
     .IBUF_OUT      (pcie_clk)
  );


  // 200 MHz System clock from external source.
  // sys_clk clock tree input buffer.
  ntps_top_util_ds_buf_0_3 util_ds_buf_1 (
     .IBUF_DS_N  (SYS_CLK_N),
     .IBUF_DS_P  (SYS_CLK_P),
     .IBUF_OUT   (sys_clk)
  );


  // Clock tree input buffer for NTP clock A.
  ntp_clock_ds_buf ds_buf_0 (
    .IBUF_DS_N	(PPS_INA_N),
    .IBUF_DS_P	(PPS_INA_P),
    .IBUF_OUT	(PPS_INA)
  );


  // Clock tree insput buffer for NTP clock B.
  ntp_clock_ds_buf ds_buf_1 (
    .IBUF_DS_N	(PPS_INB_N),
    .IBUF_DS_P	(PPS_INB_P),
    .IBUF_OUT	(PPS_INB)
  );


  //----------------------------------------------------------------
  // ntps_clocks
  // clock generators, clock control.
  //----------------------------------------------------------------
  ntps_clocks clocks(
                     .reset         (reset),
                     .sys_clk       (sys_clk),
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
  ntps_interfaces ntps_interfaces_0 (
     .reset                 (reset),

     .pcie_perst            (pcie_perst),
     .pcie_clk              (pcie_clk),
     .pci_exp_rxn           (pci_exp_rxn),
     .pci_exp_rxp           (pci_exp_rxp),
     .pci_exp_txn           (pci_exp_txn),
     .pci_exp_txp           (pci_exp_txp),

     .user_link_up          (user_link_up),

     .clk50                 (clk50),
     .pmbus_alert           (pmbus_alert),
     .pmbus_clk             (pmbus_clk),
     .pmbus_data            (pmbus_data),

     .clk156                (clk156),
     .areset_clk156         (areset_clk156),

     .xphy_refclk_n         (xphy_refclk_n),
     .xphy_refclk_p         (xphy_refclk_p),

     // Port 0.
     .sfp_module_detect_n_0 (sfp_module_detect0_n),
     .sfp_signal_lost_0     (sfp_signal_lost0),
     .sfp_tx_fault_0        (sfp_tx_fault0),
     .sfp_tx_disable_0      (sfp_tx_disable0),
     .xphy_rxp_0            (xphy0_rxp),
     .xphy_rxn_0            (xphy0_rxn),
     .xphy_txp_0            (xphy0_txp),
     .xphy_txn_0            (xphy0_txn),
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
     .sfp_module_detect_n_1 (sfp_module_detect1_n),
     .sfp_signal_lost_1     (sfp_signal_lost1),
     .sfp_tx_fault_1        (sfp_tx_fault1),
     .sfp_tx_disable_1      (sfp_tx_disable1),
     .xphy_rxp_1            (xphy1_rxp),
     .xphy_rxn_1            (xphy1_rxn),
     .xphy_txp_1            (xphy1_txp),
     .xphy_txn_1            (xphy1_txn),
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
     .sfp_module_detect_n_2 (sfp_module_detect2_n),
     .sfp_signal_lost_2     (sfp_signal_lost2),
     .sfp_tx_fault_2        (sfp_tx_fault2),
     .sfp_tx_disable_2      (sfp_tx_disable2),
     .xphy_rxp_2            (xphy2_rxp),
     .xphy_rxn_2            (xphy2_rxn),
     .xphy_txp_2            (xphy2_txp),
     .xphy_txn_2            (xphy2_txn),
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
     .sfp_module_detect_n_3 (sfp_module_detect3_n),
     .sfp_signal_lost_3     (sfp_signal_lost3),
     .sfp_tx_fault_3        (sfp_tx_fault3),
     .sfp_tx_disable_3      (sfp_tx_disable3),
     .xphy_rxp_3            (xphy3_rxp),
     .xphy_rxn_3            (xphy3_rxn),
     .xphy_txp_3            (xphy3_txp),
     .xphy_txn_3            (xphy3_txn),
     .xgmii_txd_3           (xgmii_txd_3),
     .xgmii_txc_3           (xgmii_txc_3),
     .xgmii_rxd_3           (xgmii_rxd_3),
     .xgmii_rxc_3           (xgmii_rxc_3),
     .api_ext_command_3     (api_ext_command_3),
     .api_ext_address_3     (api_ext_address_3),
     .api_ext_write_data_3  (api_ext_write_data_3),
     .api_ext_status_3      (api_ext_status_3),
     .api_ext_read_data_3   (api_ext_read_data_3),

     .ntp_time              (ntp_time),

     .PPS_INA               (PPS_INA),
     .PPS_OUTA              (PPS_OUTA),
     .TEN_MHZ_INA_N         (TEN_MHZ_INA_clk_n),
     .TEN_MHZ_INA_P         (TEN_MHZ_INA_clk_p),
     .TEN_MHZ_OUTA          (TEN_MHZ_OUTA),
     .NTP_LED1A             (ntp_clock_topA_LED1),
     .NTP_LED2A             (ntp_clock_topA_LED2),
     .PLL_LOCKEDA           (PLL_locked_A),

     .PPS_INB               (PPS_INB),
     .PPS_OUTB              (PPS_OUTB),
     .TEN_MHZ_INB_N         (TEN_MHZ_INB_clk_n),
     .TEN_MHZ_INB_P         (TEN_MHZ_INB_clk_p),
     .TEN_MHZ_OUTB          (TEN_MHZ_OUTB),
     .NTP_LED1B             (ntp_clock_topB_LED1),
     .NTP_LED2B             (ntp_clock_topB_LED2),
     .PLL_LOCKEDB           (PLL_locked_B)
    );


  //----------------------------------------------------------------
  // network_path_shared_0.
  //----------------------------------------------------------------
  network_path_shared #(
                        .ENGINES_NTS(8),
                        .ENGINES_MINI(2),
                        .INSTANTIATE_ROSC(1)
                        )
  network_path_shared_0 (
    .api_ext_command    (api_ext_command_0),
    .api_ext_address    (api_ext_address_0),
    .api_ext_write_data (api_ext_write_data_0),
    .api_ext_status     (api_ext_status_0),
    .api_ext_read_data  (api_ext_read_data_0),

    .ntp_time           (ntp_time),

    .xgmii_rxd          (xgmii_rxd_0),
    .xgmii_rxc          (xgmii_rxc_0),
    .xgmii_txd          (xgmii_txd_0),
    .xgmii_txc          (xgmii_txc_0),

    .clk156             (clk156),
    .areset_clk156      (areset_clk156),
    .sys_reset          (reset)
  );


  assign xgmii_txd_1 = 64'h0707070707070707;
  assign xgmii_txc_1 = 8'hff;
  assign xgmii_txd_2 = 64'h0707070707070707;
  assign xgmii_txc_2 = 8'hff;
  assign xgmii_txd_3 = 64'h0707070707070707;
  assign xgmii_txc_3 = 8'hff;

/*
  //----------------------------------------------------------------
  // network_path_1
  //----------------------------------------------------------------
  network_path network_path_1 (
    .api_ext_command    (api_ext_command_1),
    .api_ext_address    (api_ext_address_1),
    .api_ext_write_data (api_ext_write_data_1),
    .api_ext_status     (api_ext_status_1),
    .api_ext_read_data  (api_ext_read_data_1),

    .ntp_time           (ntp_time),

    .xgmii_rxd          (xgmii_rxd_1),
    .xgmii_rxc          (xgmii_rxc_1),
    .xgmii_txd          (xgmii_txd_1),
    .xgmii_txc          (xgmii_txc_1),

    .clk156             (clk156),
    .areset_clk156      (areset_clk156),
    .sys_reset          (reset)
  );


  //----------------------------------------------------------------
  // network_path_2
  //----------------------------------------------------------------
  network_path network_path_2 (
    .api_ext_command    (api_ext_command_2),
    .api_ext_address    (api_ext_address_2),
    .api_ext_write_data (api_ext_write_data_2),
    .api_ext_status     (api_ext_status_2),
    .api_ext_read_data  (api_ext_read_data_2),

    .ntp_time           (ntp_time),

    .xgmii_rxd          (xgmii_rxd_2),
    .xgmii_rxc          (xgmii_rxc_2),
    .xgmii_txd          (xgmii_txd_2),
    .xgmii_txc          (xgmii_txc_2),

    .clk156             (clk156),
    .areset_clk156      (areset_clk156),
    .sys_reset          (reset)
  );


  //----------------------------------------------------------------
  // network_path_3
  //----------------------------------------------------------------
  network_path network_path_3 (
    .api_ext_command    (api_ext_command_3),
    .api_ext_address    (api_ext_address_3),
    .api_ext_write_data (api_ext_write_data_3),
    .api_ext_status     (api_ext_status_3),
    .api_ext_read_data  (api_ext_read_data_3),

    .ntp_time           (ntp_time),

    .xgmii_rxd          (xgmii_rxd_3),
    .xgmii_rxc          (xgmii_rxc_3),
    .xgmii_txd          (xgmii_txd_3),
    .xgmii_txc          (xgmii_txc_3),

    .clk156             (clk156),
    .areset_clk156      (areset_clk156),
    .sys_reset          (reset)
  );

*/
endmodule // ntps_top

`default_nettype wire

//======================================================================
// EOF ntps_top.v
//======================================================================
