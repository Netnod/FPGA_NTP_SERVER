//======================================================================
//
// network_path_shared.v
// ---------------------
// Special version of network_path with a special 10G PHY with
// clock regeneration etc.
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

module network_path_shared (
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

  // NTP times
  input wire [63 : 0]   ntp_time_a,
  input wire            ntp_time_upd_a,
  input wire [63 : 0]   ntp_time_b,
  input wire            ntp_time_upd_b,

  // NTP SYNC status
  input wire 	        ntp_sync_ok_a,
  input wire 	        ntp_sync_ok_b,

  // Ethernet PHY.
  input wire [63 : 0]   xgmii_rxd,
  input wire [7  : 0]   xgmii_rxc,
  output wire [63  : 0] xgmii_txd,
  output wire [7   : 0] xgmii_txc,

  input wire            clk156,
  input wire            areset_clk156,
  input wire            sys_reset
);


  //----------------------------------------------------------------
  // Functions.
  //----------------------------------------------------------------
  // Swap and mask bytes within long word.
  // The mask has no effect in reality.
  function [63:0] mac_swap_bytes;
    input [63:0] data;
    input [7:0]  mask; // Avoid Xs
    begin
      mac_swap_bytes[ 0+:8] = data[56+:8] & {8{mask[7]}};
      mac_swap_bytes[ 8+:8] = data[48+:8] & {8{mask[6]}};
      mac_swap_bytes[16+:8] = data[40+:8] & {8{mask[5]}};
      mac_swap_bytes[24+:8] = data[32+:8] & {8{mask[4]}};
      mac_swap_bytes[32+:8] = data[24+:8] & {8{mask[3]}};
      mac_swap_bytes[40+:8] = data[16+:8] & {8{mask[2]}};
      mac_swap_bytes[48+:8] = data[ 8+:8] & {8{mask[1]}};
      mac_swap_bytes[56+:8] = data[ 0+:8] & {8{mask[0]}};
    end
  endfunction


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  wire [63:0]  ntp_time;

  wire [7:0]   rx_mac_data_valid;
  wire [63:0]  rx_mac_data;
  wire         rx_mac_bad_frame;
  wire         rx_mac_good_frame;

  wire         tx_mac_start;
  wire         tx_mac_ack;
  wire [7:0]   tx_mac_data_valid;
  wire [63:0]  tx_mac_data;

  wire         pp_mactx_start;
  wire         pp_mactx_ack;
  wire [7:0]   pp_mactx_data_valid;
  wire [63:0]  pp_mactx_data;

  wire         nts_mactx_start;
  wire         nts_mactx_ack;
  wire [7:0]   nts_mactx_data_valid;
  wire [63:0]  nts_mactx_data;

  wire         sys_aresetn;

  // Wires for connecting the api_extension to the AXI slave.
  // Wires for connecting modules to the api_extension.
  wire          pp_api_cs;
  wire          pp_api_we;
  wire [11 : 0] pp_api_address;
  wire [31 : 0] pp_api_write_data;
  wire [31 : 0] pp_api_read_data;
  wire          pp_api_ready;
  wire          rosc_cs;
  wire          rosc_we;
  wire [7 : 0]  rosc_address;
  wire [31 : 0] rosc_write_data;
  wire [31 : 0] rosc_read_data;
  wire          nts_cs;
  wire          nts_we;
  wire [11 : 0] nts_address;
  wire [31 : 0] nts_write_data;
  wire [31 : 0] nts_read_data;
  wire          merge_cs;
  wire          merge_we;
  wire [7 : 0]  merge_address;
  wire [31 : 0] merge_write_data;
  wire [31 : 0] merge_read_data;

  // Pipeline registers.
  reg          ready_merge_reg;
  reg          p0_merge_cs_reg;
  reg          p0_merge_we_reg;
  reg [7 : 0]  p0_merge_address_reg;
  reg [31 : 0] p0_merge_write_data_reg;
  reg [31 : 0] p1_merge_read_data_reg;

  reg           ready_nts_reg;
  reg           p0_nts_cs_reg;
  reg           p0_nts_we_reg;
  reg  [11 : 0] p0_nts_address_reg;
  reg  [31 : 0] p0_nts_write_data_reg;
  reg  [31 : 0] p1_nts_read_data_reg;


  //----------------------------------------------------------------
  // Assignments.
  //----------------------------------------------------------------
  assign ntp_sync_ok = (ntp_sync_ok_a & ~gen_config[24] ) |
                       (ntp_sync_ok_b & gen_config[24]);

  assign sys_aresetn = ~sys_reset;


  //----------------------------------------------------------------
  // tss
  // Time select and clock domain crossing. This should have been
  // a common function for all netwpork paths.
  //----------------------------------------------------------------
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
  // mac
  // 10GbMAC
  //----------------------------------------------------------------
  oc_mac mac(
    .res_n         (sys_aresetn),
    .tx_clk        (clk156),
    .tx_start      (tx_mac_start),
    .tx_data       (tx_mac_data),
    .tx_data_valid (tx_mac_data_valid),
    .xgmii_rxd     (xgmii_rxd),
    .xgmii_rxc     (xgmii_rxc),
    .tx_ack        (tx_mac_ack),
    .rx_clk        (clk156),
    .rx_bad_frame  (rx_mac_bad_frame),
    .rx_good_frame (rx_mac_good_frame),
    .rx_data       (rx_mac_data),
    .rx_data_valid (rx_mac_data_valid),
    .xgmii_txc     (xgmii_txc),
    .xgmii_txd     (xgmii_txd)
  );

  //----------------------------------------------------------------
  // pp
  // Packet processing excluding MAC. For some reason the MAC
  // is outside of the packet processing in this network_path.
  //----------------------------------------------------------------
  pp_top pp(
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

    .rx_data_valid  (rx_mac_data_valid),
    .rx_data        (mac_swap_bytes(rx_mac_data, rx_mac_data_valid)),
    .rx_bad_frame   (rx_mac_bad_frame),
    .rx_good_frame  (rx_mac_good_frame),

    .tx_start       (pp_mactx_start),
    .tx_ack         (pp_mactx_ack),
    .tx_data_valid  (pp_mactx_data_valid),
    .tx_data        (pp_mactx_data),

    .status         (pp_status)
  );


  //----------------------------------------------------------------
  // api_extension0
  // The narrow extension API. Should be used for all modules.
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
    .nts_cs(nts_cs),
    .nts_we(nts_we),
    .nts_address(nts_address),
    .nts_write_data(nts_write_data),
    .nts_read_data(p1_nts_read_data_reg),
    .nts_ready(ready_nts_reg),

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

    .merge_cs(merge_cs),
    .merge_we(merge_we),
    .merge_address(merge_address),
    .merge_write_data(merge_write_data),
    .merge_read_data(p1_merge_read_data_reg),
    .merge_ready(ready_merge_reg),

    .rosc_cs(rosc_cs),
    .rosc_we(rosc_we),
    .rosc_address(rosc_address),
    .rosc_write_data(rosc_write_data),
    .rosc_read_data(rosc_read_data),
    .rosc_ready(1'h1)
  );


  //----------------------------------------------------------------
  // NTS network path.
  //----------------------------------------------------------------
  nts_top nts (
    .i_areset(areset_clk156),
    .i_clk(clk156),

    .i_ntp_time(ntp_time),

    .i_mac_rx_data_valid(rx_mac_data_valid),
    .i_mac_rx_data(rx_mac_data),
    .i_mac_rx_bad_frame(rx_mac_bad_frame),
    .i_mac_rx_good_frame(rx_mac_good_frame),

    .o_mac_tx_start(nts_mactx_start),
    .i_mac_tx_ack(nts_mactx_ack),
    .o_mac_tx_data_valid(nts_mactx_data_valid),
    .o_mac_tx_data(nts_mactx_data),

    .i_api_dispatcher_cs(p0_nts_cs_reg),
    .i_api_dispatcher_we(p0_nts_we_reg),
    .i_api_dispatcher_address(p0_nts_address_reg),
    .i_api_dispatcher_write_data(p0_nts_write_data_reg),
    .o_api_dispatcher_read_data(nts_read_data)
  );


  //----------------------------------------------------------------
  // pp_merge
  // Note that mask doesn't work for pp_data since it is already
  // swapped (is not needed anyway).
  //----------------------------------------------------------------
  pp_merge merge (
    .clk(clk156),
    .areset(areset_clk156),

    .cs         ( p0_merge_cs_reg          ),
    .we         ( p0_merge_we_reg          ),
    .address    ( p0_merge_address_reg     ),
    .write_data ( p0_merge_write_data_reg  ),
    .read_data  ( merge_read_data          ),

    .pp_start       (pp_mactx_start),
    .pp_ack         (pp_mactx_ack),
    .pp_data_valid  (pp_mactx_data_valid),
    .pp_data        (mac_swap_bytes(pp_mactx_data, 8'hff)),

    .nts_start      (nts_mactx_start),
    .nts_ack        (nts_mactx_ack),
    .nts_data_valid (nts_mactx_data_valid),
    .nts_data       (nts_mactx_data),

    .mac_start      (tx_mac_start),
    .mac_ack        (tx_mac_ack),
    .mac_data_valid (tx_mac_data_valid),
    .mac_data       (tx_mac_data)
  );


  //----------------------------------------------------------------
  // rosc
  // Ring Oscillator based entropy source. Used by SW to seed
  // the system level random generator.
  //----------------------------------------------------------------
  rosc_entropy rosc(
                    .clk(clk156),
                    .reset(areset_clk156),
                    .cs(rosc_cs),
                    .we(rosc_we),
                    .address(rosc_address[7 : 0]),
                    .write_data(rosc_write_data),
                    .read_data(rosc_read_data)
                    );


  //----------------------------------------------------------------
  // API pipeline.
  //  p0 stage: input register buffers
  //  p1 stage: output register buffers
  //----------------------------------------------------------------
  always @(posedge clk156 or posedge areset_clk156)
  if (areset_clk156) begin
    ready_merge_reg <= 1;
    ready_nts_reg <= 1;

    p0_merge_cs_reg         <= 0;
    p0_merge_we_reg         <= 0;
    p0_merge_address_reg    <= 0;
    p0_merge_write_data_reg <= 0;
    p1_merge_read_data_reg  <= 0;

    p0_nts_cs_reg         <= 0;
    p0_nts_we_reg         <= 0;
    p0_nts_address_reg    <= 0;
    p0_nts_write_data_reg <= 0;
    p1_nts_read_data_reg  <= 0;

  end else begin
    if (ready_merge_reg && merge_cs)
      ready_merge_reg <= 0;

    if (p0_merge_cs_reg)
      ready_merge_reg <= 1;

    if (ready_nts_reg && nts_cs)
      ready_nts_reg <= 0;

    if (p0_nts_cs_reg)
      ready_nts_reg <= 1;

    p0_merge_cs_reg         <= merge_cs;
    p0_merge_we_reg         <= merge_we;
    p0_merge_address_reg    <= merge_address;
    p0_merge_write_data_reg <= merge_write_data;
    p1_merge_read_data_reg  <= merge_read_data;

    p0_nts_cs_reg         <= nts_cs;
    p0_nts_we_reg         <= nts_we;
    p0_nts_address_reg    <= nts_address;
    p0_nts_write_data_reg <= nts_write_data;
    p1_nts_read_data_reg  <= nts_read_data;
  end

endmodule // network_path_shared

`default_nettype wire

//======================================================================
// EOF network_path_shared.v
//======================================================================
