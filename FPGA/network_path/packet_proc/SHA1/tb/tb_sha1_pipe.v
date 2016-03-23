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
  
module tb_sha1_pipe();

  // Initial hash values
  localparam [31:0] H0 = 32'h67452301;
  localparam [31:0] H1 = 32'hEFCDAB89;
  localparam [31:0] H2 = 32'h98BADCFE;
  localparam [31:0] H3 = 32'h10325476;
  localparam [31:0] H4 = 32'hC3D2E1F0;

  reg         areset  = 1'b1;
  reg         aresetn;
  reg         clk     = 1'b0;

  always #5 clk <= ~clk;
  initial #30 areset = 1'b0;

  reg          start = 1'b0;
  reg [511:0]  chunk;
  wire         ready;
  wire [31:0] h0_out;
  wire [31:0] h1_out;
  wire [31:0] h2_out;
  wire [31:0] h3_out;
  wire [31:0] h4_out;

  sha1_pipe pipe (
    .clk       (clk),
    .areset    (areset),
    .in_ready  (),
    .start     (start), 
    .chunk     (chunk),
    .h0_in     (H0),
    .h1_in     (H1),
    .h2_in     (H2),
    .h3_in     (H3),
    .h4_in     (H4),
    .out_ready (ready),
    .h0_out    (h0_out),
    .h1_out    (h1_out),
    .h2_out    (h2_out),
    .h3_out    (h3_out),
    .h4_out    (h4_out)
  );

  // test data from fips180-2
  localparam [511:0] chunk0 = 512'h61626380_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000018;
  localparam [159:0] phash0  = 160'h42541b35_5738d5e1_21834873_681e6df6_d8fdf6ad; // a9993e36_4706816a_ba3e2571_7850c26c_9cd0d89d;
  localparam [511:0] chunk1 = 512'h61626364_62636465_63646566_64656667_65666768_66676869_6768696a_68696a6b_696a6b6c_6a6b6c6d_6b6c6d6e_6c6d6e6f_6d6e6f70_6e6f7071_80000000_00000000;
  localparam [159:0] phash1  = 160'h8ce34517_d3ad7c25_6b4e1883_74351cd2_86838382; //  f4286818_c37b27ae_0408f581_84677148_4a566572;

  initial begin
    @(negedge areset);
    @(posedge clk);
    @(posedge clk);

    chunk   = chunk0;

    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;

    @(posedge ready);
    @(negedge clk);
    assert({h0_out, h1_out, h2_out, h3_out, h4_out} == phash0);

    @(posedge clk);
    @(posedge clk);

    chunk   = chunk1;

    start   = 1'b1;
    @(posedge clk);
    start   = 1'b0;

    @(posedge ready);
    @(negedge clk);
    assert({h0_out, h1_out, h2_out, h3_out, h4_out} == phash1);

    @(posedge clk);
    @(posedge clk);
    $stop;
  end
  
endmodule

`default_nettype wire





