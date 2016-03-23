module ntp_clock_topA_imp_IZ2XJU
   (LED1,
    LED2,
    LED3,
    LED4,
    LED5,
    LED6,
    LED7,
    LED8,
    NTP_TIME,
    NTP_TIME_UPD,
    PLL_locked,
    PPS_IN_N,
    PPS_IN_P,
    PPS_OUT,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    TEN_MHZ_IN_clk_n,
    TEN_MHZ_IN_clk_p,
    TEN_MHZ_OUT,
    reset,
    s00_axi_aclk,
    s00_axi_aresetn,
    test);
  output LED1;
  output LED2;
  output LED3;
  output LED4;
  output LED5;
  output LED6;
  output LED7;
  output LED8;
  output [63:0]NTP_TIME;
  output NTP_TIME_UPD;
  output PLL_locked;
  input [0:0]PPS_IN_N;
  input [0:0]PPS_IN_P;
  output PPS_OUT;
  input [4:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [4:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input TEN_MHZ_IN_clk_n;
  input TEN_MHZ_IN_clk_p;
  output TEN_MHZ_OUT;
  input reset;
  input s00_axi_aclk;
  input [0:0]s00_axi_aresetn;
  output [0:0]test;

  wire Conn1_CLK_N;
  wire Conn1_CLK_P;
  wire [0:0]PPS_IN_N_1;
  wire [0:0]PPS_IN_P_1;
  wire axi_pcie3_0_axi_aclk;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire ntp_clock_0_LED1;
  wire ntp_clock_0_LED2;
  wire ntp_clock_0_LED3;
  wire ntp_clock_0_LED4;
  wire ntp_clock_0_LED5;
  wire ntp_clock_0_LED6;
  wire ntp_clock_0_LED7;
  wire ntp_clock_0_LED8;
  wire [63:0]ntp_clock_0_NTP_TIME;
  wire ntp_clock_0_NTP_TIME_UPD;
  wire ntp_clock_0_PPS_OUT;
  wire ntp_clock_0_pll_psclk;
  wire ntp_clock_0_pll_psen;
  wire ntp_clock_0_pll_psincdec;
  wire pll_0_clk_out1;
  wire pll_0_clk_out2;
  wire pll_0_locked;
  wire pll_0_psdone;
  wire reset_1;
  wire [0:0]rst_axi_pcie3_0_250M_peripheral_aresetn;
  wire [0:0]util_ds_buf_0_IBUF_OUT;

  assign Conn1_CLK_N = TEN_MHZ_IN_clk_n;
  assign Conn1_CLK_P = TEN_MHZ_IN_clk_p;
  assign LED1 = ntp_clock_0_LED1;
  assign LED2 = ntp_clock_0_LED2;
  assign LED3 = ntp_clock_0_LED3;
  assign LED4 = ntp_clock_0_LED4;
  assign LED5 = ntp_clock_0_LED5;
  assign LED6 = ntp_clock_0_LED6;
  assign LED7 = ntp_clock_0_LED7;
  assign LED8 = ntp_clock_0_LED8;
  assign NTP_TIME[63:0] = ntp_clock_0_NTP_TIME;
  assign NTP_TIME_UPD = ntp_clock_0_NTP_TIME_UPD;
  assign PLL_locked = pll_0_locked;
  assign PPS_IN_N_1 = PPS_IN_N[0];
  assign PPS_IN_P_1 = PPS_IN_P[0];
  assign PPS_OUT = ntp_clock_0_PPS_OUT;
  assign S00_AXI_arready[0] = axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  assign S00_AXI_awready[0] = axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  assign S00_AXI_bvalid[0] = axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  assign S00_AXI_rvalid[0] = axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  assign S00_AXI_wready[0] = axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  assign TEN_MHZ_OUT = pll_0_clk_out1;
  assign axi_pcie3_0_axi_aclk = s00_axi_aclk;
  assign axi_pcie3_0_axi_periph_M00_AXI_ARADDR = S00_AXI_araddr[4:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_ARVALID = S00_AXI_arvalid[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWADDR = S00_AXI_awaddr[4:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWVALID = S00_AXI_awvalid[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_BREADY = S00_AXI_bready[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_RREADY = S00_AXI_rready[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WDATA = S00_AXI_wdata[31:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WVALID = S00_AXI_wvalid[0];
  assign reset_1 = reset;
  assign rst_axi_pcie3_0_250M_peripheral_aresetn = s00_axi_aresetn[0];
  assign test[0] = util_ds_buf_0_IBUF_OUT;
  ntps_top_ntp_clock_0_0 ntp_clock_0
       (.CLK_128(pll_0_clk_out2),
        .LED1(ntp_clock_0_LED1),
        .LED2(ntp_clock_0_LED2),
        .LED3(ntp_clock_0_LED3),
        .LED4(ntp_clock_0_LED4),
        .LED5(ntp_clock_0_LED5),
        .LED6(ntp_clock_0_LED6),
        .LED7(ntp_clock_0_LED7),
        .LED8(ntp_clock_0_LED8),
        .NTP_TIME(ntp_clock_0_NTP_TIME),
        .NTP_TIME_UPD(ntp_clock_0_NTP_TIME_UPD),
        .PPS_IN(util_ds_buf_0_IBUF_OUT),
        .PPS_OUT(ntp_clock_0_PPS_OUT),
        .areset(reset_1),
        .pll_locked(pll_0_locked),
        .pll_psclk(ntp_clock_0_pll_psclk),
        .pll_psdone(pll_0_psdone),
        .pll_psen(ntp_clock_0_pll_psen),
        .pll_psincdec(ntp_clock_0_pll_psincdec),
        .s00_axi_aclk(axi_pcie3_0_axi_aclk),
        .s00_axi_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .s00_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s00_axi_arprot(axi_pcie3_0_axi_periph_M00_AXI_ARPROT),
        .s00_axi_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .s00_axi_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .s00_axi_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .s00_axi_awprot(axi_pcie3_0_axi_periph_M00_AXI_AWPROT),
        .s00_axi_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .s00_axi_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .s00_axi_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .s00_axi_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .s00_axi_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .s00_axi_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .s00_axi_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .s00_axi_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .s00_axi_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .s00_axi_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .s00_axi_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .s00_axi_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .s00_axi_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID));
  ntps_top_clk_wiz_0_0 pll_0
       (.clk_in1_n(Conn1_CLK_N),
        .clk_in1_p(Conn1_CLK_P),
        .clk_out1(pll_0_clk_out1),
        .clk_out2(pll_0_clk_out2),
        .locked(pll_0_locked),
        .psclk(ntp_clock_0_pll_psclk),
        .psdone(pll_0_psdone),
        .psen(ntp_clock_0_pll_psen),
        .psincdec(ntp_clock_0_pll_psincdec),
        .reset(reset_1));
  ntps_top_util_ds_buf_0_1 util_ds_buf_0
       (.IBUF_DS_N(PPS_IN_N_1),
        .IBUF_DS_P(PPS_IN_P_1),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
endmodule

module ntp_clock_topB_imp_YXXTPB
   (LED1,
    LED2,
    LED3,
    LED4,
    LED5,
    LED6,
    LED7,
    LED8,
    NTP_TIME,
    NTP_TIME_UPD,
    PLL_locked,
    PPS_IN_N,
    PPS_IN_P,
    PPS_OUT,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    TEN_MHZ_IN_clk_n,
    TEN_MHZ_IN_clk_p,
    TEN_MHZ_OUT,
    reset,
    s00_axi_aclk,
    s00_axi_aresetn,
    test);
  output LED1;
  output LED2;
  output LED3;
  output LED4;
  output LED5;
  output LED6;
  output LED7;
  output LED8;
  output [63:0]NTP_TIME;
  output NTP_TIME_UPD;
  output PLL_locked;
  input [0:0]PPS_IN_N;
  input [0:0]PPS_IN_P;
  output PPS_OUT;
  input [4:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [4:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input TEN_MHZ_IN_clk_n;
  input TEN_MHZ_IN_clk_p;
  output TEN_MHZ_OUT;
  input reset;
  input s00_axi_aclk;
  input [0:0]s00_axi_aresetn;
  output [0:0]test;

  wire [0:0]PPS_IN_N_1;
  wire [0:0]PPS_IN_P_1;
  wire TEN_MHZ_IN_1_CLK_N;
  wire TEN_MHZ_IN_1_CLK_P;
  wire axi_pcie3_0_axi_aclk;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire ntp_clock_0_LED1;
  wire ntp_clock_0_LED2;
  wire ntp_clock_0_LED3;
  wire ntp_clock_0_LED4;
  wire ntp_clock_0_LED5;
  wire ntp_clock_0_LED6;
  wire ntp_clock_0_LED7;
  wire ntp_clock_0_LED8;
  wire [63:0]ntp_clock_0_NTP_TIME;
  wire ntp_clock_0_NTP_TIME_UPD;
  wire ntp_clock_0_PPS_OUT;
  wire ntp_clock_0_pll_psclk;
  wire ntp_clock_0_pll_psen;
  wire ntp_clock_0_pll_psincdec;
  wire pll_0_clk_out1;
  wire pll_0_clk_out2;
  wire pll_0_locked;
  wire pll_0_psdone;
  wire reset_1;
  wire [0:0]rst_axi_pcie3_0_250M_peripheral_aresetn;
  wire [0:0]util_ds_buf_0_IBUF_OUT;

  assign LED1 = ntp_clock_0_LED1;
  assign LED2 = ntp_clock_0_LED2;
  assign LED3 = ntp_clock_0_LED3;
  assign LED4 = ntp_clock_0_LED4;
  assign LED5 = ntp_clock_0_LED5;
  assign LED6 = ntp_clock_0_LED6;
  assign LED7 = ntp_clock_0_LED7;
  assign LED8 = ntp_clock_0_LED8;
  assign NTP_TIME[63:0] = ntp_clock_0_NTP_TIME;
  assign NTP_TIME_UPD = ntp_clock_0_NTP_TIME_UPD;
  assign PLL_locked = pll_0_locked;
  assign PPS_IN_N_1 = PPS_IN_N[0];
  assign PPS_IN_P_1 = PPS_IN_P[0];
  assign PPS_OUT = ntp_clock_0_PPS_OUT;
  assign S00_AXI_arready[0] = axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  assign S00_AXI_awready[0] = axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  assign S00_AXI_bvalid[0] = axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  assign S00_AXI_rvalid[0] = axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  assign S00_AXI_wready[0] = axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  assign TEN_MHZ_IN_1_CLK_N = TEN_MHZ_IN_clk_n;
  assign TEN_MHZ_IN_1_CLK_P = TEN_MHZ_IN_clk_p;
  assign TEN_MHZ_OUT = pll_0_clk_out1;
  assign axi_pcie3_0_axi_aclk = s00_axi_aclk;
  assign axi_pcie3_0_axi_periph_M00_AXI_ARADDR = S00_AXI_araddr[4:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_ARVALID = S00_AXI_arvalid[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWADDR = S00_AXI_awaddr[4:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_AWVALID = S00_AXI_awvalid[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_BREADY = S00_AXI_bready[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_RREADY = S00_AXI_rready[0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WDATA = S00_AXI_wdata[31:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_M00_AXI_WVALID = S00_AXI_wvalid[0];
  assign reset_1 = reset;
  assign rst_axi_pcie3_0_250M_peripheral_aresetn = s00_axi_aresetn[0];
  assign test[0] = util_ds_buf_0_IBUF_OUT;
  ntps_top_ntp_clock_0_1 ntp_clock_0
       (.CLK_128(pll_0_clk_out2),
        .LED1(ntp_clock_0_LED1),
        .LED2(ntp_clock_0_LED2),
        .LED3(ntp_clock_0_LED3),
        .LED4(ntp_clock_0_LED4),
        .LED5(ntp_clock_0_LED5),
        .LED6(ntp_clock_0_LED6),
        .LED7(ntp_clock_0_LED7),
        .LED8(ntp_clock_0_LED8),
        .NTP_TIME(ntp_clock_0_NTP_TIME),
        .NTP_TIME_UPD(ntp_clock_0_NTP_TIME_UPD),
        .PPS_IN(util_ds_buf_0_IBUF_OUT),
        .PPS_OUT(ntp_clock_0_PPS_OUT),
        .areset(reset_1),
        .pll_locked(pll_0_locked),
        .pll_psclk(ntp_clock_0_pll_psclk),
        .pll_psdone(pll_0_psdone),
        .pll_psen(ntp_clock_0_pll_psen),
        .pll_psincdec(ntp_clock_0_pll_psincdec),
        .s00_axi_aclk(axi_pcie3_0_axi_aclk),
        .s00_axi_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .s00_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s00_axi_arprot(axi_pcie3_0_axi_periph_M00_AXI_ARPROT),
        .s00_axi_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .s00_axi_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .s00_axi_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .s00_axi_awprot(axi_pcie3_0_axi_periph_M00_AXI_AWPROT),
        .s00_axi_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .s00_axi_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .s00_axi_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .s00_axi_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .s00_axi_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .s00_axi_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .s00_axi_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .s00_axi_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .s00_axi_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .s00_axi_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .s00_axi_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .s00_axi_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .s00_axi_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID));
  ntps_top_pll_0_0 pll_0
       (.clk_in1_n(TEN_MHZ_IN_1_CLK_N),
        .clk_in1_p(TEN_MHZ_IN_1_CLK_P),
        .clk_out1(pll_0_clk_out1),
        .clk_out2(pll_0_clk_out2),
        .locked(pll_0_locked),
        .psclk(ntp_clock_0_pll_psclk),
        .psdone(pll_0_psdone),
        .psen(ntp_clock_0_pll_psen),
        .psincdec(ntp_clock_0_pll_psincdec),
        .reset(reset_1));
  ntps_top_util_ds_buf_0_2 util_ds_buf_0
       (.IBUF_DS_N(PPS_IN_N_1),
        .IBUF_DS_P(PPS_IN_P_1),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
endmodule

