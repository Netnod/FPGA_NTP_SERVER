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
      int i;
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
    input  key  = 0;
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
//    packet.payload.root_delay = 32'haaaaaaaa;
      packet.payload.root_delay = $random;
      packet.payload.root_disp  = 32'hbbbbbbbb;
      packet.payload.ref_id     = 32'd0;
      packet.payload.ref_ts     = 64'd0;
      packet.payload.org_ts     = 64'd0;    
      packet.payload.rx_ts      = 64'd0;     
      packet.payload.tx_ts      = 64'h0123456789abcdef;
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID[key] : SHA1_KEY_ID[key];
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY[key], packet.payload) << 32 : sha1_func(SHA1_KEY[key], packet.payload);
      packet.udp_head.udp_csum = calc_udp_ntp4_csum(packet);
    end
  endtask //create_ntp4_req 

  //------------------------------------------------------------------------------------------

  task create_ntp4_resp;
    output ntp4_pkt_t packet;
    input  sign = 0;
    input  sha1 = 0;
    input  key  = 0;
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
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID[key] : SHA1_KEY_ID[key];
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY[key], packet.payload) << 32 : sha1_func(SHA1_KEY[key], packet.payload);
      packet.udp_head.udp_csum  = calc_udp_ntp4_csum(packet);      // Not mandatory
    end
  endtask //create_ntp4_resp



  //------------------------------------------------------------------------------------------

  task create_ntp4_req_john;
    output ntp4_pkt_t packet;
    begin
//    packet.eth_head.dst_mac   = 48'h00_1b_77_49_54_fd;
      packet.eth_head.dst_mac   = MY_ETH_ADDR;
      packet.eth_head.src_mac   = 48'h0c_c4_7a_bb_17_86;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'd0;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = NTP_IP_PKT_LEN + 20;
      packet.ip_head.ident      = 16'h6879;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = UDP_PROT;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = 32'h82_f2_3c_2c;
