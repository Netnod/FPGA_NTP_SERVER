//======================================================================
//
// network_path_top.v
// ------------------
// Top level module that wraps the network path and its associated
// keymem into a common unit. This removes a huge amount of
// clutter at the top level. Note that this is just a stepping
// stone to a new network_path.
//
// Note: For multiple instances the AXI_NP_INDEX and AXI_KEY_INDEX
// must be overriden during instantiation.
//
//
// Author: Joachim Strombergson.
//
// Copyright (c) 2020, The Swedish Post and Telecom Authority (PTS)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in
//    the documentation and/or other materials provided with the
//    distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
// COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
// ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//
//======================================================================

`default_nettype none

module network_path_top #(
  parameter [4:0]   AXI_NP_INDEX = 5'd0,
  parameter [4:0]   AXI_KM_INDEX = 5'd5
  )
  (
  /// AXI Lite register interface
  input wire 	        s_axi_clk,
  input wire 	        s_axi_aresetn,
  input wire [383 : 0]  s_axi_awaddr,
  input wire [11 : 0]   s_axi_awvalid,
  output wire [11 : 0]  s_axi_awready,
  input wire [383 : 0]  s_axi_wdata,
  input wire [11 : 0]   s_axi_wvalid,
  output wire [11 : 0]  s_axi_wready,
  output wire [23 : 0]  s_axi_bresp,
  output wire [11 : 0]  s_axi_bvalid,
  input wire [11 : 0]   s_axi_bready,
  input wire [383 : 0]  s_axi_araddr,
  input wire [11 : 0]   s_axi_arvalid,
  output wire [11 : 0]  s_axi_arready,
  output wire [383 : 0] s_axi_rdata,
  output wire [23 : 0]  s_axi_rresp,
  output wire [11 : 0]  s_axi_rvalid,
  input wire [11 : 0]   s_axi_rready,
  input wire [47 : 0]   s_axi_wstrb,
  input wire [35 : 0]   s_axi_arprot,
  input wire [35 : 0]   s_axi_awprot,

  // NTP times
  input wire [63:0]     ntp_time_a,
  input wire 	        ntp_time_upd_a,
  input wire [63:0]     ntp_time_b,
  input wire 	        ntp_time_upd_b,

  // NTP SYNC status
  input wire 	        ntp_sync_ok_a,
  input wire 	        ntp_sync_ok_b,

  // Ethernet PHY.
  output wire [2 : 0]   xphy_config,
  input wire  [4 : 0]   xphy_status,
  input wire [63 : 0]   xgmii_rxd,
  input wire [7  : 0]   xgmii_rxc,
  output wire [63  : 0] xgmii_txd,
  output wire [7   : 0] xgmii_txc,

  input wire 	        clk156,
  input wire 	        areset_clk156,
  input wire 	        sys_reset
);


  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  // Key Memory
  wire 	       key_req;
  wire [31:0]  key_id;
  wire 	       key_ack;
  wire [255:0] key;


  //----------------------------------------------------------------
  // Instantiations.
  //----------------------------------------------------------------
  network_path network_path_inst (
    .s_axi_clk           (s_axi_clk),
    .s_axi_aresetn       (s_axi_aresetn),

    .s_axi_awready       (s_axi_awready[(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_awaddr        (s_axi_awaddr [(AXI_NP_INDEX * 32) +: 32]),
    .s_axi_awvalid       (s_axi_awvalid[(AXI_NP_INDEX * 1) +: 1]),

    .s_axi_wready        (s_axi_wready [(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_wdata         (s_axi_wdata  [(AXI_NP_INDEX * 32) +: 32]),
    .s_axi_wstrb         (s_axi_wstrb  [(AXI_NP_INDEX * 32/8) +: 32/8]),
    .s_axi_wvalid        (s_axi_wvalid [(AXI_NP_INDEX * 1) +: 1]),

    .s_axi_bvalid        (s_axi_bvalid [(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_bresp         (s_axi_bresp  [(AXI_NP_INDEX * 2) +: 2]),
    .s_axi_bready        (s_axi_bready [(AXI_NP_INDEX * 1) +: 1]),

    .s_axi_arready       (s_axi_arready[(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_arvalid       (s_axi_arvalid[(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_araddr        (s_axi_araddr [(AXI_NP_INDEX * 32) +: 32]),

    .s_axi_rdata         (s_axi_rdata  [(AXI_NP_INDEX * 32) +: 32]),
    .s_axi_rresp         (s_axi_rresp  [(AXI_NP_INDEX * 2) +: 2]),
    .s_axi_rvalid        (s_axi_rvalid [(AXI_NP_INDEX * 1) +: 1]),
    .s_axi_rready        (s_axi_rready [(AXI_NP_INDEX * 1) +: 1]),

    .ntp_time_a          (ntp_time_a),
    .ntp_time_upd_a      (ntp_time_upd_a),
    .ntp_time_b          (ntp_time_b),
    .ntp_time_upd_b      (ntp_time_upd_b),

    .ntp_sync_ok_a       (ntp_sync_ok_a),
    .ntp_sync_ok_b       (ntp_sync_ok_b),

    .key_req             (key_req),
    .key_id              (key_id),
    .key_ack             (key_ack),
    .key                 (key),

    .xphy_config         (xphy_config),
    .xphy_status         (xphy_status),
    .xgmii_rxd           (xgmii_rxd),
    .xgmii_rxc           (xgmii_rxc),
    .xgmii_txd           (xgmii_txd),
    .xgmii_txc           (xgmii_txc),

    .clk156              (clk156),
    .areset_clk156       (areset_clk156),
    .sys_reset           (sys_reset)
  );


  keymem_top keymem_top_inst (
    .s_axi_clk     (s_axi_clk),
    .s_axi_aresetn (s_axi_aresetn),

    .s_axi_awready (s_axi_awready[(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_awaddr  (s_axi_awaddr [(AXI_KM_INDEX * 32) +: 15]),
    .s_axi_awprot  (s_axi_awprot [(AXI_KM_INDEX * 3) +: 3]),
    .s_axi_awvalid (s_axi_awvalid[(AXI_KM_INDEX * 1) +: 1]),

    .s_axi_wready  (s_axi_wready [(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_wdata   (s_axi_wdata  [(AXI_KM_INDEX * 32) +: 32]),
    .s_axi_wstrb   (s_axi_wstrb  [(AXI_KM_INDEX * 32/8) +: 32/8]),
    .s_axi_wvalid  (s_axi_wvalid [(AXI_KM_INDEX * 1) +: 1]),

    .s_axi_bvalid  (s_axi_bvalid [(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_bresp   (s_axi_bresp  [(AXI_KM_INDEX * 2) +: 2]),
    .s_axi_bready  (s_axi_bready [(AXI_KM_INDEX * 1) +: 1]),

    .s_axi_arready (s_axi_arready[(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_arvalid (s_axi_arvalid[(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_araddr  (s_axi_araddr [(AXI_KM_INDEX * 32) +: 15]),
    .s_axi_arprot  (s_axi_arprot [(AXI_KM_INDEX * 3) +: 3]),

    .s_axi_rdata   (s_axi_rdata  [(AXI_KM_INDEX * 32) +: 32]),
    .s_axi_rresp   (s_axi_rresp  [(AXI_KM_INDEX * 2) +: 2]),
    .s_axi_rvalid  (s_axi_rvalid [(AXI_KM_INDEX * 1) +: 1]),
    .s_axi_rready  (s_axi_rready [(AXI_KM_INDEX * 1) +: 1]),

    .key_clk       (clk156),
    .key_req       (key_req),
    .key_id        (key_id),
    .key_ack       (key_ack),
    .key           (key)
  );


endmodule // network_path_top

`default_nettype wire

//======================================================================
// EOF network_path_top.v
//======================================================================
