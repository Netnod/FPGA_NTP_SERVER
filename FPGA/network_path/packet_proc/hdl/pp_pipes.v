//
// Copyright (c) 2016, The Swedish Post and Telecom Authority (PTS) 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions are met:
// 
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
// 
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//
// Author: Rolf Andersson (rolf@mechanicalmen.se)
//
// Design Name: FPGA NTP Server
// Module Name: pp_pipes
// Description: Decode and put packets into either MD5 pipe, SHA1 pipe or bypass FIFO.
// 

`timescale 1ns / 1ps
`default_nettype none

module pp_pipes (
  input wire         areset, // async reset
  input wire         clk,

  // NTP Config
  input wire [31:0]  ntp_config,     // LI | VN | Mode | Stratum | Poll | Precision 
  input wire [31:0]  ntp_root_delay, // Root Delay
  input wire [31:0]  ntp_root_disp,  // Root Dispersion 
  input wire [31:0]  ntp_ref_id,     // Reference ID
  input wire [31:0]  ntp_tx_ofs,     // TX offset
  // From clock
  input wire [63:0]  ntp_time, 

  // RX               
  input wire         fifo_empty, // Data in FIFO
  output wire        fifo_rd, 
  input wire [999:0] fifo_data,

  // TX1
  output reg         tx_start, 
  input wire         tx_ready, 
  output reg [775:0] tx_data,

  // Status
  output wire        sts_ipv4_ntp_md5_pass,
  output wire        sts_ipv4_ntp_sha1_pass,
  output wire        sts_ipv6_ntp_md5_pass,
  output wire        sts_ipv6_ntp_sha1_pass,
  output wire        sts_bad_md5_dgst,
  output wire        sts_bad_sha1_dgst
);

