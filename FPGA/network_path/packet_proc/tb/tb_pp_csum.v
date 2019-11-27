module tb_pp_csum;

  function [16:0] calc_csum16;
     input [15:0] a;
     input [15:0] b;
     begin
       calc_csum16 = { 1'b0, a } + { 1'b0, b };
     end
   endfunction

  // NEW, Optimized
  function [15:0] calc_csum;
    input [0:127] packet;
    input integer     len;
    integer           i;
    reg   [6:0]       carry;
    reg   [7:0]       msb; // Largest possible sum is 7 as in 8 * 0xFFFF = 0x7FFF8.
    reg  [15:0]       tmp_sum0 [0:3];
    reg  [15:0]       tmp_sum1 [0:1];
    reg  [15:0]       tmp_sum2;
    reg  [15:0]       tmp_sum3; //Largest possible sum here is 0x7 + 0xFFF8 = 0xFFFF. Cannot overflow.
    begin
      for (i = 0; i < 4; i = i+1) begin
        { carry[i], tmp_sum0[i] } = calc_csum16( packet[i*32+:16], packet[i*32+16+:16] );
      end
      for (i = 0; i < 2; i = i+1) begin
        { carry[4+i], tmp_sum1[i] } = calc_csum16( tmp_sum0[2*i], tmp_sum0[2*i+1] );
      end
      { carry[6], tmp_sum2 } = calc_csum16( tmp_sum1[0], tmp_sum1[1] );

      msb = 0;
      for (i = 0; i < 7; i = i + 1) begin
        msb = msb + { 7'h0, carry[i] };
      end

      tmp_sum3 = tmp_sum2 + { 8'h0, msb }; //Cannot overflow! 0x7 + 0xFFF8 = 0xFFFF
      calc_csum = tmp_sum3;
    end
  endfunction

  //OLD, less optimized
  function [15:0] calc_csumxx;
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
      calc_csumxx = tmp_sum3[15:0] + tmp_sum3[16];
    end
  endfunction

  //OLD, not optimized. Also, broken.
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

  //OLD. What is this?
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


  task test_csum ( input [127:0] testbits, input integer len );
  begin
    $display("%s:%0d", `__FILE__, `__LINE__);
    $display("%s:%0d calc_csum  (%h, %0d) = %h (newest, most optimized)", `__FILE__, `__LINE__, testbits, len, calc_csum(testbits, len));
    $display("%s:%0d calc_csumxx(%h, %0d) = %h (older, optimized but less so. Caused Critical Path resolution and build delays)", `__FILE__, `__LINE__, testbits, len, calc_csumxx(testbits, len));
    $display("%s:%0d calc_csum2 (%h, %0d) = %h (older, not sure what this is)", `__FILE__, `__LINE__, testbits, len, calc_csum2(testbits, len));
    $display("%s:%0d calc_csumx (%h, %0d) = %h (broken)", `__FILE__, `__LINE__, testbits, len, calc_csumx(testbits, len));
  end
  endtask

  initial begin
    $display("Test start: %s %d", `__FILE__, `__LINE__);
    test_csum( 128'h0, 8);
    test_csum(~128'h0, 8);
    test_csum(~128'h0, 4);
    test_csum(~128'h0, 1);
    test_csum(128'hff001100ffff00000111101234567789, 8); //a test patter of some sorts
    test_csum(128'h929197afb4327cb3efd49072fa3c594a, 8); //openssl rand -hex 16
    test_csum(128'h929197afb4327cb3efd49072fa3c594a, 1); //openssl rand -hex 16
    test_csum(128'hbf8eedeacb2cc4b31b3cd3724f83c507, 8); //openssl rand -hex 16
    test_csum(128'hb54087e8ce1cb4deb5cdfb5568aa15b4, 8); //openssl rand -hex 16
    $display("Test start: %s %d", `__FILE__, `__LINE__);
  end


endmodule
