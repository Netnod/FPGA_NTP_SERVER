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
// Module Name: tb_md5_pipe
// Description: Test bench for the md5_pipe.
//

`timescale 1ns / 1ps
`default_nettype none
  
module tb_md5_pipe();

  // Initial hash values
  localparam [31:0] A0 = 32'h67452301;
  localparam [31:0] B0 = 32'hefcdab89;
  localparam [31:0] C0 = 32'h98badcfe;
  localparam [31:0] D0 = 32'h10325476;

  reg         areset  = 1'b1;
  reg         aresetn;
  reg         clk     = 1'b0;

  always #5 clk <= ~clk;
  initial #30 areset = 1'b0;

  reg          start = 1'b0;
  reg [511:0]  chunk;
  wire         in_ready;
  wire         ready;
  
  wire [31:0]  a_out, b_out, c_out, d_out;

   md5_pipe pipe (
    .clk         (clk),
    .areset      (areset),
    .in_ready    (in_ready),
    .start       (start), 
    .chunk       (chunk),
    .a_in        (A0),
    .b_in        (B0),
    .c_in        (C0),
    .d_in        (D0),
    .out_ready   (ready),
    .a_out       (a_out),
    .b_out       (b_out),
    .c_out       (c_out),
    .d_out       (d_out)
  );

  wire [31:0]  a_sum, b_sum, c_sum, d_sum;
  assign a_sum = a_out + A0;
  assign b_sum = b_out + B0;
  assign c_sum = c_out + C0;
  assign d_sum = d_out + D0;
  
  // Byte reverse sum big endian style
  reg [31:0]  a_sum_r, b_sum_r, c_sum_r, d_sum_r;
  // Assemble final hash value and swap bytes
  integer j;
  always @(*) begin
    for (j = 0; j < 4; j = j + 1) begin
      a_sum_r[(3-j)*8+:8] = a_sum[j*8+:8];
      b_sum_r[(3-j)*8+:8] = b_sum[j*8+:8];
      c_sum_r[(3-j)*8+:8] = c_sum[j*8+:8];
      d_sum_r[(3-j)*8+:8] = d_sum[j*8+:8];
    end
  end // always @ begin
  
  //---------------------------------------
  localparam [511:0] chunk0 = 512'h01234567_89800000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_28000000_00000000;
  localparam [127:0] phash0 = 128'h05c45162_90e95757_ecf7a45a_c2593bb4;

  localparam [511:0] chunk1 = 512'hc5cb8591_2c7b0bfa_58a5f59c_396eafd4_80000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_80000000_00000000;
  localparam [127:0] phash1 = 128'hb1863da1_617e95c4_e3f117a8_71e8d230;

  // Empty msg
  localparam [511:0] chunk2 = 512'h80000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000;
  localparam [127:0] phash2 = 128'hd41d8cd9_8f00b204_e9800998_ecf8427e;
  // 'A'
  localparam [511:0] chunk3 = 512'h41800000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_08000000_00000000;
  localparam [127:0] phash3 = 128'h7fc56270_e7a70fa8_1a5935b7_2eacbe29;
  

  initial begin
    @(negedge areset);
    @(posedge clk);
    @(posedge clk);

  //  @(posedge in_ready);
    start   = 1'b1;
    chunk   = chunk0;
    @(posedge clk);
    start   = 1'b0;
    chunk   = 'bX;

    @(posedge in_ready);
    start   = 1'b1;
    chunk   = chunk1;
    @(posedge clk);
    start   = 1'b0;
    chunk   = 'bX;

    @(posedge in_ready);
    start   = 1'b1;
    chunk   = chunk2;
    @(posedge clk);
    start   = 1'b0;
    chunk   = 'bX;

    @(posedge in_ready);
    start   = 1'b1;
    chunk   = chunk3;
    @(posedge clk);
    start   = 1'b0;
    chunk   = 'bX;

    @(posedge in_ready);
    start   = 1'b1;
    chunk   = chunk1;
    @(posedge clk);
    start   = 1'b0;
    chunk   = 'bX;

    @(posedge ready);
    @(posedge clk);
    @(negedge clk);
    assert({a_sum_r, b_sum_r, c_sum_r, d_sum_r} == phash0);
    
    @(posedge ready);
    @(posedge clk);
    @(negedge clk); 
    assert({a_sum_r, b_sum_r, c_sum_r, d_sum_r} == phash1);

    @(posedge ready);
    @(posedge clk);
    @(negedge clk);
    assert({a_sum_r, b_sum_r, c_sum_r, d_sum_r} == phash2);

    @(posedge ready);
    @(posedge clk);
    @(negedge clk);
    assert({a_sum_r, b_sum_r, c_sum_r, d_sum_r} == phash3);

    @(posedge ready);
    @(posedge clk);
    @(negedge clk);
    assert({a_sum_r, b_sum_r, c_sum_r, d_sum_r} == phash1);

    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    $stop;
  end
  
endmodule

`default_nettype wire





