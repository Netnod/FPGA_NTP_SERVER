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
// Module Name: md5
// Description: Pipeline that can accept a new payload every 8 clock cycles.
//              Latency is 128 cycles
// 

`timescale 1ns / 1ps
`default_nettype none
  
module md5(
  input wire         clk,
  input wire         areset,
  output wire        in_ready,  // ready for new chunk 
  input wire         start, 
  input wire [159:0] key,
  input wire [383:0] payload,
  output reg         hash_done,
  output reg [127:0] hash
);
  
  // Initial hash values
  localparam [31:0] A0 = 32'h67452301;
  localparam [31:0] B0 = 32'hefcdab89;
  localparam [31:0] C0 = 32'h98badcfe;
  localparam [31:0] D0 = 32'h10325476;

  localparam [63:0] ML = 64'd160 + 64'd384;  // Message Length

  function [31:0] swap_bytes;
    input [31:0]  bytesx4;
    begin : sb
      integer i;
      for (i = 0; i < 4; i = i + 1) begin
        swap_bytes[(3-i)*8+:8] = bytesx4[i*8+:8];
      end
    end
  endfunction // swap_bytes
  
  // Expand key and message
  wire [160+384-1:0] big_msg;
  assign big_msg = {key, payload};

  wire [511:0] chunk0;
  assign chunk0 = big_msg[543:32];

  wire         in_ready0;
  wire         ready0;
  wire [31:0]  a_out0, b_out0, c_out0, d_out0;

  // process first chunk
  md5_pipe pipe0 (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (in_ready0),
    .start     (start), 
    .chunk     (chunk0),
    .a_in      (A0),
    .b_in      (B0),
    .c_in      (C0),
    .d_in      (D0),
    .out_ready (ready0),
    .a_out     (a_out0),
    .b_out     (b_out0),
    .c_out     (c_out0),
    .d_out     (d_out0)
  );

  //---------------------------------------
  // Sum and register

  reg [31:0]  a_sum0, b_sum0, c_sum0, d_sum0;
  always @(*) begin
    a_sum0 = A0 + a_out0;
    b_sum0 = B0 + b_out0;
    c_sum0 = C0 + c_out0; 
    d_sum0 = D0 + d_out0;
  end

  //---------------------------------------

  // Delay varying parts of 2nd chunk to match pipe0 latency
  wire [31:0] del_msg;
  // Note cdel is a shiftegister not FIFO 
  chunk_del_md5 cdel (
    .CLK  (clk),
    .CE   (in_ready0),
    .D    (big_msg[31:0]),
    .Q    (del_msg)
  );
  
  wire [511:0] chunk1;
  // Add fixed bits  
  assign chunk1 = {del_msg,  1'b1, 415'b0, swap_bytes(ML[31:0]), swap_bytes(ML[63:32])};

  wire         in_ready1;
  wire         ready1;
  wire [31:0]  a_out1, b_out1, c_out1, d_out1;
  
  md5_pipe pipe1 (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (in_ready1),
    .start     (ready0), 
    .chunk     (chunk1),
    .a_in      (a_sum0),
    .b_in      (b_sum0),
    .c_in      (c_sum0),
    .d_in      (d_sum0),
    .out_ready (ready1),
    .a_out     (a_out1),
    .b_out     (b_out1),
    .c_out     (c_out1),
    .d_out     (d_out1)
  );

  // Delay sums to match pipe1 latency
  wire [31:0]   a_reg0, b_reg0, c_reg0, d_reg0;
  // Note sdel is a shiftegister not FIFO 
  reg in_ready1_d;
  always @(posedge clk) in_ready1_d <= in_ready1;
  sum_del_md5 sdel (
    .CLK  (clk),
    .CE   (in_ready1_d),
    .D    ({a_sum0, b_sum0, c_sum0, d_sum0}),
    .Q    ({a_reg0, b_reg0, c_reg0, d_reg0})
  );
  
  //---------------------------------------
  // Sum and register
  
  reg [31:0]  a_sum1, b_sum1, c_sum1, d_sum1;
  always @(*) begin
    a_sum1 = a_reg0 + a_out1;
    b_sum1 = b_reg0 + b_out1;
    c_sum1 = c_reg0 + c_out1; 
    d_sum1 = d_reg0 + d_out1;
  end

  reg [31:0]  a_reg1, b_reg1, c_reg1, d_reg1;
  reg ready1_d;
  always @(posedge clk) begin
    ready1_d <= ready1;
    if (ready1_d == 1'b1) begin
      a_reg1 <= a_sum1;
      b_reg1 <= b_sum1;
      c_reg1 <= c_sum1; 
      d_reg1 <= d_sum1;
    end
  end

  //---------------------------------------

  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      hash_done <= 1'b0;
    end else begin
      hash_done <= ready1_d;
    end
  end

  // Assemble final hash value and swap bytes
  integer j;
  always @(*) begin
    for (j = 0; j < 4; j = j + 1) begin
      hash[(3*32+(3-j)*8)+:8] = a_reg1[j*8+:8];
      hash[(2*32+(3-j)*8)+:8] = b_reg1[j*8+:8];
      hash[(1*32+(3-j)*8)+:8] = c_reg1[j*8+:8];
      hash[(0*32+(3-j)*8)+:8] = d_reg1[j*8+:8];
    end
  end // always @ begin
  
  //---------------------------------------

  assign in_ready = in_ready0 & in_ready1;
  
endmodule // md5

`default_nettype wire





