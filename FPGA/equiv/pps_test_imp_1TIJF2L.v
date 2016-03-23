module pps_test_imp_1TIJF2L
   (PPS_OUT,
    TEN_MHZ_OUT,
    areset,
    clk_in1);
  output PPS_OUT;
  output TEN_MHZ_OUT;
  input areset;
  input [0:0]clk_in1;

  wire areset_1;
  wire [0:0]clk_in1_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire pps_gen_0_PPS_OUT;

  assign PPS_OUT = pps_gen_0_PPS_OUT;
  assign TEN_MHZ_OUT = clk_wiz_0_clk_out2;
  assign areset_1 = areset;
  assign clk_in1_1 = clk_in1[0];
  ntps_top_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(clk_in1_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .reset(areset_1));
  ntps_top_pps_gen_0_0 pps_gen_0
       (.PPS_OUT(pps_gen_0_PPS_OUT),
        .areset(areset_1),
        .clk100MHz(clk_wiz_0_clk_out1),
        .clk10MHz(clk_wiz_0_clk_out2));
endmodule
