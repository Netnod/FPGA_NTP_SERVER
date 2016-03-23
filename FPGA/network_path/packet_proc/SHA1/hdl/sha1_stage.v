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
// Module Name: sha1_stage
// Description: Calculate piece of SHA1 Hash. 2 iterations / clock cycle
// 

`timescale 1ns / 1ps
`default_nettype none
  
module sha1_stage #(
  parameter integer STAGE_NO = 0
)(
  input wire         clk,
  input wire         areset,
  input wire         start, 
  input wire [3:0]   icnt,
  input wire [511:0] w_in,
  input wire [31:0]  a_in,
  input wire [31:0]  b_in,
  input wire [31:0]  c_in,
  input wire [31:0]  d_in,
  input wire [31:0]  e_in,
  output reg [511:0] w_out,
  output wire [31:0] a_out,
  output wire [31:0] b_out,
  output wire [31:0] c_out,
  output wire [31:0] d_out,
  output wire [31:0] e_out
);

  // --------------------------------------------
  // SHA 1 specific stuff

  localparam K0 = 32'h5A827999;
  localparam K1 = 32'h6ED9EBA1;
  localparam K2 = 32'h8F1BBCDC; 
  localparam K3 = 32'hCA62C1D6;
  
  function [31:0] K;
    input integer N;
    begin
      case (N)
        0 : K = K0;
        1 : K = K1;
        2 : K = K2; 
        3 : K = K3;
      endcase
    end
  endfunction // case
  
  function [31:0] sha1_func;
    input [31:0] B, C, D;
    input integer N;
    begin
      case (N)
        0 : sha1_func = (B & C) | ((~B) & D);
        1 : sha1_func = B ^ C ^ D;
        2 : sha1_func = (B & C) | (B & D) | (C & D); 
        3 : sha1_func = B ^ C ^ D;
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

  integer i;

  // --------------------------------------------
  reg [31:0] Wreg [0:15];
  reg [31:0] Wi [0:15];
  always @(*) begin
    for (i = 0; i < 16; i = i+1) begin
      if (start == 1'b1) begin
        // Unpack input data 
        Wi[i] = w_in[(15-i)*32+:32];
      end else begin
        Wi[i] = Wreg[i];
      end
    end
  end

  // --------------------------------------------
  // Latch input data
  
  reg [31:0] A [0:2], B [0:2], C [0:2], D [0:2], E [0:2];
  reg [31:0] Areg, Breg, Creg, Dreg, Ereg;
  always @(posedge clk) begin
    if (start == 1'b1) begin
      Areg <= a_in; Breg <= b_in; Creg <= c_in; Dreg <= d_in; Ereg <= e_in;
    end else begin
      // update inputs for next cycle
      Areg <= A[2]; Breg <= B[2]; Creg <= C[2]; Dreg <= D[2]; Ereg <= E[2];
    end

    for (i = 0; i < 16; i=i+1) begin
      if (STAGE_NO == 0 && (icnt < 4'd7 || icnt == 4'd9)) begin
        if (start == 1'b1) begin
          Wreg[i] <= Wi[i];// + K(STAGE_NO);
        end else begin
          if (i < 14) begin
            Wreg[i] <= Wi[i+2];// + K(STAGE_NO);
          end else begin
            Wreg[i] <= Wi[i-14];// + K(STAGE_NO);
          end
        end
      end else begin
        if (i < 2) begin
          Wreg[0] <= rol(Wi[15] ^ Wi[10] ^ Wi[4] ^ Wi[2], 1);// + K(STAGE_NO);
          Wreg[1] <= rol(Wi[0] ^ Wi[11] ^ Wi[5] ^ Wi[3], 1);// + K(STAGE_NO);
        end else if (i < 14) begin
          Wreg[i] <= Wi[i+2];// + K(STAGE_NO);
        end else begin
          Wreg[i] <= Wi[i-14];// + K(STAGE_NO);
        end
      end
    end // for (i = 0; i < 16; i=i+1)
  end // always @ (posedge clk)
  
  
  // --------------------------------------------
  // Do two iteration in one cycle (10 cycles per stage)

  always @(*) begin
    {A[0], B[0], C[0], D[0], E[0]} = {Areg, Breg, Creg, Dreg, Ereg};
    for (i=0; i < 2; i=i+1) begin
      A[i+1] = rol(A[i], 5) + 
               sha1_func(B[i], C[i], D[i], STAGE_NO) + 
               E[i] + Wreg[i] + K(STAGE_NO);
      E[i+1] = D[i];
      D[i+1] = C[i];
      C[i+1] = rol(B[i], 30);
      B[i+1] = A[i];
    end
  end

  // --------------------------------------------
  // Pack W out

  always @(*) begin
    for (i = 0; i < 16; i = i+1) begin
      if (i < 16) begin
        w_out[(15-i)*32+:32] = Wreg[i];// - K(STAGE_NO);
      end
    end
  end

  assign a_out = A[2];
  assign b_out = B[2];
  assign c_out = C[2];
  assign d_out = D[2];
  assign e_out = E[2];
  
endmodule // sha1_stage

`default_nettype wire



