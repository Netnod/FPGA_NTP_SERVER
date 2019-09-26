//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : AXI-MM to PCI Express
// File       : axi_pcie3_v1_1_bram_wrap.v
// Version    : $IpVersion 
//-----------------------------------------------------------------------------

`include "axi4mm_axi_bridge.vh"
module axi_pcie3_v1_1_bram_wrap
#(
  parameter DATA_WIDTH = 256,
  parameter ECC_ENABLE = 1,
  parameter AXI4MM_ULTRA = 0
  )
(
 input clkin,
 input reset_n,
 input [DATA_WIDTH-1:0] DataIn,
 input [DATA_WIDTH/8-1:0] ParityIn,
 input wrEn,
 input rdEn,
 input [8:0] AddrIn,
 input [8:0] AddrOut,
 output [DATA_WIDTH-1:0] DataOut,
 output [DATA_WIDTH/8-1:0] ParityOut,
 output dbiterr
 );

   wire [DATA_WIDTH/64-1:0] dbiterr_wire;

   assign dbiterr = |dbiterr_wire;

   localparam MEM_CNT = DATA_WIDTH / 64;
   
   genvar 		    memcnt;
   generate
      for(memcnt=0;memcnt<MEM_CNT;memcnt=memcnt+1) begin : blk_mem_64B_parity
	      ntps_top_axi_pcie3_0_0_blk_mem_64B_parity u_buffermem(
					     .clka(clkin),
					     .wea(wrEn),
					     .addra(AddrIn),
					     .dina({ParityIn[(memcnt*8)+:8],DataIn[(memcnt*64)+:64]}),
					     .clkb(clkin),
					     //.rstb(~reset_n),
					     .enb(rdEn),
					     .addrb(AddrOut),
					     .doutb({ParityOut[(memcnt*8)+:8],DataOut[(memcnt*64)+:64]})
					     );
      end
   endgenerate
   
endmodule // axi4mm_bram_wrap
