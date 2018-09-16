// IPv6 specific packet stufff

  typedef struct packed{
    logic [3:0]   ver;
    logic [7:0]   traffic_class;
    logic [19:0]  flow_label;
    logic [15:0]  payl_len;
    logic [7:0]   next_head;
    logic [7:0]   hop_limit;
    logic [127:0] src_addr;
    logic [127:0] dst_addr;
  } ipv6_head_t;

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    logic [7:0]   mtype;
    logic [7:0]   code;
    logic [15:0]  csum;
    logic [31:0]  reserved;
    logic [127:0] targ_addr;
    logic [7:0]   opt_type;
    logic [7:0]   opt_len;
    logic [47:0]  mac_addr;
  } nd_payload_t;  // icmpv6

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t    eth_head;
    ipv6_head_t   ip_head;
    nd_payload_t  payload;
  } nd_pkt_t;

  //------------------------------------------------------------------------------------------

  // Calculate checksum of IPV6 ND packet
  function [15:0] calc_ipv6_nd_csum;
    input nd_pkt_t packet;
    begin
      integer i;
      bit [31:0]              tmp_sum;
      bit [$bits(packet.payload)/16-1:0] [15:0] nd_words;
      tmp_sum = 16'b0;

      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.src_addr[i*16+:16];
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.dst_addr[i*16+:16];

      tmp_sum += packet.ip_head.payl_len;
      tmp_sum += packet.ip_head.next_head;

      nd_words = packet.payload;
      for (i=0; i < $bits(packet.payload)/16; i++) tmp_sum += nd_words[i];
      
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_ipv6_nd_csum = ~tmp_sum[15:0];
      end
    end
  endfunction
  
  //------------------------------------------------------------------------------------------

  // Create Neighbor Solicitation message
  task create_ns_req;
    output nd_pkt_t packet;
    begin
      packet.eth_head.dst_mac = {24'h3333FF, MY_IPV6_ADDR[23:0]};
      packet.eth_head.src_mac = CLNT_ETH_ADDR;
      packet.eth_head.e_type  = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 16'd32;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = CLNT_IPV6_ADDR;
      packet.ip_head.dst_addr      = {104'hFF02_0000_0000_0000_0000_0001_FF, MY_IPV6_ADDR[23:0]};
      packet.payload.mtype     = 8'd135;             // Neighbor Solicitation
      packet.payload.code      = 8'd0;
      packet.payload.csum      = 16'd0;
      packet.payload.reserved  = 32'd0; 
      packet.payload.targ_addr = MY_IPV6_ADDR;
      packet.payload.opt_type  = 8'd1;               // source link address
      packet.payload.opt_len   = 8'd1;               // 8 bytes
      packet.payload.mac_addr  = CLNT_ETH_ADDR;
      packet.payload.csum      = calc_ipv6_nd_csum(packet);
    end
  endtask // create_ns_req
  
  //------------------------------------------------------------------------------------------

  // Create Neighbor Advertisement message
  task create_na_resp;
    output nd_pkt_t packet;
    begin
      packet.eth_head.dst_mac = CLNT_ETH_ADDR;
      packet.eth_head.src_mac = MY_ETH_ADDR;
      packet.eth_head.e_type  = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 16'd32;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = MY_IPV6_ADDR;
      packet.ip_head.dst_addr      = CLNT_IPV6_ADDR;
      packet.payload.mtype     = 8'd136;             // Neighbor Advertisement
      packet.payload.code      = 8'd0;
      packet.payload.csum      = 16'd0;              // Tmp
      packet.payload.reserved  = 32'h6000_0000;      // Solicited Flag + Override Flag
      packet.payload.targ_addr = MY_IPV6_ADDR;
      packet.payload.opt_type  = 8'd2;               // target link address
      packet.payload.opt_len   = 8'd1;               // 8 bytes
      packet.payload.mac_addr  = MY_ETH_ADDR;
      packet.payload.csum      = calc_ipv6_nd_csum(packet);
    end
  endtask //create_na_resp
  
  //------------------------------------------------------------------------------------------

  // Create Neighbor Solicitation message 
  task create_ns_req2;
    output nd_pkt_t packet;
    begin
      packet.eth_head.dst_mac = {24'h3333FF, 24'h42};
      packet.eth_head.src_mac = 48'h50_c5_8d_59_9b_39;
      packet.eth_head.e_type  = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'hc0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 16'd32;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = 128'hfe80_0000_0000_0000_52c5_8dff_fe59_9b39;
      packet.ip_head.dst_addr      = 128'hff02_0000_0000_0000_0000_0001_ff00_0042;
      packet.payload.mtype     = 8'd135;             // Neighbor Solicitation
      packet.payload.code      = 8'd0;
      packet.payload.csum      = 16'd0;
      packet.payload.reserved  = 32'd0; 
      packet.payload.targ_addr = 128'h2001_06b0_0123_0000_0000_0000_0000_0042;
      packet.payload.opt_type  = 8'd1;               // source link address
      packet.payload.opt_len   = 8'd1;               // 8 bytes
      packet.payload.mac_addr  = 48'h50_c5_8d_59_9b_39;
      packet.payload.csum      = calc_ipv6_nd_csum(packet);
    end
  endtask // create_ns_req2
  
  //------------------------------------------------------------------------------------------

  // Create Neighbor Advertisement message
  task create_na_resp2;
    output nd_pkt_t packet;
    begin
      packet.eth_head.dst_mac = 48'h50_c5_8d_59_9b_39;
      packet.eth_head.src_mac = 48'h00_1B_77_49_54_FD;
      packet.eth_head.e_type  = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 16'd32;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = 128'h2001_06b0_0123_0000_0000_0000_0000_0042;
      packet.ip_head.dst_addr      = 128'hfe80_0000_0000_0000_52c5_8dff_fe59_9b39;
      packet.payload.mtype     = 8'd136;             // Neighbor Advertisement
      packet.payload.code      = 8'd0;
      packet.payload.csum      = 16'd0;              // Tmp
      packet.payload.reserved  = 32'h6000_0000;      // Solicited Flag + Override Flag
      packet.payload.targ_addr = 128'h2001_06b0_0123_0000_0000_0000_0000_0042;
      packet.payload.opt_type  = 8'd2;               // target link address
      packet.payload.opt_len   = 8'd1;               // 8 bytes
      packet.payload.mac_addr  = 48'h00_1B_77_49_54_FD;
      packet.payload.csum      = calc_ipv6_nd_csum(packet);
    end
  endtask //create_na_resp
  
  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t    eth_head;
    ipv6_head_t   ip_head;
    udp_head_t    udp_head;
    ntp_payload_t payload;
    logic [31:0]  key_id;
    logic [159:0] digest;
  } ntp6_pkt_t;
  
  // Calculate checksum of IPv6 UDP NTP packet
  function [15:0] calc_udp_ntp6_csum;
    input ntp6_pkt_t packet;
    begin
      bit [31:0]              tmp_sum;
      integer i;
      tmp_sum = 16'b0;
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.src_addr[i*16+:16];
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.dst_addr[i*16+:16];

      tmp_sum += packet.ip_head.payl_len;
      tmp_sum += packet.ip_head.next_head;

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
        calc_udp_ntp6_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // calc_udp_ntp6_csum
  
  //------------------------------------------------------------------------------------------

  task create_ntp6_req;
    output ntp6_pkt_t packet;
    input  sign = 0;
    input  sha1 = 0;
    input  key  = 0;
    begin
      packet.eth_head.dst_mac = MY_ETH_ADDR;
      packet.eth_head.src_mac = CLNT_ETH_ADDR;
      packet.eth_head.e_type  = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = sign == 1'b0 ? NTP_UDP_PKT_LEN : sha1 == 1'b0 ? NTP_UDP_PKT_LEN + 20 : NTP_UDP_PKT_LEN + 24;
      packet.ip_head.next_head     = UDP_PROT;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = CLNT_IPV6_ADDR;
      packet.ip_head.dst_addr      = MY_IPV6_ADDR;
      packet.udp_head.src_port   = CLNT_PORT;
      packet.udp_head.dst_port   = NTP_PORT;
      packet.udp_head.udp_len    = sign == 1'b0 ? NTP_UDP_PKT_LEN : sha1 == 1'b0 ? NTP_UDP_PKT_LEN + 20 : NTP_UDP_PKT_LEN + 24;
      packet.udp_head.udp_csum   = 16'b0;
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
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID[key] : SHA1_KEY_ID[key];
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY[key], packet.payload) << 32 : sha1_func(SHA1_KEY[key], packet.payload);
      packet.udp_head.udp_csum = calc_udp_ntp6_csum(packet);
    end
  endtask //create_ntp6_req

  //------------------------------------------------------------------------------------------

  task create_ntp6_resp;
    output ntp6_pkt_t packet;
    input  sign = 0;
    input  sha1 = 0;
    input  key  = 0;
    begin
      packet.eth_head.dst_mac   = CLNT_ETH_ADDR;
      packet.eth_head.src_mac   = MY_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV6;
      packet.ip_head.ver        = 4'd6;                            // IPV6
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = sign == 1'b0 ? NTP_UDP_PKT_LEN : sha1 == 1'b0 ? NTP_UDP_PKT_LEN + 20 : NTP_UDP_PKT_LEN + 24;
      packet.ip_head.next_head     = UDP_PROT;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = MY_IPV6_ADDR;
      packet.ip_head.dst_addr      = CLNT_IPV6_ADDR;
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
      packet.payload.root_disp  = 32'd666666660;
      packet.payload.ref_id     = 32'd777777777;
      packet.payload.ref_ts     = 64'h3333333200000000;
