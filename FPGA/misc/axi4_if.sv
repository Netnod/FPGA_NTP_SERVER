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
// Module Name: "any"
// Description:  Simple BFM of AXI4 lite
// 

`timescale 1 ns / 1 ps

interface axi4_if #(
  parameter integer C_M_AXI_ADDR_WIDTH = 32,
  parameter integer C_M_AXI_DATA_WIDTH = 32
)(
  input wire M_AXI_ACLK,
  input wire M_AXI_ARESETN
);
  
  logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_AWADDR;
  logic [2:0]                      M_AXI_AWPROT  = 3'b000;
  logic                            M_AXI_AWVALID = '0;
  logic                            M_AXI_AWREADY;
  logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_WDATA;
  logic [C_M_AXI_DATA_WIDTH/8-1:0] M_AXI_WSTRB   = '1;
  logic                            M_AXI_WVALID  = '0;
  logic                            M_AXI_WREADY;
  logic [1:0]                      M_AXI_BRESP;
  logic                            M_AXI_BVALID;
  logic                            M_AXI_BREADY  = '0;
  logic [C_M_AXI_ADDR_WIDTH-1:0]   M_AXI_ARADDR;
  logic [2:0]                      M_AXI_ARPROT  = 3'b001;
  logic                            M_AXI_ARVALID = '0;
  logic                            M_AXI_ARREADY;
  logic [C_M_AXI_DATA_WIDTH-1:0]   M_AXI_RDATA;
  logic [1:0]                      M_AXI_RRESP;
  logic                            M_AXI_RVALID;
  logic                            M_AXI_RREADY  = '0;

  modport master (
     output M_AXI_AWADDR, M_AXI_AWPROT, M_AXI_AWVALID, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID,
     input  M_AXI_AWREADY, M_AXI_WREADY, M_AXI_BRESP, M_AXI_BVALID,
     output M_AXI_BREADY,
     output M_AXI_ARADDR, M_AXI_ARPROT, M_AXI_ARVALID,
     input  M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID,
     output M_AXI_RREADY
  );
  
  modport slave (
     input  M_AXI_AWADDR, M_AXI_AWPROT, M_AXI_AWVALID, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID,
     output M_AXI_AWREADY, M_AXI_WREADY, M_AXI_BRESP, M_AXI_BVALID,
     input  M_AXI_BREADY,
     input  M_AXI_ARADDR, M_AXI_ARPROT, M_AXI_ARVALID,
     output M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID,
     input  M_AXI_RREADY
  );


  task write (input [31:0] a, d, output error);
    begin
      @(posedge M_AXI_ACLK);
      M_AXI_AWADDR <= a; M_AXI_AWVALID <= 1'b1;
      M_AXI_WDATA  <= d; M_AXI_WVALID <= 1'b1;
      M_AXI_BREADY <= 1'b1;
      do begin
        @(posedge M_AXI_ACLK);
        if (M_AXI_AWREADY == 1'b1) M_AXI_AWVALID <= 1'b0;
        if (M_AXI_WREADY == 1'b1) M_AXI_WVALID <= 1'b0;
      end
      while (M_AXI_BVALID == 1'b0);
      M_AXI_BREADY <= 1'b0;
      error = M_AXI_BRESP[1];
    end
  endtask // write

  
  task read (input [31:0] a, output [31:0] d, error);
    begin
      @(posedge M_AXI_ACLK);
      M_AXI_ARADDR <= a; M_AXI_ARVALID <= 1'b1;
      M_AXI_RREADY <= 1'b1;
      do begin
        @(posedge M_AXI_ACLK);
        if (M_AXI_ARREADY == 1'b1) M_AXI_ARVALID <= 1'b0;
      end
      while (M_AXI_RVALID == 1'b0);
      M_AXI_RREADY <= 1'b0;
      error = M_AXI_RRESP[1];
      d = M_AXI_RDATA;
    end
  endtask // read

endinterface // axi4_if

