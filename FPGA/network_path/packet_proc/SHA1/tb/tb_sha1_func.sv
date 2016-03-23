// Behavioral implementation of the SHA1 message-digest algorithm

function [31:0] rrol;
  input [31:0] val;
  input integer N;
  begin : body
    reg [31:0] dum;
    {rrol, dum} = {val, val} << N;
  end
endfunction // for

function [159:0] sha1_func;
  input [159:0] key;
  input [383:0] data;
  begin : body
    integer x,i,j;
    reg [31:0] h0, h1, h2, h3, h4;
    reg [31:0] a, b, c, d, e, f, k, temp;
    reg [31:0] w [0:79];
    reg [511:0] chunk[0:1];
    
    h0 = 32'h67452301;
    h1 = 32'hEFCDAB89;
    h2 = 32'h98BADCFE;
    h3 = 32'h10325476;
    h4 = 32'hC3D2E1F0;

    {chunk[0], chunk[1]} = {key, data, 1'b1, 415'b0, 64'd544};
    
    for (x=0; x<2; x=x+1) begin
      for (i=0; i<16; i=i+1) begin
        w[i] = chunk[x][(15-i)*32+:32];
      end
      for (i=16; i<80; i=i+1) begin
        w[i] = rrol(w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16], 1);
      end

      a = h0;
      b = h1;
      c = h2;
      d = h3;
      e = h4;
      
      for (i=0; i<80; i=i+1) begin
        if (i<20) begin
          f = (b & c) | ((~b) & d);
          k = 32'h5A827999;
        end else if (i<40) begin
          f = b ^ c ^ d;
          k = 32'h6ED9EBA1;
        end else if (i<60) begin
          f = (b & c) | (b & d) | (c & d);
          k = 32'h8F1BBCDC;
        end else begin
          f = b ^ c ^ d;
          k = 32'hCA62C1D6;
        end
      
        temp = rrol(a, 5) + f + e + k + w[i];
        e = d;
        d = c;
        c = rrol(b, 30);
        b = a;
        a = temp;
      end // for (i=0; i<80; i=i+1)
      
      h0 = h0 + a;
      h1 = h1 + b;
      h2 = h2 + c;
      h3 = h3 + d;
      h4 = h4 + e;

    end // for (c=0; c<2; c=c+1)

    sha1_func = (h0 << 128) | (h1 << 96) | (h2 << 64) | (h3 << 32) | h4;
  end
endfunction //