//    packet.payload.ref_ts     = 64'd1111111122222222;
      packet.payload.org_ts     = 64'h0123456789abcdef;
      packet.payload.rx_ts      = 64'h3333333344444444 - HW_RX_LAT;
      packet.payload.tx_ts      = 64'h3333333355555555 + HW_TX_LAT + (sign == 1'b0 ? 32'b0 : sha1 == 1'b0 ? MD5_LAT : SHA1_LAT);
      packet.key_id             = sign == 1'b0 ?  32'b0 : sha1 == 1'b0 ? MD5_KEY_ID[key] : SHA1_KEY_ID[key];
      packet.digest             = sign == 1'b0 ? 160'b0 : sha1 == 1'b0 ? md5_func(MD5_KEY[key], packet.payload) << 32 : sha1_func(SHA1_KEY[key], packet.payload);
      packet.udp_head.udp_csum  = calc_udp_ntp6_csum(packet);      // Not mandatory
    end
  endtask //create_ntp6_resp

  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t      eth_head;
    ipv6_head_t     ip_head;
    ping_payload_t  payload;
  } ping6_pkt_t;

  //------------------------------------------------------------------------------------------

  // Calculate checksum of IPV6 Ping packet
  function [15:0] calc_ipv6_ping_csum;
    input ping6_pkt_t packet;
    begin
      integer i;
      bit [31:0]              tmp_sum;
      bit [$bits(packet.payload)/16-1:0] [15:0] ping_words;
      tmp_sum = 16'b0;

      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.src_addr[i*16+:16];
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.dst_addr[i*16+:16];

      tmp_sum += packet.ip_head.payl_len;
      tmp_sum += packet.ip_head.next_head;

      ping_words = packet.payload;
      for (i=0; i < $bits(packet.payload)/16; i++) tmp_sum += ping_words[i];
      
      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_ipv6_ping_csum = ~tmp_sum[15:0];
      end
    end
  endfunction
  
  //------------------------------------------------------------------------------------------

  // Create ping icmp echo request message
  task create_ping6_req;
    output ping6_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac      = MY_ETH_ADDR;
      packet.eth_head.src_mac      = CLNT_ETH_ADDR;
      packet.eth_head.e_type       = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 8+psize;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = CLNT_IPV6_ADDR;
      packet.ip_head.dst_addr      = MY_IPV6_ADDR;
      packet.payload.mtype         = 8'd128;           // Echo request
      packet.payload.code          = 8'd0;
      packet.payload.csum          = 16'd0;
      packet.payload.id            = 16'd77;           // Just a number
      packet.payload.seq_no        = 16'd88;           // Just another number
      packet.payload.data          = '0;
      for  (i=0; i < psize; i++) packet.payload.data[8*(85-i)+:8] = i+1;
      packet.payload.csum          = calc_ipv6_ping_csum(packet);
    end
  endtask // create_ping6_req

  //------------------------------------------------------------------------------------------

  // Create ping response message
  task create_ping6_resp;
    output ping6_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac      = CLNT_ETH_ADDR;
      packet.eth_head.src_mac      = MY_ETH_ADDR;
      packet.eth_head.e_type       = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 8+psize;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = MY_IPV6_ADDR;
      packet.ip_head.dst_addr      = CLNT_IPV6_ADDR;
      packet.payload.mtype         = 8'd129;           // Echo reply
      packet.payload.code          = 8'd0;
      packet.payload.csum          = 16'd0;            // Tmp
      packet.payload.id            = 16'd77;           // Just a number
      packet.payload.seq_no        = 16'd88;           // Just another number
      packet.payload.data          = '0;
      for  (i=0; i < psize; i++) packet.payload.data[8*(85-i)+:8] = i+1;
      packet.payload.csum          = calc_ipv6_ping_csum(packet);
    end
  endtask //create_ping6_resp
  
  //------------------------------------------------------------------------------------------

  typedef struct packed{
    eth_head_t       eth_head;
    ipv6_head_t      ip_head;
    udp_head_t       udp_head;
    logic [100*8-1:0] payload;  // max > 86-40 bytes
  } trcrt6_req_pkt_t;
  
  // Calculate checksum of IPV6 UDP trace route (udp) request packet
  function [15:0] calc_udp_trcrt6_csum;
    input trcrt6_req_pkt_t packet;
    begin
      bit [31:0]              tmp_sum;
      integer i;
      tmp_sum = 16'b0;
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.src_addr[i*16+:16];
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.dst_addr[i*16+:16];
      tmp_sum += packet.ip_head.payl_len;
      tmp_sum += packet.ip_head.next_head;

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
        calc_udp_trcrt6_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // for
  
  //------------------------------------------------------------------------------------------

  task create_trcrt6_req;
    output trcrt6_req_pkt_t packet;
    input integer psize;
    begin
      integer i;
      packet.eth_head.dst_mac   = MY_ETH_ADDR;
      packet.eth_head.src_mac   = CLNT_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = 8+psize;
      packet.ip_head.next_head     = UDP_PROT;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = CLNT_IPV6_ADDR;
      packet.ip_head.dst_addr      = MY_IPV6_ADDR;
      packet.udp_head.src_port  = CLNT_PORT;
      packet.udp_head.dst_port  = 16'd33434;
      packet.udp_head.udp_len   = 8+psize;
      packet.udp_head.udp_csum  = 16'b0;
      packet.payload            = '0;
      for  (i=0; i < psize; i++) begin
        packet.payload[8*(99-i)+:8] = i+1;
      end
      packet.udp_head.udp_csum = calc_udp_trcrt6_csum(packet);
    end
  endtask // for


  //------------------------------------------------------------------------------------------

  typedef struct packed{
    logic [7:0]      mtype;
    logic [7:0]      code;
    logic [15:0]     csum;
    logic [31:0]     pad;
    ipv6_head_t      ip_head;     // Original ip header
    udp_head_t       udp_head;    // Original udp header
    logic [38*8-1:0] payload;     // Orig payload max size = 86-40-8
  } trcrt6_payload_t;

  typedef struct packed{
    eth_head_t       eth_head;
    ipv6_head_t      ip_head;
    trcrt6_payload_t payload;
  } trcrt6_resp_pkt_t;
  
  // Calculate checksum of IPV6 trace route (icmp) response packet
  function [15:0] calc_trcrt6_resp_csum;
    input trcrt6_resp_pkt_t packet;
    begin
      bit [31:0]              tmp_sum;
      integer i;
      tmp_sum = 16'b0;

      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.src_addr[i*16+:16];
      for (i=0; i < 8; i++) tmp_sum += packet.ip_head.dst_addr[i*16+:16];

      tmp_sum += packet.ip_head.payl_len;
      tmp_sum += packet.ip_head.next_head;

      for (i=0; i<$bits(packet.payload)/16; i=i+1) begin
        tmp_sum += packet.payload[i*16+:16];
      end

      while (tmp_sum[31:16] > 0) begin
        tmp_sum = tmp_sum[31:16] + tmp_sum[15:0];
      end
      if (tmp_sum != 16'hffff) begin
        // Avoid generating 00 as csum since it could skip detection
        calc_trcrt6_resp_csum = ~tmp_sum[15:0];
      end
    end
  endfunction // for

  task create_trcrt6_resp;
    output trcrt6_resp_pkt_t packet;
    input  trcrt6_req_pkt_t  org_packet;
    begin
      packet.eth_head.dst_mac   = CLNT_ETH_ADDR;
      packet.eth_head.src_mac   = MY_ETH_ADDR;
      packet.eth_head.e_type    = E_TYPE_IPV6;
      packet.ip_head.ver           = 4'd6;
      packet.ip_head.traffic_class = 8'd0;
      packet.ip_head.flow_label    = 20'd0;
      packet.ip_head.payl_len      = org_packet.ip_head.payl_len < 8+38 ? 8+40+org_packet.ip_head.payl_len : 94;
      packet.ip_head.next_head     = 8'd58;
      packet.ip_head.hop_limit     = 8'd255;
      packet.ip_head.src_addr      = MY_IPV6_ADDR;
      packet.ip_head.dst_addr      = CLNT_IPV6_ADDR;
      packet.payload.mtype      = 8'd1;                            // Destination unreachable
      packet.payload.code       = 8'd4;                            // Port unreachable
      packet.payload.csum       = 16'b0;
      packet.payload.pad        = 32'b0;
      packet.payload.ip_head    = org_packet.ip_head;
      packet.payload.udp_head   = org_packet.udp_head;
      packet.payload.payload    = org_packet.payload[100*8-1-:38*8];
      packet.payload.csum       = calc_trcrt6_resp_csum(packet);
    end
  endtask // calc_trcrt6_resp_csum


