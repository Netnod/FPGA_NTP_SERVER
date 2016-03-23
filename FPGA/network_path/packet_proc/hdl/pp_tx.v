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
// Module Name: pp_tx
// Description: Packet processing tx part. Assemble and transmit packets
// 

`timescale 1ns / 1ps
`default_nettype none

module pp_tx (
  input wire         areset, // async reset
  input wire         clk,
  input wire [7:0]   ip_ttl,
  input wire [47:0]  my_mac_addr0,
  input wire [47:0]  my_mac_addr1,
  input wire [47:0]  my_mac_addr2,
  input wire [47:0]  my_mac_addr3,
  input wire [31:0]  my_ipv4_addr0,
  input wire [31:0]  my_ipv4_addr1,
  input wire [31:0]  my_ipv4_addr2,
  input wire [31:0]  my_ipv4_addr3,
  input wire [127:0] my_ipv6_addr0,
  input wire [127:0] my_ipv6_addr1,
  input wire [127:0] my_ipv6_addr2,
  input wire [127:0] my_ipv6_addr3,

  // From TX FIFO 
  input wire         start,
  output wire        ready,
  input wire [775:0] data,

  // To MAC 
  output reg         tx_start, 
  input wire         tx_ack, 
  output reg [7:0]   tx_data_valid,
  output reg [63:0]  tx_data
);

  //-------------------------------------------------------------------------------------------------