`include "pp_par.v"

  //-----------------------------------------------------------------

  wire [63:0]  rx_ntp_time0;
  wire [1:0]   addr_sel0;
  wire         arp_0;
  wire         nd_0;
  wire         ntp4_0;
  wire         ntp6_0;
  wire         md5_0;
  wire         sha1_0;
  wire [47:0]  cl_mac0;
  wire [127:0] cl_ip0;
  wire [15:0]  cl_port0;
  wire [383:0] cl_payload0;
  wire [31:0]  keyid0;
  wire [159:0] cl_dgst0;
  wire [159:0] key0;

  assign {rx_ntp_time0, addr_sel0, arp_0, nd_0, ntp4_0, ntp6_0, md5_0, sha1_0, cl_mac0, cl_ip0, cl_port0, cl_payload0, keyid0, cl_dgst0, key0} = fifo_data;

  wire md5_start;
  wire sha1_start;
  wire bp_fifo_wr;

  wire md5_ready;
  wire sha1_ready;

  assign bp_fifo_wr = ~fifo_empty & (arp_0 | nd_0 | (~md5_0 & ~sha1_0));
  assign md5_start  = ~fifo_empty & md5_0 & md5_ready;
  assign sha1_start = ~fifo_empty & sha1_0 & sha1_ready;
  assign fifo_rd    = bp_fifo_wr | md5_start | sha1_start;
  
  //-----------------------------------------------------------------

  wire [839:0] md5_data0;
  wire         md5_done;
 
  assign md5_data0[839:776] = 'b0;
 
  pp_md5 md5_signing (
    .clk               (clk),
    .areset            (areset),
    .ntp_config        (ntp_config),
    .ntp_root_delay    (ntp_root_delay),
    .ntp_root_disp     (ntp_root_disp),
    .ntp_ref_id        (ntp_ref_id),
    .ntp_ofs           (ntp_tx_ofs),        
    .ntp_time          (ntp_time),        
    .in_ready          (md5_ready),
    .start             (md5_start), 
    .rx_stuff          (fifo_data[999:160]),
    .key               (key0),
    .done              (md5_done),
    .tx_stuff          (md5_data0[775:0]),
    .sts_ipv4_ntp_pass (sts_ipv4_ntp_md5_pass),
    .sts_ipv6_ntp_pass (sts_ipv6_ntp_md5_pass),
    .sts_bad_dgst      (sts_bad_md5_dgst)               
  );
  
  reg          md5_rd;
  wire [839:0] md5_data1;
  wire         md5_empty;
  
  pp_fifo md5_buf (
    .rst            (areset),
    .clk            (clk),
    .din            (md5_data0),
    .wr_en          (md5_done),
    .rd_en          (md5_rd),
    .dout           (md5_data1),
    .full           (),
    .empty          (md5_empty)
  );

  //-----------------------------------------------------------------

  wire [839:0] sha1_data0;
  wire         sha1_done;
 
  assign sha1_data0[839:776] = 'b0;

  pp_sha1 sha_signing (
    .clk               (clk),
    .areset            (areset),
    .ntp_config        (ntp_config),
    .ntp_root_delay    (ntp_root_delay),
    .ntp_root_disp     (ntp_root_disp),
    .ntp_ref_id        (ntp_ref_id),
    .ntp_ofs           (ntp_tx_ofs),        
    .ntp_time          (ntp_time),        
    .in_ready          (sha1_ready),
    .start             (sha1_start), 
    .rx_stuff          (fifo_data[999:160]),
    .key               (key0),
    .done              (sha1_done),
    .tx_stuff          (sha1_data0[775:0]),
    .sts_ipv4_ntp_pass (sts_ipv4_ntp_sha1_pass),
    .sts_ipv6_ntp_pass (sts_ipv6_ntp_sha1_pass),
    .sts_bad_dgst      (sts_bad_sha1_dgst)               
  );

  reg          sha1_rd;
  wire [839:0] sha1_data1;
  wire         sha1_empty;

  // 
  pp_fifo sha1_buf (
    .rst            (areset),
    .clk            (clk),
    .din            (sha1_data0),
    .wr_en          (sha1_done),
    .rd_en          (sha1_rd),
    .dout           (sha1_data1),
    .full           (),
    .empty          (sha1_empty)
  );

  //-----------------------------------------------------------------
  // Bypass path for unsigned packets
  
  reg          bp_fifo_rd;
  wire [839:0] bp_data;
  wire         bp_fifo_empty;
  
  // Bypass-FIFO for unsigned NTP and other packets.

  pp_fifo bp_fifo (
    .rst            (areset),
    .clk            (clk),
    .din            (fifo_data[999:160]),
    .wr_en          (bp_fifo_wr),
    .rd_en          (bp_fifo_rd),
    .dout           (bp_data),
    .full           (),
    .empty          (bp_fifo_empty)
  );

  
  wire [63:0]  rx_ntp_time1;
  wire [1:0]   addr_sel1;
  wire         arp_1;
  wire         nd_1;
  wire         ntp4_1;
  wire         ntp6_1;
  wire         md5_1;
  wire         sha1_1;
  wire [47:0]  cl_mac1;
  wire [127:0] cl_ip1;
  wire [15:0]  cl_port1;
  wire [383:0] cl_payload1;
  wire [31:0]  keyid1;
  wire [159:0] cl_dgst1;

  assign {rx_ntp_time1, addr_sel1, arp_1, nd_1, ntp4_1, ntp6_1, md5_1, sha1_1, cl_mac1, cl_ip1, cl_port1, cl_payload1, keyid1, cl_dgst1} = bp_data;

  wire [63:0] tx_ntp_time;
  assign tx_ntp_time = ntp_time + ntp_tx_ofs + HW_TX_LAT;

  // Create a reference timestamp assuming it was set one the previous PPS.
  wire [63:0] ntp_ref_ts;
  assign ntp_ref_ts = {ntp_time[63:32] - 1, 32'b0};

  wire [0:383] bp_payload; // NTP payload to be transmitted
  assign bp_payload[0:1]     = ntp_config[31:30];                                                    // Leap Indicator
  assign bp_payload[2:4]     = ntp_config[29:27] != 3'b0 ? ntp_config[29:27] : cl_payload1[381:379]; // VN
  assign bp_payload[5:7]     = ntp_config[26:24] != 3'b0 ? ntp_config[26:24] : 3'd4;                 // Mode (Server)
  assign bp_payload[8:15]    = ntp_config[23:16] != 8'b0 ? ntp_config[23:16] : 8'd1;                 // Stratum
  assign bp_payload[16:23]   = ntp_config[15:8]  != 8'b0 ? ntp_config[15:8]  : cl_payload1[367:360]; // Poll
  assign bp_payload[24:31]   = ntp_config[7:0];                                                      // Precision
  assign bp_payload[32:63]   = ntp_root_delay;
  assign bp_payload[64:95]   = ntp_root_disp;
  assign bp_payload[96:127]  = ntp_ref_id;
  assign bp_payload[128:191] = ntp_ref_ts;
  assign bp_payload[192:255] = cl_payload1[63:0];                                                    // Client TX Timestamp
  assign bp_payload[256:319] = rx_ntp_time1;
  assign bp_payload[320:383] = tx_ntp_time;

  wire [839:0] bp_data1;
  assign bp_data1 = {bp_data[839:576], bp_payload, 192'b0};
  
  //-----------------------------------------------------------------

  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin

      md5_rd     <= 1'b0;
      sha1_rd    <= 1'b0;
      bp_fifo_rd <= 1'b0;
      tx_start   <= 1'b0;

    end else begin

      md5_rd     <= 1'b0;
      sha1_rd    <= 1'b0;
      bp_fifo_rd <= 1'b0;
      tx_start   <= 1'b0;

      if (tx_ready == 1'b1 && tx_start == 1'b0) begin
        if (md5_empty == 1'b0) begin
          md5_rd   <= 1'b1;
          tx_start <= 1'b1;
          tx_data  <= md5_data1;
        end else if (sha1_empty == 1'b0) begin
          sha1_rd  <= 1'b1;
          tx_start <= 1'b1;
          tx_data  <= sha1_data1;
        end else if (bp_fifo_empty == 1'b0) begin
          bp_fifo_rd <= 1'b1;
          tx_start   <= 1'b1;
          tx_data    <= bp_data1;
        end
      end // if (tx_ready == 1'b1)
  
    end // else: !if(areset == 1'b1)

  end // always @ (posedge clk, posedge areset)
  
endmodule // pp_pipes

`default_nettype wire
