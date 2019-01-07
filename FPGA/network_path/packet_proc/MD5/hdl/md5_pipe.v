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
// Module Name: md5_pipe
// Description: Hash one 512bit chunk.
//              Pipeline that can accept a chunk every 8 clock cycle.
//              Latency is 64 cycles

`timescale 1ns / 1ps
`default_nettype none
  
module md5_pipe(
  input wire         clk,
  input wire         areset,
  output wire        in_ready,   // ready for new chunk 
  input wire         start,
  input wire [511:0] chunk,
  input wire [31:0]  a_in,
  input wire [31:0]  b_in,
  input wire [31:0]  c_in,
  input wire [31:0]  d_in,
  output wire        out_ready,  // output stage ready a-d out availabe 1 cycle later
  output wire [31:0] a_out,
  output wire [31:0] b_out,
  output wire [31:0] c_out,
  output wire [31:0] d_out
);

  wire stage_ready; 
  
  //--------------------------------------------------------------------------
  // The pipe has 8 stages that could be active or not
  
  reg [7:0] pipe_state;
  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      pipe_state <= 'b0;
    end else begin
      if (start == 1'b1) begin
        pipe_state[0] <= start;
      end
      if (stage_ready == 1'b1) begin
        pipe_state[7:1] <= pipe_state[6:0];
        pipe_state[0]   <= start;
      end
    end
  end // always @ (posedge clk, posedge areset)

  
  //-------------------------------------------------------------------------
  // Each stage takes 1+8 (overlapped) clock cycles
  
  reg [2:0]  icnt;   // iteration count 7,0,1-6
  // Count cycles for every state control muxes etc 
  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      icnt <= 3'd7;
    end else begin
      if (start == 1'b1) begin
        icnt <= 'b0;
      end else if (pipe_state[7:0] == 8'h0) begin
	icnt <= 3'd7;
      end else if (icnt < 3'd7) begin
        icnt <= icnt + 1;
      end else begin
        icnt <= 'b0;
      end
    end // else: !if(areset == 1'b1)
  end // always @ (posedge clk, posedge areset)

  assign stage_ready = icnt == 3'd7 ? 1'b1 : 1'b0;
  
  //------------------------------------------------------------------------- 

  wire [7:0] start_stage;
  assign start_stage[0] = start;
  assign start_stage[7:1] = pipe_state[6:0] & {7{stage_ready}};

  //-------------------------------------------------------------------------
  // The pipe use 2 stages for every round
  wire [511:0] m [0:8];
  wire [31:0]  a [0:8], b [0:8], c [0:8], d [0:8];

  assign m[0] = chunk;
  assign a[0] = a_in;
  assign b[0] = b_in;
  assign c[0] = c_in;
  assign d[0] = d_in;
 
  genvar G;
  generate
    for (G = 0; G < 8; G = G+1) begin
      md5_stage #(G/2) stage (
        .clk     (clk),
        .areset  (areset),
        .start   (start_stage[G]), 
        .icnt    ({G[0],icnt}),
        .m_in    (m[G]),
        .a_in    (a[G]),
        .b_in    (b[G]),
        .c_in    (c[G]),
        .d_in    (d[G]),
        .m_out   (m[G+1]),
        .a_out   (a[G+1]),
        .b_out   (b[G+1]),
        .c_out   (c[G+1]),
        .d_out   (d[G+1])
      );
    end
  endgenerate

  assign in_ready = stage_ready;
  
  assign a_out = a[8];
  assign b_out = b[8];
  assign c_out = c[8];
  assign d_out = d[8];

  assign out_ready = pipe_state[7] & stage_ready;
    
endmodule // md5_stage

`default_nettype wire

//------------------------------------------------------------------------- 
