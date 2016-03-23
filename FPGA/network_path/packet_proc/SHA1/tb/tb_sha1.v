//////////////////////////////////////////////////////////////////////////////////
// Company: Mechanical Men Sweden AB
// Engineer: Rolf Andersson
// 
// Create Date: 9/28/2015
// Design Name: 
// Module Name: SHA1 hashing for NTP payload
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Pipeline that can accept a new payload every 10 clock cycles.
//                      Latency is 26 cycles
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
`default_nettype none
  
module tb_sha1();

  reg         areset  = 1'b1;
  reg         aresetn;
  reg         clk     = 1'b0;

  always #5 clk <= ~clk;

  initial #30 areset = 1'b0;

  reg [159:0]  key;
  reg [383:0]  payload;
  wire [159:0] hash;

  reg          start = 1'b0;
  wire         done;

  wire         input_ready;
  
  sha1 dut (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (input_ready),
    .start     (start), 
    .key       (key),
    .payload   (payload),
    .hash_done (done),
    .hash      (hash)
  );

  localparam [159:0] test_key0     = 160'h6dea311109529e436c2b4fccae9bc753c16d1b48;
  localparam [383:0] test_payload0 = 384'he30003fa000100000001000000000000000000000000000000000000000000000000000000000000d9c1249c4981792f;
  localparam [159:0] test_hash0    = 160'h6b944dce3f05510d206f615f36e900fa532594c8;

`include "tb_sha1_func.sv"  
  reg [159:0] xxx = sha1_func(test_key0, test_payload0);

  localparam [159:0] test_key1     = ~160'h6dea311109529e436c2b4fccae9bc753c16d1b48;
  localparam [383:0] test_payload1 = ~384'he30003fa000100000001000000000000000000000000000000000000000000000000000000000000d9c1249c4981792f;
  localparam [159:0] test_hash1    = sha1_func(test_key1, test_payload1);

  initial begin

    @(negedge areset);
    @(posedge clk);

    @(posedge clk);
    key     = test_key0;
    payload = test_payload0;
    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;

//  @(posedge done);
    @(posedge input_ready);
//  @(negedge clk);
    @(posedge input_ready);

    key     = test_key1;
    payload = test_payload1;
    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;

  end

  initial begin

    @(posedge done);
    @(negedge clk);
    assert(hash == test_hash0);

    @(posedge done);
    @(negedge clk);
    assert(hash == test_hash1);

    @(posedge clk);
    $stop;
  end


  
endmodule // tb_sha1

`default_nettype wire





