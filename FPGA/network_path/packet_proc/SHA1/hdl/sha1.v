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
// Module Name: sha1
// Description: Pipeline that can accept a new payload every 10 clock cycles.
//              Latency is 81 cycles
// 

`timescale 1ns / 1ps
`default_nettype none
  
module sha1(
  input wire          clk,
  input wire          areset,
  output wire         in_ready, // ready for new packet
  input wire          start, 
  input wire [159:0]  key,
  input wire [383:0]  payload,
  output reg          hash_done,
  output wire [159:0] hash
);
  
  // Initial hash values
  localparam [31:0] H0 = 32'h67452301;
  localparam [31:0] H1 = 32'hEFCDAB89;
  localparam [31:0] H2 = 32'h98BADCFE;
  localparam [31:0] H3 = 32'h10325476;
  localparam [31:0] H4 = 32'hC3D2E1F0;

  localparam [63:0] ML = 64'd160 + 64'd384;  // Message Length

  // Expand key and message
  wire [160+384-1:0] big_msg;
  assign big_msg = {key, payload};

  wire [511:0] chunk0;
  assign chunk0 = big_msg[543:32];

  // test chunks
  //assign chunk0[511:480] =  32'h61626380;
  //assign chunk0[479:0]   = 480'h18;
  // hash0 = a9993e36 4706816a ba3e2571 7850c26c 9cd0d89d
  
  //assign chunk0 = 512'h61626364_62636465_63646566_64656667_65666768_66676869_6768696a_68696a6b_696a6b6c_6a6b6c6d_6b6c6d6e_6c6d6e6f_6d6e6f70_6e6f7071_80000000_00000000;
  //assign chunk1 = 512'h1c0;
  //hash0 = f4286818 c37b27ae 0408f581 84677148 4a566572.
  //hash1 = 84983e44 1c3bd26e baae4aa1 f95129e5 e54670f1.
  
  wire         in_ready0;
  wire         ready0;
  wire [31:0]  h0_out0, h1_out0, h2_out0, h3_out0, h4_out0;

  // process first chunk
  sha1_pipe pipe0 (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (in_ready0),
    .start     (start), 
    .chunk     (chunk0),
    .h0_in     (H0),
    .h1_in     (H1),
    .h2_in     (H2),
    .h3_in     (H3),
    .h4_in     (H4),
    .out_ready (ready0),
    .h0_out    (h0_out0),
    .h1_out    (h1_out0),
    .h2_out    (h2_out0),
    .h3_out    (h3_out0),
    .h4_out    (h4_out0)
  );

  //---------------------------------------
  // Sum and register

  reg [31:0]  h0_sum0, h1_sum0, h2_sum0, h3_sum0, h4_sum0;
  always @(*) begin
    h0_sum0 = H0 + h0_out0;
    h1_sum0 = H1 + h1_out0;
    h2_sum0 = H2 + h2_out0; 
    h3_sum0 = H3 + h3_out0;
    h4_sum0 = H4 + h4_out0;
  end

  //---------------------------------------

  // Delay varying pars of 2nd chunk
  wire [31:0] del_msg;
  
  chunk_del cdel (
    .CLK  (clk),
    .CE   (in_ready0),
    .D    (big_msg[31:0]),
    .Q    (del_msg)
  );
  
  wire [511:0] chunk1;
  
  // Add fixed bits              
  assign chunk1 = {del_msg,  1'b1, 415'b0, ML};
  
  wire         in_ready1;
  wire         ready1;
  wire [31:0]  h0_out1, h1_out1, h2_out1, h3_out1, h4_out1;
  
  sha1_pipe pipe1 (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (in_ready1),
    .start     (ready0), 
    .chunk     (chunk1),
    .h0_in     (h0_sum0),
    .h1_in     (h1_sum0),
    .h2_in     (h2_sum0),
    .h3_in     (h3_sum0),
    .h4_in     (h4_sum0),
    .out_ready (ready1),
    .h0_out    (h0_out1),
    .h1_out    (h1_out1),
    .h2_out    (h2_out1),
    .h3_out    (h3_out1),
    .h4_out    (h4_out1)
  );

  wire [31:0]  h0_reg0, h1_reg0, h2_reg0, h3_reg0, h4_reg0;
  sum_del sdel (
    .CLK  (clk),
    .CE   (in_ready1),
    .D    ({h0_sum0, h1_sum0, h2_sum0, h3_sum0, h4_sum0}),
    .Q    ({h0_reg0, h1_reg0, h2_reg0, h3_reg0, h4_reg0})
  );
  
  //---------------------------------------
  // Sum and register
  
  reg [31:0]  h0_sum1, h1_sum1, h2_sum1, h3_sum1, h4_sum1;
  always @(*) begin
    h0_sum1 = h0_reg0 + h0_out1;
    h1_sum1 = h1_reg0 + h1_out1;
    h2_sum1 = h2_reg0 + h2_out1; 
    h3_sum1 = h3_reg0 + h3_out1;
    h4_sum1 = h4_reg0 + h4_out1;
  end

  reg [31:0]  h0_reg1, h1_reg1, h2_reg1, h3_reg1, h4_reg1;
  always @(posedge clk) begin
    if (ready1 == 1'b1) begin
      h0_reg1 <= h0_sum1;
      h1_reg1 <= h1_sum1;
      h2_reg1 <= h2_sum1; 
      h3_reg1 <= h3_sum1;
      h4_reg1 <= h4_sum1;
    end
  end
  
  //---------------------------------------

  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      hash_done <= 1'b0;
    end else begin
      hash_done <= ready1;
    end
  end

  // Assemble final hash value
  assign hash = {h0_reg1, h1_reg1, h2_reg1, h3_reg1, h4_reg1};
  
  //---------------------------------------

  assign in_ready = in_ready0 & in_ready1;
  
endmodule // sha1

`default_nettype wire





