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
  input wire [31 : 0]   gen_config,
  input wire [31 : 0]   ntp_config,
  input wire [31 : 0]   ntp_root_delay,
  input wire [31 : 0]   ntp_root_disp,
  input wire [31 : 0]   ntp_ref_id,
  input wire [63 : 0]   ntp_ref_ts,
  input wire [31 : 0]   ntp_rx_ofs,
  input wire [31 : 0]   ntp_tx_ofs,
  output wire [31 : 0]  pp_status,
  output wire 	        ntp_sync_ok,

  input wire [1 : 0]    api_ext_command,
  input wire [31 : 0]   api_ext_address,
  input wire [31 : 0]   api_ext_write_data,
  output wire [1 : 0]   api_ext_status,
  output wire [31 : 0]  api_ext_read_data,

  input wire [63:0]     ntp_time,

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
  wire          pp_api_cs;
  wire          pp_api_we;
  wire [11 : 0] pp_api_address;
  wire [31 : 0] pp_api_write_data;
  wire [31 : 0] pp_api_read_data;
  wire          pp_api_ready;


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
