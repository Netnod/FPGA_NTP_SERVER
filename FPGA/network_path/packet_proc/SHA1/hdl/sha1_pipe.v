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
// Module Name: sha1_pipe
// Description: Hash one 512bit chunk.
//              Pipeline that can accept a chunk every 10 clock cycle.
//              Latency is 40 cycles
// 

`timescale 1ns / 1ps
`default_nettype none
  
module sha1_pipe(
  input wire         clk,
  input wire         areset,
  output wire        in_ready, // ready for new chunk
  input wire         start,
  input wire [511:0] chunk,
  input wire [31:0]  h0_in,
  input wire [31:0]  h1_in,
  input wire [31:0]  h2_in,
  input wire [31:0]  h3_in,
  input wire [31:0]  h4_in,
  output wire        out_ready,
  output wire [31:0] h0_out,
  output wire [31:0] h1_out,
  output wire [31:0] h2_out,
  output wire [31:0] h3_out,
  output wire [31:0] h4_out
);

  wire stage_ready; 
  
  //----------------------------------------------------------------------------------------------
  // The pipe has 4 stages that could be active or not
  
  reg [3:0] pipe_state;
  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      pipe_state <= 'b0;
    end else begin
      if (start == 1'b1) begin
        pipe_state[0] <= start;
      end
      if (stage_ready == 1'b1) begin
        pipe_state[3:1] <= pipe_state[2:0];
        pipe_state[0]   <= start;
      end
    end
  end

  
  //--------------------------------------------------------------------------------
  // Each stage takes 10 clock cycles
  
  reg [3:0]  icnt;   // iteration count 0..9
  // Count cycles for every state
  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin
      icnt <= 4'd9;
    end else begin
      if (icnt < 4'd9) begin
        icnt <= icnt + 1;
      end else if (start == 1'b1 || pipe_state[2:0] != 3'b000) begin
        icnt <= 'b0;
      end
    end
  end

  assign stage_ready = icnt == 4'd9 ? 1'b1 : 1'b0;
  
  //--------------------------------------------------------------------------------

  wire [3:0] Start;
  assign Start[0] = start;
  assign Start[3:1] = pipe_state[2:0] & {3{stage_ready}};
  

  //--------------------------------------------------------------------------------
  // The pipe stages
  
  wire [511:0]  w [0:4];
  wire [31:0]   a [0:4], b [0:4], c [0:4], d [0:4], e [0:4];

  assign w[0] = chunk;
  assign a[0] = h0_in;
  assign b[0] = h1_in;
  assign c[0] = h2_in;
  assign d[0] = h3_in;
  assign e[0] = h4_in;
 
  genvar G;
  generate
    for (G = 0; G < 4; G = G+1) begin
      sha1_stage #(G) stage (
        .clk     (clk),
        .areset  (areset),
        .start   (Start[G]), 
        .icnt    (icnt),
        .w_in    (w[G]),
        .a_in    (a[G]),
        .b_in    (b[G]),
        .c_in    (c[G]),
        .d_in    (d[G]),
        .e_in    (e[G]),
        .w_out   (w[G+1]),
        .a_out   (a[G+1]),
        .b_out   (b[G+1]),
        .c_out   (c[G+1]),
        .d_out   (d[G+1]),
        .e_out   (e[G+1])
      );
    end
  endgenerate

  assign out_ready = pipe_state[3] & stage_ready;

  assign in_ready = stage_ready;
  
  assign h0_out = a[4];
  assign h1_out = b[4];
  assign h2_out = c[4];
  assign h3_out = d[4];
  assign h4_out = e[4];
    
endmodule // sha1_stage

`default_nettype wire



