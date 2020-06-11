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
// Module Name: pp_top
// Description: Top level for the complete packet processing
//

`timescale 1ns / 1ps
`default_nettype none

module pp_top (
  input wire         areset, // async reset
  input wire         clk,

  input wire           api_cs,
  input wire           api_we,
  input wire  [11 : 0] api_address,
  input wire  [31 : 0] api_write_data,
  output wire [31 : 0] api_read_data,
  output wire          api_ready,

  // Gen config
  input wire [23:0]  gen_config,
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

  // MAC
  input  wire [7:0]  rx_data_valid,
  input  wire [63:0] rx_data,
  input  wire        rx_bad_frame,
  input  wire        rx_good_frame,
  output wire        tx_start,
  input  wire        tx_ack,
  output wire [7:0]  tx_data_valid,
  output wire [63:0] tx_data,
  // Status bits
  output wire [31:0] status
);


  //--------------------------------------------------------------
  //--------------------------------------------------------------
  wire             fifo_full;
  wire             fifo_wr;
  wire [1004:0]    fifo_wdata;

  wire [31:0]      rx_status;


  //--------------------------------------------------------------
  // Stub assignments. Now we kill off the pp-functionality.
  //--------------------------------------------------------------
  assign api_read_data = 32'h0;
  assign api_ready     = 1'h0;
  assign tx_start      = 1'h0;
  assign tx_data_valid = 64'h0;
  assign tx_data       = 8'h0;
  assign status        = 1'h0;

endmodule // pp_top
