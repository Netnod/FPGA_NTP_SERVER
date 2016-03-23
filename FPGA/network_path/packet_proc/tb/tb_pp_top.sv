`timescale 1ns / 1ps
`default_nettype none

module tb_pp_top;

//localparam  [47:0] MY_ETH_ADDR     =  48'h01_20_03_40_05_FF;
  localparam  [47:0] MY_ETH_ADDR     =  48'h2c_76_8a_ad_f7_86;
  localparam  [31:0] MY_IPV4_ADDR    =  32'hA0_B1_C2_D3;
  localparam [127:0] MY_IPV6_ADDR    = 128'hfe80_0000_0000_0000_2e76_8aff_fead_f786;
  localparam  [47:0] MAC_BDCST_ADDR  =  48'hFF_FF_FF_FF_FF_FF;
//localparam  [47:0] CLNT_ETH_ADDR   =  48'h00_01_42_00_5F_68;
  localparam  [47:0] CLNT_ETH_ADDR   =  48'h90_2b_34_31_27_34;
  localparam  [31:0] CLNT_IPV4_ADDR  =  32'hC0_A8_01_01; 
  localparam [127:0] CLNT_IPV6_ADDR  = 128'hfe80_0000_0000_0000_922b_34ff_fe31_2734;
  localparam  [15:0] E_TYPE_ARP      =  16'h08_06;
  localparam  [15:0] E_TYPE_IPV4     =  16'h08_00;
  localparam  [15:0] E_TYPE_IPV6     =  16'h86_DD;
  localparam  [15:0] H_TYPE_ETH      =  16'h00_01;
  localparam  [15:0] P_TYPE_IPV4     =  16'h08_00;
  localparam  [15:0] ARP_OPER_REQ    =  16'h00_01;
  localparam  [15:0] ARP_OPER_RESP   =  16'h00_02;
  localparam   [7:0] H_TYPE_ETH_LEN  =   8'h06;
  localparam   [7:0] P_TYPE_IPV4_LEN =   8'h04;
  localparam  [15:0] NTP_IP_PKT_LEN  =  16'd76;  // NTP packet total length
  localparam  [15:0] UDP_PROT        =  16'd17;  // UDP Protocol
  localparam  [15:0] NTP_PORT        =  16'd123; // NTP destination port
  localparam  [15:0] CLNT_PORT       =  16'habc; // NTP source
  localparam  [15:0] NTP_UDP_PKT_LEN =  16'd56;  // NTP UDP packet length

  localparam  [31:0] MD5_KEY_ID      =  32'd11;
  localparam  [31:0] SHA1_KEY_ID     =  32'd317;
  localparam [159:0] MD5_KEY         = 160'hA001234125BCEF0AAACCDD432212541515125125;
  localparam [159:0] SHA1_KEY        = 160'hE55555555551515555555555555555151515151A;
  
  logic         areset  = 1'b1;
  logic         aresetn;
  logic         clk     = 1'b0;

  logic  [63:0] xgmii_txd;
  logic  [7:0]  xgmii_txc;
  logic  [63:0] xgmii_rxd;
  logic  [7:0]  xgmii_rxc;

  logic         test_rx_start = 1'b0;  
  logic         test_rx_ack;  
  logic  [7:0]  test_rx_data_valid = 8'b0;
  logic  [63:0] test_rx_data;
  logic  [7:0]  test_tx_data_valid;
  logic  [63:0] test_tx_data;
  logic         test_tx_bad_frame;
  logic         test_tx_good_frame;
  
  logic  [63:0] exp_tx_data;
  logic  [63:0] mask_tx_data;

  logic  [31:0] status;
  
  always #3.2 clk <= ~clk;

  initial #30 areset = 1'b0;
  assign aresetn = ~areset;
  
  logic clk_axi = '0;
  always #4.0 clk_axi <= ~clk_axi;
  
  axi4_if #(15,32) axi_bus (clk_axi, aresetn);
                       
  logic         key_req;
  logic [31:0]  key_id;
  logic         key_ack;
  logic [255:0] key;

  keymem_top km_top (
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
    .key_clk       (clk),
    .key_req       (key_req),
    .key_id        (key_id),
    .key_ack       (key_ack),
    .key           (key)
  );

  oc_mac test_mac(
    .res_n         (aresetn),
    .tx_clk        (clk),
    .tx_start      (test_rx_start),
    .tx_data       (test_rx_data),
    .tx_data_valid (test_rx_data_valid),
    .tx_ack        (test_rx_ack),
    .xgmii_txc     (xgmii_rxc),
    .xgmii_txd     (xgmii_rxd),
    .rx_clk        (clk),
    .xgmii_rxd     (xgmii_txd),
    .xgmii_rxc     (xgmii_txc),
    .rx_data       (test_tx_data),
    .rx_data_valid (test_tx_data_valid),
    .rx_bad_frame  (test_tx_bad_frame),
    .rx_good_frame (test_tx_good_frame)
  );

  //------------------------------------------------------------------------------------------
  // Packet definitions
  
