// IPv4 specific packet stufff

`include "tb_md5_func.sv"
`include "tb_sha1_func.sv"

  typedef struct packed{
    eth_head_t   eth_head;
    logic [15:0] h_type;
    logic [15:0] p_type;
    logic [7:0]  hlen;
    logic [7:0]  plen;
    logic [15:0] oper;
    logic [47:0] src_mac;
    logic [31:0] src_addr;
    logic [47:0] targ_mac;
    logic [31:0] targ_addr;
  } arp_pkt_t;

  //------------------------------------------------------------------------------------------

  task create_arp_req;
    output arp_pkt_t packet;
    begin
      packet.eth_head.dst_mac = MAC_BDCST_ADDR;
      packet.eth_head.src_mac = CLNT_ETH_ADDR;
      packet.eth_head.e_type  = E_TYPE_ARP;
      packet.h_type    = H_TYPE_ETH;
      packet.p_type    = P_TYPE_IPV4;
      packet.hlen      = H_TYPE_ETH_LEN;
      packet.plen      = P_TYPE_IPV4_LEN;
      packet.oper      = ARP_OPER_REQ;
      packet.src_mac   = CLNT_ETH_ADDR;
      packet.src_addr  = CLNT_IPV4_ADDR;
      packet.targ_mac  = 48'h0;
      packet.targ_addr = MY_IPV4_ADDR;
    end
  endtask //create_arp_req
  
  //------------------------------------------------------------------------------------------

  task create_arp_resp;
    output arp_pkt_t packet;
    begin
      packet.eth_head.dst_mac = CLNT_ETH_ADDR;
      packet.eth_head.src_mac = MY_ETH_ADDR;
      packet.eth_head.e_type  = E_TYPE_ARP;
      packet.h_type    = H_TYPE_ETH;
      packet.p_type    = P_TYPE_IPV4;
      packet.hlen      = H_TYPE_ETH_LEN;
      packet.plen      = P_TYPE_IPV4_LEN;
      packet.oper      = ARP_OPER_RESP;
      packet.src_mac   = MY_ETH_ADDR;
      packet.src_addr  = MY_IPV4_ADDR;
      packet.targ_mac  = CLNT_ETH_ADDR;
      packet.targ_addr = CLNT_IPV4_ADDR;
    end
  endtask //create_arp_resp

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    logic [3:0]  ver;
    logic [3:0]  ihl;
    logic [5:0]  dscp;
    logic [1:0]  ecn;
    logic [15:0] tot_len;
    logic [15:0] ident;
    logic [2:0]  flags;
    logic [12:0] frag_offs;
    logic [7:0]  ttl;
    logic [7:0]  protocol;
    logic [15:0] head_csum;
    logic [31:0] src_addr;
    logic [31:0] dst_addr;
  } ipv4_head_t;

  // Calculate checksum of IPV4 header
  function [15:0] calc_ipv4h_csum;
    input ipv4_head_t ipv4_head;
    begin
      bit [31:0]              tmp_sum;
      bit [20*8/2-1:0] [15:0] head_words;
      integer i;
      head_words = ipv4_head;
      tmp_sum = 16'b0;
      for (i=0; i<20/2; i=i+1) begin
        tmp_sum = tmp_sum + head_words[i];
      end
      tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      calc_ipv4h_csum = ~tmp_sum[15:0];
    end
  endfunction //

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t    eth_head;
    ipv4_head_t   ip_head;
    udp_head_t    udp_head;
    ntp_payload_t payload;
    logic [31:0]  key_id;
    logic [159:0] digest;
  } ntp4_pkt_t;
  
  // Calculate checksum of IPV4 UDP NTP packet
  function [15:0] calc_udp_ntp4_csum;
    input ntp4_pkt_t packet;
    begin
      bit [31:0]              tmp_sum;
      integer i;
      tmp_sum = 16'b0;
      tmp_sum += packet.ip_head.src_addr[31:16] + packet.ip_head.src_addr[15:0];
      tmp_sum += packet.ip_head.dst_addr[31:16] + packet.ip_head.dst_addr[15:0];
      tmp_sum += packet.ip_head.protocol;
      tmp_sum += packet.udp_head.udp_len;
      tmp_sum += packet.udp_head.src_port;
      tmp_sum += packet.udp_head.dst_port;
      tmp_sum += packet.udp_head.udp_len;
      tmp_sum += packet.udp_head.udp_csum;
      // add ntp payload as data
      for (i=0; i<$bits(ntp_payload_t)/16; i=i+1) begin
        tmp_sum += packet.payload[i*16+:16];
      end
      for (i=0; i<32/16; i=i+1) begin
        tmp_sum += packet.key_id[i*16+:16];
      end
      for (i=0; i<160/16; i=i+1) begin
        tmp_sum += packet.digest[i*16+:16];
      end
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_udp_ntp4_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // calc_udp_ntp4_csum
  
  //------------------------------------------------------------------------------------------

  task create_ntp4_req;
    output ntp4_pkt_t packet;
    input  sign = 0;
    input  sha1 = 0;
    begin
      packet.eth_head.dst_mac   = MY_ETH_ADDR;
      packet.eth_head.src_mac   = CLNT_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'd0;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = sign == 1'b0 ? NTP_IP_PKT_LEN : sha1 == 1'b0 ? NTP_IP_PKT_LEN + 20 : NTP_IP_PKT_LEN + 24;
      packet.ip_head.ident      = 0;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = UDP_PROT;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = CLNT_IPV4_ADDR;
      packet.ip_head.dst_addr   = MY_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.udp_head.src_port  = CLNT_PORT;
      packet.udp_head.dst_port  = NTP_PORT;
      packet.udp_head.udp_len   = sign == 1'b0 ? NTP_UDP_PKT_LEN : sha1 == 1'b0 ? NTP_UDP_PKT_LEN + 20 : NTP_UDP_PKT_LEN + 24;
      packet.udp_head.udp_csum  = 16'b0;
      packet.payload.li         =  2'b0;
      packet.payload.vn         =  3'd4;
      packet.payload.mode       =  3'd3;
      packet.payload.stratum    =  8'd0;
      packet.payload.poll       =  8'd10;
      packet.payload.precision  =  8'd0;
      packet.payload.root_delay = 32'haaaaaaaa;
      packet.payload.root_disp  = 32'hbbbbbbbb;
      packet.payload.ref_id     = 32'd0;
      packet.payload.ref_ts     = 64'd0;
      packet.payload.org_ts     = 64'd0;    
      packet.payload.rx_ts      = 64'd0;     
      packet.payload.tx_ts      = 64'h0123456789abcdef;
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID : SHA1_KEY_ID;
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY, packet.payload) << 32 : sha1_func(SHA1_KEY, packet.payload);
      packet.udp_head.udp_csum = calc_udp_ntp4_csum(packet);
    end
  endtask //create_ntp4_req

  //------------------------------------------------------------------------------------------

  task create_ntp4_resp;
    output ntp4_pkt_t packet;
    input  sign = 0;
    input  sha1 = 0;
    begin
      packet.eth_head.dst_mac   = CLNT_ETH_ADDR;
      packet.eth_head.src_mac   = MY_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'd4;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = sign == 1'b0 ? NTP_IP_PKT_LEN : sha1 == 1'b0 ? NTP_IP_PKT_LEN + 20 : NTP_IP_PKT_LEN + 24;
      packet.ip_head.ident      = 0;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = UDP_PROT;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = MY_IPV4_ADDR;
      packet.ip_head.dst_addr   = CLNT_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.udp_head.src_port  = NTP_PORT;
      packet.udp_head.dst_port  = CLNT_PORT;
      packet.udp_head.udp_len   = sign == 1'b0 ? NTP_UDP_PKT_LEN : sha1 == 1'b0 ? NTP_UDP_PKT_LEN + 20 : NTP_UDP_PKT_LEN + 24;
      packet.udp_head.udp_csum  = 16'b0;
      packet.payload.li         =  2'b11;
      packet.payload.vn         =  3'd4;  // NTP v4
      packet.payload.mode       =  3'd4;  // server
      packet.payload.stratum    =  8'd1;  // primary server
      packet.payload.poll       =  8'd10;
      packet.payload.precision  =  8'd11;
      packet.payload.root_delay = 32'd55555555;
      packet.payload.root_disp  = 32'd66666666;
      packet.payload.ref_id     = 32'd777777777;
      packet.payload.ref_ts     = 64'h3333333200000000;
//    packet.payload.ref_ts     = 64'd1111111122222222;
      packet.payload.org_ts     = 64'h0123456789abcdef;
      packet.payload.rx_ts      = 64'h3333333344444444 - HW_RX_LAT;
      packet.payload.tx_ts      = 64'h3333333355555555 + HW_TX_LAT + (sign == 1'b0 ? 32'b0 : sha1 == 1'b0 ? MD5_LAT : SHA1_LAT);
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID : SHA1_KEY_ID;
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY, packet.payload) << 32 : sha1_func(SHA1_KEY, packet.payload);
      packet.udp_head.udp_csum  = calc_udp_ntp4_csum(packet);      // Not mandatory
    end
  endtask //create_ntp4_resp

