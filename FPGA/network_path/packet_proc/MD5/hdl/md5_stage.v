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
// Module Name: md5_stage
// Description: Calculate piece of MD5 Hash. 1 iterations / clock cycle
//
//  This implemenation improves timining by spliting the additions
//   A + F + K[i] + M over 2 overlapped clock cycles.
//   (M + K + A) + F
//

`timescale 1ns / 1ps
`default_nettype none
  
module md5_stage #(
  parameter integer ROUND_NO = 0
)(
  input wire         clk,
  input wire         areset,
  input wire         start, 
  input wire [3:0]   icnt, 
  input wire [511:0] m_in,
  input wire [31:0]  a_in,
  input wire [31:0]  b_in,
  input wire [31:0]  c_in,
  input wire [31:0]  d_in,
  output reg [511:0] m_out,
  output wire [31:0] a_out,
  output wire [31:0] b_out,
  output wire [31:0] c_out,
  output wire [31:0] d_out
);


  // --------------------------------------------
  // MD5 specific stuff

  // Lookup table for Shift
  function [4:0] S;
    input [1:0] N;
    begin : ss
      reg [511:0] temp_s;
      case (ROUND_NO)
        0 : temp_s = { 5'd7, 5'd12, 5'd17, 5'd22};
        1 : temp_s = { 5'd5,  5'd9, 5'd14, 5'd20};
        2 : temp_s = { 5'd4, 5'd11, 5'd16, 5'd23};
        3 : temp_s = { 5'd6, 5'd10, 5'd15, 5'd21};
      endcase
      S = temp_s[(3-N)*5+:5];
    end
  endfunction // case

  // Lookup table for K term
  function [31:0] K;
    input [3:0] N;
    begin : kk
      reg [511:0] temp_k;
      case (ROUND_NO)
        0 : temp_k = {{ 32'hd76aa478, 32'he8c7b756, 32'h242070db, 32'hc1bdceee },
                      { 32'hf57c0faf, 32'h4787c62a, 32'ha8304613, 32'hfd469501 },
                      { 32'h698098d8, 32'h8b44f7af, 32'hffff5bb1, 32'h895cd7be },
                      { 32'h6b901122, 32'hfd987193, 32'ha679438e, 32'h49b40821 }};
        1 : temp_k = {{ 32'hf61e2562, 32'hc040b340, 32'h265e5a51, 32'he9b6c7aa },
                      { 32'hd62f105d, 32'h02441453, 32'hd8a1e681, 32'he7d3fbc8 },
                      { 32'h21e1cde6, 32'hc33707d6, 32'hf4d50d87, 32'h455a14ed },
                      { 32'ha9e3e905, 32'hfcefa3f8, 32'h676f02d9, 32'h8d2a4c8a }};
        2 : temp_k = {{ 32'hfffa3942, 32'h8771f681, 32'h6d9d6122, 32'hfde5380c },
                      { 32'ha4beea44, 32'h4bdecfa9, 32'hf6bb4b60, 32'hbebfbc70 },
                      { 32'h289b7ec6, 32'heaa127fa, 32'hd4ef3085, 32'h04881d05 },
                      { 32'hd9d4d039, 32'he6db99e5, 32'h1fa27cf8, 32'hc4ac5665 }};
        3 : temp_k = {{ 32'hf4292244, 32'h432aff97, 32'hab9423a7, 32'hfc93a039 },
                      { 32'h655b59c3, 32'h8f0ccc92, 32'hffeff47d, 32'h85845dd1 },
                      { 32'h6fa87e4f, 32'hfe2ce6e0, 32'ha3014314, 32'h4e0811a1 },
                      { 32'hf7537e82, 32'hbd3af235, 32'h2ad7d2bb, 32'heb86d391 }};
      endcase
      K = temp_k[(15-N)*32+:32];
    end
  endfunction // case

  // Non linear function
  function [31:0] md5_func;
    input [31:0] B, C, D;
    begin
      case (ROUND_NO)
//        0 : md5_func = (B & C) | ((~B) & D);
//        1 : md5_func = (D & B) | ((~D) & C);
        0 : md5_func = D ^ (B & (C ^ D));
        1 : md5_func = C ^ (D & (B ^ C));
        2 : md5_func = B ^ C ^ D;
        3 : md5_func = C ^ (B | (~D));
      endcase
    end
  endfunction

  // --------------------------------------------
  // rotate left, help function

  function [31:0] rol;
    input [31:0] din;
    input [31:0] shift;
    begin : rol_tmp
      reg [31:0] dmy;
      {rol, dmy} = {din, din} << shift;
    end
  endfunction // for

  // --------------------------------------------
  // unpack input data and reorder from little endian
  
  integer i,j;

  reg [31:0] Mi [0:15];
  always @(*) begin
    for (i = 0; i < 16; i = i+1) begin
      for (j = 0; j < 4; j = j + 1) begin
        Mi[i][(3-j)*8+:8] = m_in[((15-i)*32+j*8)+:8];
      end
    end
  end
  

  // --------------------------------------------
  // Latch input data
  
  wire [31:0] A, B, C, D;
  reg [31:0]  Areg, Breg, Creg, Dreg;
  reg [31:0]  Mreg ;
  reg [31:0]  Freg;

  always @(posedge clk) begin
    if (start == 1'b1) begin

      // Initialize stuff
     
      case (ROUND_NO)
        0 : Mreg <= Mi[icnt]            + K(icnt) + a_in;
        1 : Mreg <= Mi[(icnt*5+1) % 16] + K(icnt) + a_in;
        2 : Mreg <= Mi[(icnt*3+5) % 16] + K(icnt) + a_in;
        3 : Mreg <= Mi[(icnt*7) % 16]   + K(icnt) + a_in;
      endcase // case (ROUND_NO)

      Freg <= md5_func(b_in, c_in, d_in);

      Areg <= a_in; Breg <= b_in; Creg <= c_in; Dreg <= d_in;

    end else begin

      // update inputs for next cycle
      case (ROUND_NO)
        0 : Mreg <= Mi[icnt]            + K(icnt) + A;
        1 : Mreg <= Mi[(icnt*5+1) % 16] + K(icnt) + A;
        2 : Mreg <= Mi[(icnt*3+5) % 16] + K(icnt) + A;
        3 : Mreg <= Mi[(icnt*7) % 16]   + K(icnt) + A;
      endcase // case (ROUND_NO)

      Freg <= md5_func(B, C, D);

      Areg <= A; Breg <= B; Creg <= C; Dreg <= D;

    end
  end
  
  // --------------------------------------------

  assign D = Creg;
  assign C = Breg;
  assign B = Breg + rol(Freg + Mreg, S((icnt-1) % 4));
  assign A = Dreg;

  // --------------------------------------------

  assign a_out = A;
  assign b_out = B;
  assign c_out = C;
  assign d_out = D;

  // --------------------------------------------
  // Send m_in to next stage.
  always @(posedge clk) begin
    if (start == 1'b1) begin
      m_out <= m_in;
    end
  end

endmodule // md5_stage

`default_nettype wire