`include "pp_par.v"

  typedef struct packed{
    logic [47:0] dst_mac;
    logic [47:0] src_mac;
    logic [15:0] e_type;
  } eth_head_t;
  
  typedef struct packed{
    logic [15:0] src_port;
    logic [15:0] dst_port;
    logic [15:0] udp_len;
    logic [15:0] udp_csum;
  } udp_head_t;

  typedef struct packed{
    logic [1:0]   li;
    logic [2:0]   vn;
    logic [2:0]   mode;
    logic [7:0]   stratum;
    logic [7:0]   poll;
    logic [7:0]   precision;
    logic [31:0]  root_delay;
    logic [31:0]  root_disp;
    logic [31:0]  ref_id;
    logic [63:0]  ref_ts;
    logic [63:0]  org_ts;
    logic [63:0]  rx_ts;
    logic [63:0]  tx_ts;
  } ntp_payload_t;

  typedef struct packed{
    logic [31:0]  key_id;
    logic [127:0] digest;
  } ntp_md5_digest_t;

  typedef struct packed{
    logic [31:0]  key_id;
    logic [159:0] digest;
  } ntp_sha1_digest_t;

`include "tb_pp_ipv4.v"
`include "tb_pp_ipv6.v"
  
  
  //------------------------------------------------------------------------------------------

  logic [47:0] my_mac_addr0   = '0;
  logic [47:0] my_mac_addr1   = '0;
  logic [47:0] my_mac_addr2   = '0;
  logic [47:0] my_mac_addr3   = '0;
  logic [31:0] my_ipv4_addr0  = '0;
  logic [31:0] my_ipv4_addr1  = '0;
  logic [31:0] my_ipv4_addr2  = '0;
  logic [31:0] my_ipv4_addr3  = '0;
  logic [127:0] my_ipv6_addr0 = '0;
  logic [127:0] my_ipv6_addr1 = '0;
  logic [127:0] my_ipv6_addr2 = '0;
  logic [127:0] my_ipv6_addr3 = '0;
  
  logic [31:0] ntp_config     = '0;
  logic [31:0] ntp_root_delay = '0;
  logic [31:0] ntp_root_disp  = '0;
  logic [31:0] ntp_ref_id     = '0;
  logic [63:0] ntp_ref_ts     = '0;

  
  // MAC 
  pp_top dut(
    .areset         (areset),
    .clk            (clk),
    .my_mac_addr0   (my_mac_addr0), 
    .my_mac_addr1   (my_mac_addr1), 
    .my_mac_addr2   (my_mac_addr2), 
    .my_mac_addr3   (my_mac_addr3), 
    .my_ipv4_addr0  (my_ipv4_addr0),
    .my_ipv4_addr1  (my_ipv4_addr1),
    .my_ipv4_addr2  (my_ipv4_addr2),
    .my_ipv4_addr3  (my_ipv4_addr3),
    .my_ipv6_addr0  (my_ipv6_addr0),
    .my_ipv6_addr1  (my_ipv6_addr1),
    .my_ipv6_addr2  (my_ipv6_addr2),
    .my_ipv6_addr3  (my_ipv6_addr3),
    .gen_config     ({26'd64,6'b111111}),
    .ntp_config     (ntp_config),
    .ntp_root_delay (ntp_root_delay),
    .ntp_root_disp  (ntp_root_disp),
    .ntp_ref_id     (ntp_ref_id),
    .ntp_ref_ts     (ntp_ref_ts),
    .ntp_rx_ofs     (32'h11111111),
//  .ntp_rx_ofs     (32'hffffffff), // -1
    .ntp_tx_ofs     (32'h22222222),
    .ntp_time       (64'h3333333333333333),
    .key_req        (key_req),
    .key_id         (key_id),
    .key_ack        (key_ack),
    .key            (key),
    .xgmii_rxd      (xgmii_rxd),
    .xgmii_rxc      (xgmii_rxc),
    .xgmii_txd      (xgmii_txd),
    .xgmii_txc      (xgmii_txc),
    .status         (status)
  );

  //------------------------------------------------------------------------------------------

  // Swap bytes withon long word
  function [63:0] swap_bytes;
    input [63:0] data;
    begin
      swap_bytes[ 0+:8] = data[56+:8];
      swap_bytes[ 8+:8] = data[48+:8];
      swap_bytes[16+:8] = data[40+:8];
      swap_bytes[24+:8] = data[32+:8];
      swap_bytes[32+:8] = data[24+:8];
      swap_bytes[40+:8] = data[16+:8];
      swap_bytes[48+:8] = data[ 8+:8];
      swap_bytes[56+:8] = data[ 0+:8];
    end
  endfunction //
  
  //------------------------------------------------------------------------------------------

  localparam MAX_PACKET_SIZE = $bits(ntp6_pkt_t); // biggest packet
  
                              
  task automatic send_packet;
    input [0:MAX_PACKET_SIZE-1] packet_bits;
    input integer               nbits;
    begin
      integer i;

      test_rx_start = 1'b1;
      @(posedge clk);
      test_rx_start = 1'b0;
      i = 0;
      test_rx_data = swap_bytes(packet_bits[i*64+:64]); 
      test_rx_data_valid = 8'hff;
      while (test_rx_ack == 1'b0) @(posedge clk);
      for (i=1; i<nbits/64; i=i+1) begin
        test_rx_data = swap_bytes(packet_bits[i*64+:64]);
        test_rx_data_valid = 8'hff;
        @(posedge clk);
      end
      if (nbits % 64 > 0) begin
        test_rx_data = swap_bytes(packet_bits[i*64+:64]);
        test_rx_data_valid = 8'hff >> (8-(nbits % 64)/8);
        @(posedge clk);
      end
      test_rx_data_valid = 8'h0;
//      @(posedge clk); interframe gap (will be inserted in the beginning)
    end
  endtask // send_packet
  
  //------------------------------------------------------------------------------------------
  
  logic [0:63] xxx_tx_data;
  task automatic check_packet;
    input [0:MAX_PACKET_SIZE-1] packet_bits;
    input integer               nbits;
    begin
      integer i;
      
      while (test_tx_data_valid == 8'h00) @(posedge clk); // Wait until data arrives
    
      for (i=0; i<nbits/64; i=i+1) begin
        exp_tx_data = packet_bits[i*64+:64];
        xxx_tx_data = swap_bytes(test_tx_data);
        assert (xxx_tx_data == exp_tx_data);
        assert (test_tx_data_valid == 8'hff);
        @(posedge clk);
      end
      if (nbits % 64 > 0) begin
        exp_tx_data = packet_bits[i*64+:64];
        xxx_tx_data = swap_bytes(test_tx_data);
        mask_tx_data = {64{1'b1}} << (64-nbits % 64);
        assert ((xxx_tx_data & mask_tx_data) == (exp_tx_data & mask_tx_data));
        @(posedge clk);
      end
      // ignore padding and wait until frame is ended
      while (test_tx_data_valid != 8'h00 && (test_tx_bad_frame == 1'b0 || test_tx_good_frame == 1'b0)) @(posedge clk);
      @(posedge clk);
    end
  endtask // check_packet
  
  //------------------------------------------------------------------------------------------

  integer i,j;

  arp_pkt_t  arp_packet;
  nd_pkt_t   ns_packet;
  nd_pkt_t   na_packet;
  ntp4_pkt_t ntp4_req_packet;
  ntp4_pkt_t ntp4_resp_packet;
  ntp6_pkt_t ntp6_req_packet;
  ntp6_pkt_t ntp6_resp_packet;

  reg [255:0] keyy;
  reg [255:0] keyx;
  reg         error;
  
  initial begin

    @(negedge areset);
    repeat (10) @(posedge clk);

    keyy = MD5_KEY;
    keyy[255] = 1'b1;  // Key valid
    keyy[254] = 1'b0;  // MD5

    for (i = 0; i < 8; i++) axi_bus.write(MD5_KEY_ID*32+4*i, keyy[i*32+:32], error);

    keyy = SHA1_KEY;
    keyy[255] = 1'b1;  // Key valid
    keyy[254] = 1'b1;  // SHA1
    for (i = 0; i < 8; i++) axi_bus.write(SHA1_KEY_ID*32+4*i, keyy[i*32+:32], error);
    
    for (i = 0; i < 8; i++) axi_bus.read(MD5_KEY_ID*32+4*i, keyx[i*32+:32], error);
    assert (keyx[159:0] == MD5_KEY);

    for (i = 0; i < 8; i++) axi_bus.read(SHA1_KEY_ID*32+4*i, keyx[i*32+:32], error);
    assert (keyx[159:0] == SHA1_KEY);

    //---------------------------------------------------

    @(posedge clk);

    /*
    create_ntp6_req(ntp6_req_packet, 0, 0);
    create_ntp6_resp(ntp6_resp_packet, 0, 0);
    my_mac_addr0   = ntp6_resp_packet.eth_head.src_mac;
    my_ipv6_addr0  = ntp6_resp_packet.ip_head.src_addr;
    
    ntp_config     = {ntp6_resp_packet.payload.li, 3'd0, 3'd0, ntp6_resp_packet.payload.stratum, 8'd0, ntp6_resp_packet.payload.precision};
    ntp_root_delay = ntp6_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp6_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp6_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp6_resp_packet.payload.ref_ts;

    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t)-192);
    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);

    create_ntp6_req(ntp6_req_packet, 1, 0);
    create_ntp6_resp(ntp6_resp_packet, 1, 0);
    my_mac_addr0   = 0;
    my_ipv6_addr0  = 0;
    my_mac_addr1   = ntp6_resp_packet.eth_head.src_mac;
    my_ipv6_addr1  = ntp6_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp6_resp_packet.payload.li, 3'd0, 3'd0, ntp6_resp_packet.payload.stratum, 8'd0, ntp6_resp_packet.payload.precision};
    ntp_root_delay = ntp6_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp6_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp6_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp6_resp_packet.payload.ref_ts;

    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t)-32);
    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t)-32);
    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t)-32);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-32);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-32);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-32);

    create_ntp6_req(ntp6_req_packet, 1, 1);
    create_ntp6_resp(ntp6_resp_packet, 1, 1);
    my_mac_addr0   = 0;
    my_ipv6_addr0  = 0;
    my_mac_addr1   = 0;
    my_ipv6_addr1  = 0;
    my_mac_addr2   = ntp6_resp_packet.eth_head.src_mac;
    my_ipv6_addr2  = ntp6_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp6_resp_packet.payload.li, 3'd0, 3'd0, ntp6_resp_packet.payload.stratum, 8'd0, ntp6_resp_packet.payload.precision};
    ntp_root_delay = ntp6_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp6_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp6_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp6_resp_packet.payload.ref_ts;

    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t));
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t));

    //--------------------------------------------------
    
    create_ntp4_req(ntp4_req_packet, 1, 0);
    create_ntp4_resp(ntp4_resp_packet, 1, 0);
    my_mac_addr0   = 0;
    my_ipv4_addr0  = 0;
    my_mac_addr1   = 0;
    my_ipv4_addr1  = 0;
    my_mac_addr2   = 0;
    my_ipv4_addr2  = 0;
    my_mac_addr3   = ntp4_resp_packet.eth_head.src_mac;
    my_ipv4_addr3  = ntp4_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp4_resp_packet.payload.li, 3'd0, 3'd0, ntp4_resp_packet.payload.stratum, 8'd0, ntp4_resp_packet.payload.precision};
    ntp_root_delay = ntp4_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp4_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp4_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp4_resp_packet.payload.ref_ts;
    @(posedge clk);
    send_packet(ntp4_req_packet <<   (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-32);
    check_packet(ntp4_resp_packet << (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-32);

    create_ntp4_req(ntp4_req_packet, 1, 1);
    create_ntp4_resp(ntp4_resp_packet, 1, 1);
    my_mac_addr0   = ntp4_resp_packet.eth_head.src_mac;
    my_ipv4_addr0  = ntp4_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp4_resp_packet.payload.li, 3'd0, 3'd0, ntp4_resp_packet.payload.stratum, 8'd0, ntp4_resp_packet.payload.precision};
    ntp_root_delay = ntp4_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp4_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp4_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp4_resp_packet.payload.ref_ts;
    @(posedge clk);
    send_packet(ntp4_req_packet <<   (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t));
    check_packet(ntp4_resp_packet << (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t));

    //---------------------------------------------------
    create_ntp6_req(ntp6_req_packet, 0, 0);
    create_ntp6_resp(ntp6_resp_packet, 0, 0);
    my_mac_addr0   = 0;
    my_ipv6_addr0  = 0;
    my_mac_addr1   = 0;
    my_ipv6_addr1  = 0;
    my_mac_addr2   = 0;
    my_ipv6_addr2  = 0;
    my_mac_addr3   = 0;
    my_ipv6_addr3  = 0;
    my_mac_addr3   = ntp6_resp_packet.eth_head.src_mac;
    my_ipv6_addr3  = ntp6_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp6_resp_packet.payload.li, 3'd0, 3'd0, ntp6_resp_packet.payload.stratum, 8'd0, ntp6_resp_packet.payload.precision};
    ntp_root_delay = ntp6_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp6_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp6_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp6_resp_packet.payload.ref_ts;

    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)), $bits(ntp6_pkt_t)-192);
    send_packet(ntp6_req_packet   << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);
    check_packet(ntp6_resp_packet << (MAX_PACKET_SIZE - $bits(ntp6_pkt_t)) , $bits(ntp6_pkt_t)-192);

    create_ns_req2(ns_packet);
    create_na_resp2(na_packet);
    my_mac_addr0   = 0;
    my_ipv6_addr0  = 0;
    my_mac_addr1   = 0;
    my_ipv6_addr1  = 0;
    my_mac_addr2   = 0;
    my_ipv6_addr2  = 0;
    my_mac_addr3   = 0;
    my_ipv6_addr3  = 0;
    my_mac_addr1   = na_packet.eth_head.src_mac;
    my_ipv6_addr1  = na_packet.payload.targ_addr;

    send_packet(ns_packet  << (MAX_PACKET_SIZE - $bits(nd_pkt_t)), $bits(nd_pkt_t));
    check_packet(na_packet << (MAX_PACKET_SIZE - $bits(nd_pkt_t)), $bits(nd_pkt_t));
*/
    create_ntp4_req(ntp4_req_packet, 0, 0);
    create_ntp4_resp(ntp4_resp_packet, 0, 0);
    my_mac_addr0   = 0;
    my_ipv4_addr0  = 0;
    my_mac_addr1   = 0;
    my_ipv4_addr1  = 0;
    my_mac_addr2   = 0;
    my_ipv4_addr2  = 0;
    my_mac_addr3   = 0;
    my_ipv4_addr3  = 0;

    my_mac_addr3   = ntp4_resp_packet.eth_head.src_mac;
    my_ipv4_addr3  = ntp4_resp_packet.ip_head.src_addr;
    ntp_config     = {ntp4_resp_packet.payload.li, 3'd0, 3'd0, ntp4_resp_packet.payload.stratum, 8'd0, ntp4_resp_packet.payload.precision};
    ntp_root_delay = ntp4_resp_packet.payload.root_delay;
    ntp_root_disp  = ntp4_resp_packet.payload.root_disp;
    ntp_ref_id     = ntp4_resp_packet.payload.ref_id;
    ntp_ref_ts     = ntp4_resp_packet.payload.ref_ts;

    @(posedge clk);
    send_packet(ntp4_req_packet <<   (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);
    send_packet(ntp4_req_packet <<   (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);
    send_packet(ntp4_req_packet <<   (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);
    check_packet(ntp4_resp_packet << (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);
    check_packet(ntp4_resp_packet << (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);
    check_packet(ntp4_resp_packet << (MAX_PACKET_SIZE - $bits(ntp4_pkt_t)), $bits(ntp4_pkt_t)-192);

    @(posedge clk);
    @(posedge clk);

    create_arp_req(arp_packet);
    send_packet(arp_packet << (MAX_PACKET_SIZE - $bits(arp_pkt_t)), $bits(arp_pkt_t));
    create_arp_resp(arp_packet);
    check_packet(arp_packet << (MAX_PACKET_SIZE - $bits(arp_pkt_t)), $bits(arp_pkt_t));

    $stop;

  end // initial begin

  // -----------------------------------------------------------------------
  // test status counters in AXI slave

  network_path_axi_slave #( 
    .C_S_AXI_DATA_WIDTH (32),
    .C_S_AXI_ADDR_WIDTH (8)
  ) network_path_axi_slave_inst (
    .pp_clk        (clk),
    .gen_config    (),
    .pp_mac_addr0  (),
    .pp_mac_addr1  (),
    .pp_mac_addr2  (),
    .pp_mac_addr3  (),
    .pp_ipv4_addr0 (),
    .pp_ipv4_addr1 (),
    .pp_ipv4_addr2 (),
    .pp_ipv4_addr3 (),
    .pp_ipv6_addr0 (),
    .pp_ipv6_addr1 (),
    .pp_ipv6_addr2 (),
    .pp_ipv6_addr3 (),
    .ntp_config    (),
    .ntp_root_delay(),
    .ntp_root_disp (),
    .ntp_ref_id    (),
    .ntp_ref_ts    (),
    .ntp_rx_ofs    (),
    .ntp_tx_ofs    (),
    .pp_status     (status),
    .xphy_status   ('0),
    .S_AXI_ACLK    (clk_axi),
    .S_AXI_ARESETN (~areset),
    .S_AXI_AWADDR  ('0),
    .S_AXI_AWVALID ('0),
    .S_AXI_AWREADY (),
    .S_AXI_WDATA   ('0),
    .S_AXI_WSTRB   ('0),
    .S_AXI_WVALID  ('0),
    .S_AXI_WREADY  (),
    .S_AXI_BRESP   (),
    .S_AXI_BVALID  (),
    .S_AXI_BREADY  ('0),
    .S_AXI_ARADDR  ('0),
    .S_AXI_ARVALID ('0),
    .S_AXI_ARREADY (),
    .S_AXI_RDATA   (),
    .S_AXI_RRESP   (),
    .S_AXI_RVALID  (),
    .S_AXI_RREADY  ('0)
  );
  
endmodule // tb_pp_top
`default_nettype wire 

