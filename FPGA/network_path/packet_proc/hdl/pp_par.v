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
// Module Name: *any*
// Description: Some network related constants 
// 

localparam BCAST        = 48'hffff_ffff_ffff; // Broadcast addr 
localparam ETYPE_ARP    = 16'h0806;           // ARP  Ethernet frame type
localparam ETYPE_V4     = 16'h0800;           // IPV4 Ethernet frame type
localparam ETYPE_V6     = 16'h86DD;           // IPV6 Ethernet frame type
localparam HTYPE_ETH    = 16'h0001;           // Ethernet Hard Type
localparam PTYPE_V4     = 16'h0800;           // IPV4 Protocol type
localparam HLEN         = 8'd6;               // MAC size in bytes
localparam PLEN         = 8'd4;               // IP address len in bytes
localparam REQ          = 16'h0001;           // packet is ARP request
localparam REPLY        = 16'h0002;           // packet is ARP reply
localparam PROT_UDP     = 8'd17;              // protocol is UDP
localparam PORT_UDP     = 16'd123;            // UDP port

// IPv4 specific lengths in bytes
localparam NTP_IP_LEN       = 16'd76;         // NTP IP length
localparam NTP_UDP_LEN      = 16'd56;         // NTP UDP length (above - ip header len (20))
localparam NTP_IP_MD5_LEN   = 16'd96;         // NTP IP length with MD5 signing
localparam NTP_UDP_MD5_LEN  = 16'd76;         // NTP UDP length with MD5 signing
localparam NTP_IP_SHA1_LEN  = 16'd100;        // NTP IP length with SHA1 signing
localparam NTP_UDP_SHA1_LEN = 16'd80;         // NTP UDP length with SHA1 signing

localparam ETHH_LEN     = 6+6+2;                             // Ethernet header length
localparam ARP_LEN      = 28;                                // ARP Payload len
localparam ARP_TOT_LEN  = ETHH_LEN + ARP_LEN;                // ARP packet total length
localparam IP4H_LEN     = 20;                                // IPV4 header length
localparam IP6H_LEN     = 40;                                // IPV6 header length
localparam ND_LEN       = 32;                                // ND Payload len (imcpv6)
localparam ND_TOT_LEN   = ETHH_LEN + IP6H_LEN + ND_LEN;      // ND packet total len
localparam UDPH_LEN     =  8;                                // UDP header length
localparam IP4PSH_LEN   = 12;                                // IPv4 pseudo header length
localparam NTP_LEN      = 48;                                // NTP Payload length
localparam NTP4_TOT_LEN = ETHH_LEN + IP4H_LEN + UDPH_LEN + NTP_LEN; // IPv4 NTP packet total length
localparam UDP_CS_LEN   = 4 + 4 + 2 + 2 + UDPH_LEN + NTP_LEN;       // Length of UDP pseduo header for csum calcs
localparam NTP6_TOT_LEN = ETHH_LEN + IP6H_LEN + UDPH_LEN + NTP_LEN; // IPv6 NTP packet total length

localparam MD5_LEN           = 20;                           // MD5 keyid + signature length
localparam SHA1_LEN          = 24;                           // SHA1 keyid + signature length
localparam NTP4_MD5_TOT_LEN  = NTP4_TOT_LEN + MD5_LEN;
localparam NTP4_SHA1_TOT_LEN = NTP4_TOT_LEN + SHA1_LEN;
localparam NTP6_MD5_TOT_LEN  = NTP6_TOT_LEN + MD5_LEN;
localparam NTP6_SHA1_TOT_LEN = NTP6_TOT_LEN + SHA1_LEN;

// HW latencies to adjust for in time stamping
localparam real SCALE              = 6400/232.8;     // 6400ps/232.8ps
localparam real MAC_RX_LAT         = 6.0;
localparam real PMA_PMD_LAT_RX_LAT = 27.75;
localparam real XCVR_RX_LAT        = 0.0;            // TBD
localparam integer HW_RX_LAT       = (MAC_RX_LAT + PMA_PMD_LAT_RX_LAT + XCVR_RX_LAT) * SCALE;
localparam real MAC_TX_LAT         = 5.0;
localparam real PMA_PMD_LAT_TX_LAT = 20.0;
localparam real XCVR_TX_LAT        = 0.0;            // TBD
localparam integer HW_TX_LAT       = (MAC_TX_LAT + PMA_PMD_LAT_TX_LAT + XCVR_TX_LAT) * SCALE;
localparam integer MD5_LAT         = 64 * SCALE;
localparam integer SHA1_LAT        = 40 * SCALE;

// EOF
//   
