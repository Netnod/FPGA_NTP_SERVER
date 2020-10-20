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
// File       : axi4mm_register_slice_wrap.v
// Version    : $IpVersion 
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi4mm_register_slice_wrap #(
   parameter C_AXI_ID_WIDTH = 4
) (
 input  wire           aclk,
 input  wire           aresetn,
 output wire [C_AXI_ID_WIDTH-1   : 0] s_axi_rid,
 output wire [255 : 0] s_axi_rdata,
 output wire [1   : 0] s_axi_rresp,
 output wire           s_axi_rlast,
 output wire           s_axi_rvalid,
 input  wire           s_axi_rready,
 input  wire [3   : 0] m_axi_rid,
 input  wire [255 : 0] m_axi_rdata,
 input  wire [1 : 0]   m_axi_rresp,
 input  wire           m_axi_rlast,
 input  wire           m_axi_rvalid,
 output wire           m_axi_rready
 );
  
  assign s_axi_rid = {C_AXI_ID_WIDTH{1'b0}}; 
  assign s_axi_rdata = 256'b0; 
  assign s_axi_rresp = 2'b0; 
  assign s_axi_rlast = 1'b0; 
  assign s_axi_rvalid = 1'b0; 
endmodule // axi4mm_register_slice_wrap
