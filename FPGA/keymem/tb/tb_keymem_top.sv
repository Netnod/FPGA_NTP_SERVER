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
// Module Name: Keymem
// Description: Test bench for key memory 
// 

`timescale 1ns / 1ps
`default_nettype none


//`include "axi4_if.sv"

module tb_keymem_top;

  logic clk_axi = '0;
  always #4.0 clk_axi <= ~clk_axi;

  logic clk_pp = '0;
  always #3.2 clk_pp <= ~clk_pp;

  logic aresetn = '0;
  initial #30 aresetn = 1'b1;
  
  axi4_if #(15,32) axi_bus (clk_axi, aresetn);
                       
  logic         key_req = '0;
  logic [31:0]  key_id;
  logic         key_ack;
  logic [255:0] key;

  keymem_top dut (
    .s_axi_clk     (clk_axi),
    .s_axi_aresetn (aresetn), 
    .s_axi_awready (axi_bus.M_AXI_AWREADY),
    .s_axi_awaddr  (axi_bus.M_AXI_AWADDR[14:0]),
    .s_axi_awprot  (axi_bus.M_AXI_AWPROT),
    .s_axi_awvalid (axi_bus.M_AXI_AWVALID),
    .s_axi_wready  (axi_bus.M_AXI_WREADY),
    .s_axi_wdata   (axi_bus.M_AXI_WDATA),
    .s_axi_wstrb   (axi_bus.M_AXI_WSTRB),
    .s_axi_wvalid  (axi_bus.M_AXI_WVALID),
    .s_axi_bvalid  (axi_bus.M_AXI_BVALID),
    .s_axi_bresp   (axi_bus.M_AXI_BRESP),
    .s_axi_bready  (axi_bus.M_AXI_BREADY),
    .s_axi_arready (axi_bus.M_AXI_ARREADY),
    .s_axi_arvalid (axi_bus.M_AXI_ARVALID),
    .s_axi_araddr  (axi_bus.M_AXI_ARADDR[14:0]),
    .s_axi_arprot  (axi_bus.M_AXI_ARPROT),
    .s_axi_rdata   (axi_bus.M_AXI_RDATA),
    .s_axi_rresp   (axi_bus.M_AXI_RRESP),
    .s_axi_rvalid  (axi_bus.M_AXI_RVALID),
    .s_axi_rready  (axi_bus.M_AXI_RREADY),
    .key_clk       (clk_pp),
    .key_req       (key_req),
    .key_id        (key_id),
    .key_ack       (key_ack),
    .key           (key)
  );

  logic [31:0]  data;
  logic         error;
  
  initial begin
    @(posedge aresetn);
    @(posedge clk_axi);
    @(posedge clk_axi);

    axi_bus.read(32'h100, data, error);
    axi_bus.write(32'h100, 32'h5555_5555, error);
    axi_bus.read(32'h100, data, error);
    
    @(posedge clk_axi);
    @(posedge clk_pp);
    key_id  <= 256/8/4;
    key_req <= 1'b1;
    
    @(posedge clk_pp);
    key_req <= 1'b0;
    
    @(posedge clk_axi);

    $stop;
    
  end
  
endmodule // tb_keymem_top

