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
// Module Name: ntp_clock_top
// Description: Top level of the ntp clock
// 

`timescale 1 ns / 1 ps
`default_nettype none

module ntp_clock_top (
  input  wire        reset,
  input  wire        TEN_MHZ_IN_N,
  input  wire        TEN_MHZ_IN_P,
  output wire        TEN_MHZ_OUT,
  input  wire        PPS_IN_N,
  input  wire        PPS_IN_P,
  output wire        PPS_OUT,
  input  wire        axi_aclk,
  input  wire        axi_aresetn,
  input  wire [4:0]  axi_araddr,
  input  wire [2:0]  axi_arprot,
  output wire        axi_arready,
  input  wire        axi_arvalid,
  input  wire [4:0]  axi_awaddr,
  input  wire [2:0]  axi_awprot,
  output wire        axi_awready,
  input  wire        axi_awvalid,
  input  wire        axi_bready,
  output wire [1:0]  axi_bresp,
  output wire        axi_bvalid,
  output wire [31:0] axi_rdata,
  input  wire        axi_rready,
  output wire [1:0]  axi_rresp,
  output wire        axi_rvalid,
  input  wire [31:0] axi_wdata,
  output wire        axi_wready,
  input  wire [3:0]  axi_wstrb,
  input  wire        axi_wvalid,
  output wire [63:0] NTP_TIME,
  output wire        NTP_TIME_UPD,
  output wire        PLL_locked,
  output wire        LED1,
  output wire        LED2,
  output wire        LED3,
  output wire        LED4,
  output wire        LED5,
  output wire        LED6,
  output wire        LED7,
  output wire        LED8,
  output wire        SYNC_OK,
  output wire        test
);
  
  wire PPS_IN;

  // Differental IO buffer
  ntp_clock_ds_buf ds_buf_0 (
    .IBUF_DS_N	(PPS_IN_N),
    .IBUF_DS_P	(PPS_IN_P),
    .IBUF_OUT	(PPS_IN)
  );

  wire   clk128;  // Multiplied clock

  wire   pll_psclk;
  wire   pll_psen;
  wire   pll_psincdec;
  wire   pll_psdone;
  
  ntp_clock_pll pll_0 (
    .reset	 (reset),
    .clk_in1_n   (TEN_MHZ_IN_N),
    .clk_in1_p   (TEN_MHZ_IN_P),
    .clk_out1    (TEN_MHZ_OUT),
    .clk_out2    (clk128),
    .locked	 (PLL_locked),
    .psclk	 (pll_psclk),
    .psdone	 (pll_psdone),
    .psen	 (pll_psen),
    .psincdec    (pll_psincdec)
  );

  ntp_clock ntp_clock_0 (
    .areset	     (reset),
    .clk128	     (clk128),
    .PPS_IN	     (PPS_IN),
    .PPS_OUT	     (PPS_OUT),
    .pll_locked	     (PLL_locked),
    .pll_psclk	     (pll_psclk),
    .pll_psdone	     (pll_psdone),
    .pll_psen	     (pll_psen),
    .pll_psincdec    (pll_psincdec),
    .axi_aclk        (axi_aclk),
    .axi_aresetn     (axi_aresetn),
    .axi_araddr      (axi_araddr),
    .axi_arprot      (axi_arprot),
    .axi_arready     (axi_arready),
    .axi_arvalid     (axi_arvalid),
    .axi_awaddr      (axi_awaddr),
    .axi_awprot      (axi_awprot),
    .axi_awready     (axi_awready),
    .axi_awvalid     (axi_awvalid),
    .axi_bready      (axi_bready),
    .axi_bresp       (axi_bresp),
    .axi_bvalid      (axi_bvalid),
    .axi_rdata       (axi_rdata),
    .axi_rready      (axi_rready),
    .axi_rresp       (axi_rresp),
    .axi_rvalid      (axi_rvalid),
    .axi_wdata       (axi_wdata),
    .axi_wready      (axi_wready),
    .axi_wstrb       (axi_wstrb),
    .axi_wvalid      (axi_wvalid),
    .NTP_TIME	     (NTP_TIME),
    .NTP_TIME_UPD    (NTP_TIME_UPD),
    .LED1	     (LED1),
    .LED2	     (LED2),
    .LED3	     (LED3),
    .LED4	     (LED4),
    .LED5	     (LED5),
    .LED6	     (LED6),
    .LED7	     (LED7),
    .LED8	     (LED8),
    .SYNC_OK         (SYNC_OK)
  );

  assign test = PPS_IN;

endmodule

`default_nettype wire
