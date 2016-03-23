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
// Module Name: pp_top
// Description: Top level for the complete packet processing
// 

`timescale 1ns / 1ps
`default_nettype none
  
module pp_top (
  input wire         areset, // async reset
  input wire         clk,
  //
  input wire [47:0]  my_mac_addr0,
  input wire [47:0]  my_mac_addr1,
  input wire [47:0]  my_mac_addr2,
  input wire [47:0]  my_mac_addr3,
  input wire [31:0]  my_ipv4_addr0,
  input wire [31:0]  my_ipv4_addr1,
  input wire [31:0]  my_ipv4_addr2,
  input wire [31:0]  my_ipv4_addr3,
  input wire [127:0] my_ipv6_addr0,
  input wire [127:0] my_ipv6_addr1,
  input wire [127:0] my_ipv6_addr2,
  input wire [127:0] my_ipv6_addr3,
  // Gen config
  input wire [31:0]  gen_config,
  // NTP Config
  input wire [31:0]  ntp_config,     // LI | VN | Mode | Stratum | Poll | Precision 
  input wire [31:0]  ntp_root_delay, // Root Delay
  input wire [31:0]  ntp_root_disp,  // Root Dispersion 
  input wire [31:0]  ntp_ref_id,     // Reference ID
  input wire [63:0]  ntp_ref_ts,     // Reference Timestamp
  input wire [31:0]  ntp_rx_ofs,     // RX time stamp offset
  input wire [31:0]  ntp_tx_ofs,     // TX time stamp offset
  // From clock
  input wire [63:0]  ntp_time, 
  // Key Memory
  output wire        key_req,
  output wire [31:0] key_id,
  input wire         key_ack,
  input wire [255:0] key,
  // MAC 
  input wire [63:0]  xgmii_rxd,
  input wire [7:0]   xgmii_rxc,
  output wire [63:0] xgmii_txd,
  output wire [7:0]  xgmii_txc,
  // Status bits
  output wire [31:0] status
);
  
  // Swap bytes within long word
  function [63:0] swap_bytes;
    input [63:0] data;
    begin
      swap_bytes[ 0+:8] = data[56+:8];
      swap_bytes[ 8+:8] = data[48+:8];
      swap_bytes[16+:8] = data[40+:8];
      swap_bytes[24+:8] = data[32+:8];
      swap_bytes[32+:8] = data[24+:8];
      swap_bytes[40+:8] = data[16+:8];
      swap_bytes[48+:8] = data[ 8+:8];
      swap_bytes[56+:8] = data[ 0+:8];
    end
  endfunction //
  
  wire             aresetn;
  assign           aresetn = ~areset;

  wire [7:0]       rx_mac_data_valid;
  wire [63:0]      rx_mac_data;
  wire             tx_mac_start;  
  wire             tx_mac_ack;  
  wire [7:0]       tx_mac_data_valid;
  wire [63:0]      tx_mac_data;
  wire             rx_mac_bad_frame;
  wire             rx_mac_good_frame;

  // 10GbMAC
  oc_mac mac(
    .res_n         (aresetn),
    .tx_clk        (clk),
    .tx_start      (tx_mac_start),
    .tx_data       (swap_bytes(tx_mac_data)),
    .tx_data_valid (tx_mac_data_valid),
    .xgmii_rxd     (xgmii_rxd),
    .xgmii_rxc     (xgmii_rxc),
    .tx_ack        (tx_mac_ack),
    .rx_clk        (clk),
    .rx_bad_frame  (rx_mac_bad_frame),
    .rx_good_frame (rx_mac_good_frame),
    .rx_data       (rx_mac_data),
    .rx_data_valid (rx_mac_data_valid),
    .xgmii_txc     (xgmii_txc),
    .xgmii_txd     (xgmii_txd)
  );
  
  wire             fifo_full;
  wire             fifo_wr;
  wire [999:0]     fifo_wdata;

  wire [31:0]      rx_status;
  
  // Packet decoder
  pp_rx rx(
    .areset            (areset),
    .clk               (clk),
    .ipv4_arp_en       (gen_config[0]),
    .ipv4_ntp_en       (gen_config[1]),
    .ipv6_nd_en        (gen_config[2]),
    .ipv6_ntp_en       (gen_config[3]),
    .mac_check_en      (gen_config[4]),
    .ip_check_en       (gen_config[5]),
    .my_mac_addr0      (my_mac_addr0),
    .my_mac_addr1      (my_mac_addr1),
    .my_mac_addr2      (my_mac_addr2),
    .my_mac_addr3      (my_mac_addr3),
    .my_ipv4_addr0     (my_ipv4_addr0),
    .my_ipv4_addr1     (my_ipv4_addr1),
    .my_ipv4_addr2     (my_ipv4_addr2),
    .my_ipv4_addr3     (my_ipv4_addr3),
    .my_ipv6_addr0     (my_ipv6_addr0),
    .my_ipv6_addr1     (my_ipv6_addr1),
    .my_ipv6_addr2     (my_ipv6_addr2),
    .my_ipv6_addr3     (my_ipv6_addr3),
    .ntp_ofs           (ntp_rx_ofs),        
    .ntp_time          (ntp_time),        
    .rx_data_valid     (rx_mac_data_valid),
    .rx_data           (swap_bytes(rx_mac_data)),
    .rx_bad_frame      (rx_mac_bad_frame),
    .rx_good_frame     (rx_mac_good_frame),
    .key_req           (key_req),
    .key_id            (key_id),
    .key_ack           (key_ack),
    .key               (key),
    .tx_fifo_full      (fifo_full),
    .tx_fifo_wr        (fifo_wr),         
    .tx_fifo_data      (fifo_wdata),
    .sts_ipv4_arp_pass (rx_status[0]),
    .sts_ipv4_ntp_pass (rx_status[1]),
    .sts_ipv6_nd_pass  (rx_status[2]),
    .sts_ipv6_ntp_pass (rx_status[3]),
    .sts_ipv4_arp_drop (rx_status[4]),
    .sts_ipv4_ntp_drop (rx_status[5]),
    .sts_ipv4_gen_drop (rx_status[6]),
    .sts_ipv6_nd_drop  (rx_status[7]),
    .sts_ipv6_ntp_drop (rx_status[8]),
    .sts_ipv6_gen_drop (rx_status[9]),
    .sts_bad_mac_drop  (rx_status[10]),
    .sts_eth_gen_drop  (rx_status[11]),
    .sts_bad_ipv4_nbr  (rx_status[12]),
    .sts_bad_ipv6_nbr  (rx_status[13]),
    .sts_bad_eth_frame (rx_status[14]), 
    .sts_tx_blocked    (rx_status[15]),
    .sts_bad_md5_key   (rx_status[16]),
    .sts_bad_sha1_key  (rx_status[17])
  );

  //----------------------------------------------------------------------------
  // FIFO as rubber band between tx and rx

  wire             fifo_empty;
  wire             fifo_rd;
  wire [999:0]     fifo_rdata;
  
  pp_fifo_sc fifo (
    .rst               (areset),
    .clk               (clk),
    .din               (fifo_wdata),
    .wr_en             (fifo_wr),
    .rd_en             (fifo_rd),
    .dout              (fifo_rdata),
    .full              (fifo_full),
    .empty             (fifo_empty)
  );

  //--------------------------------------------------------------
  // Sign and delay "pipes"

  wire         tx_start;
  wire         tx_ready;
  wire [775:0] tx_data;

  pp_pipes pipes (
    .areset                 (areset),
    .clk                    (clk),
    .ntp_config             (ntp_config),
    .ntp_root_delay         (ntp_root_delay),
    .ntp_root_disp          (ntp_root_disp),
    .ntp_ref_id             (ntp_ref_id),
    .ntp_tx_ofs             (ntp_tx_ofs),        
    .ntp_time               (ntp_time),        
    .fifo_empty             (fifo_empty),
    .fifo_data              (fifo_rdata),
    .fifo_rd                (fifo_rd),
    .tx_start               (tx_start),
    .tx_ready               (tx_ready),
    .tx_data                (tx_data),
    .sts_ipv4_ntp_md5_pass  (rx_status[18]),
    .sts_ipv4_ntp_sha1_pass (rx_status[19]),
    .sts_ipv6_ntp_md5_pass  (rx_status[20]),
    .sts_ipv6_ntp_sha1_pass (rx_status[21]),
    .sts_bad_md5_dgst       (rx_status[22]),
    .sts_bad_sha1_dgst      (rx_status[23])
  );

  assign rx_status[31:24] = 'b0;
  
  //--------------------------------------------------------------
  // Packet encoder

  pp_tx tx(
    .areset            (areset),
    .clk               (clk),
    .ip_ttl            (gen_config[13:6]),
    .my_mac_addr0      (my_mac_addr0),
    .my_mac_addr1      (my_mac_addr1),
    .my_mac_addr2      (my_mac_addr2),
    .my_mac_addr3      (my_mac_addr3),
    .my_ipv4_addr0     (my_ipv4_addr0),
    .my_ipv4_addr1     (my_ipv4_addr1),
    .my_ipv4_addr2     (my_ipv4_addr2),
    .my_ipv4_addr3     (my_ipv4_addr3),
    .my_ipv6_addr0     (my_ipv6_addr0),
    .my_ipv6_addr1     (my_ipv6_addr1),
    .my_ipv6_addr2     (my_ipv6_addr2),
    .my_ipv6_addr3     (my_ipv6_addr3),
    .start             (tx_start),
    .ready             (tx_ready),
    .data              (tx_data),
    .tx_start          (tx_mac_start),
    .tx_ack            (tx_mac_ack),
    .tx_data_valid     (tx_mac_data_valid),
    .tx_data           (tx_mac_data)
  );


  //--------------------------------------------------------------
  // Make status pulses 2 cycles long, enough to catch them in AXI clock domain

  reg [31:0]  old_status;
  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      old_status <= 'b0;
    end else begin
      old_status <= rx_status;
    end
  end
  assign status = rx_status | old_status;

endmodule // pp_top

`default_nettype wire
