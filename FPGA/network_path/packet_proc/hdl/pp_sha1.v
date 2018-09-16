//
// Copyright (c) 2017, The Swedish Post and Telecom Authority (PTS) 
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
// Module Name: pp_sha1
// Description: "Pipeline" that buffers and optionally signs NTP packets with SHA1.
//              Equal delay for all kind of packets.
// 

`timescale 1ns / 1ps
`default_nettype none

module pp_sha1 (
  input wire          areset,
  input wire          clk,

  // NTP Config
  input  wire [31:0]  ntp_config,      // LI | VN | Mode | Stratum | Poll | Precision 
  input  wire [31:0]  ntp_root_delay,  // Root Delay
  input  wire [31:0]  ntp_root_disp,   // Root Dispersion 
  input  wire [31:0]  ntp_ref_id,      // Reference ID
  input  wire [31:0]  ntp_ofs,         // TX offset
  // From clock
  input  wire [63:0]  ntp_time,        // time stamp in our clock domain   

  output wire         in_ready,        // ready for new packet
  input wire          start, 
  input wire [843:0]  rx_stuff,        // Received message stuff

  input wire          key_ack,
  input wire [255:0]  key,             // Key for checking and generating signature

  output wire         done,
  output wire [779:0] tx_stuff,

  // Status
  output reg          sts_ipv4_ntp_pass,
  output reg          sts_ipv6_ntp_pass,
  output reg          sts_bad_dgst      // signature mismatch
);

