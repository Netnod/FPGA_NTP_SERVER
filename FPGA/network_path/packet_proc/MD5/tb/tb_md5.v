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
// Module Name: tb_md5
// Description: Test bench for md5
//

`timescale 1ns / 1ps
`default_nettype none
  
module tb_md5();

  reg         areset  = 1'b1;
  reg         aresetn;
  reg         clk     = 1'b0;

  always #5 clk <= ~clk;

  initial #30 areset = 1'b0;

  reg [159:0]  key;
  reg [383:0]  payload;
  wire [127:0] hash;

  wire         input_ready;
  reg          start = 1'b0;
  wire         done;

  md5 dut (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (input_ready),
    .start     (start), 
    .key       (key),
    .payload   (payload),
    .hash_done (done),
    .hash      (hash)
  );

  localparam [160:0] test_key0     = 160'h7e644158742930654d7a617b677465744d605c35;
  localparam [383:0] test_payload0 = 384'he30003fa000100000001000000000000000000000000000000000000000000000000000000000000d9c140f243f2a5f6;
  localparam [127:0] test_hash0    = 128'h875f9463f635d24d42c00715a42e0f93;

`include "tb_md5_func.sv"
  
  reg [127:0] xxx = md5_func(test_key0, test_payload0);

  localparam [159:0] test_key1     = ~160'h6dea311109529e436c2b4fccae9bc753c16d1b48;
  localparam [383:0] test_payload1 = ~384'he30003fa000100000001000000000000000000000000000000000000000000000000000000000000d9c1249c4981792f;
  localparam [127:0] test_hash1    = md5_func(test_key1, test_payload1);

  initial begin
    @(negedge areset);
    @(posedge clk);
    @(posedge clk);

    key     = test_key0;
    payload = test_payload0;

    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;
    key     = 'bX;
    payload = 'bX;


//  @(posedge done);
//   @(posedge input_ready);
//  @(negedge clk);
    @(posedge input_ready);

    key     = test_key1;
    payload = test_payload1;
    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;
    key     = 'bX;
    payload = 'bX;

  end

  
  initial begin
    @(posedge done);
    @(negedge clk);
    assert(hash == test_hash0);
//    $stop;
    @(posedge done);
    @(negedge clk);
    assert(hash == test_hash1);

    @(posedge clk);
    $stop;
  end

endmodule // tb_md5

`default_nettype wire