`include "pp_par.v"

  wire [1:0]   my_addr_sel;  // Which Mac IP pair 
  
  wire [47:0]  clnt_mac;     // Sender HW address  (MAC)
  wire [127:0] clnt_ip;      // Sender Protocol address (IPv4/IPv6)
  wire [15:0]  clnt_port;    // Source port for reply
  wire [383:0] ntp_payload;
  wire [31:0]  keyid;
  wire [159:0] digest;
  
  wire         tx_arp;       // Xmit IPv4 ARP response
  wire         tx_ntp4;      // Xmit IPv4 NTP respose
  wire         tx_nd;        // Xmit IPv6 ND response
  wire         tx_ntp6;      // Xmit IPv6 NTP response
  wire         tx_md5;       // MD5  Signed NTP
  wire         tx_sha1;      // SHA1 Signed NTP

  //-------------------------------------------------------------------------------------------------
  // Unpack data from FIFO

  // Note unused bits in keyid and digest must be 0 in order to get correct padding and checksumming
  
  assign {my_addr_sel, tx_arp, tx_nd, tx_ntp4, tx_ntp6, tx_md5, tx_sha1,
          clnt_mac, clnt_ip, clnt_port, ntp_payload, keyid, digest} = data;

  
  wire [47:0]  my_mac_addr;
  wire [31:0]  my_ipv4_addr;
  wire [127:0] my_ipv6_addr;
  
  assign my_mac_addr  = my_addr_sel == 2'b00 ? my_mac_addr0  : my_addr_sel == 2'b01 ? my_mac_addr1  : my_addr_sel == 2'b10 ? my_mac_addr2  : my_mac_addr3;
  assign my_ipv4_addr = my_addr_sel == 2'b00 ? my_ipv4_addr0 : my_addr_sel == 2'b01 ? my_ipv4_addr1 : my_addr_sel == 2'b10 ? my_ipv4_addr2 : my_ipv4_addr3;
  assign my_ipv6_addr = my_addr_sel == 2'b00 ? my_ipv6_addr0 : my_addr_sel == 2'b01 ? my_ipv6_addr1 : my_addr_sel == 2'b10 ? my_ipv6_addr2 : my_ipv6_addr3;
  
  wire [15:0] ntp_ip_len;
  assign ntp_ip_len  = tx_md5  == 1'b1 ? NTP_IP_MD5_LEN  :
                       tx_sha1 == 1'b1 ? NTP_IP_SHA1_LEN :
                                         NTP_IP_LEN;
  wire [15:0] ntp_udp_len;
  assign ntp_udp_len = tx_md5  == 1'b1 ? NTP_UDP_MD5_LEN  : 
                       tx_sha1 == 1'b1 ? NTP_UDP_SHA1_LEN :
                                         NTP_UDP_LEN;

  wire   tx_ntp4_md5;  // Xmit IPv4 NTP respose with MD5 signing
  wire   tx_ntp4_sha1; // Xmit IPv4 NTP respose with SHA1 signing
  wire   tx_ntp6_md5;  // Xmit IPv6 NTP respose with MD5 signing
  wire   tx_ntp6_sha1; // Xmit IPv6 NTP respose with SHA1 signing
  
  assign tx_ntp4_md5  = tx_ntp4 & tx_md5;
  assign tx_ntp4_sha1 = tx_ntp4 & tx_sha1;
  assign tx_ntp6_md5  = tx_ntp6 & tx_md5;
  assign tx_ntp6_sha1 = tx_ntp6 & tx_sha1;
  
  //-------------------------------------------------------------------------------------------------
  // Format ARP packet
  
  wire [0:14*8-1] tx_arp_eth_head;
  assign tx_arp_eth_head[0:47]   = clnt_mac;
  assign tx_arp_eth_head[48:95]  = my_mac_addr;
  assign tx_arp_eth_head[96:111] = ETYPE_ARP;

  wire [0:28*8-1] tx_arp_payload;
  assign tx_arp_payload[0:15]    = HTYPE_ETH;
  assign tx_arp_payload[16:31]   = PTYPE_V4;
  assign tx_arp_payload[32:39]   = HLEN;
  assign tx_arp_payload[40:47]   = PLEN;
  assign tx_arp_payload[48:63]   = REPLY;
  assign tx_arp_payload[64:111]  = my_mac_addr;
  assign tx_arp_payload[112:143] = my_ipv4_addr;
  assign tx_arp_payload[144:191] = clnt_mac;
  assign tx_arp_payload[192:223] = clnt_ip[31:0];

  //-------------------------------------------------------------------------------------------------
  // Format IPv6 ND packet
  
  wire [0:14*8-1] tx_nd_eth_head;
  assign tx_nd_eth_head[0:47]    = clnt_mac;
  assign tx_nd_eth_head[48:95]   = my_mac_addr;
  assign tx_nd_eth_head[96:111]  = ETYPE_V6;

  wire [0:40*8-1] tx_nd_ip_head;
  assign tx_nd_ip_head[0:3]      =  4'd6;                 // Set IPv6;
  assign tx_nd_ip_head[4:11]     =  8'd0;                 // Traffic Class
  assign tx_nd_ip_head[12:31]    = 20'd0;                 // Flow Label
  assign tx_nd_ip_head[32:47]    = ND_LEN;                // Payload length
  assign tx_nd_ip_head[48:55]    =  8'd58;                // Next Head
  assign tx_nd_ip_head[56:63]    =  8'd255;               // Hopp Limit
  assign tx_nd_ip_head[64:191]   = my_ipv6_addr;          // Source address
  assign tx_nd_ip_head[192:319]  = clnt_ip;               // Dest address
  
  reg  [15:0] nd_csum ;

  wire [0:40*8-1] tx_nd_pseudo_head;                      // Only used for checksum calc
  assign tx_nd_pseudo_head[0:127]   = my_ipv6_addr;       // source ipv6 address
  assign tx_nd_pseudo_head[128:255] = clnt_ip;            // dest ipv6 address
  assign tx_nd_pseudo_head[256:287] = ND_LEN;             // Payload len
  assign tx_nd_pseudo_head[288:311] = 24'd0;              // padding
  assign tx_nd_pseudo_head[312:319] = 8'd58;              // next hopp
  
  wire [0:32*8-1] tx_nd_payload;
  assign tx_nd_payload[0:7]     = 8'd136;                 // Mtype = Neighbour advertisment
  assign tx_nd_payload[8:15]    = 8'd0;                   // Code
  assign tx_nd_payload[16:31]   = nd_csum;                // Check Sum
  assign tx_nd_payload[32:63]   = 32'h6000_0000;          // Solicited Flag + Override Flag
  assign tx_nd_payload[64:191]  = my_ipv6_addr;           // Target address
  assign tx_nd_payload[192:199] = 8'd2;                   // option type = target link addess
  assign tx_nd_payload[200:207] = 8'd1;                   // option length = 8 bytes
  assign tx_nd_payload[208:255] = my_mac_addr;            // Source link (mac) addess 

  //-------------------------------------------------------------------------------------------------
  // Format IPv4 NTP packet
  
  reg [15:0] ipv4h_csum;
  reg [15:0] ntp4_udp_csum;
 
  wire [0:14*8-1] tx_ntp4_eth_head;
  assign tx_ntp4_eth_head[0:47]   = clnt_mac;
  assign tx_ntp4_eth_head[48:95]  = my_mac_addr;
  assign tx_ntp4_eth_head[96:111] = ETYPE_V4;

  wire [0:20*8-1] tx_ntp4_ip_head;
  assign tx_ntp4_ip_head[0:3]     =  4'd4;                // Set IPv4;
  assign tx_ntp4_ip_head[4:7]     =  4'd5;                // IP header len
  assign tx_ntp4_ip_head[8:15]    =  8'h10;               // DSCP = 0x04 max throughput
  assign tx_ntp4_ip_head[16:31]   = ntp_ip_len;           // IP datagram length for NTP
  assign tx_ntp4_ip_head[32:47]   = 16'd0;                // Identification
  assign tx_ntp4_ip_head[48:50]   =  3'b010;              // don't fragment
  assign tx_ntp4_ip_head[51:63]   = 13'b0;                // Fragment offset
  assign tx_ntp4_ip_head[64:71]   = ip_ttl;               // TTL
  assign tx_ntp4_ip_head[72:79]   = PROT_UDP;             // Protocol
  assign tx_ntp4_ip_head[80:95]   = ipv4h_csum;
  assign tx_ntp4_ip_head[96:127]  = my_ipv4_addr;
  assign tx_ntp4_ip_head[128:159] = clnt_ip[31:0];

  wire [0:8*8-1] tx_ntp4_udp_head;
  assign tx_ntp4_udp_head[0:15]   = PORT_UDP;             // source port
  assign tx_ntp4_udp_head[16:31]  = clnt_port;            // dest port 
  assign tx_ntp4_udp_head[32:47]  = ntp_udp_len;          // NTP Datagram Length 
  assign tx_ntp4_udp_head[48:63]  = ntp4_udp_csum;
   
  wire [0:12*8-1] tx_ntp4_pseudo_head;                    // Only used for checksum calc 
  assign tx_ntp4_pseudo_head[0:31]   = my_ipv4_addr;      // source ipv4 address
  assign tx_ntp4_pseudo_head[32:63]  = clnt_ip[31:0];     // dest ip4 address
  assign tx_ntp4_pseudo_head[64:71]  = 8'b0;
  assign tx_ntp4_pseudo_head[72:79]  = PROT_UDP;
  assign tx_ntp4_pseudo_head[80:95]  = ntp_udp_len;

  //-------------------------------------------------------------------------------------------------
  // Format IPv6 NTP packet
  
  reg [15:0]      ntp6_udp_csum;

  wire [0:14*8-1] tx_ntp6_eth_head;
  assign tx_ntp6_eth_head[0:47]   = clnt_mac;
  assign tx_ntp6_eth_head[48:95]  = my_mac_addr;
  assign tx_ntp6_eth_head[96:111] = ETYPE_V6;

  wire [0:40*8-1] tx_ntp6_ip_head;
  assign tx_ntp6_ip_head[0:3]      =  4'd6;            // Set IPv6;
  assign tx_ntp6_ip_head[4:11]     =  8'd0;            // Traffic Class
  assign tx_ntp6_ip_head[12:31]    = 20'd0;            // Flow Label
  assign tx_ntp6_ip_head[32:47]    = ntp_udp_len;      // Payload length
  assign tx_ntp6_ip_head[48:55]    =  PROT_UDP;        // Next Head
  assign tx_ntp6_ip_head[56:63]    =  8'd255;          // Hopp Limit
  assign tx_ntp6_ip_head[64:191]   = my_ipv6_addr;     // Source address
  assign tx_ntp6_ip_head[192:319]  = clnt_ip;          // Dest address

  wire [0:8*8-1] tx_ntp6_udp_head;
  assign tx_ntp6_udp_head[0:15]   = PORT_UDP;          // source port
  assign tx_ntp6_udp_head[16:31]  = clnt_port;         // dest port 
  assign tx_ntp6_udp_head[32:47]  = ntp_udp_len;       // NTP Datagram Length 
  assign tx_ntp6_udp_head[48:63]  = ntp6_udp_csum;

  wire [0:40*8-1] tx_ntp6_pseudo_head;                 // Only used for checksum calc
  assign tx_ntp6_pseudo_head[0:127]   = my_ipv6_addr;  // source ipv6 address
  assign tx_ntp6_pseudo_head[128:255] = clnt_ip;       // dest ipv6 address
  assign tx_ntp6_pseudo_head[256:287] = ntp_udp_len;   // Payload len
  assign tx_ntp6_pseudo_head[288:311] = 24'd0;         // padding
  assign tx_ntp6_pseudo_head[312:319] = PROT_UDP;      // next hopp

  //-------------------------------------------------------------------------------------------------

  localparam TX_PACKET_SZ = ((NTP6_SHA1_TOT_LEN+7)/8) * 8; // Round up to even 8 bytes 
  
  wire [0:TX_PACKET_SZ*8-1] tx_packet;

  assign tx_packet = tx_arp  == 1'b1 ? {tx_arp_eth_head, tx_arp_payload, {(TX_PACKET_SZ-ARP_TOT_LEN){8'b0}}} :
                     tx_nd   == 1'b1 ? {tx_nd_eth_head, tx_nd_ip_head, tx_nd_payload, {(TX_PACKET_SZ-ND_TOT_LEN){8'b0}}} :
                     tx_ntp4 == 1'b1 ? {tx_ntp4_eth_head, tx_ntp4_ip_head, tx_ntp4_udp_head, ntp_payload, keyid, digest, {(TX_PACKET_SZ-NTP4_SHA1_TOT_LEN){8'b0}}} :
                     tx_ntp6 == 1'b1 ? {tx_ntp6_eth_head, tx_ntp6_ip_head, tx_ntp6_udp_head, ntp_payload, keyid, digest, {(TX_PACKET_SZ-NTP6_SHA1_TOT_LEN){8'b0}}} : 
                                       {TX_PACKET_SZ{8'b0}};

  wire [7:0] tx_bytes;  // Size of tx packet
  assign tx_bytes = tx_arp       == 1'b1 ? ARP_TOT_LEN :
                    tx_nd        == 1'b1 ? ND_TOT_LEN :
                    tx_ntp4_md5  == 1'b1 ? NTP4_MD5_TOT_LEN :
                    tx_ntp4_sha1 == 1'b1 ? NTP4_SHA1_TOT_LEN :
                    tx_ntp4      == 1'b1 ? NTP4_TOT_LEN :
                    tx_ntp6_md5  == 1'b1 ? NTP6_MD5_TOT_LEN :
                    tx_ntp6_sha1 == 1'b1 ? NTP6_SHA1_TOT_LEN :
                    tx_ntp6      == 1'b1 ? NTP6_TOT_LEN :
                                           8'b0;
  
  localparam S_IDLE    = 3'd0;
  localparam S_WACK    = 3'd1;
  localparam S_WR      = 3'd2;
  localparam S_LAST    = 3'd3;
  
  reg [3:0]  tx_state;
  reg [4:0]  tx_count;

  //-------------------------------------------------------------------------------------------------
  // do the checksum calculations pipelined in parallel with transmission of eth and ip headers 

  function [15:0] calc_csum;
    input [0:100*8-1] packet;
    input integer     len;
    integer           i;
    reg [16:0]        tmp_sum;
    begin
      tmp_sum = 0;
      for (i = (100-len)/2; i < 50; i = i+1) begin
        tmp_sum = packet[i*16+:16] + tmp_sum[15:0] + tmp_sum[16];  // Add carry bits
      end
      calc_csum = tmp_sum[15:0] + tmp_sum[16];
    end
  endfunction // calc_csum
  
  function [15:0] wrap_csum;
    input [15:0] csum;
    begin
      wrap_csum = csum == 16'hffff ? csum : ~csum; // invert bits if result > 0
    end
  endfunction // calc_csum

  //-------------------------------------------------------------------------------------------------

  // Split csum calculation to improve timing.
  reg [15:0] ipv4h_csum0;
  reg [15:0] ipv4h_csum1;
  reg [15:0] nd_csum0;
  reg [15:0] nd_csum1;
  reg [15:0] nd_csum2;
  reg [15:0] nd_csum3;
  reg [15:0] nd_csum4;
  reg [15:0] nd_csum5;
  reg [15:0] nd_csum6;
  reg [15:0] nd_csum7;
  reg [15:0] nd_csum8;
  reg [15:0] ntp4_udp_csum0;
  reg [15:0] ntp4_udp_csum1;
  reg [15:0] ntp4_udp_csum2;
  reg [15:0] ntp6_udp_csum0;
  reg [15:0] ntp6_udp_csum1;
  reg [15:0] ntp6_udp_csum2;
  reg [15:0] ntp6_udp_csum3;
  reg [15:0] ntp6_udp_csum4;
  reg [15:0] ntp6_udp_csum5;
  reg [15:0] ntp_pl_csum;
  reg [15:0] ntp_pl_csum0;
  reg [15:0] ntp_pl_csum1;
  reg [15:0] ntp_pl_csum2;
  reg [15:0] ntp_pl_csum3;
  reg [15:0] ntp_pl_csum4;
  reg [15:0] ntp_sign_csum0;
  reg [15:0] ntp_sign_csum1;
  reg [15:0] ntp_sign_csum2;
  
  always @(posedge clk) begin

    ipv4h_csum0    <= calc_csum(tx_ntp4_ip_head[0:79],  10);
    ipv4h_csum1    <= calc_csum(tx_ntp4_ip_head[96:159], 8);  // exclude CSum in calc !
    ipv4h_csum     <= wrap_csum(calc_csum({ipv4h_csum0, ipv4h_csum1}, 4));
    
    nd_csum0       <= calc_csum(tx_nd_pseudo_head[  0: 79], 10);
    nd_csum1       <= calc_csum(tx_nd_pseudo_head[ 80:159], 10);
    nd_csum2       <= calc_csum(tx_nd_pseudo_head[160:239], 10);
    nd_csum3       <= calc_csum(tx_nd_pseudo_head[240:319], 10);
    nd_csum4       <= calc_csum({tx_nd_payload[0:15], tx_nd_payload[32:95]}, 10);  // exclude CSum in calc !
    nd_csum5       <= calc_csum(tx_nd_payload[ 96:175], 10);
    nd_csum6       <= calc_csum(tx_nd_payload[176:255], 10);
    nd_csum7       <= calc_csum({nd_csum0, nd_csum1, nd_csum2, nd_csum3}, 8);
    nd_csum8       <= calc_csum({nd_csum4, nd_csum5, nd_csum6}, 6);
    nd_csum        <= wrap_csum(calc_csum({nd_csum7, nd_csum8},4));

    ntp_pl_csum0   <= calc_csum(ntp_payload[383:320],  8);
    ntp_pl_csum1   <= calc_csum(ntp_payload[319:240], 10);
    ntp_pl_csum2   <= calc_csum(ntp_payload[239:160], 10);
    ntp_pl_csum3   <= calc_csum(ntp_payload[159: 80], 10);
    ntp_pl_csum4   <= calc_csum(ntp_payload[ 79:  0], 10);
    ntp_pl_csum    <= calc_csum({ntp_pl_csum0, ntp_pl_csum1, ntp_pl_csum2, ntp_pl_csum3, ntp_pl_csum4}, 10);
    
    ntp_sign_csum0 <= calc_csum({keyid, digest[159:128]}, 8);
    ntp_sign_csum1 <= calc_csum(digest[127:64], 8);
    ntp_sign_csum2 <= calc_csum(digest[ 63: 0], 8);

    ntp4_udp_csum0 <= calc_csum( tx_ntp4_pseudo_head[ 0:63], 8);
    ntp4_udp_csum1 <= calc_csum({tx_ntp4_pseudo_head[64:95], tx_ntp4_udp_head[0:31]}, 8);  // exclude csum in calc !
    ntp4_udp_csum2 <= calc_csum({tx_ntp4_udp_head[32:47], ntp_sign_csum0, ntp_sign_csum1, ntp_sign_csum2}, 8); 
    ntp4_udp_csum  <= wrap_csum(calc_csum({ntp4_udp_csum0, ntp4_udp_csum1, ntp4_udp_csum2, ntp_pl_csum}, 8));

    ntp6_udp_csum0 <= calc_csum(tx_ntp6_pseudo_head[  0: 79], 10);
    ntp6_udp_csum1 <= calc_csum(tx_ntp6_pseudo_head[ 80:159], 10);
    ntp6_udp_csum2 <= calc_csum(tx_ntp6_pseudo_head[160:239], 10);
    ntp6_udp_csum3 <= calc_csum(tx_ntp6_pseudo_head[240:319], 10);
    ntp6_udp_csum4 <= calc_csum({tx_ntp6_udp_head[0:47], ntp_pl_csum}, 8 );  // exclude CSum in calc !
    
    ntp6_udp_csum5 <= calc_csum({ntp6_udp_csum0, ntp6_udp_csum1, ntp6_udp_csum2, ntp6_udp_csum3, ntp6_udp_csum4}, 10);
    ntp6_udp_csum  <= wrap_csum(calc_csum({ntp_sign_csum0, ntp_sign_csum1, ntp_sign_csum2, ntp6_udp_csum5}, 8));

  end // always @ (posedge clk, posedge areset)
  

  //-------------------------------------------------------------------------------------------------
  // Transmit packet

  always @(posedge clk, posedge areset) begin
    if (areset == 1'b1) begin

      tx_state       <= S_IDLE;
      tx_data        <= 64'b0;
      tx_data_valid  <=  8'b0;
      tx_count       <=  5'b0;

    end else begin

      tx_data_valid <=  8'b0;
      tx_start      <= 1'b0;

      case (tx_state)
        S_IDLE : 
          if (start == 1'b1) begin
            tx_start <= 1'b1;
            tx_state <= S_WACK;
          end
        S_WACK : begin
          tx_data       <= tx_packet[0+:64];
          tx_data_valid <= 8'hff;
          tx_count      <= 5'd1;
          if (tx_ack == 1'b1) begin
            tx_data       <= tx_packet[tx_count*64+:64]; 
            tx_data_valid <= 8'hff;
            tx_count      <= 5'd2;
            tx_state      <= S_WR;
          end
        end
        S_WR : begin
          tx_data       <= tx_packet[tx_count*64+:64];
          tx_data_valid <= 8'hff;
          tx_count      <= tx_count + 1;
          if (tx_count == tx_bytes/8 -1) begin
            tx_state <= S_LAST;
          end
        end
        S_LAST : begin
          tx_data       <= tx_packet[tx_count*64+:64];
          tx_data_valid <= 8'hff >> (8 - (tx_bytes % 8));
          tx_count      <= 5'd0;
          tx_state      <= S_IDLE;
         end
        default : begin
          tx_data        <= 64'h0;
          tx_data_valid  <= 8'h00;
          tx_count       <= 5'd0;
          tx_state       <= S_IDLE;
        end
      endcase // case (tx_state)
    end // else: !if(areset == 1'b1)
  end // always @ (posedge clk, posedge areset)

  assign ready = (tx_state == S_LAST ||  tx_state == S_IDLE);
  
endmodule // pp_tx
`default_nettype wire