`include "pp_par.v"

  // Store valid key until needed
  reg [159:0] key_buf;
  always @(posedge clk) begin
    if (key_ack == 1'b1 && key[KEY_VALID] == 1'b1 && key[KEY_TYPE] == SHA1_KEY_TYPE) begin
      key_buf <= key[159:0];
    end
  end

  wire [63:0]  rx_ntp_time0; // our rx time stamp
  wire [1:0]   addr_sel0;
  wire         arp_0;
  wire         nd_0;
  wire         ntp4_0;
  wire         ping4_0;
  wire         trcrt4_0;
  wire         ntp6_0;
  wire         ping6_0;
  wire         trcrt6_0;
  wire         md5_0;
  wire         sha1_0;
  wire [47:0]  cl_mac0;      // physical address of sender
  wire [127:0] cl_ip0;       // protocol address of sender (IPv4 or IPv6)
  wire [15:0]  cl_port0;     // Source port for reply
  wire [383:0] cl_payload0;  // Received NTP payload
  wire [31:0]  keyid0;       // Key id 
  wire [159:0] cl_dgst0;     // Received message digest

  assign {rx_ntp_time0, addr_sel0, arp_0, nd_0, ntp4_0, ping4_0, trcrt4_0, ntp6_0, ping6_0, trcrt6_0,
          md5_0, sha1_0, cl_mac0, cl_ip0, cl_port0, cl_payload0, keyid0, cl_dgst0} = rx_stuff;
  
  //---------------------------------------------------------------------------------------------
  // Store packets in FIFO and start checking

  wire          check_done;
  wire [159:0]  check_hash;
  
  sha1 sha_check (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (in_ready),
    .start     (start), 
    .key       (key_buf),
    .payload   (cl_payload0),
    .hash_done (check_done),
    .hash      (check_hash)
  );

  wire [1003:0] cfifo_wdata, cfifo_rdata;

  assign cfifo_wdata = {rx_ntp_time0, addr_sel0, arp_0, nd_0, ntp4_0, ping4_0, trcrt4_0, ntp6_0, ping6_0, trcrt6_0,
                        md5_0, sha1_0, cl_mac0, cl_ip0, cl_port0, cl_payload0, keyid0, cl_dgst0, key_buf};

  wire   check_fifo_full, check_fifo_empty;
  
  pp_fifo_sc check_fifo(
    .rst       (areset),
    .clk       (clk),
    .din       (cfifo_wdata),
    .wr_en     (start),
    .rd_en     (check_done),
    .dout      (cfifo_rdata),
    .full      (check_fifo_full),
    .empty     (check_fifo_empty)
  );

  wire [63:0]  rx_ntp_time1;
  wire [1:0]   addr_sel1;
  wire         arp_1;
  wire         nd_1;
  wire         ntp4_1;
  wire         ping4_1;
  wire         trcrt4_1;
  wire         ntp6_1;
  wire         ping6_1;
  wire         trcrt6_1;
  wire         md5_1;
  wire         sha1_1;
  wire [47:0]  cl_mac1;
  wire [127:0] cl_ip1;
  wire [15:0]  cl_port1;
  wire [383:0] cl_payload1;
  wire [31:0]  keyid1;
  wire [159:0] cl_dgst1;
  wire [159:0] key1;

  assign {rx_ntp_time1, addr_sel1, arp_1, nd_1, ntp4_1, ping4_1, trcrt4_1, ntp6_1, ping6_1, trcrt6_1,
          md5_1, sha1_1, cl_mac1, cl_ip1, cl_port1, cl_payload1, keyid1, cl_dgst1, key1} = cfifo_rdata;

  wire check_ok;
  assign check_ok = check_hash == cl_dgst1;


  //----------------------------------------------------------------------------------------------------
  // Stage 2 Store packets with OK signing. Generate digest for outgoing packets

  reg [63:0] tx_ntp_time;
  reg [63:0] ntp_ref_ts;

  always @(posedge clk) begin 
    tx_ntp_time <= ntp_time + ntp_ofs + HW_TX_LAT + SHA1_LAT;
    // Create a reference timestamp assuming it was set one the previous PPS.
    ntp_ref_ts <= {ntp_time[63:32] - 1, 32'b0};
  end

  wire [0:383] tx_payload; // NTP payload to be transmitted
  assign tx_payload[0:1]     = ntp_config[31:30];                                                    // Leap Indicator
  assign tx_payload[2:4]     = ntp_config[29:27] != 3'b0 ? ntp_config[29:27] : cl_payload1[381:379]; // VN
  assign tx_payload[5:7]     = ntp_config[26:24] != 3'b0 ? ntp_config[26:24] : 3'd4;                 // Mode (Server)
  assign tx_payload[8:15]    = ntp_config[23:16] != 8'b0 ? ntp_config[23:16] : 8'd1;                 // Stratum
  assign tx_payload[16:23]   = ntp_config[15:8]  != 8'b0 ? ntp_config[15:8]  : cl_payload1[367:360]; // Poll
  assign tx_payload[24:31]   = ntp_config[7:0];                                                      // Precision
  assign tx_payload[32:63]   = ntp_root_delay;
  assign tx_payload[64:95]   = ntp_root_disp;
  assign tx_payload[96:127]  = ntp_ref_id;
  assign tx_payload[128:191] = ntp_ref_ts;
  assign tx_payload[192:255] = cl_payload1[63:0];                                                    // Client TX Timestamp
  assign tx_payload[256:319] = rx_ntp_time1;
  assign tx_payload[320:383] = tx_ntp_time;

  wire          sign_done;
  wire [159:0]  sign_hash;

  sha1 sha_sign (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (),
    .start     (check_done & check_ok), 
    .key       (key1),
    .payload   (tx_payload),
    .hash_done (sign_done),
    .hash      (sign_hash)
  );


  wire [619:0]  sfifo_wdata, sfifo_rdata;
  assign sfifo_wdata = {addr_sel1, arp_1, nd_1, ntp4_1, ping4_1, trcrt4_1, ntp6_1, ping6_1, trcrt6_1,
                        md5_1, sha1_1, cl_mac1, cl_ip1, cl_port1, tx_payload, keyid1};

  wire sign_fifo_full, sign_fifo_empty;
  
  pp_fifo_ss sign_fifo (
    .rst       (areset),
    .clk       (clk),
    .din       (sfifo_wdata),
    .wr_en     (check_done & check_ok),
    .rd_en     (sign_done),
    .dout      (sfifo_rdata),
    .full      (sign_fifo_full),
    .empty     (sign_fifo_empty)
  );

  assign tx_stuff          = {sfifo_rdata, sign_hash};
  assign done              = sign_done;

  always @(posedge clk) begin 
    sts_ipv4_ntp_pass <= check_done & check_ok & ntp4_1 & sha1_1;
    sts_ipv6_ntp_pass <= check_done & check_ok & ntp6_1 & sha1_1;
    sts_bad_dgst      <= check_done & ~check_ok & sha1_1;
  end

endmodule // pp_sha1
`default_nettype wire
