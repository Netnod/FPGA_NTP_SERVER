//======================================================================
//
// network_path.v
// --------------
// Module Name: network_path
// Description: Wrap complete network path from including
// actual NTP server.
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

module network_path #(
  parameter integer C_S_AXI_DATA_WIDTH = 32,
  parameter integer C_S_AXI_ADDR_WIDTH = 9
)(
  /// AXI Lite register interface
  input wire 	        s_axi_clk,
  input wire 	        s_axi_aresetn,

  output wire 	        s_axi_awready,
  input wire [31:0]     s_axi_awaddr,
  input wire 	        s_axi_awvalid,

  output wire 	        s_axi_wready,
  input wire [31:0]     s_axi_wdata,
  input wire [3:0]      s_axi_wstrb,
  input wire 	        s_axi_wvalid,

  output wire 	        s_axi_bvalid,
  output wire [1:0]     s_axi_bresp,
  input wire 	        s_axi_bready,

  output wire 	        s_axi_arready,
  input wire 	        s_axi_arvalid,
  input wire [31:0]     s_axi_araddr,

  output wire [31:0]    s_axi_rdata,
  output wire [1:0]     s_axi_rresp,
  output wire 	        s_axi_rvalid,
  input wire 	        s_axi_rready,

  input wire [63:0]     ntp_time_a,
  input wire 	        ntp_time_upd_a,
  input wire [63:0]     ntp_time_b,
  input wire 	        ntp_time_upd_b,
  input wire 	        ntp_sync_ok_a,
  input wire 	        ntp_sync_ok_b,

  output wire 	        key_req,
  output wire [31:0]    key_id,
  input wire 	        key_ack,
  input wire [255:0]    key,

  output wire [2 : 0]   xphy_config,
  input wire  [4 : 0]   xphy_status,
  input wire [63 : 0]   xgmii_rxd,
  input wire [7  : 0]   xgmii_rxc,
  output wire [63  : 0] xgmii_txd,
  output wire [7   : 0] xgmii_txc,

  input wire 	        clk156,
  input wire 	        areset_clk156,
  input wire 	        sys_reset
);

  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  wire [31:0]  gen_config;
  wire [31:0]  ntp_config;
  wire [31:0]  ntp_root_delay;
  wire [31:0]  ntp_root_disp;
  wire [31:0]  ntp_ref_id;
  wire [63:0]  ntp_ref_ts;
  wire [31:0]  ntp_rx_ofs;
  wire [31:0]  ntp_tx_ofs;
  wire [31:0]  pp_status;

  wire         ntp_sync_ok;
  wire [63:0]  ntp_time;

  wire [1 : 0]  api_ext_command;
  wire [31 : 0] api_ext_address;
  wire [31 : 0] api_ext_write_data;
  wire [1 : 0]  api_ext_status;
  wire [31 : 0] api_ext_read_data;
  wire          pp_api_cs;
  wire          pp_api_we;
  wire [11 : 0] pp_api_address;
  wire [31 : 0] pp_api_write_data;
  wire [31 : 0] pp_api_read_data;
  wire          pp_api_ready;


  //----------------------------------------------------------------
  // Assignments.
  //----------------------------------------------------------------
  assign ntp_sync_ok = (ntp_sync_ok_a & ~gen_config[24] ) |
                       (ntp_sync_ok_b & gen_config[24]);

  assign xphy_config = gen_config[31 : 29];


  //----------------------------------------------------------------
  // network_path_axi_slave_inst
  //----------------------------------------------------------------
  // Instantiation of Axi Bus Interface S00_AXI
  network_path_axi_slave #(
    .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH)
  ) network_path_axi_slave_inst (
    .pp_clk             (clk156),
    .gen_config         (gen_config),
    .ntp_config         (ntp_config),
    .ntp_root_delay     (ntp_root_delay),
    .ntp_root_disp      (ntp_root_disp),
    .ntp_ref_id         (ntp_ref_id),
    .ntp_ref_ts         (ntp_ref_ts),
    .ntp_rx_ofs         (ntp_rx_ofs),
    .ntp_tx_ofs         (ntp_tx_ofs),
    .pp_status          (pp_status),
    .xphy_status        ({3'h0, xphy_status}),
    .ntp_sync_ok        (ntp_sync_ok),

    .api_ext_command    (api_ext_command),
    .api_ext_address    (api_ext_address),
    .api_ext_write_data (api_ext_write_data),
    .api_ext_status     (api_ext_status),
    .api_ext_read_data  (api_ext_read_data),

    .S_AXI_ACLK         (s_axi_clk),
    .S_AXI_ARESETN      (s_axi_aresetn),
    .S_AXI_AWADDR       (s_axi_awaddr),
    .S_AXI_AWVALID      (s_axi_awvalid),
    .S_AXI_AWREADY      (s_axi_awready),
    .S_AXI_WDATA        (s_axi_wdata),
    .S_AXI_WSTRB        (s_axi_wstrb),
    .S_AXI_WVALID       (s_axi_wvalid),
    .S_AXI_WREADY       (s_axi_wready),
    .S_AXI_BRESP        (s_axi_bresp),
    .S_AXI_BVALID       (s_axi_bvalid),
    .S_AXI_BREADY       (s_axi_bready),
    .S_AXI_ARADDR       (s_axi_araddr),
    .S_AXI_ARVALID      (s_axi_arvalid),
    .S_AXI_ARREADY      (s_axi_arready),
    .S_AXI_RDATA        (s_axi_rdata),
    .S_AXI_RRESP        (s_axi_rresp),
    .S_AXI_RVALID       (s_axi_rvalid),
    .S_AXI_RREADY       (s_axi_rready)
  );


  //----------------------------------------------------------------
  //----------------------------------------------------------------
  // Time select and clock domain crossing
  time_sel_sync tss(
    .areset         (sys_reset),
    .clk            (clk156),
    .sel            (gen_config[24]),
    .ntp_time_a     (ntp_time_a),
    .ntp_time_upd_a (ntp_time_upd_a),
    .ntp_time_b     (ntp_time_b),
    .ntp_time_upd_b (ntp_time_upd_b),
    .ntp_time       (ntp_time)
  );


  //----------------------------------------------------------------
  // Packet processing including MAC
  //----------------------------------------------------------------
  pp_mac_top pp(
    .areset         (sys_reset),
    .clk            (clk156),

    .api_cs         (pp_api_cs),
    .api_we         (pp_api_we),
    .api_address    (pp_api_address),
    .api_write_data (pp_api_write_data),
    .api_read_data  (pp_api_read_data),
    .api_ready      (pp_api_ready),
    .gen_config     (gen_config[23:0]),
    .ntp_config     (ntp_config),
    .ntp_root_delay (ntp_root_delay),
    .ntp_root_disp  (ntp_root_disp),
    .ntp_ref_id     (ntp_ref_id),
    .ntp_ref_ts     (ntp_ref_ts),
    .ntp_rx_ofs     (ntp_rx_ofs),
    .ntp_tx_ofs     (ntp_tx_ofs),
    .ntp_time       (ntp_time),
    .key_req        (key_req),
    .key_id         (key_id),
    .key_ack        (key_ack),
    .key            (key),
    .xgmii_rxd      (xgmii_rxd),
    .xgmii_rxc      (xgmii_rxc),
    .xgmii_txd      (xgmii_txd),
    .xgmii_txc      (xgmii_txc),
    .status         (pp_status)
  );


  //----------------------------------------------------------------
  // api_extension0
  //----------------------------------------------------------------
   api_extension api_extension0 (
    .clk(clk156),
    .reset(areset_clk156),

    // I/O port.
    .command(api_ext_command),
    .status(api_ext_status),
    .address(api_ext_address),
    .write_data(api_ext_write_data),
    .read_data(api_ext_read_data),

    // Access ports to extensions.
    .nts_cs(),
    .nts_we(),
    .nts_address(),
    .nts_write_data(),
    .nts_read_data(32'haaaa5555),
    .nts_ready(1'h1),

    .pp_cs(pp_api_cs),
    .pp_we(pp_api_we),
    .pp_address(pp_api_address),
    .pp_write_data(pp_api_write_data),
    .pp_read_data(pp_api_read_data),
    .pp_ready(pp_api_ready),

    .dp_cs(),
    .dp_we(),
    .dp_address(),
    .dp_write_data(),
    .dp_read_data(32'hbeefbeef),
    .dp_ready(1'h1),

    .rosc_cs(),
    .rosc_we(),
    .rosc_address(),
    .rosc_write_data(),
    .rosc_read_data(32'hdeadbeef),
    .rosc_ready(1'h1)
  );

endmodule

`default_nettype wire

//======================================================================
// EOF network_path.v
//======================================================================
