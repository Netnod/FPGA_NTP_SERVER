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
// Description: Behavioral implementation of the MD5 message-digest algorithm
//

function [31:0] rol;
  input [31:0] val;
  input integer N;
  begin : body
    reg [31:0] dum;
    {rol, dum} = {val, val} << N;
  end
endfunction // for

function [31:0] swapb;
  input [31:0] val;
  begin : body
    integer i;
    for (i=0; i<4; i=i+1) begin
      swapb[(3-i)*8+:8] = val[i*8+:8];
    end
  end
endfunction // for

function [127:0] md5_func;
  input [159:0] key;
  input [383:0] data;
  begin : body
    integer x,i,j;

    integer     S [0:63];
    
    reg [31:0]  K [0:63];
    
    reg [511:0] chunk [0:1];
    reg [31:0]  M [0:15];
    
    reg [31:0]  a0, b0, c0, d0;
    reg [31:0]  a, b, c, d, F, g, temp;

    S = {7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22,  7, 12, 17, 22,
         5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20,  5,  9, 14, 20,
         4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23,  4, 11, 16, 23,
         6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21,  6, 10, 15, 21};
    
    K = {32'hd76aa478, 32'he8c7b756, 32'h242070db, 32'hc1bdceee,
         32'hf57c0faf, 32'h4787c62a, 32'ha8304613, 32'hfd469501,
         32'h698098d8, 32'h8b44f7af, 32'hffff5bb1, 32'h895cd7be,
         32'h6b901122, 32'hfd987193, 32'ha679438e, 32'h49b40821,
         32'hf61e2562, 32'hc040b340, 32'h265e5a51, 32'he9b6c7aa,
         32'hd62f105d, 32'h02441453, 32'hd8a1e681, 32'he7d3fbc8,
         32'h21e1cde6, 32'hc33707d6, 32'hf4d50d87, 32'h455a14ed,
         32'ha9e3e905, 32'hfcefa3f8, 32'h676f02d9, 32'h8d2a4c8a,
         32'hfffa3942, 32'h8771f681, 32'h6d9d6122, 32'hfde5380c,
         32'ha4beea44, 32'h4bdecfa9, 32'hf6bb4b60, 32'hbebfbc70,
         32'h289b7ec6, 32'heaa127fa, 32'hd4ef3085, 32'h04881d05,
         32'hd9d4d039, 32'he6db99e5, 32'h1fa27cf8, 32'hc4ac5665,
         32'hf4292244, 32'h432aff97, 32'hab9423a7, 32'hfc93a039,
         32'h655b59c3, 32'h8f0ccc92, 32'hffeff47d, 32'h85845dd1,
         32'h6fa87e4f, 32'hfe2ce6e0, 32'ha3014314, 32'h4e0811a1,
         32'hf7537e82, 32'hbd3af235, 32'h2ad7d2bb, 32'heb86d391};
            
    a0 = 32'h67452301;
    b0 = 32'hefcdab89;
    c0 = 32'h98badcfe;
    d0 = 32'h10325476;

    {chunk[0], chunk[1]} = {key, data, 1'b1, 415'b0, swapb(32'd544), 32'b0};
    
    for (x=0; x<2; x=x+1) begin

      for (i=0; i<16; i=i+1) begin
        M[i] = swapb(chunk[x][(15-i)*32+:32]);
      end

      a = a0;
      b = b0;
      c = c0;
      d = d0;
      
      for (i=0; i<64; i=i+1) begin

        if (i<16) begin
            F = (b & c) | ((~b) & d);
            g = i;
        end else if (i<32) begin
            F = (d & b) | ((~d) & c);
            g = (5*i + 1) % 16;
        end else if (i<48) begin
            F = b ^ c ^ d;
            g = (3*i + 5) % 16;
        end else begin
            F = c ^ (b | (~d));
            g = (7*i) % 16;
        end
      
        temp = d;
        d = c;
        c = b;
        b = b + rol(a + F + K[i] + M[g], S[i]);
        a = temp;

      end // for (i=0; i<64; i=i+1)
      
      a0 = a0 + a;
      b0 = b0 + b;
      c0 = c0 + c;
      d0 = d0 + d;

    end // for (c=0; c<2; c=c+1)

    md5_func = {swapb(a0), swapb(b0), swapb(c0), swapb(d0)};

  end
endfunction //
