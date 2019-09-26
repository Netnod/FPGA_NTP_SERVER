// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Sep 26 15:34:19 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0_funcsim.v
// Design      : ntps_top_util_ds_buf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ntps_top_util_ds_buf_0_0,util_ds_buf,{}" *) (* core_generation_info = "ntps_top_util_ds_buf_0_0,util_ds_buf,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ds_buf,x_ipVersion=2.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BUF_TYPE=ibufdsgte2,C_SIZE=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "util_ds_buf,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module ntps_top_util_ds_buf_0_0
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2);
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;

  wire [0:0]IBUF_DS_N;
  wire [0:0]IBUF_DS_ODIV2;
  wire [0:0]IBUF_DS_P;
  wire [0:0]IBUF_OUT;

  ntps_top_util_ds_buf_0_0_util_ds_buf U0
       (.IBUF_DS_N(IBUF_DS_N),
        .IBUF_DS_ODIV2(IBUF_DS_ODIV2),
        .IBUF_DS_P(IBUF_DS_P),
        .IBUF_OUT(IBUF_OUT));
endmodule

(* ORIG_REF_NAME = "util_ds_buf" *) 
module ntps_top_util_ds_buf_0_0_util_ds_buf
   (IBUF_OUT,
    IBUF_DS_ODIV2,
    IBUF_DS_P,
    IBUF_DS_N);
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;

  wire [0:0]IBUF_DS_N;
  wire [0:0]IBUF_DS_ODIV2;
  wire [0:0]IBUF_DS_P;
  wire [0:0]IBUF_OUT;

  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUFDS_GTE2_I 
       (.CEB(1'b0),
        .I(IBUF_DS_P),
        .IB(IBUF_DS_N),
        .O(IBUF_OUT),
        .ODIV2(IBUF_DS_ODIV2));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