//    packet.ip_head.dst_addr   = 32'h82_f2_3c_2a;
      packet.ip_head.dst_addr   = MY_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.udp_head.src_port  = 32'd37294;
      packet.udp_head.dst_port  = NTP_PORT;
      packet.udp_head.udp_len   = NTP_UDP_PKT_LEN + 20;
      packet.udp_head.udp_csum  = 16'b0;
      packet.payload.li         =  2'b11;
      packet.payload.vn         =  3'd4;
      packet.payload.mode       =  3'd3;
      packet.payload.stratum    =  8'd0;
      packet.payload.poll       =  8'd3;
      packet.payload.precision  =  8'hfa;
      packet.payload.root_delay = 32'h00010000;
      packet.payload.root_disp  = 32'h00010000;
      packet.payload.ref_id     = 32'd0;
      packet.payload.ref_ts     = 64'd0;
      packet.payload.org_ts     = 64'd0;    
      packet.payload.rx_ts      = 64'd0;     
      packet.payload.tx_ts      = 64'hdb863e9c76525c5d;
      packet.key_id             = 32'h5a;
      packet.digest             = md5_func(MD5_KEY_JOHN, packet.payload) << 32;
      packet.udp_head.udp_csum = calc_udp_ntp4_csum(packet);
    end
  endtask //create_ntp4_req

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t      eth_head;
    ipv4_head_t     ip_head;
    ping_payload_t  payload;
  } ping4_pkt_t;

  //------------------------------------------------------------------------------------------

  // Calculate checksum of IPv4 Ping packet
  function [15:0] calc_ipv4_ping_csum;
    input ping4_pkt_t packet;
    begin
      integer i;
      bit [31:0]              tmp_sum;
      bit [$bits(packet.payload)/16-1:0] [15:0] ping_words;
      tmp_sum = 16'b0;

      ping_words = packet.payload;
      for (i=0; i < $bits(packet.payload)/16; i++) tmp_sum += ping_words[i];
      
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_ipv4_ping_csum = ~tmp_sum[15:0];
      end
    end
  endfunction //
  
  //------------------------------------------------------------------------------------------

  // Create ping icmp echo request message
  task create_ping4_req;
    output ping4_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac   = MY_ETH_ADDR;
      packet.eth_head.src_mac   = CLNT_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'd0;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = 20+8+psize;
      packet.ip_head.ident      = 0;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = ICMP_PROTV4;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = CLNT_IPV4_ADDR;
      packet.ip_head.dst_addr   = MY_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.payload.mtype      = 8'd8;                            // Echo request
      packet.payload.code       = 8'd0;
      packet.payload.csum       = 16'd0;
      packet.payload.id         = 16'd99;                          // Just a number
      packet.payload.seq_no     = 16'd33;                          // Just another number
      packet.payload.data       = '0;
      for  (i=0; i < psize; i++) packet.payload.data[8*(85-i)+:8] = i+11;
      packet.payload.csum       = calc_ipv4_ping_csum(packet);
    end
  endtask // create_ping4_req

  //------------------------------------------------------------------------------------------

  // Create ping response message
  task create_ping4_resp;
    output ping4_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac   = CLNT_ETH_ADDR;
      packet.eth_head.src_mac   = MY_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'd0;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = 20+8+psize;
      packet.ip_head.ident      = 0;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = ICMP_PROTV4;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = MY_IPV4_ADDR;
      packet.ip_head.dst_addr   = CLNT_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.payload.mtype      = 8'd0;                            // Echo reply
      packet.payload.code       = 8'd0;
      packet.payload.csum       = 16'd0;                           // Tmp
      packet.payload.id         = 16'd99;                          // Just a number
      packet.payload.seq_no     = 16'd33;                          // Just another number
      packet.payload.data       = '0;
      for  (i=0; i < psize; i++) packet.payload.data[8*(85-i)+:8] = i+11;
      packet.payload.csum       = calc_ipv4_ping_csum(packet);
    end
  endtask //create_ping4_resp
  

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t       eth_head;
    ipv4_head_t      ip_head;
    udp_head_t       udp_head;
    logic [72*8-1:0] payload;  // 32 bytes
  } trcrt4_req_pkt_t;
  
  // Calculate checksum of IPV4 UDP trace route (udp) request packet
  function [15:0] calc_udp_trcrt4_csum;
    input trcrt4_req_pkt_t packet;
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
      for (i=0; i<$bits(packet.payload)/16; i=i+1) begin
        tmp_sum += packet.payload[i*16+:16];
      end
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_udp_trcrt4_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // for
  
  //------------------------------------------------------------------------------------------

  task create_trcrt4_req;
    output trcrt4_req_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac   = MY_ETH_ADDR;
      packet.eth_head.src_mac   = CLNT_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'h00;
      packet.ip_head.ecn        = 2'd0;
      packet.ip_head.tot_len    = 20+8+psize;
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
      packet.udp_head.dst_port  = 16'd33434;
      packet.udp_head.udp_len   = 8+psize;
      packet.udp_head.udp_csum  = 16'b0;
      packet.payload            = '0;
      for  (i=0; i < psize; i++) begin
        packet.payload[8*(72-1-i)+:8] = i+1;
      end
      packet.udp_head.udp_csum = calc_udp_trcrt4_csum(packet);
    end
  endtask // calc_trcrt4_csum


  //------------------------------------------------------------------------------------------

  typedef struct packed{
    logic [7:0]   mtype;
    logic [7:0]   code;
    logic [15:0]  csum;
    logic [31:0]  pad;
    ipv4_head_t   ip_head;     // Original ip header
    udp_head_t    udp_head;    // Original udp header
  } trcrt4_payload_t;

  typedef struct packed{
    eth_head_t       eth_head;
    ipv4_head_t      ip_head;
    trcrt4_payload_t payload;
  } trcrt4_resp_pkt_t;
  
  // Calculate checksum of IPV4 trace route (icmp) response packet
  function [15:0] calc_trcrt4_resp_csum;
    input trcrt4_resp_pkt_t packet;
    begin
      bit [31:0]              tmp_sum;
      integer i;
      tmp_sum = 16'b0;
      for (i=0; i<$bits(packet.payload)/16; i=i+1) begin
        tmp_sum += packet.payload[i*16+:16];
      end
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_trcrt4_resp_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // for

  task create_trcrt4_resp;
    output trcrt4_resp_pkt_t packet;
    input  trcrt4_req_pkt_t  org_packet;
    begin
      packet.eth_head.dst_mac   = CLNT_ETH_ADDR;
      packet.eth_head.src_mac   = MY_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV4;
      packet.ip_head.ver        = 4'd4;                            // IPV4
      packet.ip_head.ihl        = 4'd5;                            // 20 bytes
      packet.ip_head.dscp       = 6'h30;                           // InterNetwork Control
      packet.ip_head.ecn        = 2'b0;
      packet.ip_head.tot_len    = 20+8+20+8;
      packet.ip_head.ident      = 0;
      packet.ip_head.flags      = 3'b010;                          // Dont fragment
      packet.ip_head.frag_offs  = 13'd0;
      packet.ip_head.ttl        = 8'd64;
      packet.ip_head.protocol   = ICMP_PROTV4;
      packet.ip_head.head_csum  = 16'd0;                           // tmp value for calculation
      packet.ip_head.src_addr   = MY_IPV4_ADDR;
      packet.ip_head.dst_addr   = CLNT_IPV4_ADDR;
      packet.ip_head.head_csum  = calc_ipv4h_csum(packet.ip_head); // update checksum
      packet.payload.mtype      = 8'd3;                            // Destination unreachable Port unreachable
      packet.payload.code       = 8'd3;                            // Port unreachable
      packet.payload.csum       = 16'b0;
      packet.payload.pad        = 32'b0;
      packet.payload.ip_head    = org_packet.ip_head;
      packet.payload.udp_head   = org_packet.udp_head;
      packet.payload.csum       = calc_trcrt4_resp_csum(packet);
    end
  endtask // calc_ipv4h_csum

  //------------------------------------------------------------------------------------------
