//-----------------------------------------------------------------------------------------------

  function [15:0] calc_csum;
    input [0:127] packet;
    input integer     len;
    integer           i;
    reg [16:0]        tmp_sum0 [0:3];
    reg [17:0]        tmp_sum1 [0:1];
    reg [18:0]        tmp_sum2;
    reg [16:0]        tmp_sum3;
    begin
      for (i = 0; i < 4; i = i+1) begin
        tmp_sum0[i] = packet[i*32+:16] + packet[i*32+16+:16];
      end
      for (i = 0; i < 2; i = i+1) begin
        tmp_sum1[i] = tmp_sum0[2*i] + tmp_sum0[2*i+1];
      end
      tmp_sum2 = tmp_sum1[0] + tmp_sum1[1];
      tmp_sum3 = tmp_sum2[15:0] + tmp_sum2[18:16];
      calc_csum = tmp_sum3[15:0] + tmp_sum3[16];
    end
  endfunction
  
  function [15:0] calc_csumx;
    input [0:16*8-1] packet;
    input integer     len;
    integer           i;
    reg [16:0]        tmp_sum;
    begin
      tmp_sum = 0;
      for (i = (16-len)/2; i < 8; i = i+1) begin
        tmp_sum = packet[i*16+:16] + tmp_sum[15:0] + tmp_sum[16];
      end
      calc_csumx = tmp_sum[15:0] + tmp_sum[16];
    end
  endfunction // calc_csum
  
  function [15:0] calc_csum2;
    input [127:0] packet;
    input integer     len;
    integer           i;
    reg [16:0]        tmp_sum0 [0:3];
    reg [16:0]        tmp_sum1 [0:1];
    reg [16:0]        tmp_sum2;
    begin
      for (i = 0; i < 4; i = i+1) begin
        tmp_sum0[i] = packet[i*32+:16] + packet[i*32+16+:16];
      end
      for (i = 0; i < 2; i = i+1) begin
        tmp_sum1[i] = tmp_sum0[2*i][15:0] + tmp_sum0[2*i+1][15:0] + tmp_sum0[2*i][16] + tmp_sum0[2*i+1][16];
//      tmp_sum1[i] = tmp_sum0[2*i][15:0] + tmp_sum0[2*i+1][15:0];
      end
      tmp_sum2 = tmp_sum1[0][15:0] + tmp_sum1[1][15:0] + tmp_sum1[0][16] + tmp_sum1[1][16];
//    calc_csum2 = tmp_sum2[15:0] + tmp_sum2[16] + tmp_sum1[0][16] + tmp_sum1[1][16] + tmp_sum0[0][16] + tmp_sum0[1][16] + tmp_sum0[2][16] + tmp_sum0[3][16]; 
      calc_csum2 = tmp_sum2[15:0] + tmp_sum2[16];
    end
  endfunction

  function [15:0] wrap_csum;
    input [15:0] csum;
    begin
      wrap_csum = csum == 16'hffff ? csum : ~csum; // invert bits if result > 0
    end
  endfunction // calc_csum

//-----------------------------------------------------------------------------------------------
