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
// Module Name: Keymem_top
// Description: Top level of the key memory 
// 


`timescale 1ps / 1ps
`default_nettype none
  
module keymem_top #(
  parameter integer C_S_AXI_DATA_WIDTH = 32,
  parameter integer C_S_AXI_ADDR_WIDTH = 15
)(
  // AXI Lite register interface
  input wire                           s_axi_clk,
  input wire                           s_axi_aresetn, 
  output wire                          s_axi_awready,
  input wire [C_S_AXI_ADDR_WIDTH-1:0]  s_axi_awaddr,
  input wire [2:0]                     s_axi_awprot,
  input wire                           s_axi_awvalid,
  output wire                          s_axi_wready,
  input wire [C_S_AXI_DATA_WIDTH-1:0]  s_axi_wdata,
  input wire [3:0]                     s_axi_wstrb,
  input wire                           s_axi_wvalid,
  output wire                          s_axi_bvalid,
  output wire [1:0]                    s_axi_bresp,
  input wire                           s_axi_bready,
  output wire                          s_axi_arready,
  input wire                           s_axi_arvalid,
  input wire [C_S_AXI_ADDR_WIDTH-1:0]  s_axi_araddr,
  input wire [2:0]                     s_axi_arprot,
  output wire [C_S_AXI_DATA_WIDTH-1:0] s_axi_rdata,
  output wire [1:0]                    s_axi_rresp,
  output wire                          s_axi_rvalid,
  input wire                           s_axi_rready,

  input wire                           key_clk,
  input wire                           key_req,
  input wire [31:0]                    key_id,
  output reg                           key_ack,
  output wire [255:0]                  key
);

  wire                bram_rst_a;
  wire                bram_clk_a;
  wire                bram_en_a;
  wire [3:0]          bram_we_a;
  wire [14:0]         bram_addr_a;
  wire [31:0]         bram_wrdata_a;
  wire [31:0]         bram_rddata_a;
  
  axi_keymem_ctrl ctrl (
    .s_axi_aclk    (s_axi_clk),
    .s_axi_aresetn (s_axi_aresetn),
    .s_axi_awaddr  (s_axi_awaddr),
    .s_axi_awprot  (s_axi_awprot),
    .s_axi_awvalid (s_axi_awvalid),
    .s_axi_awready (s_axi_awready),
    .s_axi_wdata   (s_axi_wdata),
    .s_axi_wstrb   (s_axi_wstrb),
    .s_axi_wvalid  (s_axi_wvalid),
    .s_axi_wready  (s_axi_wready),
    .s_axi_bresp   (s_axi_bresp),
    .s_axi_bvalid  (s_axi_bvalid),
    .s_axi_bready  (s_axi_bready),
    .s_axi_araddr  (s_axi_araddr),
    .s_axi_arprot  (s_axi_arprot),
    .s_axi_arvalid (s_axi_arvalid),
    .s_axi_arready (s_axi_arready),
    .s_axi_rdata   (s_axi_rdata),
    .s_axi_rresp   (s_axi_rresp),
    .s_axi_rvalid  (s_axi_rvalid),
    .s_axi_rready  (s_axi_rready),
    .bram_rst_a    (bram_rst_a),
    .bram_clk_a    (bram_clk_a),
    .bram_en_a     (bram_en_a),
    .bram_we_a     (bram_we_a),
    .bram_addr_a   (bram_addr_a),
    .bram_wrdata_a (bram_wrdata_a),
    .bram_rddata_a (bram_rddata_a)
  );

  wire [255:0] doutb;
  
  keymem mem (
    .clka  (bram_clk_a),
    .ena   (bram_en_a),
    .wea   (|{bram_we_a}),
    .addra (bram_addr_a[14:2]),
    .dina  (bram_wrdata_a),
    .douta (bram_rddata_a),
    .clkb  (key_clk),
    .enb   (key_req),
    .web   (1'b0),
    .addrb (key_id[9:0]),
    .dinb  (256'b0),
    .doutb (doutb)
  );

  always @(posedge key_clk) begin
    key_ack <= key_req;
  end
    
  assign key = doutb;
  
endmodule // keymem_top

`default_nettype wire
