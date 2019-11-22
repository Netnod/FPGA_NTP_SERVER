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
// Module Name: network_path
// Description: Wrap complete network path from including actual NTP server.
//              Includes shared logic for clocks and sync
//

`timescale 1ps / 1ps
`default_nettype none

module network_path_shared #(
  parameter [4:0]   PRTAD              = 5'd0,   // For MDIO addressing
  parameter integer C_S_AXI_DATA_WIDTH = 32,
  parameter integer C_S_AXI_ADDR_WIDTH = 9
 )(
  /// AXI Lite register interface
  input wire         s_axi_clk,
  input wire         s_axi_aresetn,
  output wire        s_axi_awready,
  input wire [31:0]  s_axi_awaddr,
  input wire         s_axi_awvalid,
  output wire        s_axi_wready,
  input wire [31:0]  s_axi_wdata,
  input wire [3:0]   s_axi_wstrb,
  input wire         s_axi_wvalid,
  output wire        s_axi_bvalid,
  output wire [1:0]  s_axi_bresp,
  input wire         s_axi_bready,
  output wire        s_axi_arready,
  input wire         s_axi_arvalid,
  input wire [31:0]  s_axi_araddr,
  output wire [31:0] s_axi_rdata,
  output wire [1:0]  s_axi_rresp,
  output wire        s_axi_rvalid,
  input wire         s_axi_rready,

  // NTP times
  input wire [63:0]  ntp_time_a,
  input wire         ntp_time_upd_a,
  input wire [63:0]  ntp_time_b,
  input wire         ntp_time_upd_b,

  // NTP SYNC status
  input wire 	     ntp_sync_ok_a,
  input wire 	     ntp_sync_ok_b,

  // Key Memory
  output wire        key_req,
  output wire [31:0] key_id,
  input wire         key_ack,
  input wire [255:0] key,

  // clocks
  input wire         xphy_refclk_n,
  input wire         xphy_refclk_p,

  // sfp+
  output wire        xphy_txp,
  output wire        xphy_txn,
  input wire         xphy_rxp,
  input wire         xphy_rxn,
  input wire         signal_lost,
  input wire         module_detect_n,
  input wire         tx_fault,
  output wire        tx_disable,

  // MDIO controller
  input wire         mdc,
  input wire         mdio_in,
  output wire        mdio_out,
  output wire        mdio_tri,

  // shared control signals from phy0 to phy1-3
  output wire        clk156,
  output wire        txusrclk,
  output wire        txusrclk2,
  output wire        areset_clk156,
  output wire        gttxreset,
  output wire        gtrxreset,
  output wire        txuserrdy,
  output wire        qplllock,
  output wire        qplloutclk,
  output wire        qplloutrefclk,
  output wire        reset_counter_done,

  output wire        tx_resetdone,

  input wire         sys_reset,
  input wire         sim_speedup_control
);

  wire [31:0]  gen_config;
  wire [47:0]  pp_mac_addr0;
  wire [47:0]  pp_mac_addr1;
  wire [47:0]  pp_mac_addr2;
  wire [47:0]  pp_mac_addr3;
  wire [31:0]  pp_ipv4_addr0;
  wire [31:0]  pp_ipv4_addr1;
  wire [31:0]  pp_ipv4_addr2;
  wire [31:0]  pp_ipv4_addr3;
  wire [127:0] pp_ipv6_addr0;
  wire [127:0] pp_ipv6_addr1;
  wire [127:0] pp_ipv6_addr2;
  wire [127:0] pp_ipv6_addr3;
  wire [31:0]  ntp_config;
  wire [31:0]  ntp_root_delay;
  wire [31:0]  ntp_root_disp;
  wire [31:0]  ntp_ref_id;
  wire [63:0]  ntp_ref_ts;
  wire [31:0]  ntp_rx_ofs;
  wire [31:0]  ntp_tx_ofs;
  wire [31:0]  pp_status;
  wire [1:0]   xphy_config;
  wire [7:0]   xphy_status;

  wire   ntp_sync_ok;
  assign ntp_sync_ok = (ntp_sync_ok_a & ~gen_config[24] ) | (ntp_sync_ok_b & gen_config[24]);


  // Instantiation of Axi Bus Interface S00_AXI
  network_path_axi_slave #(
    .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH)
  ) network_path_axi_slave_inst (
    .pp_clk        (clk156),
    .gen_config    (gen_config),
    .pp_mac_addr0  (pp_mac_addr0),
    .pp_mac_addr1  (pp_mac_addr1),
    .pp_mac_addr2  (pp_mac_addr2),
    .pp_mac_addr3  (pp_mac_addr3),
    .pp_ipv4_addr0 (pp_ipv4_addr0),
    .pp_ipv4_addr1 (pp_ipv4_addr1),
    .pp_ipv4_addr2 (pp_ipv4_addr2),
    .pp_ipv4_addr3 (pp_ipv4_addr3),
    .pp_ipv6_addr0 (pp_ipv6_addr0),
    .pp_ipv6_addr1 (pp_ipv6_addr1),
    .pp_ipv6_addr2 (pp_ipv6_addr2),
    .pp_ipv6_addr3 (pp_ipv6_addr3),
    .ntp_config    (ntp_config),
    .ntp_root_delay(ntp_root_delay),
    .ntp_root_disp (ntp_root_disp),
    .ntp_ref_id    (ntp_ref_id),
    .ntp_ref_ts    (ntp_ref_ts),
    .ntp_rx_ofs    (ntp_rx_ofs),
    .ntp_tx_ofs    (ntp_tx_ofs),
    .pp_status     (pp_status),
    .xphy_status   (xphy_status),
    .ntp_sync_ok   (ntp_sync_ok),

    // Ports for API extension.
    .api_ext_command(api_ext_command),
    .api_ext_address(api_ext_address),
    .api_ext_write_data(api_ext_write_data),
    .api_ext_status(api_ext_status),
    .api_ext_read_data(api_ext_read_data),

    .S_AXI_ACLK    (s_axi_clk),
    .S_AXI_ARESETN (s_axi_aresetn),
    .S_AXI_AWADDR  (s_axi_awaddr),
    .S_AXI_AWVALID (s_axi_awvalid),
    .S_AXI_AWREADY (s_axi_awready),
    .S_AXI_WDATA   (s_axi_wdata),
    .S_AXI_WSTRB   (s_axi_wstrb),
    .S_AXI_WVALID  (s_axi_wvalid),
    .S_AXI_WREADY  (s_axi_wready),
    .S_AXI_BRESP   (s_axi_bresp),
    .S_AXI_BVALID  (s_axi_bvalid),
    .S_AXI_BREADY  (s_axi_bready),
    .S_AXI_ARADDR  (s_axi_araddr),
    .S_AXI_ARVALID (s_axi_arvalid),
    .S_AXI_ARREADY (s_axi_arready),
    .S_AXI_RDATA   (s_axi_rdata),
    .S_AXI_RRESP   (s_axi_rresp),
    .S_AXI_RVALID  (s_axi_rvalid),
    .S_AXI_RREADY  (s_axi_rready)
  );

  wire [63:0]  ntp_time;

  // Time select and clock domain crossing
  time_sel_sync tss(
    .areset         (sys_reset),
    .clk            (clk156),
    .sel            (gen_config[24]),
    .ntp_time_a     (ntp_time_a),
    .ntp_time_upd_a (ntp_time_upd_a),
    .ntp_time_b     (ntp_time_b),
    .ntp_time_upd_b (ntp_time_upd_b),
    .ntp_time       (ntp_time)
  );

  wire [63:0]  xgmii_txd;
  wire [7:0]   xgmii_txc;
  wire [63:0]  xgmii_rxd;
  wire [7:0]   xgmii_rxc;

  // Packet processing including MAC
  pp_mac_top pp(
    .areset         (sys_reset),
    .clk            (clk156),

    .api_cs         (pp_api_cs),
    .api_we         (pp_api_we),
    .api_address    (pp_api_address),
    .api_write_data (pp_api_write_data),
    .api_read_data  (pp_api_read_data),
    .api_ready      (pp_api_ready),

    .my_mac_addr0   (pp_mac_addr0),
    .my_mac_addr1   (pp_mac_addr1),
    .my_mac_addr2   (pp_mac_addr2),
    .my_mac_addr3   (pp_mac_addr3),
    .my_ipv4_addr0  (pp_ipv4_addr0),
    .my_ipv4_addr1  (pp_ipv4_addr1),
    .my_ipv4_addr2  (pp_ipv4_addr2),
    .my_ipv4_addr3  (pp_ipv4_addr3),
    .my_ipv6_addr0  (pp_ipv6_addr0),
    .my_ipv6_addr1  (pp_ipv6_addr1),
    .my_ipv6_addr2  (pp_ipv6_addr2),
    .my_ipv6_addr3  (pp_ipv6_addr3),
    .gen_config     (gen_config[23:0]),
    .ntp_config     (ntp_config),
    .ntp_root_delay (ntp_root_delay),
    .ntp_root_disp  (ntp_root_disp),
    .ntp_ref_id     (ntp_ref_id),
    .ntp_ref_ts     (ntp_ref_ts),
    .ntp_rx_ofs     (ntp_rx_ofs),
    .ntp_tx_ofs     (ntp_tx_ofs),
    .ntp_time       (ntp_time),
    .key_req        (key_req),
    .key_id         (key_id),
    .key_ack        (key_ack),
    .key            (key),
    .xgmii_rxd      (xgmii_rxd),
    .xgmii_rxc      (xgmii_rxc),
    .xgmii_txd      (xgmii_txd),
    .xgmii_txc      (xgmii_txc),
    .status         (pp_status)
  );

  // PHYs
  // If no arbitration is required on the GT DRP ports then connect REQ to GNT
  // and connect other signals i <= o;

  wire         drp_gnt;
  wire         drp_req;
  wire         drp_den_o;
  wire         drp_dwe_o;
  wire [15:0]  drp_daddr_o;
  wire [15:0]  drp_di_o;
  wire         drp_drdy_o;
  wire [15:0]  drp_drpdo_o;
  wire         drp_den_i;
  wire         drp_dwe_i;
  wire [15:0]  drp_daddr_i;
  wire [15:0]  drp_di_i;
  wire         drp_drdy_i;
  wire [15:0]  drp_drpdo_i;

  assign drp_gnt     = drp_req;
  assign drp_den_i   = drp_den_o;
  assign drp_dwe_i   = drp_dwe_o;
  assign drp_daddr_i = drp_daddr_o;
  assign drp_di_i    = drp_di_o;
  assign drp_drdy_i  = drp_drdy_o;
  assign drp_drpdo_i = drp_drpdo_o;

  wire         module_detect;
  wire         signal_detect;
  assign module_detect = ~module_detect_n;
  assign signal_detect = ~signal_lost;

  wire   tx_disable_if;

  // Map xphy configuration
  assign xphy_config = gen_config[30+:2]; // Pick out bits
  wire [2:0]   pma_pmd_type;
  assign pma_pmd_type = xphy_config == 2'b00 ? 3'b101 : // 10GBASE-ER
                        xphy_config == 2'b01 ? 3'b110 : // 10GBASE-LR
                                               3'b111;  // 10GBASE-SR

  wire [7:0]   core_status;

  ten_gig_eth_pcs_pma_ip_shared_logic_in_core ten_gig_eth_pcs_pma_inst (
    .refclk_n               (xphy_refclk_n),
    .refclk_p               (xphy_refclk_p),
    .coreclk_out            (clk156),
    .dclk                   (clk156),
    .rxrecclk_out           (),
    .txusrclk_out           (txusrclk),
    .txusrclk2_out          (txusrclk2),
    .reset                  (sys_reset),
    .areset_datapathclk_out (areset_clk156),
    .gttxreset_out          (gttxreset),
    .gtrxreset_out          (gtrxreset),
    .txuserrdy_out          (txuserrdy),
    .qplllock_out           (qplllock),
    .qplloutclk_out         (qplloutclk),
    .qplloutrefclk_out      (qplloutrefclk),
    .reset_counter_done_out (reset_counter_done),
    .xgmii_txd              (xgmii_txd),
    .xgmii_txc              (xgmii_txc),
    .xgmii_rxd              (xgmii_rxd),
    .xgmii_rxc              (xgmii_rxc),
    .txp                    (xphy_txp),
    .txn                    (xphy_txn),
    .rxp                    (xphy_rxp),
    .rxn                    (xphy_rxn),
    .mdc                    (mdc),
    .mdio_in                (mdio_out),
    .mdio_out               (mdio_in),
    .mdio_tri               (mdio_tri),
    .prtad                  (PRTAD),
    .core_status            (core_status),
    .resetdone_out          (tx_resetdone),
    .signal_detect          (signal_detect),
    .tx_fault               (tx_fault),
    .drp_req                (drp_req),
    .drp_gnt                (drp_gnt),
    .drp_den_o              (drp_den_o),
    .drp_dwe_o              (drp_dwe_o),
    .drp_daddr_o            (drp_daddr_o),
    .drp_di_o               (drp_di_o),
    .drp_drdy_o             (drp_drdy_o),
    .drp_drpdo_o            (drp_drpdo_o),
    .drp_den_i              (drp_den_i),
    .drp_dwe_i              (drp_dwe_i),
    .drp_daddr_i            (drp_daddr_i),
    .drp_di_i               (drp_di_i),
    .drp_drdy_i             (drp_drdy_i),
    .drp_drpdo_i            (drp_drpdo_i),
    .pma_pmd_type           (pma_pmd_type),
    .tx_disable             (tx_disable_if),
    .sim_speedup_control    (sim_speedup_control)
  );

  assign tx_disable = tx_disable_if | ~gen_config[29];   // Laser must be enabled

  assign xphy_status[0]   = qplllock;
  assign xphy_status[1]   = module_detect;
  assign xphy_status[2]   = signal_detect;
  assign xphy_status[3]   = tx_fault;
  assign xphy_status[4]   = core_status[0]; // PCS Block Lock
  assign xphy_status[7:5] = 3'b0;

   // Wires for connecting the api_extension to the AXI slave.
   // Wires for connecting modules to the api_extension.
   wire [1 : 0]  api_ext_command;
   wire [31 : 0] api_ext_address;
   wire [31 : 0] api_ext_write_data;
   wire [1 : 0]  api_ext_status;
   wire [31 : 0] api_ext_read_data;
   wire          pp_api_cs;
   wire          pp_api_we;
   wire [11 : 0] pp_api_address;
   wire [31 : 0] pp_api_write_data;
   wire [31 : 0] pp_api_read_data;
   wire          pp_api_ready;
   wire          rosc_cs;
   wire          rosc_we;
   wire [23 : 0] rosc_address;
   wire [31 : 0] rosc_write_data;
   wire [31 : 0] rosc_read_data;

   api_extension api_extension0 (
    .clk(clk156),
    .reset(areset_clk156),

    // I/O port.
    .command(api_ext_command),
    .status(api_ext_status),
    .address(api_ext_address),
    .write_data(api_ext_write_data),
    .read_data(api_ext_read_data),

    // Access ports to extensions.
    .nts_cs(),
    .nts_we(),
    .nts_address(),
    .nts_write_data(),
    .nts_read_data(32'haaaa5555),
    .nts_ready(1'h1),

    .pp_cs(pp_api_cs),
    .pp_we(pp_api_we),
    .pp_address(pp_api_address),
    .pp_write_data(pp_api_write_data),
    .pp_read_data(pp_api_read_data),
    .pp_ready(pp_api_ready),

    .dp_cs(),
    .dp_we(),
    .dp_address(),
    .dp_write_data(),
    .dp_read_data(32'hbeefbeef),
    .dp_ready(1'h1),

    .rosc_cs(rosc_cs),
    .rosc_we(rosc_we),
    .rosc_address(rosc_address),
    .rosc_write_data(rosc_write_data),
    .rosc_read_data(rosc_read_data),
    .rosc_ready(1'h1)
  );

   rosc_entropy rosc(
                     .clk(clk156),
                     .reset(areset_clk156),
                     .cs(rosc_cs),
                     .we(rosc_we),
                     .address(rosc_address[7 : 0]),
                     .write_data(rosc_write_data),
                     .read_data(rosc_read_data)
                   );

endmodule // network_path_shared

`default_nettype wire
