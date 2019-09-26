// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Sep 26 15:33:55 2019
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0_funcsim.v
// Design      : ntps_top_axi_ethernetlite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ntps_top_axi_ethernetlite_0_0,axi_ethernetlite,{}" *) (* core_generation_info = "ntps_top_axi_ethernetlite_0_0,axi_ethernetlite,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_ethernetlite,x_ipVersion=3.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_INSTANCE=axi_ethernetlite_inst,C_S_AXI_ACLK_PERIOD_PS=8000,C_S_AXI_ADDR_WIDTH=13,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4LITE,C_INCLUDE_MDIO=1,C_INCLUDE_INTERNAL_LOOPBACK=0,C_INCLUDE_GLOBAL_BUFFERS=0,C_DUPLEX=1,C_TX_PING_PONG=1,C_RX_PING_PONG=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_ethernetlite,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module ntps_top_axi_ethernetlite_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    phy_tx_clk,
    phy_rx_clk,
    phy_crs,
    phy_dv,
    phy_rx_data,
    phy_col,
    phy_rx_er,
    phy_rst_n,
    phy_tx_en,
    phy_tx_data,
    phy_mdio_i,
    phy_mdio_o,
    phy_mdio_t,
    phy_mdc);
  (* max_fanout = "10000" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) input phy_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) input phy_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII CRS" *) input phy_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_DV" *) input phy_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RXD" *) input [3:0]phy_rx_data;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII COL" *) input phy_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_ER" *) input phy_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RST_N" *) output phy_rst_n;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_EN" *) output phy_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TXD" *) output [3:0]phy_tx_data;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_I" *) input phy_mdio_i;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_O" *) output phy_mdio_o;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_T" *) output phy_mdio_t;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDC" *) output phy_mdc;

  wire \<const0> ;
  wire ip2intc_irpt;
  wire phy_crs;
  wire phy_dv;
  wire phy_mdc;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rx_clk;
  wire [3:0]phy_rx_data;
  wire phy_rx_er;
  wire phy_tx_clk;
  wire [3:0]phy_tx_data;
  wire phy_tx_en;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign phy_rst_n = s_axi_aresetn;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  GND GND
       (.G(\<const0> ));
  ntps_top_axi_ethernetlite_0_0_axi_ethernetlite U0
       (.ip2intc_irpt(ip2intc_irpt),
        .phy_crs(phy_crs),
        .phy_dv(phy_dv),
        .phy_mdc(phy_mdc),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .phy_rx_clk(phy_rx_clk),
        .phy_rx_data(phy_rx_data),
        .phy_rx_er(phy_rx_er),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_data(phy_tx_data),
        .phy_tx_en(phy_tx_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MacAddrRAM" *) 
module ntps_top_axi_ethernetlite_0_0_MacAddrRAM
   (\rdDestAddrNib_D_t_q_reg[2] ,
    \rdDestAddrNib_D_t_q_reg[2]_0 ,
    Q,
    s_axi_aclk,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \rdDestAddrNib_D_t_q_reg[2] ;
  output \rdDestAddrNib_D_t_q_reg[2]_0 ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]Q;
  wire [0:3]mac_addr_ram_addr;
  wire mac_addr_ram_we;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[2]_0 ;
  wire s_axi_aclk;

  ntps_top_axi_ethernetlite_0_0_ram16x4 ram16x4i
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .Q(Q),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[2]_0 (\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module ntps_top_axi_ethernetlite_0_0_async_fifo_fg
   (fifo_empty_i,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    txfifo_empty,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output fifo_empty_i;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0 \LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM 
       (.D(D),
        .D28_out(D28_out),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(STATE14A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(p_0_out),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a_0,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    rst_s,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] );
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a_0;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input rst_s;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire goto_readDestAdrNib1;
  wire p_18_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rst_s;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state2a;
  wire state3a;
  wire state4a;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32 \LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM 
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(p_18_out),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .preamble(preamble),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rst_s(rst_s),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .state2a(state2a),
        .state3a(state3a),
        .state4a(state4a));
endmodule

(* ORIG_REF_NAME = "axi_ethernetlite" *) 
module ntps_top_axi_ethernetlite_0_0_axi_ethernetlite
   (ip2intc_irpt,
    phy_mdc,
    phy_tx_data,
    phy_tx_en,
    s_axi_awready,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_arready,
    phy_mdio_t,
    phy_mdio_o,
    s_axi_aresetn,
    s_axi_wvalid,
    phy_rx_clk,
    phy_tx_clk,
    s_axi_aclk,
    phy_crs,
    s_axi_wdata,
    phy_mdio_i,
    phy_rx_data,
    phy_dv,
    phy_rx_er,
    s_axi_wstrb,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready);
  output ip2intc_irpt;
  output phy_mdc;
  output [3:0]phy_tx_data;
  output phy_tx_en;
  output s_axi_awready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output s_axi_arready;
  output phy_mdio_t;
  output phy_mdio_o;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input phy_rx_clk;
  input phy_tx_clk;
  input s_axi_aclk;
  input phy_crs;
  input [31:0]s_axi_wdata;
  input phy_mdio_i;
  input [3:0]phy_rx_data;
  input phy_dv;
  input phy_rx_er;
  input [3:0]s_axi_wstrb;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;

  wire CDC_PHY_TX_DATA_OUT_n_0;
  wire CDC_PHY_TX_DATA_OUT_n_1;
  wire CDC_PHY_TX_DATA_OUT_n_2;
  wire CDC_PHY_TX_DATA_OUT_n_3;
  wire D;
  wire \IOFFS_GEN2.DVD_FF_n_0 ;
  wire \IOFFS_GEN2.RER_FF_n_0 ;
  wire I_AXI_NATIVE_IPIF_n_14;
  wire I_AXI_NATIVE_IPIF_n_15;
  wire I_AXI_NATIVE_IPIF_n_16;
  wire I_AXI_NATIVE_IPIF_n_17;
  wire I_AXI_NATIVE_IPIF_n_18;
  wire I_AXI_NATIVE_IPIF_n_19;
  wire I_AXI_NATIVE_IPIF_n_20;
  wire I_AXI_NATIVE_IPIF_n_21;
  wire I_AXI_NATIVE_IPIF_n_22;
  wire I_AXI_NATIVE_IPIF_n_23;
  wire I_AXI_NATIVE_IPIF_n_24;
  wire I_AXI_NATIVE_IPIF_n_25;
  wire I_AXI_NATIVE_IPIF_n_26;
  wire I_AXI_NATIVE_IPIF_n_27;
  wire I_AXI_NATIVE_IPIF_n_28;
  wire I_AXI_NATIVE_IPIF_n_29;
  wire I_AXI_NATIVE_IPIF_n_30;
  wire I_AXI_NATIVE_IPIF_n_31;
  wire I_AXI_NATIVE_IPIF_n_32;
  wire I_AXI_NATIVE_IPIF_n_33;
  wire I_AXI_NATIVE_IPIF_n_34;
  wire I_AXI_NATIVE_IPIF_n_35;
  wire I_AXI_NATIVE_IPIF_n_36;
  wire I_AXI_NATIVE_IPIF_n_37;
  wire I_AXI_NATIVE_IPIF_n_38;
  wire I_AXI_NATIVE_IPIF_n_39;
  wire I_AXI_NATIVE_IPIF_n_40;
  wire I_AXI_NATIVE_IPIF_n_41;
  wire I_AXI_NATIVE_IPIF_n_42;
  wire I_AXI_NATIVE_IPIF_n_43;
  wire I_AXI_NATIVE_IPIF_n_44;
  wire I_AXI_NATIVE_IPIF_n_46;
  wire I_AXI_NATIVE_IPIF_n_47;
  wire I_AXI_NATIVE_IPIF_n_48;
  wire I_AXI_NATIVE_IPIF_n_49;
  wire I_AXI_NATIVE_IPIF_n_50;
  wire I_AXI_NATIVE_IPIF_n_51;
  wire I_AXI_NATIVE_IPIF_n_52;
  wire I_AXI_NATIVE_IPIF_n_53;
  wire I_AXI_NATIVE_IPIF_n_54;
  wire I_AXI_NATIVE_IPIF_n_55;
  wire I_AXI_NATIVE_IPIF_n_57;
  wire I_AXI_NATIVE_IPIF_n_64;
  wire I_AXI_NATIVE_IPIF_n_66;
  wire I_AXI_NATIVE_IPIF_n_67;
  wire I_AXI_NATIVE_IPIF_n_68;
  wire I_AXI_NATIVE_IPIF_n_69;
  wire I_AXI_NATIVE_IPIF_n_70;
  wire I_AXI_NATIVE_IPIF_n_71;
  wire I_AXI_NATIVE_IPIF_n_72;
  wire Q1_out;
  wire Q3_out;
  wire Q5_out;
  wire Q7_out;
  wire R;
  wire R0_in;
  wire XEMAC_I_n_10;
  wire XEMAC_I_n_11;
  wire XEMAC_I_n_12;
  wire XEMAC_I_n_13;
  wire XEMAC_I_n_23;
  wire XEMAC_I_n_3;
  wire XEMAC_I_n_31;
  wire XEMAC_I_n_32;
  wire XEMAC_I_n_33;
  wire XEMAC_I_n_34;
  wire XEMAC_I_n_35;
  wire XEMAC_I_n_36;
  wire XEMAC_I_n_37;
  wire XEMAC_I_n_38;
  wire XEMAC_I_n_39;
  wire XEMAC_I_n_40;
  wire XEMAC_I_n_41;
  wire XEMAC_I_n_42;
  wire XEMAC_I_n_43;
  wire XEMAC_I_n_44;
  wire XEMAC_I_n_45;
  wire XEMAC_I_n_6;
  wire XEMAC_I_n_7;
  wire XEMAC_I_n_8;
  wire XEMAC_I_n_9;
  wire [12:2]bus2ip_addr;
  wire bus_rst;
  wire [5:0]data7;
  wire gie_enable;
  wire [31:0]ip2bus_data;
  wire ip2intc_irpt;
  wire mdio_en_i;
  wire [15:11]mdio_wr_data_reg;
  wire [1:0]p_15_in;
  wire [3:0]p_17_in;
  wire p_17_out;
  wire p_19_out;
  wire p_21_out;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_40_out;
  wire p_48_out;
  wire [3:0]p_9_in;
  wire phy_crs;
  wire phy_dv;
  wire phy_mdc;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rx_clk;
  wire [3:0]phy_rx_data;
  wire phy_rx_er;
  wire phy_tx_clk;
  wire [3:0]phy_tx_data;
  wire [3:0]phy_tx_data_i;
  wire phy_tx_en;
  wire phy_tx_en_i;
  wire [15:0]ping_pkt_lenth;
  wire ping_pkt_lenth0;
  wire ping_soft_status;
  wire [15:0]pong_pkt_lenth;
  wire pong_rx_status;
  wire pong_soft_status;
  wire reg_access;
  wire rx_intr_en0;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;

  ntps_top_axi_ethernetlite_0_0_cdc_sync BUS_RST_RX_SYNC_CORE_I
       (.SS(bus_rst),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(R0_in));
  ntps_top_axi_ethernetlite_0_0_cdc_sync_0 BUS_RST_TX_SYNC_CORE_I
       (.SS(bus_rst),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(R));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1 CDC_PHY_TX_DATA_OUT
       (.phy_tx_clk(phy_tx_clk),
        .prmry_vect_in(phy_tx_data_i),
        .scndry_vect_out({CDC_PHY_TX_DATA_OUT_n_0,CDC_PHY_TX_DATA_OUT_n_1,CDC_PHY_TX_DATA_OUT_n_2,CDC_PHY_TX_DATA_OUT_n_3}));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0 CDC_PHY_TX_EN_O
       (.phy_tx_clk(phy_tx_clk),
        .prmry_in(phy_tx_en_i),
        .scndry_out(D));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.DVD_FF 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_dv),
        .Q(\IOFFS_GEN2.DVD_FF_n_0 ),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.RER_FF 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_er),
        .Q(\IOFFS_GEN2.RER_FF_n_0 ),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.TEN_FF 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D),
        .Q(phy_tx_en),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[0].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[0]),
        .Q(Q1_out),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[0].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_PHY_TX_DATA_OUT_n_3),
        .Q(phy_tx_data[0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[1].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[1]),
        .Q(Q3_out),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[1].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_PHY_TX_DATA_OUT_n_2),
        .Q(phy_tx_data[1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[2].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[2]),
        .Q(Q5_out),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[2].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_PHY_TX_DATA_OUT_n_1),
        .Q(phy_tx_data[2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[3].RX_FF_I 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(phy_rx_data[3]),
        .Q(Q7_out),
        .R(R0_in));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[3].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_PHY_TX_DATA_OUT_n_0),
        .Q(phy_tx_data[3]),
        .R(R));
  ntps_top_axi_ethernetlite_0_0_axi_interface I_AXI_NATIVE_IPIF
       (.D({ip2bus_data[31],XEMAC_I_n_31,XEMAC_I_n_32,XEMAC_I_n_33,XEMAC_I_n_34,XEMAC_I_n_35,XEMAC_I_n_36,XEMAC_I_n_37,XEMAC_I_n_38,XEMAC_I_n_39,XEMAC_I_n_40,XEMAC_I_n_41,XEMAC_I_n_42,XEMAC_I_n_43,XEMAC_I_n_44,XEMAC_I_n_45,ip2bus_data[15:0]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (bus2ip_addr),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (I_AXI_NATIVE_IPIF_n_16),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (I_AXI_NATIVE_IPIF_n_17),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (I_AXI_NATIVE_IPIF_n_18),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (I_AXI_NATIVE_IPIF_n_19),
        .E(I_AXI_NATIVE_IPIF_n_29),
        .\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] (XEMAC_I_n_9),
        .\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] (XEMAC_I_n_10),
        .\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] (XEMAC_I_n_11),
        .\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] (XEMAC_I_n_12),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] (XEMAC_I_n_13),
        .\MDIO_GEN.mdio_data_out_reg[11] (I_AXI_NATIVE_IPIF_n_21),
        .\MDIO_GEN.mdio_data_out_reg[11]_0 (I_AXI_NATIVE_IPIF_n_22),
        .\MDIO_GEN.mdio_data_out_reg[11]_1 (I_AXI_NATIVE_IPIF_n_23),
        .\MDIO_GEN.mdio_data_out_reg[11]_2 (I_AXI_NATIVE_IPIF_n_30),
        .\MDIO_GEN.mdio_data_out_reg[11]_3 (I_AXI_NATIVE_IPIF_n_34),
        .\MDIO_GEN.mdio_data_out_reg[11]_4 (I_AXI_NATIVE_IPIF_n_35),
        .\MDIO_GEN.mdio_data_out_reg[12] (I_AXI_NATIVE_IPIF_n_24),
        .\MDIO_GEN.mdio_data_out_reg[13] (I_AXI_NATIVE_IPIF_n_25),
        .\MDIO_GEN.mdio_data_out_reg[14] (I_AXI_NATIVE_IPIF_n_26),
        .\MDIO_GEN.mdio_data_out_reg[15] (I_AXI_NATIVE_IPIF_n_27),
        .\MDIO_GEN.mdio_data_out_reg[3] (I_AXI_NATIVE_IPIF_n_28),
        .\MDIO_GEN.mdio_en_i_reg (I_AXI_NATIVE_IPIF_n_67),
        .\MDIO_GEN.mdio_reg_addr_reg[4] (p_19_out),
        .\MDIO_GEN.mdio_wr_data_reg_reg[15] (p_17_out),
        .\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 (mdio_wr_data_reg),
        .Q({data7[5:4],data7[2:0]}),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (I_AXI_NATIVE_IPIF_n_57),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_0 (I_AXI_NATIVE_IPIF_n_64),
        .SS(bus_rst),
        .\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] (p_40_out),
        .\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ({pong_pkt_lenth[15:4],pong_pkt_lenth[2:0]}),
        .\TX_PONG_REG_GEN.pong_soft_status_reg (I_AXI_NATIVE_IPIF_n_69),
        .WEBWE(I_AXI_NATIVE_IPIF_n_20),
        .gie_enable(gie_enable),
        .gie_enable_reg(I_AXI_NATIVE_IPIF_n_68),
        .loopback_en_reg(XEMAC_I_n_23),
        .mdio_en_i(mdio_en_i),
        .p_15_in(p_15_in),
        .p_17_in({p_17_in[3],p_17_in[1:0]}),
        .p_21_out(p_21_out),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_48_out(p_48_out),
        .p_9_in({p_9_in[3],p_9_in[0]}),
        .\ping_pkt_lenth_reg[15] (ping_pkt_lenth0),
        .\ping_pkt_lenth_reg[15]_0 ({ping_pkt_lenth[15:4],ping_pkt_lenth[2:0]}),
        .ping_soft_status(ping_soft_status),
        .ping_soft_status_reg(I_AXI_NATIVE_IPIF_n_70),
        .pong_rx_status(pong_rx_status),
        .pong_soft_status(pong_soft_status),
        .reg_access(reg_access),
        .reg_access_reg(I_AXI_NATIVE_IPIF_n_66),
        .\reg_data_out_reg[0] (I_AXI_NATIVE_IPIF_n_37),
        .\reg_data_out_reg[0]_0 (I_AXI_NATIVE_IPIF_n_40),
        .\reg_data_out_reg[0]_1 (XEMAC_I_n_8),
        .\reg_data_out_reg[10] (I_AXI_NATIVE_IPIF_n_51),
        .\reg_data_out_reg[11] (I_AXI_NATIVE_IPIF_n_50),
        .\reg_data_out_reg[12] (I_AXI_NATIVE_IPIF_n_49),
        .\reg_data_out_reg[13] (I_AXI_NATIVE_IPIF_n_48),
        .\reg_data_out_reg[14] (I_AXI_NATIVE_IPIF_n_47),
        .\reg_data_out_reg[15] (I_AXI_NATIVE_IPIF_n_15),
        .\reg_data_out_reg[15]_0 (I_AXI_NATIVE_IPIF_n_32),
        .\reg_data_out_reg[15]_1 (I_AXI_NATIVE_IPIF_n_44),
        .\reg_data_out_reg[15]_2 (I_AXI_NATIVE_IPIF_n_46),
        .\reg_data_out_reg[1] (I_AXI_NATIVE_IPIF_n_31),
        .\reg_data_out_reg[1]_0 (I_AXI_NATIVE_IPIF_n_41),
        .\reg_data_out_reg[1]_1 (XEMAC_I_n_7),
        .\reg_data_out_reg[2] (I_AXI_NATIVE_IPIF_n_39),
        .\reg_data_out_reg[2]_0 (XEMAC_I_n_6),
        .\reg_data_out_reg[31] (I_AXI_NATIVE_IPIF_n_36),
        .\reg_data_out_reg[31]_0 (XEMAC_I_n_3),
        .\reg_data_out_reg[3] (I_AXI_NATIVE_IPIF_n_14),
        .\reg_data_out_reg[3]_0 (I_AXI_NATIVE_IPIF_n_42),
        .\reg_data_out_reg[4] (I_AXI_NATIVE_IPIF_n_33),
        .\reg_data_out_reg[5] (I_AXI_NATIVE_IPIF_n_38),
        .\reg_data_out_reg[6] (I_AXI_NATIVE_IPIF_n_43),
        .\reg_data_out_reg[6]_0 (I_AXI_NATIVE_IPIF_n_55),
        .\reg_data_out_reg[7] (I_AXI_NATIVE_IPIF_n_54),
        .\reg_data_out_reg[8] (I_AXI_NATIVE_IPIF_n_53),
        .\reg_data_out_reg[9] (I_AXI_NATIVE_IPIF_n_52),
        .rx_intr_en0(rx_intr_en0),
        .rx_intr_en_reg(I_AXI_NATIVE_IPIF_n_72),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3]}),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_intr_en0(tx_intr_en0),
        .tx_intr_en_reg(I_AXI_NATIVE_IPIF_n_71));
  ntps_top_axi_ethernetlite_0_0_xemac XEMAC_I
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] (XEMAC_I_n_8),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] (XEMAC_I_n_7),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] (XEMAC_I_n_6),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (XEMAC_I_n_3),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (I_AXI_NATIVE_IPIF_n_19),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (I_AXI_NATIVE_IPIF_n_16),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (bus2ip_addr),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1 (I_AXI_NATIVE_IPIF_n_18),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2 (I_AXI_NATIVE_IPIF_n_17),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3 (I_AXI_NATIVE_IPIF_n_42),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] (I_AXI_NATIVE_IPIF_n_15),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 (I_AXI_NATIVE_IPIF_n_22),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 (I_AXI_NATIVE_IPIF_n_23),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 (I_AXI_NATIVE_IPIF_n_64),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (I_AXI_NATIVE_IPIF_n_30),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] (I_AXI_NATIVE_IPIF_n_28),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 (p_17_out),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] (I_AXI_NATIVE_IPIF_n_14),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg (I_AXI_NATIVE_IPIF_n_43),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_0 (I_AXI_NATIVE_IPIF_n_32),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_1 (I_AXI_NATIVE_IPIF_n_66),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_2 (I_AXI_NATIVE_IPIF_n_41),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_3 (I_AXI_NATIVE_IPIF_n_40),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_4 (I_AXI_NATIVE_IPIF_n_44),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_5 (I_AXI_NATIVE_IPIF_n_35),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_6 (I_AXI_NATIVE_IPIF_n_29),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_7 (I_AXI_NATIVE_IPIF_n_34),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg (I_AXI_NATIVE_IPIF_n_68),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg_0 (I_AXI_NATIVE_IPIF_n_57),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg_1 (ping_pkt_lenth0),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg_2 (p_40_out),
        .D({ip2bus_data[31],XEMAC_I_n_31,XEMAC_I_n_32,XEMAC_I_n_33,XEMAC_I_n_34,XEMAC_I_n_35,XEMAC_I_n_36,XEMAC_I_n_37,XEMAC_I_n_38,XEMAC_I_n_39,XEMAC_I_n_40,XEMAC_I_n_41,XEMAC_I_n_42,XEMAC_I_n_43,XEMAC_I_n_44,XEMAC_I_n_45,ip2bus_data[15:0]}),
        .DIA({\IOFFS_GEN2.DVD_FF_n_0 ,\IOFFS_GEN2.RER_FF_n_0 }),
        .DIB({Q3_out,Q1_out}),
        .DIC({Q7_out,Q5_out}),
        .E(p_19_out),
        .\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] (XEMAC_I_n_9),
        .\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 (I_AXI_NATIVE_IPIF_n_21),
        .\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] (XEMAC_I_n_10),
        .\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 (I_AXI_NATIVE_IPIF_n_24),
        .\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] (XEMAC_I_n_11),
        .\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 (I_AXI_NATIVE_IPIF_n_25),
        .\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] (XEMAC_I_n_12),
        .\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 (I_AXI_NATIVE_IPIF_n_26),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] (XEMAC_I_n_13),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 (I_AXI_NATIVE_IPIF_n_27),
        .\MDIO_GEN.mdio_data_out_reg[15]_0 (mdio_wr_data_reg),
        .\MDIO_GEN.mdio_en_i_reg_0 (I_AXI_NATIVE_IPIF_n_67),
        .Q({data7[5:4],data7[2:0]}),
        .SS(bus_rst),
        .\TX_PONG_REG_GEN.pong_soft_status_reg_0 (I_AXI_NATIVE_IPIF_n_69),
        .WEBWE(I_AXI_NATIVE_IPIF_n_20),
        .gie_enable(gie_enable),
        .ip2intc_irpt(ip2intc_irpt),
        .loopback_en_reg_0(XEMAC_I_n_23),
        .mdio_en_i(mdio_en_i),
        .p_15_in(p_15_in),
        .p_17_in({p_17_in[3],p_17_in[1:0]}),
        .p_21_out(p_21_out),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_48_out(p_48_out),
        .p_9_in({p_9_in[3],p_9_in[0]}),
        .phy_crs(phy_crs),
        .phy_mdc(phy_mdc),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .\ping_pkt_lenth_reg[10]_0 (I_AXI_NATIVE_IPIF_n_51),
        .\ping_pkt_lenth_reg[11]_0 (I_AXI_NATIVE_IPIF_n_50),
        .\ping_pkt_lenth_reg[12]_0 (I_AXI_NATIVE_IPIF_n_49),
        .\ping_pkt_lenth_reg[13]_0 (I_AXI_NATIVE_IPIF_n_48),
        .\ping_pkt_lenth_reg[14]_0 (I_AXI_NATIVE_IPIF_n_47),
        .\ping_pkt_lenth_reg[15]_0 (I_AXI_NATIVE_IPIF_n_46),
        .\ping_pkt_lenth_reg[6]_0 (I_AXI_NATIVE_IPIF_n_55),
        .\ping_pkt_lenth_reg[7]_0 (I_AXI_NATIVE_IPIF_n_54),
        .\ping_pkt_lenth_reg[8]_0 (I_AXI_NATIVE_IPIF_n_53),
        .\ping_pkt_lenth_reg[9]_0 (I_AXI_NATIVE_IPIF_n_52),
        .ping_soft_status(ping_soft_status),
        .ping_soft_status_reg_0(I_AXI_NATIVE_IPIF_n_70),
        .pong_rx_status(pong_rx_status),
        .pong_soft_status(pong_soft_status),
        .prmry_vect_in(phy_tx_data_i),
        .reg_access(reg_access),
        .\reg_data_out_reg[0]_0 (I_AXI_NATIVE_IPIF_n_37),
        .\reg_data_out_reg[1]_0 (I_AXI_NATIVE_IPIF_n_31),
        .\reg_data_out_reg[2]_0 (I_AXI_NATIVE_IPIF_n_39),
        .\reg_data_out_reg[31]_0 (I_AXI_NATIVE_IPIF_n_36),
        .\reg_data_out_reg[4]_0 (I_AXI_NATIVE_IPIF_n_33),
        .\reg_data_out_reg[5]_0 (I_AXI_NATIVE_IPIF_n_38),
        .rx_intr_en0(rx_intr_en0),
        .rx_intr_en_reg_0(I_AXI_NATIVE_IPIF_n_72),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tx_intr_en0(tx_intr_en0),
        .tx_intr_en_reg_0(I_AXI_NATIVE_IPIF_n_71),
        .\tx_packet_length_reg[15]_0 ({pong_pkt_lenth[15:4],pong_pkt_lenth[2:0]}),
        .\tx_packet_length_reg[15]_1 ({ping_pkt_lenth[15:4],ping_pkt_lenth[2:0]}));
endmodule

(* ORIG_REF_NAME = "axi_ethernetlite_v3_0_emac" *) 
module ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac
   (prmry_in,
    tx_idle,
    D3_in2_in,
    ADDRARDADDR,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    D,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    WEA,
    D694_out,
    D_0,
    E,
    loopback_en_reg,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    prmry_vect_in,
    phy_tx_en_i,
    s_axi_aclk,
    phy_crs,
    phy_rx_clk,
    DIA,
    DIB,
    DIC,
    phy_tx_clk,
    s_axi_aresetn,
    ping_rx_status_reg_0,
    \RX_PONG_REG_GEN.pong_rx_status_reg_0 ,
    DOADO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ,
    rx_pong_ping_l,
    \TX_PONG_REG_GEN.pong_mac_program_reg ,
    \tx_packet_length_reg[15] ,
    gie_enable,
    p_9_in,
    p_17_in,
    tx_done_d2,
    \TX_PONG_REG_GEN.pong_tx_status_reg ,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg_0,
    rx_intr_en0,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 );
  output prmry_in;
  output tx_idle;
  output D3_in2_in;
  output [11:0]ADDRARDADDR;
  output [11:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output [3:0]Q;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  output [5:0]D;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  output [0:0]WEA;
  output D694_out;
  output D_0;
  output [0:0]E;
  output loopback_en_reg;
  output ping_rx_status_reg;
  output \RX_PONG_REG_GEN.pong_rx_status_reg ;
  output [3:0]prmry_vect_in;
  output phy_tx_en_i;
  input s_axi_aclk;
  input phy_crs;
  input phy_rx_clk;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input phy_tx_clk;
  input s_axi_aresetn;
  input ping_rx_status_reg_0;
  input \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  input [3:0]DOADO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  input rx_pong_ping_l;
  input \TX_PONG_REG_GEN.pong_mac_program_reg ;
  input [15:0]\tx_packet_length_reg[15] ;
  input gie_enable;
  input [0:0]p_9_in;
  input [2:0]p_17_in;
  input tx_done_d2;
  input \TX_PONG_REG_GEN.pong_tx_status_reg ;
  input rx_done_d1;
  input [1:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg_0;
  input rx_intr_en0;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  input \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;

  wire [11:0]ADDRARDADDR;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  wire C_SENSE_SYNC_1_n_0;
  wire C_SENSE_SYNC_2_n_0;
  wire [5:0]D;
  wire D3_in2_in;
  wire D694_out;
  wire [11:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [3:0]DOADO;
  wire D_0;
  wire [0:0]E;
  wire NODEMACADDRRAMI_n_0;
  wire NODEMACADDRRAMI_n_1;
  wire Phy_tx_clk_axi_d;
  wire [3:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  wire RX_n_10;
  wire RX_n_11;
  wire RX_n_12;
  wire RX_n_8;
  wire RX_n_9;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_REG_GEN.pong_mac_program_reg ;
  wire \TX_PONG_REG_GEN.pong_tx_status_reg ;
  wire TX_n_12;
  wire [0:0]WEA;
  wire gie_enable;
  wire loopback_en_reg;
  wire loopback_en_reg_0;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_addr_rd;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire [2:0]p_17_in;
  wire [0:0]p_9_in;
  wire phy_crs;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire ping_rx_status_reg;
  wire ping_rx_status_reg_0;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire rx_addr_en;
  wire rx_done_d1;
  wire rx_intr_en0;
  wire rx_pong_ping_l;
  wire \rxbuffer_addr[11]_i_4_n_0 ;
  wire \rxbuffer_addr[11]_i_5_n_0 ;
  wire \rxbuffer_addr[11]_i_6_n_0 ;
  wire \rxbuffer_addr[11]_i_7_n_0 ;
  wire \rxbuffer_addr[3]_i_2_n_0 ;
  wire \rxbuffer_addr[3]_i_3_n_0 ;
  wire \rxbuffer_addr[3]_i_4_n_0 ;
  wire \rxbuffer_addr[3]_i_5_n_0 ;
  wire \rxbuffer_addr[7]_i_2_n_0 ;
  wire \rxbuffer_addr[7]_i_3_n_0 ;
  wire \rxbuffer_addr[7]_i_4_n_0 ;
  wire \rxbuffer_addr[7]_i_5_n_0 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_0 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_1 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_2 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_3 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_4 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_5 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_6 ;
  wire \rxbuffer_addr_reg[11]_i_3_n_7 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_1 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_2 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_3 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_4 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_5 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_6 ;
  wire \rxbuffer_addr_reg[3]_i_1_n_7 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_0 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_1 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_2 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_3 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_4 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_5 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_6 ;
  wire \rxbuffer_addr_reg[7]_i_1_n_7 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]s_axi_wdata;
  wire tx_addr_en;
  wire tx_clk_reg_d1;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire [15:0]\tx_packet_length_reg[15] ;
  wire \txbuffer_addr[11]_i_5_n_0 ;
  wire \txbuffer_addr[11]_i_6_n_0 ;
  wire \txbuffer_addr[11]_i_7_n_0 ;
  wire \txbuffer_addr[11]_i_8_n_0 ;
  wire \txbuffer_addr[3]_i_2_n_0 ;
  wire \txbuffer_addr[3]_i_3_n_0 ;
  wire \txbuffer_addr[3]_i_4_n_0 ;
  wire \txbuffer_addr[3]_i_5_n_0 ;
  wire \txbuffer_addr[7]_i_2_n_0 ;
  wire \txbuffer_addr[7]_i_3_n_0 ;
  wire \txbuffer_addr[7]_i_4_n_0 ;
  wire \txbuffer_addr[7]_i_5_n_0 ;
  wire \txbuffer_addr_reg[11]_i_3_n_0 ;
  wire \txbuffer_addr_reg[11]_i_3_n_1 ;
  wire \txbuffer_addr_reg[11]_i_3_n_2 ;
  wire \txbuffer_addr_reg[11]_i_3_n_3 ;
  wire \txbuffer_addr_reg[11]_i_3_n_4 ;
  wire \txbuffer_addr_reg[11]_i_3_n_5 ;
  wire \txbuffer_addr_reg[11]_i_3_n_6 ;
  wire \txbuffer_addr_reg[11]_i_3_n_7 ;
  wire \txbuffer_addr_reg[3]_i_1_n_1 ;
  wire \txbuffer_addr_reg[3]_i_1_n_2 ;
  wire \txbuffer_addr_reg[3]_i_1_n_3 ;
  wire \txbuffer_addr_reg[3]_i_1_n_4 ;
  wire \txbuffer_addr_reg[3]_i_1_n_5 ;
  wire \txbuffer_addr_reg[3]_i_1_n_6 ;
  wire \txbuffer_addr_reg[3]_i_1_n_7 ;
  wire \txbuffer_addr_reg[7]_i_1_n_0 ;
  wire \txbuffer_addr_reg[7]_i_1_n_1 ;
  wire \txbuffer_addr_reg[7]_i_1_n_2 ;
  wire \txbuffer_addr_reg[7]_i_1_n_3 ;
  wire \txbuffer_addr_reg[7]_i_1_n_4 ;
  wire \txbuffer_addr_reg[7]_i_1_n_5 ;
  wire \txbuffer_addr_reg[7]_i_1_n_6 ;
  wire \txbuffer_addr_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;

  ntps_top_axi_ethernetlite_0_0_cdc_sync_25 CDC_TX_CLK
       (.phy_tx_clk(phy_tx_clk),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(Phy_tx_clk_axi_d));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    C_SENSE_SYNC_1
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_crs),
        .Q(C_SENSE_SYNC_1_n_0),
        .R(prmry_in));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    C_SENSE_SYNC_2
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(C_SENSE_SYNC_1_n_0),
        .Q(C_SENSE_SYNC_2_n_0),
        .R(prmry_in));
  ntps_top_axi_ethernetlite_0_0_MacAddrRAM NODEMACADDRRAMI
       (.\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ),
        .Q({RX_n_8,RX_n_9,RX_n_10,RX_n_11}),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .\rdDestAddrNib_D_t_q_reg[2] (NODEMACADDRRAMI_n_0),
        .\rdDestAddrNib_D_t_q_reg[2]_0 (NODEMACADDRRAMI_n_1),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_receive RX
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg (\AXI4_LITE_IF_GEN.write_in_prog_reg ),
        .D694_out(D694_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .Q(Q),
        .RX_DONE_D1_I(D_0),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_0 (\RX_PONG_REG_GEN.pong_rx_status_reg_0 ),
        .SS(prmry_in),
        .STATE17A(D3_in2_in),
        .WEA(WEA),
        .checkingBroadcastAdr_reg_reg({RX_n_8,RX_n_9,RX_n_10,RX_n_11}),
        .\emac_rx_rd_data_d1_reg[2]_0 (NODEMACADDRRAMI_n_0),
        .\emac_rx_rd_data_d1_reg[3]_0 (NODEMACADDRRAMI_n_1),
        .gie_enable(gie_enable),
        .p_17_in(p_17_in[2]),
        .p_9_in(p_9_in),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .ping_rx_status_reg_0(ping_rx_status_reg_0),
        .\rdDestAddrNib_D_t_q_reg[2] ({mac_addr_ram_addr_rd[0],mac_addr_ram_addr_rd[1],mac_addr_ram_addr_rd[2],mac_addr_ram_addr_rd[3]}),
        .rx_addr_en(rx_addr_en),
        .rx_intr_en0(rx_intr_en0),
        .rx_pong_ping_l(rx_pong_ping_l),
        .\rxbuffer_addr_reg[11] (RX_n_12),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[0]));
  ntps_top_axi_ethernetlite_0_0_transmit TX
       (.C_SENSE_SYNC_2(C_SENSE_SYNC_2_n_0),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ),
        .DOADO(DOADO),
        .E(E),
        .Q({mac_addr_ram_addr_wr[0],mac_addr_ram_addr_wr[1],mac_addr_ram_addr_wr[2],mac_addr_ram_addr_wr[3]}),
        .SS(prmry_in),
        .STATE24A(D3_in2_in),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_REG_GEN.pong_mac_program_reg (\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .\TX_PONG_REG_GEN.pong_tx_status_reg (\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .loopback_en_reg(tx_idle),
        .loopback_en_reg_0(loopback_en_reg),
        .loopback_en_reg_1(loopback_en_reg_0),
        .mac_addr_ram_we(mac_addr_ram_we),
        .p_17_in(p_17_in[1:0]),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .prmry_vect_in(prmry_vect_in),
        .rx_done_d1(rx_done_d1),
        .rx_pong_ping_l(rx_pong_ping_l),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[1]),
        .tx_addr_en(tx_addr_en),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .tx_done_d2(tx_done_d2),
        .tx_intr_en0(tx_intr_en0),
        .\tx_packet_length_reg[15] (\tx_packet_length_reg[15] ),
        .\txbuffer_addr_reg[11] (TX_n_12));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_2
       (.I0(mac_addr_ram_addr_wr[3]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[3]),
        .O(mac_addr_ram_addr[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_3
       (.I0(mac_addr_ram_addr_wr[2]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[2]),
        .O(mac_addr_ram_addr[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_4
       (.I0(mac_addr_ram_addr_wr[1]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[1]),
        .O(mac_addr_ram_addr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram16x1_0_i_5
       (.I0(mac_addr_ram_addr_wr[0]),
        .I1(mac_addr_ram_we),
        .I2(mac_addr_ram_addr_rd[0]),
        .O(mac_addr_ram_addr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[11]_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .O(\rxbuffer_addr[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[11]_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\rxbuffer_addr[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[11]_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .O(\rxbuffer_addr[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rxbuffer_addr[11]_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\rxbuffer_addr[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[3]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [11]),
        .O(\rxbuffer_addr[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[3]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .O(\rxbuffer_addr[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[3]_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .O(\rxbuffer_addr[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[3]_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .O(\rxbuffer_addr[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[7]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .O(\rxbuffer_addr[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[7]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .O(\rxbuffer_addr[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[7]_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .O(\rxbuffer_addr[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \rxbuffer_addr[7]_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .O(\rxbuffer_addr[7]_i_5_n_0 ));
  FDRE \rxbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [11]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .R(RX_n_12));
  CARRY4 \rxbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\rxbuffer_addr_reg[11]_i_3_n_0 ,\rxbuffer_addr_reg[11]_i_3_n_1 ,\rxbuffer_addr_reg[11]_i_3_n_2 ,\rxbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rxbuffer_addr_reg[11]_i_3_n_4 ,\rxbuffer_addr_reg[11]_i_3_n_5 ,\rxbuffer_addr_reg[11]_i_3_n_6 ,\rxbuffer_addr_reg[11]_i_3_n_7 }),
        .S({\rxbuffer_addr[11]_i_4_n_0 ,\rxbuffer_addr[11]_i_5_n_0 ,\rxbuffer_addr[11]_i_6_n_0 ,\rxbuffer_addr[11]_i_7_n_0 }));
  FDRE \rxbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .R(RX_n_12));
  CARRY4 \rxbuffer_addr_reg[3]_i_1 
       (.CI(\rxbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\rxbuffer_addr_reg[3]_i_1_n_1 ,\rxbuffer_addr_reg[3]_i_1_n_2 ,\rxbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[3]_i_1_n_4 ,\rxbuffer_addr_reg[3]_i_1_n_5 ,\rxbuffer_addr_reg[3]_i_1_n_6 ,\rxbuffer_addr_reg[3]_i_1_n_7 }),
        .S({\rxbuffer_addr[3]_i_2_n_0 ,\rxbuffer_addr[3]_i_3_n_0 ,\rxbuffer_addr[3]_i_4_n_0 ,\rxbuffer_addr[3]_i_5_n_0 }));
  FDRE \rxbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .R(RX_n_12));
  CARRY4 \rxbuffer_addr_reg[7]_i_1 
       (.CI(\rxbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\rxbuffer_addr_reg[7]_i_1_n_0 ,\rxbuffer_addr_reg[7]_i_1_n_1 ,\rxbuffer_addr_reg[7]_i_1_n_2 ,\rxbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[7]_i_1_n_4 ,\rxbuffer_addr_reg[7]_i_1_n_5 ,\rxbuffer_addr_reg[7]_i_1_n_6 ,\rxbuffer_addr_reg[7]_i_1_n_7 }),
        .S({\rxbuffer_addr[7]_i_2_n_0 ,\rxbuffer_addr[7]_i_3_n_0 ,\rxbuffer_addr[7]_i_4_n_0 ,\rxbuffer_addr[7]_i_5_n_0 }));
  FDRE \rxbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .R(RX_n_12));
  FDRE \rxbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .R(RX_n_12));
  FDRE tx_clk_reg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Phy_tx_clk_axi_d),
        .Q(tx_clk_reg_d1),
        .R(prmry_in));
  FDRE tx_clk_reg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_clk_reg_d1),
        .Q(tx_clk_reg_d2),
        .R(prmry_in));
  FDRE tx_clk_reg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_clk_reg_d2),
        .Q(tx_clk_reg_d3),
        .R(prmry_in));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[11]_i_5 
       (.I0(ADDRARDADDR[3]),
        .O(\txbuffer_addr[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[11]_i_6 
       (.I0(ADDRARDADDR[2]),
        .O(\txbuffer_addr[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[11]_i_7 
       (.I0(ADDRARDADDR[1]),
        .O(\txbuffer_addr[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txbuffer_addr[11]_i_8 
       (.I0(ADDRARDADDR[0]),
        .O(\txbuffer_addr[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[3]_i_2 
       (.I0(ADDRARDADDR[11]),
        .O(\txbuffer_addr[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[3]_i_3 
       (.I0(ADDRARDADDR[10]),
        .O(\txbuffer_addr[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[3]_i_4 
       (.I0(ADDRARDADDR[9]),
        .O(\txbuffer_addr[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[3]_i_5 
       (.I0(ADDRARDADDR[8]),
        .O(\txbuffer_addr[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[7]_i_2 
       (.I0(ADDRARDADDR[7]),
        .O(\txbuffer_addr[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[7]_i_3 
       (.I0(ADDRARDADDR[6]),
        .O(\txbuffer_addr[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[7]_i_4 
       (.I0(ADDRARDADDR[5]),
        .O(\txbuffer_addr[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \txbuffer_addr[7]_i_5 
       (.I0(ADDRARDADDR[4]),
        .O(\txbuffer_addr[7]_i_5_n_0 ));
  FDRE \txbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(ADDRARDADDR[11]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(ADDRARDADDR[1]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(ADDRARDADDR[0]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\txbuffer_addr_reg[11]_i_3_n_0 ,\txbuffer_addr_reg[11]_i_3_n_1 ,\txbuffer_addr_reg[11]_i_3_n_2 ,\txbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\txbuffer_addr_reg[11]_i_3_n_4 ,\txbuffer_addr_reg[11]_i_3_n_5 ,\txbuffer_addr_reg[11]_i_3_n_6 ,\txbuffer_addr_reg[11]_i_3_n_7 }),
        .S({\txbuffer_addr[11]_i_5_n_0 ,\txbuffer_addr[11]_i_6_n_0 ,\txbuffer_addr[11]_i_7_n_0 ,\txbuffer_addr[11]_i_8_n_0 }));
  FDRE \txbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(ADDRARDADDR[10]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(ADDRARDADDR[9]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(ADDRARDADDR[8]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[3]_i_1 
       (.CI(\txbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\txbuffer_addr_reg[3]_i_1_n_1 ,\txbuffer_addr_reg[3]_i_1_n_2 ,\txbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[3]_i_1_n_4 ,\txbuffer_addr_reg[3]_i_1_n_5 ,\txbuffer_addr_reg[3]_i_1_n_6 ,\txbuffer_addr_reg[3]_i_1_n_7 }),
        .S({\txbuffer_addr[3]_i_2_n_0 ,\txbuffer_addr[3]_i_3_n_0 ,\txbuffer_addr[3]_i_4_n_0 ,\txbuffer_addr[3]_i_5_n_0 }));
  FDRE \txbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(ADDRARDADDR[7]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(ADDRARDADDR[6]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(ADDRARDADDR[5]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(ADDRARDADDR[4]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[7]_i_1 
       (.CI(\txbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\txbuffer_addr_reg[7]_i_1_n_0 ,\txbuffer_addr_reg[7]_i_1_n_1 ,\txbuffer_addr_reg[7]_i_1_n_2 ,\txbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[7]_i_1_n_4 ,\txbuffer_addr_reg[7]_i_1_n_5 ,\txbuffer_addr_reg[7]_i_1_n_6 ,\txbuffer_addr_reg[7]_i_1_n_7 }),
        .S({\txbuffer_addr[7]_i_2_n_0 ,\txbuffer_addr[7]_i_3_n_0 ,\txbuffer_addr[7]_i_4_n_0 ,\txbuffer_addr[7]_i_5_n_0 }));
  FDRE \txbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(ADDRARDADDR[3]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(ADDRARDADDR[2]),
        .R(TX_n_12));
endmodule

(* ORIG_REF_NAME = "axi_interface" *) 
module ntps_top_axi_ethernetlite_0_0_axi_interface
   (s_axi_awready,
    s_axi_bvalid,
    s_axi_rvalid,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \reg_data_out_reg[3] ,
    \reg_data_out_reg[15] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    WEBWE,
    \MDIO_GEN.mdio_data_out_reg[11] ,
    \MDIO_GEN.mdio_data_out_reg[11]_0 ,
    \MDIO_GEN.mdio_data_out_reg[11]_1 ,
    \MDIO_GEN.mdio_data_out_reg[12] ,
    \MDIO_GEN.mdio_data_out_reg[13] ,
    \MDIO_GEN.mdio_data_out_reg[14] ,
    \MDIO_GEN.mdio_data_out_reg[15] ,
    \MDIO_GEN.mdio_data_out_reg[3] ,
    E,
    \MDIO_GEN.mdio_data_out_reg[11]_2 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[15]_0 ,
    \reg_data_out_reg[4] ,
    \MDIO_GEN.mdio_data_out_reg[11]_3 ,
    \MDIO_GEN.mdio_data_out_reg[11]_4 ,
    \reg_data_out_reg[31] ,
    \reg_data_out_reg[0] ,
    \reg_data_out_reg[5] ,
    \reg_data_out_reg[2] ,
    \reg_data_out_reg[0]_0 ,
    \reg_data_out_reg[1]_0 ,
    \reg_data_out_reg[3]_0 ,
    \reg_data_out_reg[6] ,
    \reg_data_out_reg[15]_1 ,
    tx_intr_en0,
    \reg_data_out_reg[15]_2 ,
    \reg_data_out_reg[14] ,
    \reg_data_out_reg[13] ,
    \reg_data_out_reg[12] ,
    \reg_data_out_reg[11] ,
    \reg_data_out_reg[10] ,
    \reg_data_out_reg[9] ,
    \reg_data_out_reg[8] ,
    \reg_data_out_reg[7] ,
    \reg_data_out_reg[6]_0 ,
    \ping_pkt_lenth_reg[15] ,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    \MDIO_GEN.mdio_wr_data_reg_reg[15] ,
    rx_intr_en0,
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] ,
    p_48_out,
    p_21_out,
    \MDIO_GEN.mdio_reg_addr_reg[4] ,
    \RX_PONG_REG_GEN.pong_rx_status_reg_0 ,
    s_axi_arready,
    reg_access_reg,
    \MDIO_GEN.mdio_en_i_reg ,
    gie_enable_reg,
    \TX_PONG_REG_GEN.pong_soft_status_reg ,
    ping_soft_status_reg,
    tx_intr_en_reg,
    rx_intr_en_reg,
    s_axi_rdata,
    SS,
    s_axi_aclk,
    Q,
    s_axi_aresetn,
    s_axi_wvalid,
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ,
    \MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ,
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ,
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ,
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ,
    \reg_data_out_reg[1]_1 ,
    p_27_in165_in,
    \reg_data_out_reg[31]_0 ,
    \reg_data_out_reg[0]_1 ,
    p_33_in184_in,
    \reg_data_out_reg[2]_0 ,
    pong_rx_status,
    pong_soft_status,
    ping_soft_status,
    gie_enable,
    loopback_en_reg,
    p_17_in,
    p_15_in,
    \ping_pkt_lenth_reg[15]_0 ,
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ,
    p_9_in,
    s_axi_wstrb,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    reg_access,
    s_axi_wdata,
    mdio_en_i,
    D);
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [10:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \reg_data_out_reg[3] ;
  output \reg_data_out_reg[15] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  output [0:0]WEBWE;
  output \MDIO_GEN.mdio_data_out_reg[11] ;
  output \MDIO_GEN.mdio_data_out_reg[11]_0 ;
  output \MDIO_GEN.mdio_data_out_reg[11]_1 ;
  output \MDIO_GEN.mdio_data_out_reg[12] ;
  output \MDIO_GEN.mdio_data_out_reg[13] ;
  output \MDIO_GEN.mdio_data_out_reg[14] ;
  output \MDIO_GEN.mdio_data_out_reg[15] ;
  output \MDIO_GEN.mdio_data_out_reg[3] ;
  output [0:0]E;
  output \MDIO_GEN.mdio_data_out_reg[11]_2 ;
  output \reg_data_out_reg[1] ;
  output \reg_data_out_reg[15]_0 ;
  output \reg_data_out_reg[4] ;
  output \MDIO_GEN.mdio_data_out_reg[11]_3 ;
  output \MDIO_GEN.mdio_data_out_reg[11]_4 ;
  output \reg_data_out_reg[31] ;
  output \reg_data_out_reg[0] ;
  output \reg_data_out_reg[5] ;
  output \reg_data_out_reg[2] ;
  output \reg_data_out_reg[0]_0 ;
  output \reg_data_out_reg[1]_0 ;
  output \reg_data_out_reg[3]_0 ;
  output \reg_data_out_reg[6] ;
  output \reg_data_out_reg[15]_1 ;
  output tx_intr_en0;
  output \reg_data_out_reg[15]_2 ;
  output \reg_data_out_reg[14] ;
  output \reg_data_out_reg[13] ;
  output \reg_data_out_reg[12] ;
  output \reg_data_out_reg[11] ;
  output \reg_data_out_reg[10] ;
  output \reg_data_out_reg[9] ;
  output \reg_data_out_reg[8] ;
  output \reg_data_out_reg[7] ;
  output \reg_data_out_reg[6]_0 ;
  output [0:0]\ping_pkt_lenth_reg[15] ;
  output \RX_PONG_REG_GEN.pong_rx_status_reg ;
  output [0:0]\MDIO_GEN.mdio_wr_data_reg_reg[15] ;
  output rx_intr_en0;
  output [0:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] ;
  output p_48_out;
  output p_21_out;
  output [0:0]\MDIO_GEN.mdio_reg_addr_reg[4] ;
  output \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  output s_axi_arready;
  output reg_access_reg;
  output \MDIO_GEN.mdio_en_i_reg ;
  output gie_enable_reg;
  output \TX_PONG_REG_GEN.pong_soft_status_reg ;
  output ping_soft_status_reg;
  output tx_intr_en_reg;
  output rx_intr_en_reg;
  output [31:0]s_axi_rdata;
  input [0:0]SS;
  input s_axi_aclk;
  input [4:0]Q;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  input [4:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ;
  input \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  input \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  input \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  input \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  input \reg_data_out_reg[1]_1 ;
  input p_27_in165_in;
  input \reg_data_out_reg[31]_0 ;
  input \reg_data_out_reg[0]_1 ;
  input p_33_in184_in;
  input \reg_data_out_reg[2]_0 ;
  input pong_rx_status;
  input pong_soft_status;
  input ping_soft_status;
  input gie_enable;
  input loopback_en_reg;
  input [2:0]p_17_in;
  input [1:0]p_15_in;
  input [14:0]\ping_pkt_lenth_reg[15]_0 ;
  input [14:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ;
  input [1:0]p_9_in;
  input [3:0]s_axi_wstrb;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input reg_access;
  input [1:0]s_axi_wdata;
  input mdio_en_i;
  input [31:0]D;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.read_req_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.read_req_reg_n_0 ;
  wire \AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ;
  wire [31:0]D;
  wire [10:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ;
  wire [0:0]E;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  wire \MDIO_GEN.mdio_data_out_reg[11] ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_1 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_2 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_3 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_4 ;
  wire \MDIO_GEN.mdio_data_out_reg[12] ;
  wire \MDIO_GEN.mdio_data_out_reg[13] ;
  wire \MDIO_GEN.mdio_data_out_reg[14] ;
  wire \MDIO_GEN.mdio_data_out_reg[15] ;
  wire \MDIO_GEN.mdio_data_out_reg[3] ;
  wire \MDIO_GEN.mdio_en_i_reg ;
  wire \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ;
  wire [0:0]\MDIO_GEN.mdio_reg_addr_reg[4] ;
  wire [0:0]\MDIO_GEN.mdio_wr_data_reg_reg[15] ;
  wire [4:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ;
  wire [4:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  wire [0:0]SS;
  wire \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ;
  wire [0:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] ;
  wire [14:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ;
  wire \TX_PONG_REG_GEN.pong_soft_status_reg ;
  wire [0:0]WEBWE;
  wire arready_i1;
  wire arready_i2;
  wire bus2ip_rdce;
  wire gie_enable;
  wire gie_enable_i_2_n_0;
  wire gie_enable_reg;
  wire loopback_en_reg;
  wire mdio_en_i;
  wire p_10_out;
  wire [1:0]p_15_in;
  wire [2:0]p_17_in;
  wire p_21_out;
  wire p_27_in165_in;
  wire [12:2]p_2_in;
  wire p_33_in184_in;
  wire p_48_out;
  wire [1:0]p_9_in;
  wire \ping_pkt_lenth[15]_i_2_n_0 ;
  wire \ping_pkt_lenth[15]_i_3_n_0 ;
  wire [0:0]\ping_pkt_lenth_reg[15] ;
  wire [14:0]\ping_pkt_lenth_reg[15]_0 ;
  wire ping_rx_status_i_3_n_0;
  wire ping_soft_status;
  wire ping_soft_status_reg;
  wire pong_rx_status;
  wire pong_soft_status;
  wire read_in_prog;
  wire reg_access;
  wire reg_access_reg;
  wire \reg_data_out[0]_i_2_n_0 ;
  wire \reg_data_out[0]_i_3_n_0 ;
  wire \reg_data_out[0]_i_4_n_0 ;
  wire \reg_data_out[0]_i_5_n_0 ;
  wire \reg_data_out[0]_i_6_n_0 ;
  wire \reg_data_out[15]_i_11_n_0 ;
  wire \reg_data_out[15]_i_12_n_0 ;
  wire \reg_data_out[15]_i_13_n_0 ;
  wire \reg_data_out[15]_i_14_n_0 ;
  wire \reg_data_out[15]_i_15_n_0 ;
  wire \reg_data_out[15]_i_4_n_0 ;
  wire \reg_data_out[15]_i_5_n_0 ;
  wire \reg_data_out[15]_i_6_n_0 ;
  wire \reg_data_out[15]_i_7_n_0 ;
  wire \reg_data_out[15]_i_8_n_0 ;
  wire \reg_data_out[1]_i_2_n_0 ;
  wire \reg_data_out[1]_i_3_n_0 ;
  wire \reg_data_out[1]_i_4_n_0 ;
  wire \reg_data_out[2]_i_2_n_0 ;
  wire \reg_data_out[2]_i_3_n_0 ;
  wire \reg_data_out[31]_i_2_n_0 ;
  wire \reg_data_out[31]_i_3_n_0 ;
  wire \reg_data_out[31]_i_4_n_0 ;
  wire \reg_data_out[31]_i_5_n_0 ;
  wire \reg_data_out[31]_i_6_n_0 ;
  wire \reg_data_out[31]_i_7_n_0 ;
  wire \reg_data_out[3]_i_5_n_0 ;
  wire \reg_data_out[3]_i_7_n_0 ;
  wire \reg_data_out[4]_i_2_n_0 ;
  wire \reg_data_out[4]_i_3_n_0 ;
  wire \reg_data_out[5]_i_2_n_0 ;
  wire \reg_data_out[5]_i_5_n_0 ;
  wire \reg_data_out[5]_i_6_n_0 ;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[0]_1 ;
  wire \reg_data_out_reg[10] ;
  wire \reg_data_out_reg[11] ;
  wire \reg_data_out_reg[12] ;
  wire \reg_data_out_reg[13] ;
  wire \reg_data_out_reg[14] ;
  wire \reg_data_out_reg[15] ;
  wire \reg_data_out_reg[15]_0 ;
  wire \reg_data_out_reg[15]_1 ;
  wire \reg_data_out_reg[15]_2 ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[1]_0 ;
  wire \reg_data_out_reg[1]_1 ;
  wire \reg_data_out_reg[2] ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[31] ;
  wire \reg_data_out_reg[31]_0 ;
  wire \reg_data_out_reg[3] ;
  wire \reg_data_out_reg[3]_0 ;
  wire \reg_data_out_reg[4] ;
  wire \reg_data_out_reg[5] ;
  wire \reg_data_out_reg[6] ;
  wire \reg_data_out_reg[6]_0 ;
  wire \reg_data_out_reg[7] ;
  wire \reg_data_out_reg[8] ;
  wire \reg_data_out_reg[9] ;
  wire rx_intr_en0;
  wire rx_intr_en_reg;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [1:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;
  wire tx_intr_en_reg;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFE1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .O(\MDIO_GEN.mdio_data_out_reg[11]_2 ));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[11] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[12] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[13] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[14] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[15] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[16] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[17] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[18] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[19] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[20] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[21] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[23] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[24] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[26] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[27] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[27]),
        .Q(s_axi_rdata[27]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[28]),
        .Q(s_axi_rdata[28]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[29] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[29]),
        .Q(s_axi_rdata[29]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[30]),
        .Q(s_axi_rdata[30]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[31]),
        .Q(s_axi_rdata[31]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[3] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[4] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[5] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[6] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[7] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.arready_i2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arready_i1),
        .Q(arready_i2),
        .R(SS));
  LUT3 #(
    .INIT(8'h08)) 
    \AXI4_LITE_IF_GEN.awready_i_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .O(p_10_out));
  FDRE \AXI4_LITE_IF_GEN.awready_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_10_out),
        .Q(s_axi_awready),
        .R(SS));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[10]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[8]),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[11]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[9]),
        .O(p_2_in[11]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1 
       (.I0(bus2ip_rdce),
        .I1(s_axi_awvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_arvalid),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_2 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[10]),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[0]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[2]),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[3]),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[4]),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[5]),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[6]),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \AXI4_LITE_IF_GEN.bus2ip_addr_i[9]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(s_axi_awaddr[7]),
        .O(p_2_in[9]));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .R(SS));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_rdce_i_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce),
        .Q(arready_i1),
        .R(SS));
  LUT4 #(
    .INIT(16'hC4C0)) 
    \AXI4_LITE_IF_GEN.bvalid_i_1 
       (.I0(s_axi_bready),
        .I1(s_axi_aresetn),
        .I2(s_axi_awready),
        .I3(s_axi_bvalid),
        .O(\AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.bvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00AE)) 
    \AXI4_LITE_IF_GEN.read_in_prog_i_1 
       (.I0(bus2ip_rdce),
        .I1(s_axi_arvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(read_in_prog),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFD5D5D5)) 
    \AXI4_LITE_IF_GEN.read_in_prog_i_2 
       (.I0(s_axi_aresetn),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .O(read_in_prog));
  FDRE \AXI4_LITE_IF_GEN.read_in_prog_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0 ),
        .Q(bus2ip_rdce),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40F04040)) 
    \AXI4_LITE_IF_GEN.read_req_i_1 
       (.I0(arready_i1),
        .I1(s_axi_arvalid),
        .I2(s_axi_aresetn),
        .I3(s_axi_rready),
        .I4(\AXI4_LITE_IF_GEN.read_req_reg_n_0 ),
        .O(\AXI4_LITE_IF_GEN.read_req_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.read_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.read_req_i_1_n_0 ),
        .Q(\AXI4_LITE_IF_GEN.read_req_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0080F080)) 
    \AXI4_LITE_IF_GEN.rvalid_i_1 
       (.I0(\AXI4_LITE_IF_GEN.read_req_reg_n_0 ),
        .I1(arready_i1),
        .I2(s_axi_aresetn),
        .I3(s_axi_rvalid),
        .I4(s_axi_rready),
        .O(\AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.rvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAEAA)) 
    \AXI4_LITE_IF_GEN.write_in_prog_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_awvalid),
        .I2(bus2ip_rdce),
        .I3(s_axi_wvalid),
        .I4(s_axi_arvalid),
        .I5(read_in_prog),
        .O(\AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.write_in_prog_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0 ),
        .Q(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h10FF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ));
  LUT3 #(
    .INIT(8'h80)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_3__0 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(s_axi_aresetn),
        .O(WEBWE));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5 
       (.I0(bus2ip_rdce),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_wstrb[2]),
        .I4(s_axi_wstrb[3]),
        .I5(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \MDIO_GEN.mdio_data_out[10]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_2 ),
        .I1(bus2ip_rdce),
        .I2(s_axi_aresetn),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \MDIO_GEN.mdio_data_out[10]_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(bus2ip_rdce),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\MDIO_GEN.mdio_data_out_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \MDIO_GEN.mdio_data_out[10]_i_5 
       (.I0(bus2ip_rdce),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I2(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\MDIO_GEN.mdio_data_out_reg[11]_4 ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[11]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .I1(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ),
        .I2(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [0]),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_1 ),
        .O(\MDIO_GEN.mdio_data_out_reg[11] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[12]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .I1(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ),
        .I2(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [1]),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_1 ),
        .O(\MDIO_GEN.mdio_data_out_reg[12] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[13]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .I1(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ),
        .I2(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [2]),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_1 ),
        .O(\MDIO_GEN.mdio_data_out_reg[13] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[14]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .I1(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ),
        .I2(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [3]),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_1 ),
        .O(\MDIO_GEN.mdio_data_out_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4F0F)) 
    \MDIO_GEN.mdio_data_out[15]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_2 ),
        .I1(bus2ip_rdce),
        .I2(s_axi_aresetn),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_4 ),
        .O(\MDIO_GEN.mdio_data_out_reg[11]_3 ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[15]_i_2 
       (.I0(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .I1(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ),
        .I2(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [4]),
        .I3(\MDIO_GEN.mdio_data_out_reg[11]_1 ),
        .O(\MDIO_GEN.mdio_data_out_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \MDIO_GEN.mdio_data_out[3]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I1(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(bus2ip_rdce),
        .O(\MDIO_GEN.mdio_data_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \MDIO_GEN.mdio_data_out[8]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(bus2ip_rdce),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MDIO_GEN.mdio_en_i_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_21_out),
        .I2(mdio_en_i),
        .O(\MDIO_GEN.mdio_en_i_reg ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \MDIO_GEN.mdio_reg_addr[4]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\MDIO_GEN.mdio_reg_addr_reg[4] ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \MDIO_GEN.mdio_reg_addr[4]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .O(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \MDIO_GEN.mdio_req_i_i_3 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I5(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .O(p_21_out));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \MDIO_GEN.mdio_wr_data_reg[15]_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I1(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(s_axi_wvalid),
        .I4(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\MDIO_GEN.mdio_wr_data_reg_reg[15] ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \RX_PONG_REG_GEN.pong_rx_status_i_2 
       (.I0(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .O(\RX_PONG_REG_GEN.pong_rx_status_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_PONG_REG_GEN.pong_rx_status_i_3 
       (.I0(s_axi_wvalid),
        .I1(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .O(\RX_PONG_REG_GEN.pong_rx_status_reg ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I5(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ),
        .O(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_PONG_REG_GEN.pong_soft_status_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_48_out),
        .I2(pong_soft_status),
        .O(\TX_PONG_REG_GEN.pong_soft_status_reg ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \TX_PONG_REG_GEN.pong_tx_status_i_2 
       (.I0(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I4(\reg_data_out[15]_i_12_n_0 ),
        .I5(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(p_48_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    gie_enable_i_1
       (.I0(s_axi_wdata[1]),
        .I1(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I2(s_axi_wvalid),
        .I3(gie_enable_i_2_n_0),
        .I4(gie_enable),
        .O(gie_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    gie_enable_i_2
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(gie_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \ping_pkt_lenth[15]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I5(\ping_pkt_lenth[15]_i_2_n_0 ),
        .O(\ping_pkt_lenth_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \ping_pkt_lenth[15]_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(\ping_pkt_lenth[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ping_pkt_lenth[15]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .O(\ping_pkt_lenth[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    ping_rx_status_i_2
       (.I0(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .I1(ping_rx_status_i_3_n_0),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I5(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .O(rx_intr_en0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ping_rx_status_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .O(ping_rx_status_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ping_soft_status_i_1
       (.I0(s_axi_wdata[1]),
        .I1(tx_intr_en0),
        .I2(ping_soft_status),
        .O(ping_soft_status_reg));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    ping_tx_status_i_2
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I5(\ping_pkt_lenth[15]_i_2_n_0 ),
        .O(tx_intr_en0));
  LUT3 #(
    .INIT(8'h74)) 
    reg_access_i_1
       (.I0(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I1(bus2ip_rdce),
        .I2(reg_access),
        .O(reg_access_reg));
  LUT6 #(
    .INIT(64'h00000000EEE20000)) 
    \reg_data_out[0]_i_1 
       (.I0(\reg_data_out_reg[0]_1 ),
        .I1(\reg_data_out_reg[15]_0 ),
        .I2(\reg_data_out[0]_i_2_n_0 ),
        .I3(\reg_data_out[0]_i_3_n_0 ),
        .I4(s_axi_aresetn),
        .I5(\reg_data_out[0]_i_4_n_0 ),
        .O(\reg_data_out_reg[0] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[0]_i_2 
       (.I0(\reg_data_out_reg[3] ),
        .I1(p_17_in[0]),
        .I2(\reg_data_out[15]_i_6_n_0 ),
        .I3(p_15_in[0]),
        .O(\reg_data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAAAAAAAAAAAA)) 
    \reg_data_out[0]_i_3 
       (.I0(\reg_data_out[0]_i_5_n_0 ),
        .I1(pong_rx_status),
        .I2(\reg_data_out[31]_i_6_n_0 ),
        .I3(\reg_data_out[0]_i_6_n_0 ),
        .I4(\reg_data_out_reg[0]_0 ),
        .I5(\reg_data_out[15]_i_11_n_0 ),
        .O(\reg_data_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \reg_data_out[0]_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I3(bus2ip_rdce),
        .I4(\reg_data_out[15]_i_13_n_0 ),
        .I5(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(\reg_data_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_data_out[0]_i_5 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [0]),
        .I2(p_9_in[0]),
        .I3(\reg_data_out[31]_i_7_n_0 ),
        .I4(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [0]),
        .I5(\reg_data_out_reg[15]_1 ),
        .O(\reg_data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400FFFF)) 
    \reg_data_out[0]_i_6 
       (.I0(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(\reg_data_out[5]_i_6_n_0 ),
        .I3(bus2ip_rdce),
        .I4(Q[0]),
        .I5(\reg_data_out[0]_i_4_n_0 ),
        .O(\reg_data_out[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[10]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [9]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [9]),
        .O(\reg_data_out_reg[10] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[11]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [10]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [10]),
        .O(\reg_data_out_reg[11] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[12]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [11]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [11]),
        .O(\reg_data_out_reg[12] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[13]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [12]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [12]),
        .O(\reg_data_out_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[14]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [13]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [13]),
        .O(\reg_data_out_reg[14] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFBFAAAA)) 
    \reg_data_out[15]_i_1 
       (.I0(\reg_data_out[15]_i_4_n_0 ),
        .I1(\reg_data_out[15]_i_5_n_0 ),
        .I2(s_axi_aresetn),
        .I3(\reg_data_out[15]_i_6_n_0 ),
        .I4(bus2ip_rdce),
        .I5(\reg_data_out[15]_i_7_n_0 ),
        .O(\reg_data_out_reg[6] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_data_out[15]_i_10 
       (.I0(bus2ip_rdce),
        .I1(\reg_data_out[15]_i_14_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I4(\reg_data_out[15]_i_12_n_0 ),
        .I5(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(\reg_data_out_reg[15]_1 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \reg_data_out[15]_i_11 
       (.I0(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I2(\reg_data_out[15]_i_15_n_0 ),
        .I3(\reg_data_out[15]_i_7_n_0 ),
        .I4(bus2ip_rdce),
        .O(\reg_data_out[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_data_out[15]_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .O(\reg_data_out[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \reg_data_out[15]_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .O(\reg_data_out[15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \reg_data_out[15]_i_14 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\reg_data_out[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data_out[15]_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .O(\reg_data_out[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFFFFFFFBFF)) 
    \reg_data_out[15]_i_2 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(\reg_data_out_reg[15] ),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\reg_data_out[15]_i_11_n_0 ),
        .I4(bus2ip_rdce),
        .I5(\reg_data_out[15]_i_7_n_0 ),
        .O(\reg_data_out_reg[15]_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[15]_i_3 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [14]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [14]),
        .O(\reg_data_out_reg[15]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \reg_data_out[15]_i_4 
       (.I0(s_axi_aresetn),
        .I1(\reg_data_out[15]_i_8_n_0 ),
        .I2(\reg_data_out[15]_i_11_n_0 ),
        .O(\reg_data_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_data_out[15]_i_5 
       (.I0(\reg_data_out_reg[15]_1 ),
        .I1(\reg_data_out_reg[15] ),
        .O(\reg_data_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_data_out[15]_i_6 
       (.I0(bus2ip_rdce),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I4(\reg_data_out[15]_i_12_n_0 ),
        .I5(\ping_pkt_lenth[15]_i_3_n_0 ),
        .O(\reg_data_out[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_data_out[15]_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .O(\reg_data_out[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \reg_data_out[15]_i_8 
       (.I0(bus2ip_rdce),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I4(\reg_data_out[0]_i_4_n_0 ),
        .O(\reg_data_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \reg_data_out[15]_i_9 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .I3(\reg_data_out[15]_i_13_n_0 ),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I5(bus2ip_rdce),
        .O(\reg_data_out_reg[15] ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \reg_data_out[1]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\reg_data_out_reg[1]_1 ),
        .I3(\reg_data_out_reg[15]_0 ),
        .I4(\reg_data_out[1]_i_2_n_0 ),
        .O(\reg_data_out_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF2E22)) 
    \reg_data_out[1]_i_2 
       (.I0(\reg_data_out[1]_i_3_n_0 ),
        .I1(\reg_data_out_reg[0]_0 ),
        .I2(\reg_data_out_reg[1]_0 ),
        .I3(Q[1]),
        .I4(\reg_data_out[1]_i_4_n_0 ),
        .O(\reg_data_out[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[1]_i_3 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [1]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [1]),
        .O(\reg_data_out[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[1]_i_4 
       (.I0(\reg_data_out_reg[3] ),
        .I1(p_17_in[1]),
        .I2(p_15_in[1]),
        .I3(\reg_data_out[15]_i_6_n_0 ),
        .O(\reg_data_out[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out[2]_i_1 
       (.I0(\reg_data_out_reg[2]_0 ),
        .I1(\reg_data_out_reg[15]_0 ),
        .I2(\reg_data_out[2]_i_2_n_0 ),
        .I3(\reg_data_out[15]_i_4_n_0 ),
        .O(\reg_data_out_reg[2] ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \reg_data_out[2]_i_2 
       (.I0(Q[2]),
        .I1(\reg_data_out_reg[1]_0 ),
        .I2(\reg_data_out_reg[0]_0 ),
        .I3(\reg_data_out[2]_i_3_n_0 ),
        .O(\reg_data_out[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[2]_i_3 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [2]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [2]),
        .O(\reg_data_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000E200)) 
    \reg_data_out[31]_i_1 
       (.I0(\reg_data_out_reg[31]_0 ),
        .I1(\reg_data_out_reg[15]_0 ),
        .I2(\reg_data_out[31]_i_2_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\reg_data_out[31]_i_3_n_0 ),
        .O(\reg_data_out_reg[31] ));
  LUT6 #(
    .INIT(64'hEFAFEAAAEAAAEAAA)) 
    \reg_data_out[31]_i_2 
       (.I0(\reg_data_out[31]_i_4_n_0 ),
        .I1(\reg_data_out[15]_i_6_n_0 ),
        .I2(\reg_data_out[31]_i_5_n_0 ),
        .I3(pong_soft_status),
        .I4(ping_soft_status),
        .I5(bus2ip_rdce),
        .O(\reg_data_out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5D55)) 
    \reg_data_out[31]_i_3 
       (.I0(\reg_data_out[31]_i_6_n_0 ),
        .I1(gie_enable_i_2_n_0),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(bus2ip_rdce),
        .I4(\reg_data_out[31]_i_7_n_0 ),
        .I5(\reg_data_out_reg[15]_1 ),
        .O(\reg_data_out[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA00000000)) 
    \reg_data_out[31]_i_4 
       (.I0(\reg_data_out[0]_i_4_n_0 ),
        .I1(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I5(gie_enable),
        .O(\reg_data_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \reg_data_out[31]_i_5 
       (.I0(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I5(\reg_data_out[15]_i_7_n_0 ),
        .O(\reg_data_out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \reg_data_out[31]_i_6 
       (.I0(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I2(\reg_data_out[15]_i_15_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I4(\reg_data_out[15]_i_7_n_0 ),
        .I5(bus2ip_rdce),
        .O(\reg_data_out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \reg_data_out[31]_i_7 
       (.I0(bus2ip_rdce),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I3(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I4(\reg_data_out[15]_i_15_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .O(\reg_data_out[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \reg_data_out[3]_i_2 
       (.I0(\reg_data_out[15]_i_7_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [8]),
        .I3(\reg_data_out[3]_i_5_n_0 ),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I5(bus2ip_rdce),
        .O(\reg_data_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \reg_data_out[3]_i_4 
       (.I0(\reg_data_out[3]_i_7_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\reg_data_out[15]_i_6_n_0 ),
        .O(\reg_data_out_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data_out[3]_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .O(\reg_data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \reg_data_out[3]_i_7 
       (.I0(\reg_data_out[0]_i_4_n_0 ),
        .I1(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .I5(bus2ip_rdce),
        .O(\reg_data_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044400040)) 
    \reg_data_out[4]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(s_axi_aresetn),
        .I2(p_27_in165_in),
        .I3(\reg_data_out_reg[15]_0 ),
        .I4(\reg_data_out[4]_i_2_n_0 ),
        .I5(\reg_data_out[15]_i_6_n_0 ),
        .O(\reg_data_out_reg[4] ));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    \reg_data_out[4]_i_2 
       (.I0(\reg_data_out[4]_i_3_n_0 ),
        .I1(\reg_data_out_reg[0]_0 ),
        .I2(\reg_data_out_reg[1]_0 ),
        .I3(Q[3]),
        .I4(\reg_data_out_reg[3] ),
        .I5(loopback_en_reg),
        .O(\reg_data_out[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \reg_data_out[4]_i_3 
       (.I0(\reg_data_out_reg[15]_1 ),
        .I1(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [3]),
        .I2(\reg_data_out_reg[15] ),
        .I3(\ping_pkt_lenth_reg[15]_0 [3]),
        .O(\reg_data_out[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out[5]_i_1 
       (.I0(p_33_in184_in),
        .I1(\reg_data_out_reg[15]_0 ),
        .I2(\reg_data_out[5]_i_2_n_0 ),
        .I3(\reg_data_out[15]_i_4_n_0 ),
        .O(\reg_data_out_reg[5] ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \reg_data_out[5]_i_2 
       (.I0(Q[4]),
        .I1(\reg_data_out_reg[1]_0 ),
        .I2(\reg_data_out_reg[0]_0 ),
        .I3(\reg_data_out[5]_i_5_n_0 ),
        .O(\reg_data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0020FFFFFFFF)) 
    \reg_data_out[5]_i_3 
       (.I0(bus2ip_rdce),
        .I1(\reg_data_out[5]_i_6_n_0 ),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I4(\reg_data_out[0]_i_4_n_0 ),
        .I5(\reg_data_out[15]_i_11_n_0 ),
        .O(\reg_data_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2222202222222222)) 
    \reg_data_out[5]_i_4 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\reg_data_out_reg[15]_1 ),
        .I2(\MDIO_GEN.mdio_reg_addr[4]_i_2_n_0 ),
        .I3(\reg_data_out[15]_i_7_n_0 ),
        .I4(ping_rx_status_i_3_n_0),
        .I5(bus2ip_rdce),
        .O(\reg_data_out_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \reg_data_out[5]_i_5 
       (.I0(\reg_data_out_reg[15]_1 ),
        .I1(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [4]),
        .I2(\reg_data_out_reg[15] ),
        .I3(\ping_pkt_lenth_reg[15]_0 [4]),
        .O(\reg_data_out[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg_data_out[5]_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [9]),
        .O(\reg_data_out[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[6]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [5]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [5]),
        .O(\reg_data_out_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[7]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [6]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [6]),
        .O(\reg_data_out_reg[7] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[8]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [7]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [7]),
        .O(\reg_data_out_reg[8] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \reg_data_out[9]_i_1 
       (.I0(\reg_data_out_reg[15] ),
        .I1(\ping_pkt_lenth_reg[15]_0 [8]),
        .I2(\reg_data_out_reg[15]_1 ),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [8]),
        .O(\reg_data_out_reg[9] ));
  LUT3 #(
    .INIT(8'hB8)) 
    rx_intr_en_i_1
       (.I0(s_axi_wdata[0]),
        .I1(rx_intr_en0),
        .I2(p_9_in[1]),
        .O(rx_intr_en_reg));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(arready_i1),
        .I1(arready_i2),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    tx_intr_en_i_1
       (.I0(s_axi_wdata[0]),
        .I1(tx_intr_en0),
        .I2(p_17_in[2]),
        .O(tx_intr_en_reg));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16 \ramloop[0].ram.r 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23 \ramloop[0].ram.r 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9 \ramloop[0].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17 \prim_noinit.ram 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24 \prim_noinit.ram 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10 \prim_noinit.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,ADDRARDADDR,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(s_axi_wdata),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],\emac_tx_wr_data_d1_reg[0] }),
        .DOBDO(DOBDO),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .ENBWREN(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,ADDRARDADDR,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(s_axi_wdata),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],DOADO}),
        .DOBDO(DOBDO),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .ENBWREN(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT4 #(
    .INIT(16'h3202)) 
    ram16x1_0_i_1
       (.I0(DOADO[0]),
        .I1(tx_idle),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .O(\rdDestAddrNib_D_t_q_reg[2] [0]));
  LUT4 #(
    .INIT(16'h3202)) 
    ram16x1_1_i_1
       (.I0(DOADO[1]),
        .I1(tx_idle),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .O(\rdDestAddrNib_D_t_q_reg[2] [1]));
  LUT4 #(
    .INIT(16'h3202)) 
    ram16x1_2_i_1
       (.I0(DOADO[2]),
        .I1(tx_idle),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .O(\rdDestAddrNib_D_t_q_reg[2] [2]));
  LUT4 #(
    .INIT(16'h3202)) 
    ram16x1_3_i_1
       (.I0(DOADO[3]),
        .I1(tx_idle),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .O(\rdDestAddrNib_D_t_q_reg[2] [3]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ;
  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire [30:0]p_2_out;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire [3:0]p_5_out;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_1 
       (.I0(\reg_data_out_reg[0] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [0]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2 
       (.I0(p_2_out[0]),
        .I1(DOBDO[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_1 
       (.I0(p_63_in273_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [10]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2 
       (.I0(p_2_out[10]),
        .I1(DOBDO[10]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [10]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [10]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_1 
       (.I0(p_69_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(p_68_in290_in),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2 
       (.I0(p_2_out[11]),
        .I1(DOBDO[11]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [11]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [11]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_1 
       (.I0(p_75_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(p_74_in308_in),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2 
       (.I0(p_2_out[12]),
        .I1(DOBDO[12]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [12]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [12]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_1 
       (.I0(p_81_in330_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(p_80_in328_in),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2 
       (.I0(p_2_out[13]),
        .I1(DOBDO[13]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [13]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [13]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_1 
       (.I0(p_87_in351_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(p_86_in349_in),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2 
       (.I0(p_2_out[14]),
        .I1(DOBDO[14]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [14]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [14]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_1 
       (.I0(p_93_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(p_92_in370_in),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2 
       (.I0(p_2_out[15]),
        .I1(DOBDO[15]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [15]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [15]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2 
       (.I0(p_2_out[16]),
        .I1(DOBDO[16]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [16]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [16]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2 
       (.I0(p_2_out[17]),
        .I1(DOBDO[17]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [17]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [17]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2 
       (.I0(p_2_out[18]),
        .I1(DOBDO[18]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [18]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [18]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2 
       (.I0(p_2_out[19]),
        .I1(DOBDO[19]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [19]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [19]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_1 
       (.I0(\reg_data_out_reg[1] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [1]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2 
       (.I0(p_2_out[1]),
        .I1(DOBDO[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2 
       (.I0(p_2_out[20]),
        .I1(DOBDO[20]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [20]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [20]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2 
       (.I0(p_2_out[21]),
        .I1(DOBDO[21]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [21]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [21]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2 
       (.I0(p_2_out[22]),
        .I1(DOBDO[22]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [22]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [22]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2 
       (.I0(p_2_out[23]),
        .I1(DOBDO[23]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [23]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [23]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2 
       (.I0(p_2_out[24]),
        .I1(DOBDO[24]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [24]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [24]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2 
       (.I0(p_2_out[25]),
        .I1(DOBDO[25]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [25]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [25]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2 
       (.I0(p_2_out[26]),
        .I1(DOBDO[26]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [26]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [26]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2 
       (.I0(p_2_out[27]),
        .I1(DOBDO[27]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [27]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [27]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2 
       (.I0(p_2_out[28]),
        .I1(DOBDO[28]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [28]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [28]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2 
       (.I0(p_2_out[29]),
        .I1(DOBDO[29]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [29]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [29]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_1 
       (.I0(\reg_data_out_reg[2] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [2]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2 
       (.I0(p_2_out[2]),
        .I1(DOBDO[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [2]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_1 
       (.I0(reg_access_reg),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h55000F3355FF0F33)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2 
       (.I0(p_2_out[30]),
        .I1(DOBDO[30]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [30]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [30]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_1 
       (.I0(p_21_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [3]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2 
       (.I0(p_2_out[3]),
        .I1(DOBDO[3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [3]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_1 
       (.I0(p_27_in165_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [4]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2 
       (.I0(p_2_out[4]),
        .I1(DOBDO[4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [4]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [4]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_1 
       (.I0(p_33_in184_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [5]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2 
       (.I0(p_2_out[5]),
        .I1(DOBDO[5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [5]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [5]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_1 
       (.I0(p_39_in204_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [6]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2 
       (.I0(p_2_out[6]),
        .I1(DOBDO[6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [6]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [6]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_1 
       (.I0(p_45_in221_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [7]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2 
       (.I0(p_2_out[7]),
        .I1(DOBDO[7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [7]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [7]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_1 
       (.I0(p_51_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [8]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2 
       (.I0(p_2_out[8]),
        .I1(DOBDO[8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [8]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [8]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_1 
       (.I0(p_57_in257_in),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] [9]),
        .I3(reg_access_reg),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2 
       (.I0(p_2_out[9]),
        .I1(DOBDO[9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [9]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [9]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [9]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,\rxbuffer_addr_reg[0] ,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [8:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI(s_axi_wdata),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],p_5_out}),
        .DOBDO({\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,p_2_out}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gv.ram_valid_d1_reg ),
        .ENBWREN(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_1_in663_in;
  wire p_3_in666_in;
  wire p_5_in670_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_1 
       (.I0(\reg_data_out_reg[31] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .I2(reg_access_reg),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] [9]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] [10]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,\rxbuffer_addr_reg[0] ,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] [8:0],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axi_aclk),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI(s_axi_wdata),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:4],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_32 ,p_5_in670_in,p_3_in666_in,p_1_in663_in}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36 ,DOBDO}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gv.ram_valid_d1_reg ),
        .ENBWREN(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15 \valid.cstr 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22 \valid.cstr 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8 \valid.cstr 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth inst_blk_mem_gen
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13 inst_blk_mem_gen
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20 inst_blk_mem_gen
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6 inst_blk_mem_gen
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14 \gnativebmg.native_blk_mem_gen 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21 \gnativebmg.native_blk_mem_gen 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7 \gnativebmg.native_blk_mem_gen 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2 \FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12 \FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19 \FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_wrapper" *) 
module ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5 \FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN 
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync
   (scndry_out,
    SS,
    phy_rx_clk);
  output scndry_out;
  input [0:0]SS;
  input phy_rx_clk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire [0:0]SS;
  wire phy_rx_clk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(SS),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_0
   (scndry_out,
    SS,
    phy_tx_clk);
  output scndry_out;
  input [0:0]SS;
  input phy_tx_clk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire [0:0]SS;
  wire phy_tx_clk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(SS),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_25
   (scndry_out,
    phy_tx_clk,
    s_axi_aclk);
  output scndry_out;
  input phy_tx_clk;
  input s_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire phy_tx_clk;
  wire s_axi_aclk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_tx_clk),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_30
   (scndry_out,
    SS,
    phy_rx_clk);
  output scndry_out;
  input [0:0]SS;
  input phy_rx_clk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ;
  wire [0:0]SS;
  wire phy_rx_clk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(SS),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0
   (scndry_out,
    prmry_in,
    phy_tx_clk);
  output scndry_out;
  input prmry_in;
  input phy_tx_clk;

  wire D;
  wire phy_tx_clk;
  wire prmry_in;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1
   (scndry_vect_out,
    prmry_vect_in,
    phy_tx_clk);
  output [3:0]scndry_vect_out;
  input [3:0]prmry_vect_in;
  input phy_tx_clk;

  wire D0_out;
  wire D1_out;
  wire D2_out;
  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire phy_tx_clk;
  wire [3:0]prmry_vect_in;
  wire [3:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D2_out),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D1_out),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D0_out),
        .Q(scndry_vect_out[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(scndry_vect_out[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[0]),
        .Q(D2_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[1]),
        .Q(D1_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[2]),
        .Q(D0_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_vect_in[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2
   (scndry_out,
    prmry_in,
    s_axi_aclk);
  output scndry_out;
  input prmry_in;
  input s_axi_aclk;

  wire D;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ;
  wire prmry_in;
  wire s_axi_aclk;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0 ),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3
   (fifo_tx_en_reg,
    tx_d_rst,
    prmry_in,
    phy_tx_clk);
  output fifo_tx_en_reg;
  input tx_d_rst;
  input prmry_in;
  input phy_tx_clk;

  wire D;
  wire fifo_tx_en_reg;
  wire phy_tx_clk;
  wire prmry_in;
  wire tx_d_rst;
  wire tx_en_i_tx_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D),
        .Q(tx_en_i_tx_clk),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_tx_en_i_1
       (.I0(tx_en_i_tx_clk),
        .I1(tx_d_rst),
        .O(fifo_tx_en_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4
   (scndry_out,
    s_axi_aresetn,
    phy_tx_clk);
  output scndry_out;
  input s_axi_aresetn;
  input phy_tx_clk;

  wire D;
  wire phy_tx_clk;
  wire s_axi_aresetn;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(D),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(D),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module ntps_top_axi_ethernetlite_0_0_clk_x_pntrs
   (ram_full_i,
    ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    E,
    rst_full_gen_i,
    Q,
    \gic0.gc0.count_d1_reg[3] ,
    \gc0.count_reg[3] ,
    ram_empty_fb_i_reg_1,
    \gc0.count_d1_reg[3] ,
    \gic0.gc0.count_d2_reg[3] ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ,
    D);
  output ram_full_i;
  output ram_empty_fb_i_reg;
  output [1:0]ram_empty_fb_i_reg_0;
  input [0:0]E;
  input rst_full_gen_i;
  input [3:0]Q;
  input [3:0]\gic0.gc0.count_d1_reg[3] ;
  input [1:0]\gc0.count_reg[3] ;
  input ram_empty_fb_i_reg_1;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  input [2:0]D;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [1:0]\gc0.count_reg[3] ;
  wire [3:0]\gic0.gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gsync_stage[2].rd_stg_inst_n_1 ;
  wire \gsync_stage[2].rd_stg_inst_n_2 ;
  wire \gsync_stage[2].rd_stg_inst_n_3 ;
  wire \gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gsync_stage[2].wr_stg_inst_n_3 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire [2:0]p_0_in2_out;
  wire [3:3]p_0_out;
  wire [3:0]p_0_out_0;
  wire [3:2]p_1_out;
  wire [3:3]p_1_out_0;
  wire [3:0]p_2_out;
  wire [3:0]p_3_out;
  wire phy_tx_clk;
  wire ram_empty_fb_i_reg;
  wire [1:0]ram_empty_fb_i_reg_0;
  wire ram_empty_fb_i_reg_1;
  wire ram_empty_i_i_3__0_n_0;
  wire ram_empty_i_i_4__0_n_0;
  wire ram_full_i;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_3_n_0;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_i_5_n_0;
  wire \rd_pntr_gc_reg_n_0_[0] ;
  wire \rd_pntr_gc_reg_n_0_[1] ;
  wire \rd_pntr_gc_reg_n_0_[2] ;
  wire \rd_pntr_gc_reg_n_0_[3] ;
  wire rst_full_gen_i;
  wire s_axi_aclk;
  wire \wr_pntr_gc_reg_n_0_[0] ;
  wire \wr_pntr_gc_reg_n_0_[1] ;
  wire \wr_pntr_gc_reg_n_0_[2] ;
  wire \wr_pntr_gc_reg_n_0_[3] ;

  ntps_top_axi_ethernetlite_0_0_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q({\wr_pntr_gc_reg_n_0_[3] ,\wr_pntr_gc_reg_n_0_[2] ,\wr_pntr_gc_reg_n_0_[1] ,\wr_pntr_gc_reg_n_0_[0] }),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .phy_tx_clk(phy_tx_clk));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26 \gsync_stage[1].wr_stg_inst 
       (.D(p_2_out),
        .Q({\rd_pntr_gc_reg_n_0_[3] ,\rd_pntr_gc_reg_n_0_[2] ,\rd_pntr_gc_reg_n_0_[1] ,\rd_pntr_gc_reg_n_0_[0] }),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27 \gsync_stage[2].rd_stg_inst 
       (.D(p_3_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_1_out_0),
        .phy_tx_clk(phy_tx_clk),
        .\wr_pntr_bin_reg[2] ({\gsync_stage[2].rd_stg_inst_n_1 ,\gsync_stage[2].rd_stg_inst_n_2 ,\gsync_stage[2].rd_stg_inst_n_3 }));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28 \gsync_stage[2].wr_stg_inst 
       (.D(p_2_out),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .out(p_0_out),
        .\rd_pntr_bin_reg[2] ({\gsync_stage[2].wr_stg_inst_n_1 ,\gsync_stage[2].wr_stg_inst_n_2 ,\gsync_stage[2].wr_stg_inst_n_3 }),
        .s_axi_aclk(s_axi_aclk));
  LUT6 #(
    .INIT(64'hFFFFFFFF90090000)) 
    ram_empty_i_i_1__0
       (.I0(p_1_out[3]),
        .I1(\gc0.count_reg[3] [1]),
        .I2(p_1_out[2]),
        .I3(\gc0.count_reg[3] [0]),
        .I4(ram_empty_fb_i_reg_1),
        .I5(ram_empty_i_i_3__0_n_0),
        .O(ram_empty_fb_i_reg));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_empty_i_i_3__0
       (.I0(\gc0.count_d1_reg[3] [2]),
        .I1(p_1_out[2]),
        .I2(\gc0.count_d1_reg[3] [3]),
        .I3(p_1_out[3]),
        .I4(ram_empty_i_i_4__0_n_0),
        .O(ram_empty_i_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_empty_i_i_4__0
       (.I0(ram_empty_fb_i_reg_0[0]),
        .I1(\gc0.count_d1_reg[3] [0]),
        .I2(ram_empty_fb_i_reg_0[1]),
        .I3(\gc0.count_d1_reg[3] [1]),
        .O(ram_empty_i_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h00F8)) 
    ram_full_i_i_1
       (.I0(E),
        .I1(ram_full_i_i_2_n_0),
        .I2(ram_full_i_i_3_n_0),
        .I3(rst_full_gen_i),
        .O(ram_full_i));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_i_i_2
       (.I0(Q[2]),
        .I1(p_0_out_0[2]),
        .I2(Q[1]),
        .I3(p_0_out_0[1]),
        .I4(ram_full_i_i_4_n_0),
        .O(ram_full_i_i_2_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    ram_full_i_i_3
       (.I0(\gic0.gc0.count_d1_reg[3] [3]),
        .I1(p_0_out_0[3]),
        .I2(\gic0.gc0.count_d1_reg[3] [2]),
        .I3(p_0_out_0[2]),
        .I4(ram_full_i_i_5_n_0),
        .O(ram_full_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_i_i_4
       (.I0(p_0_out_0[0]),
        .I1(Q[0]),
        .I2(p_0_out_0[3]),
        .I3(Q[3]),
        .O(ram_full_i_i_4_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_full_i_i_5
       (.I0(p_0_out_0[0]),
        .I1(\gic0.gc0.count_d1_reg[3] [0]),
        .I2(p_0_out_0[1]),
        .I3(\gic0.gc0.count_d1_reg[3] [1]),
        .O(ram_full_i_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(p_0_out_0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(p_0_out_0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(p_0_out_0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_out),
        .Q(p_0_out_0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[0] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(\rd_pntr_gc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[1] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(\rd_pntr_gc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[2] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(\rd_pntr_gc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[3] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gc0.count_d1_reg[3] [3]),
        .Q(\rd_pntr_gc_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[0] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gsync_stage[2].rd_stg_inst_n_3 ),
        .Q(ram_empty_fb_i_reg_0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[1] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gsync_stage[2].rd_stg_inst_n_2 ),
        .Q(ram_empty_fb_i_reg_0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[2] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gsync_stage[2].rd_stg_inst_n_1 ),
        .Q(p_1_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[3] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_1_out_0),
        .Q(p_1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [0]),
        .I1(\gic0.gc0.count_d2_reg[3] [1]),
        .O(p_0_in2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [1]),
        .I1(\gic0.gc0.count_d2_reg[3] [2]),
        .O(p_0_in2_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [2]),
        .I1(\gic0.gc0.count_d2_reg[3] [3]),
        .O(p_0_in2_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[0]),
        .Q(\wr_pntr_gc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[1]),
        .Q(\wr_pntr_gc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[2]),
        .Q(\wr_pntr_gc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gic0.gc0.count_d2_reg[3] [3]),
        .Q(\wr_pntr_gc_reg_n_0_[3] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36
   (ram_empty_fb_i_reg,
    ram_full_i,
    ram_full_i_reg,
    Q,
    E,
    \gc0.count_reg[3] ,
    ram_full_i_reg_0,
    \gic0.gc0.count_d1_reg[3] ,
    rst_full_gen_i,
    \gic0.gc0.count_reg[2] ,
    \gic0.gc0.count_d2_reg[3] ,
    phy_rx_clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ,
    D);
  output ram_empty_fb_i_reg;
  output ram_full_i;
  output [0:0]ram_full_i_reg;
  input [3:0]Q;
  input [0:0]E;
  input [3:0]\gc0.count_reg[3] ;
  input ram_full_i_reg_0;
  input [3:0]\gic0.gc0.count_d1_reg[3] ;
  input rst_full_gen_i;
  input [2:0]\gic0.gc0.count_reg[2] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input phy_rx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  input [2:0]D;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\gc0.count_reg[3] ;
  wire [3:0]\gic0.gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire [2:0]\gic0.gc0.count_reg[2] ;
  wire \gsync_stage[2].rd_stg_inst_n_2 ;
  wire \gsync_stage[2].rd_stg_inst_n_3 ;
  wire \gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gsync_stage[2].wr_stg_inst_n_3 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire p_0_in0;
  wire [2:0]p_0_in2_out;
  wire [2:0]p_0_out;
  wire [3:3]p_0_out_1;
  wire [3:0]p_1_out;
  wire [3:3]p_1_out_0;
  wire [3:0]p_2_out;
  wire [3:0]p_3_out;
  wire phy_rx_clk;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_i_2_n_0;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_4_n_0;
  wire ram_full_fb_i_i_2_n_0;
  wire ram_full_fb_i_i_4_n_0;
  wire ram_full_i;
  wire [0:0]ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire [3:0]rd_pntr_gc;
  wire rst_full_gen_i;
  wire s_axi_aclk;
  wire [3:0]wr_pntr_gc;

  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46 \gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47 \gsync_stage[1].wr_stg_inst 
       (.D(p_2_out),
        .Q(rd_pntr_gc),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .phy_rx_clk(phy_rx_clk));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48 \gsync_stage[2].rd_stg_inst 
       (.D(p_3_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_1_out_0),
        .s_axi_aclk(s_axi_aclk),
        .\wr_pntr_bin_reg[2] ({p_0_in0,\gsync_stage[2].rd_stg_inst_n_2 ,\gsync_stage[2].rd_stg_inst_n_3 }));
  ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49 \gsync_stage[2].wr_stg_inst 
       (.D(p_2_out),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .out(p_0_out_1),
        .phy_rx_clk(phy_rx_clk),
        .\rd_pntr_bin_reg[2] ({\gsync_stage[2].wr_stg_inst_n_1 ,\gsync_stage[2].wr_stg_inst_n_2 ,\gsync_stage[2].wr_stg_inst_n_3 }));
  LUT6 #(
    .INIT(64'hBAABAAAAAAAABAAB)) 
    ram_empty_i_i_1
       (.I0(ram_empty_i_i_2_n_0),
        .I1(ram_empty_i_i_3_n_0),
        .I2(p_1_out[2]),
        .I3(Q[2]),
        .I4(p_1_out[3]),
        .I5(Q[3]),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h2002000000002002)) 
    ram_empty_i_i_2
       (.I0(E),
        .I1(ram_empty_i_i_4_n_0),
        .I2(p_1_out[1]),
        .I3(\gc0.count_reg[3] [1]),
        .I4(p_1_out[0]),
        .I5(\gc0.count_reg[3] [0]),
        .O(ram_empty_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_empty_i_i_3
       (.I0(p_1_out[0]),
        .I1(Q[0]),
        .I2(p_1_out[1]),
        .I3(Q[1]),
        .O(ram_empty_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ram_empty_i_i_4
       (.I0(p_1_out[2]),
        .I1(\gc0.count_reg[3] [2]),
        .I2(p_1_out[3]),
        .I3(\gc0.count_reg[3] [3]),
        .O(ram_empty_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_fb_i_i_1
       (.I0(ram_full_fb_i_i_2_n_0),
        .I1(ram_full_i_reg_0),
        .I2(\gic0.gc0.count_d1_reg[3] [3]),
        .I3(ram_full_i_reg),
        .I4(rst_full_gen_i),
        .I5(ram_full_fb_i_i_4_n_0),
        .O(ram_full_i));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_fb_i_i_2
       (.I0(p_0_out[2]),
        .I1(\gic0.gc0.count_reg[2] [2]),
        .I2(p_0_out[1]),
        .I3(\gic0.gc0.count_reg[2] [1]),
        .I4(\gic0.gc0.count_reg[2] [0]),
        .I5(p_0_out[0]),
        .O(ram_full_fb_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_fb_i_i_4
       (.I0(p_0_out[2]),
        .I1(\gic0.gc0.count_d1_reg[3] [2]),
        .I2(p_0_out[1]),
        .I3(\gic0.gc0.count_d1_reg[3] [1]),
        .I4(\gic0.gc0.count_d1_reg[3] [0]),
        .I5(p_0_out[0]),
        .O(ram_full_fb_i_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[0] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(p_0_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[1] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(p_0_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[2] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(p_0_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_bin_reg[3] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_out_1),
        .Q(ram_full_i_reg));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_pntr_gc_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gsync_stage[2].rd_stg_inst_n_3 ),
        .Q(p_1_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gsync_stage[2].rd_stg_inst_n_2 ),
        .Q(p_1_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_in0),
        .Q(p_1_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_1_out_0),
        .Q(p_1_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [0]),
        .I1(\gic0.gc0.count_d2_reg[3] [1]),
        .O(p_0_in2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [1]),
        .I1(\gic0.gc0.count_d2_reg[3] [2]),
        .O(p_0_in2_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[3] [2]),
        .I1(\gic0.gc0.count_d2_reg[3] [3]),
        .O(p_0_in2_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[0] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[1] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[2] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(p_0_in2_out[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_pntr_gc_reg[3] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(\gic0.gc0.count_d2_reg[3] [3]),
        .Q(wr_pntr_gc[3]));
endmodule

(* ORIG_REF_NAME = "cntr5bit" *) 
module ntps_top_axi_ethernetlite_0_0_cntr5bit
   (ifgp1_zero,
    Q,
    s_axi_aresetn,
    s_axi_aclk,
    D,
    \thisState_reg[1] ,
    \thisState_reg[1]_0 ,
    E);
  output ifgp1_zero;
  output [1:0]Q;
  input s_axi_aresetn;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\thisState_reg[1] ;
  input \thisState_reg[1]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg__0;
  wire ifgp1_zero;
  wire [4:2]p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]\thisState_reg[1] ;
  wire \thisState_reg[1]_0 ;
  wire zero_i_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
    \count[0]_i_2__0 
       (.I0(\thisState_reg[1]_0 ),
        .I1(count_reg__0[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count_reg__0[1]),
        .I5(count_reg__0[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFE01FE01FE010000)) 
    \count[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .I4(\thisState_reg[1] [0]),
        .I5(\thisState_reg[1] [1]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hE1E1E100)) 
    \count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg__0[2]),
        .I3(\thisState_reg[1] [0]),
        .I4(\thisState_reg[1] [1]),
        .O(p_0_in[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(count_reg__0[0]),
        .S(s_axi_aresetn));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(count_reg__0[1]),
        .S(s_axi_aresetn));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .S(s_axi_aresetn));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(s_axi_aresetn));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(s_axi_aresetn));
  LUT5 #(
    .INIT(32'h00000004)) 
    zero_i_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .I4(count_reg__0[0]),
        .O(zero_i_i_1_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1_n_0),
        .Q(ifgp1_zero),
        .S(s_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "cntr5bit" *) 
module ntps_top_axi_ethernetlite_0_0_cntr5bit_29
   (ifgp2_zero,
    Q,
    s_axi_aresetn,
    s_axi_aclk,
    D,
    \thisState_reg[1] ,
    \thisState_reg[1]_0 ,
    E);
  output ifgp2_zero;
  output [1:0]Q;
  input s_axi_aresetn;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\thisState_reg[1] ;
  input \thisState_reg[1]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg__0;
  wire ifgp2_zero;
  wire [4:2]p_0_in__0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]\thisState_reg[1] ;
  wire \thisState_reg[1]_0 ;
  wire zero_i_i_1__0_n_0;

  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \count[0]_i_2 
       (.I0(count_reg__0[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(count_reg__0[1]),
        .I4(count_reg__0[0]),
        .I5(\thisState_reg[1]_0 ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFF11111111F)) 
    \count[1]_i_1 
       (.I0(\thisState_reg[1] [0]),
        .I1(\thisState_reg[1] [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(count_reg__0[2]),
        .I5(count_reg__0[1]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hE1E1E100)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg__0[2]),
        .I3(\thisState_reg[1] [0]),
        .I4(\thisState_reg[1] [1]),
        .O(p_0_in__0[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(count_reg__0[0]),
        .S(s_axi_aresetn));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(count_reg__0[1]),
        .S(s_axi_aresetn));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(count_reg__0[2]),
        .S(s_axi_aresetn));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(s_axi_aresetn));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(s_axi_aresetn));
  LUT5 #(
    .INIT(32'h00000004)) 
    zero_i_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .I4(count_reg__0[0]),
        .O(zero_i_i_1__0_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1__0_n_0),
        .Q(ifgp2_zero),
        .S(s_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "crcgenrx" *) 
module ntps_top_axi_ethernetlite_0_0_crcgenrx
   (crcokdelay,
    crcokdelay_0,
    Q,
    Q7_in,
    s_axi_aresetn,
    D,
    \gpr1.dout_i_reg[5] ,
    SS,
    E,
    s_axi_aclk);
  output crcokdelay;
  output crcokdelay_0;
  output [10:0]Q;
  input Q7_in;
  input s_axi_aresetn;
  input [7:0]D;
  input [3:0]\gpr1.dout_i_reg[5] ;
  input [0:0]SS;
  input [0:0]E;
  input s_axi_aclk;

  wire [7:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire Q7_in;
  wire [0:0]SS;
  wire \crc_local_reg_n_0_[27] ;
  wire crcokdelay;
  wire crcokdelay_0;
  wire crcokdelay_i_4_n_0;
  wire crcokdelay_i_5_n_0;
  wire crcokdelay_i_6_n_0;
  wire crcokdelay_i_7_n_0;
  wire crcokdelay_i_8_n_0;
  wire crcokdelay_i_9_n_0;
  wire [3:0]\gpr1.dout_i_reg[5] ;
  wire p_11_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_19_in;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_30_in;
  wire p_5_in;
  wire p_8_in;
  wire [29:1]parallel_crc;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[12]_i_1 
       (.I0(p_11_in),
        .I1(Q[9]),
        .I2(\gpr1.dout_i_reg[5] [1]),
        .I3(Q[8]),
        .I4(\gpr1.dout_i_reg[5] [2]),
        .I5(D[0]),
        .O(parallel_crc[12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[14]_i_1 
       (.I0(p_13_in),
        .I1(\gpr1.dout_i_reg[5] [1]),
        .I2(Q[9]),
        .I3(\gpr1.dout_i_reg[5] [0]),
        .I4(Q[10]),
        .O(parallel_crc[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[15]_i_1 
       (.I0(p_19_in),
        .I1(Q[10]),
        .I2(\gpr1.dout_i_reg[5] [0]),
        .O(parallel_crc[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[16]_i_1 
       (.I0(p_20_in),
        .I1(Q[7]),
        .I2(\gpr1.dout_i_reg[5] [3]),
        .O(parallel_crc[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[17]_i_1 
       (.I0(p_21_in),
        .I1(Q[8]),
        .I2(\gpr1.dout_i_reg[5] [2]),
        .O(parallel_crc[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[18]_i_1 
       (.I0(p_22_in),
        .I1(Q[9]),
        .I2(\gpr1.dout_i_reg[5] [1]),
        .O(parallel_crc[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[19]_i_1 
       (.I0(p_23_in),
        .I1(Q[10]),
        .I2(\gpr1.dout_i_reg[5] [0]),
        .O(parallel_crc[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_local[1]_i_1 
       (.I0(Q[7]),
        .I1(\gpr1.dout_i_reg[5] [3]),
        .I2(Q[8]),
        .I3(\gpr1.dout_i_reg[5] [2]),
        .O(parallel_crc[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[22]_i_1 
       (.I0(p_24_in),
        .I1(Q[7]),
        .I2(\gpr1.dout_i_reg[5] [3]),
        .O(parallel_crc[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[23]_i_1 
       (.I0(p_14_in),
        .I1(\gpr1.dout_i_reg[5] [2]),
        .I2(Q[8]),
        .I3(\gpr1.dout_i_reg[5] [3]),
        .I4(Q[7]),
        .O(parallel_crc[23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[24]_i_1 
       (.I0(p_15_in),
        .I1(\gpr1.dout_i_reg[5] [2]),
        .I2(Q[8]),
        .I3(\gpr1.dout_i_reg[5] [1]),
        .I4(Q[9]),
        .O(parallel_crc[24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[25]_i_1 
       (.I0(p_16_in),
        .I1(\gpr1.dout_i_reg[5] [1]),
        .I2(Q[9]),
        .I3(\gpr1.dout_i_reg[5] [0]),
        .I4(Q[10]),
        .O(parallel_crc[25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[26]_i_1 
       (.I0(p_17_in),
        .I1(\gpr1.dout_i_reg[5] [0]),
        .I2(Q[10]),
        .I3(\gpr1.dout_i_reg[5] [3]),
        .I4(Q[7]),
        .O(parallel_crc[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[27]_i_1 
       (.I0(p_25_in),
        .I1(Q[8]),
        .I2(\gpr1.dout_i_reg[5] [2]),
        .O(parallel_crc[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[28]_i_1 
       (.I0(p_26_in),
        .I1(Q[9]),
        .I2(\gpr1.dout_i_reg[5] [1]),
        .O(parallel_crc[28]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[29]_i_1 
       (.I0(p_27_in),
        .I1(Q[10]),
        .I2(\gpr1.dout_i_reg[5] [0]),
        .O(parallel_crc[29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[2]_i_1 
       (.I0(Q[7]),
        .I1(\gpr1.dout_i_reg[5] [3]),
        .I2(\gpr1.dout_i_reg[5] [2]),
        .I3(Q[8]),
        .I4(\gpr1.dout_i_reg[5] [1]),
        .I5(Q[9]),
        .O(parallel_crc[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[3]_i_1 
       (.I0(Q[8]),
        .I1(\gpr1.dout_i_reg[5] [2]),
        .I2(\gpr1.dout_i_reg[5] [1]),
        .I3(Q[9]),
        .I4(\gpr1.dout_i_reg[5] [0]),
        .I5(Q[10]),
        .O(parallel_crc[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[6]_i_1 
       (.I0(p_5_in),
        .I1(\gpr1.dout_i_reg[5] [2]),
        .I2(Q[8]),
        .I3(\gpr1.dout_i_reg[5] [1]),
        .I4(Q[9]),
        .O(parallel_crc[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[9]_i_1 
       (.I0(p_8_in),
        .I1(\gpr1.dout_i_reg[5] [2]),
        .I2(Q[8]),
        .I3(\gpr1.dout_i_reg[5] [1]),
        .I4(Q[9]),
        .O(parallel_crc[9]));
  FDSE \crc_local_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \crc_local_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(p_13_in),
        .S(SS));
  FDSE \crc_local_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(p_19_in),
        .S(SS));
  FDSE \crc_local_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[12]),
        .Q(p_20_in),
        .S(SS));
  FDSE \crc_local_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(p_21_in),
        .S(SS));
  FDSE \crc_local_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[14]),
        .Q(p_22_in),
        .S(SS));
  FDSE \crc_local_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[15]),
        .Q(p_23_in),
        .S(SS));
  FDSE \crc_local_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[16]),
        .Q(p_28_in),
        .S(SS));
  FDSE \crc_local_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[17]),
        .Q(p_29_in),
        .S(SS));
  FDSE \crc_local_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[18]),
        .Q(p_24_in),
        .S(SS));
  FDSE \crc_local_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[19]),
        .Q(p_14_in),
        .S(SS));
  FDSE \crc_local_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \crc_local_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_28_in),
        .Q(p_15_in),
        .S(SS));
  FDSE \crc_local_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_29_in),
        .Q(p_16_in),
        .S(SS));
  FDSE \crc_local_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[22]),
        .Q(p_17_in),
        .S(SS));
  FDSE \crc_local_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[23]),
        .Q(p_25_in),
        .S(SS));
  FDSE \crc_local_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[24]),
        .Q(p_26_in),
        .S(SS));
  FDSE \crc_local_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[25]),
        .Q(p_27_in),
        .S(SS));
  FDSE \crc_local_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[26]),
        .Q(p_30_in),
        .S(SS));
  FDSE \crc_local_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[27]),
        .Q(\crc_local_reg_n_0_[27] ),
        .S(SS));
  FDSE \crc_local_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[28]),
        .Q(Q[7]),
        .S(SS));
  FDSE \crc_local_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[29]),
        .Q(Q[8]),
        .S(SS));
  FDSE \crc_local_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[2]),
        .Q(p_5_in),
        .S(SS));
  FDSE \crc_local_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_30_in),
        .Q(Q[9]),
        .S(SS));
  FDSE \crc_local_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\crc_local_reg_n_0_[27] ),
        .Q(Q[10]),
        .S(SS));
  FDSE \crc_local_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[3]),
        .Q(Q[2]),
        .S(SS));
  FDSE \crc_local_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[3]),
        .S(SS));
  FDSE \crc_local_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(p_8_in),
        .S(SS));
  FDSE \crc_local_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[6]),
        .Q(Q[4]),
        .S(SS));
  FDSE \crc_local_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[5]),
        .S(SS));
  FDSE \crc_local_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(p_11_in),
        .S(SS));
  FDSE \crc_local_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[9]),
        .Q(Q[6]),
        .S(SS));
  LUT3 #(
    .INIT(8'h4F)) 
    crcokdelay_i_1
       (.I0(crcokdelay_0),
        .I1(Q7_in),
        .I2(s_axi_aresetn),
        .O(crcokdelay));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    crcokdelay_i_3
       (.I0(crcokdelay_i_4_n_0),
        .I1(crcokdelay_i_5_n_0),
        .I2(crcokdelay_i_6_n_0),
        .I3(crcokdelay_i_7_n_0),
        .I4(crcokdelay_i_8_n_0),
        .I5(crcokdelay_i_9_n_0),
        .O(crcokdelay_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    crcokdelay_i_4
       (.I0(p_28_in),
        .I1(Q[6]),
        .I2(p_5_in),
        .I3(Q[5]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(crcokdelay_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    crcokdelay_i_5
       (.I0(p_21_in),
        .I1(p_29_in),
        .O(crcokdelay_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    crcokdelay_i_6
       (.I0(p_11_in),
        .I1(Q[4]),
        .I2(p_20_in),
        .I3(p_22_in),
        .I4(p_8_in),
        .I5(p_13_in),
        .O(crcokdelay_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    crcokdelay_i_7
       (.I0(p_23_in),
        .I1(p_19_in),
        .I2(p_24_in),
        .I3(p_26_in),
        .I4(p_27_in),
        .I5(p_30_in),
        .O(crcokdelay_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    crcokdelay_i_8
       (.I0(p_16_in),
        .I1(p_15_in),
        .I2(Q[8]),
        .I3(p_25_in),
        .I4(p_14_in),
        .I5(p_17_in),
        .O(crcokdelay_i_8_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    crcokdelay_i_9
       (.I0(\crc_local_reg_n_0_[27] ),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(crcokdelay_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "crcgentx" *) 
module ntps_top_axi_ethernetlite_0_0_crcgentx
   (Q,
    \emac_tx_wr_data_d1_reg[3] ,
    \emac_tx_wr_data_d1_reg[0] ,
    txCrcEn_reg,
    enblCRC,
    SR,
    E,
    s_axi_aclk);
  output [2:0]Q;
  output \emac_tx_wr_data_d1_reg[3] ;
  input [3:0]\emac_tx_wr_data_d1_reg[0] ;
  input txCrcEn_reg;
  input enblCRC;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire enblCRC;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  ntps_top_axi_ethernetlite_0_0_crcnibshiftreg NSR
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .\emac_tx_wr_data_d1_reg[3] (\emac_tx_wr_data_d1_reg[3] ),
        .enblCRC(enblCRC),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
endmodule

(* ORIG_REF_NAME = "crcnibshiftreg" *) 
module ntps_top_axi_ethernetlite_0_0_crcnibshiftreg
   (Q,
    \emac_tx_wr_data_d1_reg[3] ,
    \emac_tx_wr_data_d1_reg[0] ,
    txCrcEn_reg,
    enblCRC,
    SR,
    E,
    s_axi_aclk);
  output [2:0]Q;
  output \emac_tx_wr_data_d1_reg[3] ;
  input [3:0]\emac_tx_wr_data_d1_reg[0] ;
  input txCrcEn_reg;
  input enblCRC;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire enblCRC;
  wire [19:19]mux_in_data;
  wire \nibData[12]_i_1_n_0 ;
  wire \nibData[13]_i_1_n_0 ;
  wire \nibData[14]_i_1_n_0 ;
  wire \nibData[15]_i_1_n_0 ;
  wire \nibData[16]_i_1_n_0 ;
  wire \nibData[17]_i_1_n_0 ;
  wire \nibData[18]_i_1_n_0 ;
  wire \nibData[19]_i_1_n_0 ;
  wire \nibData[20]_i_1_n_0 ;
  wire \nibData[21]_i_1_n_0 ;
  wire \nibData[22]_i_1_n_0 ;
  wire \nibData[23]_i_1_n_0 ;
  wire \nibData[24]_i_1_n_0 ;
  wire \nibData[25]_i_1_n_0 ;
  wire \nibData[26]_i_1_n_0 ;
  wire \nibData[26]_i_2_n_0 ;
  wire \nibData[27]_i_1_n_0 ;
  wire \nibData[27]_i_2_n_0 ;
  wire \nibData[28]_i_1_n_0 ;
  wire \nibData[28]_i_2_n_0 ;
  wire \nibData[29]_i_1_n_0 ;
  wire \nibData[29]_i_2_n_0 ;
  wire \nibData[2]_i_1_n_0 ;
  wire \nibData[30]_i_1_n_0 ;
  wire \nibData[31]_i_3_n_0 ;
  wire \nibData[3]_i_1_n_0 ;
  wire \nibData[4]_i_1_n_0 ;
  wire \nibData[5]_i_1_n_0 ;
  wire \nibData[6]_i_1_n_0 ;
  wire \nibData[7]_i_1_n_0 ;
  wire \nibData[8]_i_1_n_0 ;
  wire \nibData[9]_i_1_n_0 ;
  wire \nibData_reg_n_0_[29] ;
  wire \nibData_reg_n_0_[30] ;
  wire \nibData_reg_n_0_[31] ;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(mux_in_data),
        .I1(enblCRC),
        .O(\emac_tx_wr_data_d1_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[12]_i_1 
       (.I0(p_15_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .O(\nibData[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[13]_i_1 
       (.I0(p_14_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [1]),
        .I2(Q[0]),
        .I3(txCrcEn_reg),
        .O(\nibData[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[14]_i_1 
       (.I0(p_13_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(txCrcEn_reg),
        .O(\nibData[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[15]_i_1 
       (.I0(p_12_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [3]),
        .I2(Q[2]),
        .I3(txCrcEn_reg),
        .O(\nibData[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[16]_i_1 
       (.I0(p_11_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .O(\nibData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[17]_i_1 
       (.I0(p_10_in),
        .I1(txCrcEn_reg),
        .I2(Q[0]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(mux_in_data),
        .I5(\emac_tx_wr_data_d1_reg[0] [0]),
        .O(\nibData[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[18]_i_1 
       (.I0(p_9_in),
        .I1(Q[1]),
        .I2(\emac_tx_wr_data_d1_reg[0] [2]),
        .I3(\nibData[27]_i_2_n_0 ),
        .I4(txCrcEn_reg),
        .O(\nibData[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[19]_i_1 
       (.I0(p_8_in),
        .I1(\nibData[26]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(txCrcEn_reg),
        .O(\nibData[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[20]_i_1 
       (.I0(p_7_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[21]_i_1 
       (.I0(p_6_in),
        .I1(\nibData[27]_i_2_n_0 ),
        .I2(\emac_tx_wr_data_d1_reg[0] [3]),
        .I3(Q[2]),
        .I4(txCrcEn_reg),
        .O(\nibData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \nibData[22]_i_1 
       (.I0(p_5_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(Q[0]),
        .I5(txCrcEn_reg),
        .O(\nibData[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[23]_i_1 
       (.I0(p_4_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[24]_i_1 
       (.I0(p_3_in),
        .I1(\nibData[27]_i_2_n_0 ),
        .I2(\emac_tx_wr_data_d1_reg[0] [3]),
        .I3(Q[2]),
        .I4(txCrcEn_reg),
        .O(\nibData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \nibData[25]_i_1 
       (.I0(\nibData_reg_n_0_[29] ),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(Q[0]),
        .I5(txCrcEn_reg),
        .O(\nibData[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[26]_i_1 
       (.I0(\nibData_reg_n_0_[30] ),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[26]_i_2 
       (.I0(Q[2]),
        .I1(\emac_tx_wr_data_d1_reg[0] [3]),
        .I2(Q[1]),
        .I3(\emac_tx_wr_data_d1_reg[0] [2]),
        .O(\nibData[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[27]_i_1 
       (.I0(\nibData_reg_n_0_[31] ),
        .I1(\nibData[27]_i_2_n_0 ),
        .I2(\emac_tx_wr_data_d1_reg[0] [3]),
        .I3(Q[2]),
        .I4(txCrcEn_reg),
        .O(\nibData[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[27]_i_2 
       (.I0(Q[0]),
        .I1(\emac_tx_wr_data_d1_reg[0] [1]),
        .I2(mux_in_data),
        .I3(\emac_tx_wr_data_d1_reg[0] [0]),
        .O(\nibData[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    \nibData[28]_i_1 
       (.I0(\nibData[28]_i_2_n_0 ),
        .I1(mux_in_data),
        .I2(\emac_tx_wr_data_d1_reg[0] [0]),
        .I3(\emac_tx_wr_data_d1_reg[0] [2]),
        .I4(Q[1]),
        .I5(txCrcEn_reg),
        .O(\nibData[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nibData[28]_i_2 
       (.I0(\emac_tx_wr_data_d1_reg[0] [1]),
        .I1(Q[0]),
        .O(\nibData[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    \nibData[29]_i_1 
       (.I0(\emac_tx_wr_data_d1_reg[0] [1]),
        .I1(Q[0]),
        .I2(\nibData[29]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\emac_tx_wr_data_d1_reg[0] [2]),
        .I5(txCrcEn_reg),
        .O(\nibData[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nibData[29]_i_2 
       (.I0(\emac_tx_wr_data_d1_reg[0] [3]),
        .I1(Q[2]),
        .O(\nibData[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[2]_i_1 
       (.I0(p_25_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [0]),
        .I2(mux_in_data),
        .I3(txCrcEn_reg),
        .O(\nibData[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \nibData[30]_i_1 
       (.I0(txCrcEn_reg),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(\emac_tx_wr_data_d1_reg[0] [3]),
        .I4(Q[2]),
        .O(\nibData[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \nibData[31]_i_3 
       (.I0(Q[2]),
        .I1(\emac_tx_wr_data_d1_reg[0] [3]),
        .I2(txCrcEn_reg),
        .O(\nibData[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[3]_i_1 
       (.I0(p_24_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [1]),
        .I2(Q[0]),
        .I3(txCrcEn_reg),
        .O(\nibData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[4]_i_1 
       (.I0(p_23_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(txCrcEn_reg),
        .O(\nibData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[5]_i_1 
       (.I0(p_22_in),
        .I1(txCrcEn_reg),
        .I2(\emac_tx_wr_data_d1_reg[0] [0]),
        .I3(mux_in_data),
        .I4(Q[2]),
        .I5(\emac_tx_wr_data_d1_reg[0] [3]),
        .O(\nibData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[6]_i_1 
       (.I0(p_21_in),
        .I1(txCrcEn_reg),
        .I2(Q[0]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(mux_in_data),
        .I5(\emac_tx_wr_data_d1_reg[0] [0]),
        .O(\nibData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \nibData[7]_i_1 
       (.I0(p_20_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [2]),
        .I2(Q[1]),
        .I3(\emac_tx_wr_data_d1_reg[0] [1]),
        .I4(Q[0]),
        .I5(txCrcEn_reg),
        .O(\nibData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[8]_i_1 
       (.I0(p_19_in),
        .I1(txCrcEn_reg),
        .I2(Q[2]),
        .I3(\emac_tx_wr_data_d1_reg[0] [3]),
        .I4(Q[1]),
        .I5(\emac_tx_wr_data_d1_reg[0] [2]),
        .O(\nibData[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[9]_i_1 
       (.I0(p_18_in),
        .I1(\emac_tx_wr_data_d1_reg[0] [3]),
        .I2(Q[2]),
        .I3(txCrcEn_reg),
        .O(\nibData[9]_i_1_n_0 ));
  FDRE \nibData_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_27_in),
        .Q(mux_in_data),
        .R(SR));
  FDRE \nibData_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_17_in),
        .Q(p_21_in),
        .R(SR));
  FDRE \nibData_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_16_in),
        .Q(p_20_in),
        .R(SR));
  FDRE \nibData_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[12]_i_1_n_0 ),
        .Q(p_19_in),
        .R(SR));
  FDRE \nibData_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[13]_i_1_n_0 ),
        .Q(p_18_in),
        .R(SR));
  FDRE \nibData_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[14]_i_1_n_0 ),
        .Q(p_17_in),
        .R(SR));
  FDRE \nibData_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[15]_i_1_n_0 ),
        .Q(p_16_in),
        .R(SR));
  FDRE \nibData_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[16]_i_1_n_0 ),
        .Q(p_15_in),
        .R(SR));
  FDRE \nibData_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[17]_i_1_n_0 ),
        .Q(p_14_in),
        .R(SR));
  FDRE \nibData_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[18]_i_1_n_0 ),
        .Q(p_13_in),
        .R(SR));
  FDRE \nibData_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[19]_i_1_n_0 ),
        .Q(p_12_in),
        .R(SR));
  FDRE \nibData_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_26_in),
        .Q(Q[0]),
        .R(SR));
  FDRE \nibData_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[20]_i_1_n_0 ),
        .Q(p_11_in),
        .R(SR));
  FDRE \nibData_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[21]_i_1_n_0 ),
        .Q(p_10_in),
        .R(SR));
  FDRE \nibData_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[22]_i_1_n_0 ),
        .Q(p_9_in),
        .R(SR));
  FDRE \nibData_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[23]_i_1_n_0 ),
        .Q(p_8_in),
        .R(SR));
  FDRE \nibData_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[24]_i_1_n_0 ),
        .Q(p_7_in),
        .R(SR));
  FDRE \nibData_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[25]_i_1_n_0 ),
        .Q(p_6_in),
        .R(SR));
  FDRE \nibData_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[26]_i_1_n_0 ),
        .Q(p_5_in),
        .R(SR));
  FDRE \nibData_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[27]_i_1_n_0 ),
        .Q(p_4_in),
        .R(SR));
  FDRE \nibData_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[28]_i_1_n_0 ),
        .Q(p_3_in),
        .R(SR));
  FDRE \nibData_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[29]_i_1_n_0 ),
        .Q(\nibData_reg_n_0_[29] ),
        .R(SR));
  FDRE \nibData_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \nibData_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[30]_i_1_n_0 ),
        .Q(\nibData_reg_n_0_[30] ),
        .R(SR));
  FDRE \nibData_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[31]_i_3_n_0 ),
        .Q(\nibData_reg_n_0_[31] ),
        .R(SR));
  FDRE \nibData_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \nibData_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[4]_i_1_n_0 ),
        .Q(p_27_in),
        .R(SR));
  FDRE \nibData_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[5]_i_1_n_0 ),
        .Q(p_26_in),
        .R(SR));
  FDRE \nibData_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[6]_i_1_n_0 ),
        .Q(p_25_in),
        .R(SR));
  FDRE \nibData_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[7]_i_1_n_0 ),
        .Q(p_24_in),
        .R(SR));
  FDRE \nibData_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[8]_i_1_n_0 ),
        .Q(p_23_in),
        .R(SR));
  FDRE \nibData_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[9]_i_1_n_0 ),
        .Q(p_22_in),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "defer_state" *) 
module ntps_top_axi_ethernetlite_0_0_defer_state
   (Q,
    E,
    \count_reg[0] ,
    D,
    \count_reg[3] ,
    \count_reg[0]_0 ,
    ifgp1_zero,
    ifgp2_zero,
    STATE17A,
    C_SENSE_SYNC_2,
    tx_clk_reg_d3,
    tx_clk_reg_d2,
    \count_reg[3]_0 ,
    \count_reg[3]_1 ,
    s_axi_aresetn,
    s_axi_aclk);
  output [1:0]Q;
  output [0:0]E;
  output [0:0]\count_reg[0] ;
  output [1:0]D;
  output [1:0]\count_reg[3] ;
  output \count_reg[0]_0 ;
  input ifgp1_zero;
  input ifgp2_zero;
  input STATE17A;
  input C_SENSE_SYNC_2;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;
  input [1:0]\count_reg[3]_0 ;
  input [1:0]\count_reg[3]_1 ;
  input s_axi_aresetn;
  input s_axi_aclk;

  wire C_SENSE_SYNC_2;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire STATE17A;
  wire [0:0]\count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire [1:0]\count_reg[3] ;
  wire [1:0]\count_reg[3]_0 ;
  wire [1:0]\count_reg[3]_1 ;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \thisState[0]_i_1_n_0 ;
  wire \thisState[1]_i_1_n_0 ;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;

  LUT6 #(
    .INIT(64'h000004000400FFFF)) 
    \count[0]_i_1 
       (.I0(ifgp2_zero),
        .I1(ifgp1_zero),
        .I2(tx_clk_reg_d3),
        .I3(tx_clk_reg_d2),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h001010FF)) 
    \count[0]_i_1__0 
       (.I0(ifgp1_zero),
        .I1(tx_clk_reg_d3),
        .I2(tx_clk_reg_d2),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \count[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_reg[3]_0 [1]),
        .I3(\count_reg[3]_0 [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    \count[3]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_reg[3]_1 [1]),
        .I3(\count_reg[3]_1 [0]),
        .O(\count_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \count[4]_i_1 
       (.I0(\count_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \count[4]_i_1__0 
       (.I0(\count_reg[3]_1 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_reg[3] [0]));
  LUT6 #(
    .INIT(64'h05C105C0F5C105C0)) 
    \thisState[0]_i_1 
       (.I0(ifgp1_zero),
        .I1(ifgp2_zero),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(STATE17A),
        .I5(C_SENSE_SYNC_2),
        .O(\thisState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h44FFF000)) 
    \thisState[1]_i_1 
       (.I0(C_SENSE_SYNC_2),
        .I1(STATE17A),
        .I2(ifgp1_zero),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\thisState[1]_i_1_n_0 ));
  FDRE \thisState_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\thisState[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(s_axi_aresetn));
  FDRE \thisState_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\thisState[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(s_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "deferral" *) 
module ntps_top_axi_ethernetlite_0_0_deferral
   (Q,
    s_axi_aresetn,
    s_axi_aclk,
    STATE17A,
    C_SENSE_SYNC_2,
    tx_clk_reg_d3,
    tx_clk_reg_d2);
  output [1:0]Q;
  input s_axi_aresetn;
  input s_axi_aclk;
  input STATE17A;
  input C_SENSE_SYNC_2;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;

  wire C_SENSE_SYNC_2;
  wire [1:0]Q;
  wire STATE17A;
  wire [3:4]count_reg__0;
  wire [3:4]count_reg__0_0;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire inst_deferral_state_n_2;
  wire inst_deferral_state_n_3;
  wire inst_deferral_state_n_8;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;

  ntps_top_axi_ethernetlite_0_0_defer_state inst_deferral_state
       (.C_SENSE_SYNC_2(C_SENSE_SYNC_2),
        .D(p_0_in__0),
        .E(inst_deferral_state_n_2),
        .Q(Q),
        .STATE17A(STATE17A),
        .\count_reg[0] (inst_deferral_state_n_3),
        .\count_reg[0]_0 (inst_deferral_state_n_8),
        .\count_reg[3] (p_0_in),
        .\count_reg[3]_0 ({count_reg__0_0[3],count_reg__0_0[4]}),
        .\count_reg[3]_1 ({count_reg__0[3],count_reg__0[4]}),
        .ifgp1_zero(ifgp1_zero),
        .ifgp2_zero(ifgp2_zero),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3));
  ntps_top_axi_ethernetlite_0_0_cntr5bit inst_ifgp1_count
       (.D(p_0_in),
        .E(inst_deferral_state_n_3),
        .Q({count_reg__0[3],count_reg__0[4]}),
        .ifgp1_zero(ifgp1_zero),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\thisState_reg[1] (Q),
        .\thisState_reg[1]_0 (inst_deferral_state_n_8));
  ntps_top_axi_ethernetlite_0_0_cntr5bit_29 inst_ifgp2_count
       (.D(p_0_in__0),
        .E(inst_deferral_state_n_2),
        .Q({count_reg__0_0[3],count_reg__0_0[4]}),
        .ifgp2_zero(ifgp2_zero),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\thisState_reg[1] (Q),
        .\thisState_reg[1]_0 (inst_deferral_state_n_8));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module ntps_top_axi_ethernetlite_0_0_dmem
   (\txNibbleCnt_pad_reg[0] ,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    E,
    DIA,
    D,
    \gc0.count_d1_reg[3] ,
    \gic0.gc0.count_d2_reg[3] ,
    Q,
    axi_phy_tx_en_i_p,
    fifo_tx_en_reg,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output \txNibbleCnt_pad_reg[0] ;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input [11:0]Q;
  input axi_phy_tx_en_i_p;
  input [0:0]fifo_tx_en_reg;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [3:0]D;
  wire [0:0]DIA;
  wire [0:0]E;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire RAM_reg_0_15_0_5_n_0;
  wire axi_phy_tx_en_i_p;
  wire [0:0]fifo_tx_en_reg;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gpr1.dout_i_reg_n_0_[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire [5:0]p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0 ),
        .I1(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ),
        .O(\txNibbleCnt_pad_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[0]),
        .I5(Q[10]),
        .O(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4 
       (.I0(Q[11]),
        .I1(Q[7]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[9]),
        .O(\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(axi_phy_tx_en_i_p),
        .I1(\gpr1.dout_i_reg_n_0_[0] ),
        .O(phy_tx_en_i));
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,\gic0.gc0.count_d2_reg[3] }),
        .DIA({1'b0,DIA}),
        .DIB(D[1:0]),
        .DIC(D[3:2]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_0_5_n_0,p_0_out[0]}),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(E));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(phy_tx_clk),
        .CE(fifo_tx_en_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[0]),
        .Q(\gpr1.dout_i_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(phy_tx_clk),
        .CE(fifo_tx_en_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[2]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(phy_tx_clk),
        .CE(fifo_tx_en_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[3]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(phy_tx_clk),
        .CE(fifo_tx_en_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[4]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(phy_tx_clk),
        .CE(fifo_tx_en_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[5]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to [3]));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module ntps_top_axi_ethernetlite_0_0_dmem_41
   (SR,
    Q,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    \rdDestAddrNib_D_t_q_reg[3] ,
    D,
    busFifoData_is_5_d1_reg,
    phy_rx_clk,
    E,
    DIA,
    DIB,
    DIC,
    \gc0.count_d1_reg[3] ,
    \gic0.gc0.count_d2_reg[3] ,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    \gv.ram_valid_d1_reg ,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    ram_empty_i_reg,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a,
    \crc_local_reg[31] ,
    ram_empty_fb_i_reg,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output [0:0]SR;
  output [5:0]Q;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input phy_rx_clk;
  input [0:0]E;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input \gv.ram_valid_d1_reg ;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input ram_empty_i_reg;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a;
  input [10:0]\crc_local_reg[31] ;
  input [0:0]ram_empty_fb_i_reg;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire \crc_local[13]_i_2_n_0 ;
  wire [10:0]\crc_local_reg[31] ;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gv.ram_valid_d1_reg ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire [5:0]p_0_out;
  wire phy_rx_clk;
  wire preamble;
  wire [0:0]ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state2a;
  wire state2a_i_2_n_0;
  wire state3a;
  wire state3a_i_2_n_0;
  wire state4a_i_2_n_0;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFBFBFBFBFBFFFBFB)) 
    \Mac_addr_ram_addr_rd[0]_i_1 
       (.I0(D17_out),
        .I1(s_axi_aresetn),
        .I2(state4a_i_2_n_0),
        .I3(Q[0]),
        .I4(Q3_in9_in),
        .I5(\gv.ram_valid_d1_reg ),
        .O(SR));
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRB({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRC({1'b0,\gc0.count_d1_reg[3] }),
        .ADDRD({1'b0,\gic0.gc0.count_d2_reg[3] }),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(phy_rx_clk),
        .WE(E));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    busFifoData_is_5_d1_i_1
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\gv.ram_valid_d1_reg ),
        .I5(busFifoData_is_5_d1),
        .O(busFifoData_is_5_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[0]_i_1 
       (.I0(Q[5]),
        .I1(\crc_local_reg[31] [7]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[10]_i_1 
       (.I0(Q[3]),
        .I1(\crc_local_reg[31] [9]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [4]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[11]_i_1 
       (.I0(Q[4]),
        .I1(\crc_local_reg[31] [8]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [5]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[13]_i_1 
       (.I0(Q[4]),
        .I1(\crc_local_reg[31] [8]),
        .I2(Q[3]),
        .I3(\crc_local_reg[31] [9]),
        .I4(\crc_local[13]_i_2_n_0 ),
        .I5(\crc_local_reg[31] [6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[13]_i_2 
       (.I0(Q[2]),
        .I1(\crc_local_reg[31] [10]),
        .O(\crc_local[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[4]_i_1 
       (.I0(Q[3]),
        .I1(\crc_local_reg[31] [9]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[5]_i_1 
       (.I0(Q[4]),
        .I1(\crc_local_reg[31] [8]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[7]_i_1 
       (.I0(Q[3]),
        .I1(\crc_local_reg[31] [9]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[8]_i_1 
       (.I0(Q[4]),
        .I1(\crc_local_reg[31] [8]),
        .I2(Q[2]),
        .I3(\crc_local_reg[31] [10]),
        .I4(D[0]),
        .I5(\crc_local_reg[31] [3]),
        .O(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(ram_empty_fb_i_reg),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(p_0_out[5]),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hF7000000)) 
    preamble_i_1
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(busFifoData_is_5_d1),
        .I4(rx_start),
        .O(preamble));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    state0a_i_2
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(state2a));
  LUT4 #(
    .INIT(16'h0705)) 
    state22a_i_2
       (.I0(Q[1]),
        .I1(ram_empty_i_reg),
        .I2(\rdDestAddrNib_D_t_q_reg[2] ),
        .I3(state0a),
        .O(\rdDestAddrNib_D_t_q_reg[3] ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    state2a_i_1
       (.I0(state2a_i_2_n_0),
        .I1(Q11_in),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(state3a),
        .I5(state2a),
        .O(D10_out));
  LUT6 #(
    .INIT(64'h0040000000400040)) 
    state2a_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\gv.ram_valid_d1_reg ),
        .I5(ram_empty_i_reg),
        .O(state2a_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000004404)) 
    state3a_i_1
       (.I0(Q[0]),
        .I1(Q11_in),
        .I2(ram_empty_i_reg),
        .I3(\gv.ram_valid_d1_reg ),
        .I4(Q[5]),
        .I5(state3a_i_2_n_0),
        .O(D20_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    state3a_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(state3a_i_2_n_0));
  LUT4 #(
    .INIT(16'hAABA)) 
    state4a_i_1
       (.I0(state4a_i_2_n_0),
        .I1(Q[0]),
        .I2(Q3_in9_in),
        .I3(\gv.ram_valid_d1_reg ),
        .O(D11_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    state4a_i_2
       (.I0(state2a),
        .I1(Q[5]),
        .I2(rx_start),
        .I3(busFifoData_is_5_d1),
        .O(state4a_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram
   (DOBDO,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    \reg_data_out_reg[31] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    reg_access_reg,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 );
  output [30:0]DOBDO;
  output [0:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input \reg_data_out_reg[31] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input reg_access_reg;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [0:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [30:0]DOBDO;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire reg_access_reg;
  wire \reg_data_out_reg[31] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18 dpram_blkmem
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOBDO(DOBDO),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[31] (\reg_data_out_reg[31] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram_1
   (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    D,
    \gv.ram_valid_d1_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \rxbuffer_addr_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    Q,
    s_axi_wdata,
    WEA,
    WEBWE,
    reg_access_reg,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[2] ,
    p_21_in,
    p_27_in165_in,
    p_33_in184_in,
    p_39_in204_in,
    p_45_in221_in,
    p_51_in,
    p_57_in257_in,
    p_63_in273_in,
    p_69_in,
    p_68_in290_in,
    p_75_in,
    p_74_in308_in,
    p_81_in330_in,
    p_80_in328_in,
    p_87_in351_in,
    p_86_in349_in,
    p_93_in,
    p_92_in370_in);
  output [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output [30:0]D;
  input \gv.ram_valid_d1_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]\rxbuffer_addr_reg[0] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [3:0]Q;
  input [31:0]s_axi_wdata;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input reg_access_reg;
  input \reg_data_out_reg[0] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  input [30:0]DOBDO;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input \reg_data_out_reg[1] ;
  input \reg_data_out_reg[2] ;
  input p_21_in;
  input p_27_in165_in;
  input p_33_in184_in;
  input p_39_in204_in;
  input p_45_in221_in;
  input p_51_in;
  input p_57_in257_in;
  input p_63_in273_in;
  input p_69_in;
  input p_68_in290_in;
  input p_75_in;
  input p_74_in308_in;
  input p_81_in330_in;
  input p_80_in328_in;
  input p_87_in351_in;
  input p_86_in349_in;
  input p_93_in;
  input p_92_in370_in;

  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire [30:0]D;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [30:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [30:0]DOBDO;
  wire [10:0]\MDIO_GEN.mdio_data_out_reg[10] ;
  wire [3:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire \gv.ram_valid_d1_reg ;
  wire p_21_in;
  wire p_27_in165_in;
  wire p_33_in184_in;
  wire p_39_in204_in;
  wire p_45_in221_in;
  wire p_51_in;
  wire p_57_in257_in;
  wire p_63_in273_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire reg_access_reg;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire [11:0]\rxbuffer_addr_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11 dpram_blkmem
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .DOBDO(DOBDO),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10] ),
        .Q(Q),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access_reg),
        .\reg_data_out_reg[0] (\reg_data_out_reg[0] ),
        .\reg_data_out_reg[1] (\reg_data_out_reg[1] ),
        .\reg_data_out_reg[2] (\reg_data_out_reg[2] ),
        .\rxbuffer_addr_reg[0] (\rxbuffer_addr_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram_2
   (DOADO,
    DOBDO,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE,
    tx_idle,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram );
  output [3:0]DOADO;
  output [31:0]DOBDO;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input tx_idle;
  input \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]DOADO;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire [0:0]WEBWE;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire tx_idle;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4 dpram_blkmem
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram_3
   (\emac_tx_wr_data_d1_reg[0] ,
    DOBDO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    s_axi_aclk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    ADDRARDADDR,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ,
    s_axi_wdata,
    WEBWE);
  output [3:0]\emac_tx_wr_data_d1_reg[0] ;
  output [31:0]DOBDO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input s_axi_aclk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [11:0]ADDRARDADDR;
  input [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;

  wire [11:0]ADDRARDADDR;
  wire [8:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [31:0]DOBDO;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire [0:0]WEBWE;
  wire [3:0]\emac_tx_wr_data_d1_reg[0] ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper dpram_blkmem
       (.ADDRARDADDR(ADDRARDADDR),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .DOBDO(DOBDO),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (\emac_tx_wr_data_d1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo
   (fifo_empty_i,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    txfifo_empty,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output fifo_empty_i;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire \gntv_or_sync_fifo.gcx.clkx_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_4 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_5 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire \gwas.wsts/ram_full_i ;
  wire p_0_out;
  wire [1:0]p_1_out;
  wire [3:0]p_20_out;
  wire [3:0]p_8_out;
  wire [3:0]p_9_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire ram_rd_en_i;
  wire [3:2]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_2;
  wire rstblk_n_3;
  wire rstblk_n_5;
  wire rstblk_n_6;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;
  wire [3:0]wr_pntr_plus2;

  ntps_top_axi_ethernetlite_0_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.D({\gntv_or_sync_fifo.gl0.rd_n_5 ,\gntv_or_sync_fifo.gl0.rd_n_6 ,\gntv_or_sync_fifo.gl0.rd_n_7 }),
        .E(E),
        .Q(wr_pntr_plus2),
        .\gc0.count_d1_reg[3] (p_20_out),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .\gic0.gc0.count_d1_reg[3] (p_8_out),
        .\gic0.gc0.count_d2_reg[3] (p_9_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (rstblk_n_3),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (rstblk_n_6),
        .phy_tx_clk(phy_tx_clk),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_1 ),
        .ram_empty_fb_i_reg_0(p_1_out),
        .ram_empty_fb_i_reg_1(\gntv_or_sync_fifo.gl0.rd_n_4 ),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.D({\gntv_or_sync_fifo.gl0.rd_n_5 ,\gntv_or_sync_fifo.gl0.rd_n_6 ,\gntv_or_sync_fifo.gl0.rd_n_7 }),
        .E(ram_rd_en_i),
        .Q(rstblk_n_2),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .\gc0.count_d1_reg[3] (rd_pntr_plus1),
        .phy_tx_clk(phy_tx_clk),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_4 ),
        .\rd_pntr_gc_reg[3] (p_20_out),
        .\wr_pntr_bin_reg[1] (p_1_out),
        .\wr_pntr_bin_reg[3] (\gntv_or_sync_fifo.gcx.clkx_n_1 ));
  ntps_top_axi_ethernetlite_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.D28_out(D28_out),
        .E(E),
        .Q(wr_pntr_plus2),
        .Q32_in(Q32_in),
        .STATE14A(STATE14A),
        .\gic0.gc0.count_d2_reg[3] (p_8_out),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (rstblk_n_5),
        .p_0_out(p_0_out),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_ff_i(rst_full_ff_i),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full),
        .\wr_pntr_gc_reg[3] (p_9_out));
  ntps_top_axi_ethernetlite_0_0_memory \gntv_or_sync_fifo.mem 
       (.D(D),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_tx_en_reg(ram_rd_en_i),
        .\gc0.count_d1_reg[3] (p_20_out),
        .\gic0.gc0.count_d2_reg[3] (p_9_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (rd_rst_i),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ));
  ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo rstblk
       (.Q({rstblk_n_2,rstblk_n_3,rd_rst_i}),
        .Rst0(Rst0),
        .\gic0.gc0.count_d2_reg[0] ({rstblk_n_5,rstblk_n_6}),
        .phy_tx_clk(phy_tx_clk),
        .rst_full_ff_i(rst_full_ff_i),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a_0,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    rst_s,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] );
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a_0;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input rst_s;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire RD_RST;
  wire RST;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_13 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_14 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire goto_readDestAdrNib1;
  wire \gwas.wsts/ram_full_i ;
  wire [3:3]p_0_out;
  wire p_18_out;
  wire [3:0]p_20_out;
  wire p_3_out;
  wire [3:0]p_8_out;
  wire [3:0]p_9_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire [3:0]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rst_s;
  wire rstblk_n_2;
  wire rstblk_n_6;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state2a;
  wire state3a;
  wire state4a;
  wire [2:0]wr_pntr_plus2;

  ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36 \gntv_or_sync_fifo.gcx.clkx 
       (.D({\gntv_or_sync_fifo.gl0.rd_n_12 ,\gntv_or_sync_fifo.gl0.rd_n_13 ,\gntv_or_sync_fifo.gl0.rd_n_14 }),
        .E(E),
        .Q(p_20_out),
        .\gc0.count_reg[3] (rd_pntr_plus1),
        .\gic0.gc0.count_d1_reg[3] (p_8_out),
        .\gic0.gc0.count_d2_reg[3] (p_9_out),
        .\gic0.gc0.count_reg[2] (wr_pntr_plus2),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (RD_RST),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] (rstblk_n_6),
        .phy_rx_clk(phy_rx_clk),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .ram_full_i_reg(p_0_out),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_rd_logic_37 \gntv_or_sync_fifo.gl0.rd 
       (.D({\gntv_or_sync_fifo.gl0.rd_n_12 ,\gntv_or_sync_fifo.gl0.rd_n_13 ,\gntv_or_sync_fifo.gl0.rd_n_14 }),
        .E(E),
        .Q(rstblk_n_2),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .\gc0.count_d1_reg[3] (rd_pntr_plus1),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .\gpr1.dout_i_reg[1] (Q[1:0]),
        .p_18_out(p_18_out),
        .ping_rx_status_reg(ping_rx_status_reg),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rd_pntr_gc_reg[3] (p_20_out),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .state4a(state4a),
        .\wr_pntr_bin_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ));
  ntps_top_axi_ethernetlite_0_0_wr_logic_38 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_3_out),
        .Q(wr_pntr_plus2),
        .\gic0.gc0.count_d2_reg[3] (p_8_out),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (RST),
        .phy_rx_clk(phy_rx_clk),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\rd_pntr_bin_reg[3] (p_0_out),
        .rst_full_ff_i(rst_full_ff_i),
        .\wr_pntr_gc_reg[3] (p_9_out));
  ntps_top_axi_ethernetlite_0_0_memory_39 \gntv_or_sync_fifo.mem 
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(p_3_out),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .\gc0.count_d1_reg[3] (p_20_out),
        .\gic0.gc0.count_d2_reg[3] (p_9_out),
        .\gv.ram_valid_d1_reg (\rxbuffer_addr_reg[11] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (rd_rst_i),
        .phy_rx_clk(phy_rx_clk),
        .preamble(preamble),
        .ram_empty_fb_i_reg(E),
        .ram_empty_i_reg(state1a),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a_0),
        .state2a(state2a),
        .state3a(state3a));
  ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40 rstblk
       (.Q({rstblk_n_2,RD_RST,rd_rst_i}),
        .\gic0.gc0.count_reg[0] ({RST,rstblk_n_6}),
        .phy_rx_clk(phy_rx_clk),
        .rst_full_ff_i(rst_full_ff_i),
        .rst_full_gen_i(rst_full_gen_i),
        .rst_s(rst_s),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_top
   (fifo_empty_i,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    txfifo_empty,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output fifo_empty_i;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo \grf.rf 
       (.D(D),
        .D28_out(D28_out),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(STATE14A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(p_0_out),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a_0,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    rst_s,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] );
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a_0;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input rst_s;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire goto_readDestAdrNib1;
  wire p_18_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rst_s;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state2a;
  wire state3a;
  wire state4a;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35 \grf.rf 
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(p_18_out),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .preamble(preamble),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rst_s(rst_s),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .state2a(state2a),
        .state3a(state3a),
        .state4a(state4a));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0
   (fifo_empty_i,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    txfifo_empty,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output fifo_empty_i;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth inst_fifo_gen
       (.D(D),
        .D28_out(D28_out),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(STATE14A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(p_0_out),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a_0,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    rst_s,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] );
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a_0;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input rst_s;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire goto_readDestAdrNib1;
  wire p_18_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rst_s;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state2a;
  wire state3a;
  wire state4a;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33 inst_fifo_gen
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(p_18_out),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .preamble(preamble),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rst_s(rst_s),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .state2a(state2a),
        .state3a(state3a),
        .state4a(state4a));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth
   (fifo_empty_i,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    txfifo_empty,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output fifo_empty_i;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_top \gconvfifo.rf 
       (.D(D),
        .D28_out(D28_out),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(STATE14A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(p_0_out),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a_0,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    rst_s,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] );
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a_0;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input rst_s;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire goto_readDestAdrNib1;
  wire p_18_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rst_s;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state2a;
  wire state3a;
  wire state4a;

  ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34 \gconvfifo.rf 
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(p_18_out),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .preamble(preamble),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rst_s(rst_s),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .state2a(state2a),
        .state3a(state3a),
        .state4a(state4a));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg
   (STATE13A,
    D031_out,
    \txNibbleCnt_pad_reg[11] ,
    D029_out,
    enblData,
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ,
    txComboNibbleCntRst,
    CE,
    s_axi_aclk,
    \tx_packet_length_reg[15] ,
    Q1_in,
    txfifo_full);
  output [0:0]STATE13A;
  output D031_out;
  output \txNibbleCnt_pad_reg[11] ;
  output D029_out;
  input enblData;
  input \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  input txComboNibbleCntRst;
  input CE;
  input s_axi_aclk;
  input [15:0]\tx_packet_length_reg[15] ;
  input Q1_in;
  input txfifo_full;

  wire CE;
  wire D;
  wire D029_out;
  wire D031_out;
  wire DI;
  wire O;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[10].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[2].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[2].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[3].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[3].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[4].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[4].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[5].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[5].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[6].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[6].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[7].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[7].MUXCY_i1_i_2_n_0 ;
  wire \PERBIT_GEN[7].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[8].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[8].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[9].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[9].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].XORCY_i1_n_0 ;
  wire Q1_in;
  wire [0:0]STATE13A;
  wire STATE13A_i_2_n_0;
  wire STATE13A_i_3_n_0;
  wire [0:10]currentTxNibbleCnt;
  wire enblData;
  wire s_axi_aclk;
  wire txComboNibbleCntRst;
  wire \txNibbleCnt_pad_reg[11] ;
  wire [15:0]\tx_packet_length_reg[15] ;
  wire txfifo_full;
  wire [3:2]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[0].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[0]),
        .R(txComboNibbleCntRst));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[0].XORCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [10]),
        .I1(currentTxNibbleCnt[0]),
        .I2(enblData),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[10].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[10]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[10]),
        .I1(enblData),
        .O(\PERBIT_GEN[10].MULT_AND_i1_n_0 ));
  LUT4 #(
    .INIT(16'h0F44)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(\tx_packet_length_reg[15] [0]),
        .I2(currentTxNibbleCnt[10]),
        .I3(enblData),
        .O(\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \PERBIT_GEN[10].MUXCY_i1_i_2 
       (.I0(\PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ),
        .I1(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ),
        .I2(\tx_packet_length_reg[15] [15]),
        .I3(\tx_packet_length_reg[15] [8]),
        .I4(\tx_packet_length_reg[15] [12]),
        .I5(\tx_packet_length_reg[15] [10]),
        .O(\txNibbleCnt_pad_reg[11] ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \PERBIT_GEN[10].MUXCY_i1_i_3 
       (.I0(\tx_packet_length_reg[15] [1]),
        .I1(\tx_packet_length_reg[15] [0]),
        .I2(\tx_packet_length_reg[15] [3]),
        .I3(\tx_packet_length_reg[15] [4]),
        .I4(\tx_packet_length_reg[15] [2]),
        .I5(\tx_packet_length_reg[15] [5]),
        .O(\PERBIT_GEN[10].MUXCY_i1_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \PERBIT_GEN[10].MUXCY_i1_i_4 
       (.I0(\tx_packet_length_reg[15] [13]),
        .I1(\tx_packet_length_reg[15] [9]),
        .I2(\tx_packet_length_reg[15] [11]),
        .I3(\tx_packet_length_reg[15] [14]),
        .I4(\tx_packet_length_reg[15] [6]),
        .I5(\tx_packet_length_reg[15] [7]),
        .O(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(D),
        .Q(STATE13A),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(STATE13A),
        .I1(enblData),
        .O(DI));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\PERBIT_GEN[8].MUXCY_i1_n_0 ,\PERBIT_GEN[9].MUXCY_i1_n_0 ,\PERBIT_GEN[10].MUXCY_i1_n_0 ,O}),
        .CYINIT(enblData),
        .DI({\PERBIT_GEN[8].MULT_AND_i1_n_0 ,\PERBIT_GEN[9].MULT_AND_i1_n_0 ,\PERBIT_GEN[10].MULT_AND_i1_n_0 ,DI}),
        .O({\PERBIT_GEN[8].XORCY_i1_n_0 ,\PERBIT_GEN[9].XORCY_i1_n_0 ,\PERBIT_GEN[10].XORCY_i1_n_0 ,D}),
        .S({\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg }));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[1].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[1]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[1]),
        .I1(enblData),
        .O(\PERBIT_GEN[1].MULT_AND_i1_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1 
       (.I0(currentTxNibbleCnt[1]),
        .I1(enblData),
        .I2(\tx_packet_length_reg[15] [9]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[2].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[2]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[2]),
        .I1(enblData),
        .O(\PERBIT_GEN[2].MULT_AND_i1_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [8]),
        .I1(currentTxNibbleCnt[2]),
        .I2(enblData),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[3].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[3]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[3]),
        .I1(enblData),
        .O(\PERBIT_GEN[3].MULT_AND_i1_n_0 ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(\PERBIT_GEN[4].MUXCY_i1_n_0 ),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3:2],\PERBIT_GEN[2].MUXCY_i1_n_0 ,\PERBIT_GEN[3].MUXCY_i1_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],\PERBIT_GEN[1].MULT_AND_i1_n_0 ,\PERBIT_GEN[2].MULT_AND_i1_n_0 ,\PERBIT_GEN[3].MULT_AND_i1_n_0 }),
        .O({\PERBIT_GEN[0].XORCY_i1_n_0 ,\PERBIT_GEN[1].XORCY_i1_n_0 ,\PERBIT_GEN[2].XORCY_i1_n_0 ,\PERBIT_GEN[3].XORCY_i1_n_0 }),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [7]),
        .I1(currentTxNibbleCnt[3]),
        .I2(enblData),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[4].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[4]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[4].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[4]),
        .I1(enblData),
        .O(\PERBIT_GEN[4].MULT_AND_i1_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [6]),
        .I1(currentTxNibbleCnt[4]),
        .I2(enblData),
        .O(\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[5].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[5]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[5].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[5]),
        .I1(enblData),
        .O(\PERBIT_GEN[5].MULT_AND_i1_n_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [5]),
        .I1(\txNibbleCnt_pad_reg[11] ),
        .I2(currentTxNibbleCnt[5]),
        .I3(enblData),
        .O(\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[6].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[6]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[6].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[6]),
        .I1(enblData),
        .O(\PERBIT_GEN[6].MULT_AND_i1_n_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [4]),
        .I1(\txNibbleCnt_pad_reg[11] ),
        .I2(currentTxNibbleCnt[6]),
        .I3(enblData),
        .O(\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[7].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[7]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[7].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[7]),
        .I1(enblData),
        .O(\PERBIT_GEN[7].MULT_AND_i1_n_0 ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(\PERBIT_GEN[8].MUXCY_i1_n_0 ),
        .CO({\PERBIT_GEN[4].MUXCY_i1_n_0 ,\PERBIT_GEN[5].MUXCY_i1_n_0 ,\PERBIT_GEN[6].MUXCY_i1_n_0 ,\PERBIT_GEN[7].MUXCY_i1_n_0 }),
        .CYINIT(1'b0),
        .DI({\PERBIT_GEN[4].MULT_AND_i1_n_0 ,\PERBIT_GEN[5].MULT_AND_i1_n_0 ,\PERBIT_GEN[6].MULT_AND_i1_n_0 ,\PERBIT_GEN[7].MULT_AND_i1_n_0 }),
        .O({\PERBIT_GEN[4].XORCY_i1_n_0 ,\PERBIT_GEN[5].XORCY_i1_n_0 ,\PERBIT_GEN[6].XORCY_i1_n_0 ,\PERBIT_GEN[7].XORCY_i1_n_0 }),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT4 #(
    .INIT(16'h0FBB)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [3]),
        .I1(\PERBIT_GEN[7].MUXCY_i1_i_2_n_0 ),
        .I2(currentTxNibbleCnt[7]),
        .I3(enblData),
        .O(\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \PERBIT_GEN[7].MUXCY_i1_i_2 
       (.I0(\tx_packet_length_reg[15] [10]),
        .I1(\tx_packet_length_reg[15] [12]),
        .I2(\tx_packet_length_reg[15] [8]),
        .I3(\tx_packet_length_reg[15] [15]),
        .I4(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ),
        .O(\PERBIT_GEN[7].MUXCY_i1_i_2_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[8].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[8]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[8].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[8]),
        .I1(enblData),
        .O(\PERBIT_GEN[8].MULT_AND_i1_n_0 ));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \PERBIT_GEN[8].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[15] [2]),
        .I1(\txNibbleCnt_pad_reg[11] ),
        .I2(currentTxNibbleCnt[8]),
        .I3(enblData),
        .O(\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[9].XORCY_i1_n_0 ),
        .Q(currentTxNibbleCnt[9]),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(currentTxNibbleCnt[9]),
        .I1(enblData),
        .O(\PERBIT_GEN[9].MULT_AND_i1_n_0 ));
  LUT4 #(
    .INIT(16'h0F44)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(\tx_packet_length_reg[15] [1]),
        .I2(currentTxNibbleCnt[9]),
        .I3(enblData),
        .O(\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT3 #(
    .INIT(8'h04)) 
    STATE12A_i_1
       (.I0(D031_out),
        .I1(Q1_in),
        .I2(txfifo_full),
        .O(D029_out));
  LUT4 #(
    .INIT(16'h4000)) 
    STATE13A_i_1
       (.I0(currentTxNibbleCnt[9]),
        .I1(enblData),
        .I2(STATE13A_i_2_n_0),
        .I3(STATE13A_i_3_n_0),
        .O(D031_out));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    STATE13A_i_2
       (.I0(currentTxNibbleCnt[7]),
        .I1(currentTxNibbleCnt[6]),
        .I2(STATE13A),
        .I3(currentTxNibbleCnt[10]),
        .I4(currentTxNibbleCnt[8]),
        .I5(currentTxNibbleCnt[5]),
        .O(STATE13A_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    STATE13A_i_3
       (.I0(currentTxNibbleCnt[2]),
        .I1(currentTxNibbleCnt[4]),
        .I2(currentTxNibbleCnt[1]),
        .I3(currentTxNibbleCnt[3]),
        .I4(currentTxNibbleCnt[0]),
        .O(STATE13A_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0
   (currentTxBusFifoWrCnt,
    STATE8A,
    STATE11A,
    emac_tx_wr_i,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,
    txComboBusFifoWrCntRst,
    s_axi_aclk);
  output [3:0]currentTxBusFifoWrCnt;
  output STATE8A;
  output STATE11A;
  input emac_tx_wr_i;
  input \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  input \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  input txComboBusFifoWrCntRst;
  input s_axi_aclk;

  wire D;
  wire DI;
  wire O;
  wire \PERBIT_GEN[10].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[10].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[8].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[9].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].XORCY_i1_n_0 ;
  wire STATE11A;
  wire STATE8A;
  wire [3:0]currentTxBusFifoWrCnt;
  wire emac_tx_wr_i;
  wire s_axi_aclk;
  wire txComboBusFifoWrCntRst;
  wire [3:2]\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(\PERBIT_GEN[10].XORCY_i1_n_0 ),
        .Q(currentTxBusFifoWrCnt[1]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[10].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[1]),
        .I1(emac_tx_wr_i),
        .O(\PERBIT_GEN[10].MULT_AND_i1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(D),
        .Q(currentTxBusFifoWrCnt[0]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(emac_tx_wr_i),
        .O(DI));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED [3:2],\PERBIT_GEN[10].MUXCY_i1_n_0 ,O}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],\PERBIT_GEN[9].MULT_AND_i1_n_0 ,\PERBIT_GEN[10].MULT_AND_i1_n_0 ,DI}),
        .O({\PERBIT_GEN[8].XORCY_i1_n_0 ,\PERBIT_GEN[9].XORCY_i1_n_0 ,\PERBIT_GEN[10].XORCY_i1_n_0 ,D}),
        .S({\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 }));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(\PERBIT_GEN[8].XORCY_i1_n_0 ),
        .Q(currentTxBusFifoWrCnt[3]),
        .R(txComboBusFifoWrCntRst));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(\PERBIT_GEN[9].XORCY_i1_n_0 ),
        .Q(currentTxBusFifoWrCnt[2]),
        .R(txComboBusFifoWrCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[9].MULT_AND_i1 
       (.I0(currentTxBusFifoWrCnt[2]),
        .I1(emac_tx_wr_i),
        .O(\PERBIT_GEN[9].MULT_AND_i1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    STATE10A_i_2
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(currentTxBusFifoWrCnt[1]),
        .I2(currentTxBusFifoWrCnt[2]),
        .I3(currentTxBusFifoWrCnt[3]),
        .O(STATE11A));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    STATE8A_i_2
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(currentTxBusFifoWrCnt[1]),
        .I2(currentTxBusFifoWrCnt[2]),
        .I3(currentTxBusFifoWrCnt[3]),
        .O(STATE8A));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1
   (crcCnt,
    DIA,
    D0,
    \gic0.gc0.count_reg[3] ,
    enblCRC,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    s_axi_aresetn,
    CE,
    s_axi_aclk,
    STATE17A,
    Q0_in9_in,
    txfifo_full);
  output [0:3]crcCnt;
  output [0:0]DIA;
  output D0;
  output \gic0.gc0.count_reg[3] ;
  input enblCRC;
  input \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input s_axi_aresetn;
  input CE;
  input s_axi_aclk;
  input STATE17A;
  input Q0_in9_in;
  input txfifo_full;

  wire CE;
  wire D;
  wire D0;
  wire DI;
  wire [0:0]DIA;
  wire O;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[0].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[1].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[2].MULT_AND_i1_n_0 ;
  wire \PERBIT_GEN[2].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].XORCY_i1_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire Q0_in9_in;
  wire STATE17A;
  wire [0:3]crcCnt;
  wire enblCRC;
  wire \gic0.gc0.count_reg[3] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire txfifo_full;
  wire [3:2]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[0].XORCY_i1_n_0 ),
        .Q(crcCnt[0]),
        .S(s_axi_aresetn));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[1].XORCY_i1_n_0 ),
        .Q(crcCnt[1]),
        .R(s_axi_aresetn));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(crcCnt[1]),
        .I1(enblCRC),
        .O(\PERBIT_GEN[1].MULT_AND_i1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(\PERBIT_GEN[2].XORCY_i1_n_0 ),
        .Q(crcCnt[2]),
        .R(s_axi_aresetn));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(crcCnt[2]),
        .I1(enblCRC),
        .O(\PERBIT_GEN[2].MULT_AND_i1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(D),
        .Q(crcCnt[3]),
        .R(s_axi_aresetn));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(crcCnt[3]),
        .I1(enblCRC),
        .O(DI));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3:2],\PERBIT_GEN[2].MUXCY_i1_n_0 ,O}),
        .CYINIT(enblCRC),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],\PERBIT_GEN[1].MULT_AND_i1_n_0 ,\PERBIT_GEN[2].MULT_AND_i1_n_0 ,DI}),
        .O({\PERBIT_GEN[0].XORCY_i1_n_0 ,\PERBIT_GEN[1].XORCY_i1_n_0 ,\PERBIT_GEN[2].XORCY_i1_n_0 ,D}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    RAM_reg_0_15_0_5_i_1
       (.I0(STATE17A),
        .I1(crcCnt[2]),
        .I2(crcCnt[3]),
        .I3(crcCnt[0]),
        .I4(crcCnt[1]),
        .I5(Q0_in9_in),
        .O(DIA));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    STATE15A_i_1
       (.I0(crcCnt[1]),
        .I1(crcCnt[0]),
        .I2(crcCnt[3]),
        .I3(crcCnt[2]),
        .I4(Q0_in9_in),
        .I5(txfifo_full),
        .O(D0));
  LUT5 #(
    .INIT(32'h00000002)) 
    STATE16A_i_2
       (.I0(Q0_in9_in),
        .I1(crcCnt[1]),
        .I2(crcCnt[0]),
        .I3(crcCnt[3]),
        .I4(crcCnt[2]),
        .O(\gic0.gc0.count_reg[3] ));
endmodule

(* ORIG_REF_NAME = "mdio_if" *) 
module ntps_top_axi_ethernetlite_0_0_mdio_if
   (\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ,
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ,
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ,
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ,
    phy_mdio_o,
    phy_mdio_t,
    D,
    \MDIO_GEN.mdio_req_i_reg ,
    s_axi_aresetn_0,
    s_axi_aclk,
    \MDIO_GEN.mdio_clk_i_reg ,
    phy_mdio_i,
    Q,
    s_axi_aresetn,
    \AXI4_LITE_IF_GEN.read_in_prog_reg ,
    \MDIO_GEN.mdio_wr_data_reg_reg[15] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ,
    \MDIO_GEN.mdio_req_i_reg_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ,
    \MDIO_GEN.mdio_wr_data_reg_reg[2] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ,
    mdio_en_i,
    \MDIO_GEN.mdio_wr_data_reg_reg[4] ,
    \MDIO_GEN.mdio_wr_data_reg_reg[5] ,
    \MDIO_GEN.mdio_phy_addr_reg[4] ,
    \MDIO_GEN.mdio_wr_data_reg_reg[6] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ,
    \MDIO_GEN.mdio_wr_data_reg_reg[9] ,
    \MDIO_GEN.mdio_wr_data_reg_reg[10] ,
    mdio_op_i,
    s_axi_wdata,
    p_21_out);
  output \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ;
  output \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ;
  output \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ;
  output \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ;
  output \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  output phy_mdio_o;
  output phy_mdio_t;
  output [10:0]D;
  output \MDIO_GEN.mdio_req_i_reg ;
  input s_axi_aresetn_0;
  input s_axi_aclk;
  input \MDIO_GEN.mdio_clk_i_reg ;
  input phy_mdio_i;
  input [4:0]Q;
  input s_axi_aresetn;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg ;
  input [15:0]\MDIO_GEN.mdio_wr_data_reg_reg[15] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ;
  input \MDIO_GEN.mdio_req_i_reg_0 ;
  input [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  input \MDIO_GEN.mdio_wr_data_reg_reg[2] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  input mdio_en_i;
  input \MDIO_GEN.mdio_wr_data_reg_reg[4] ;
  input \MDIO_GEN.mdio_wr_data_reg_reg[5] ;
  input [4:0]\MDIO_GEN.mdio_phy_addr_reg[4] ;
  input \MDIO_GEN.mdio_wr_data_reg_reg[6] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  input \MDIO_GEN.mdio_wr_data_reg_reg[9] ;
  input \MDIO_GEN.mdio_wr_data_reg_reg[10] ;
  input mdio_op_i;
  input [0:0]s_axi_wdata;
  input p_21_out;

  wire [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg ;
  wire [10:0]D;
  wire \FSM_sequential_mdio_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mdio_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mdio_state[2]_i_1_n_0 ;
  wire \FSM_sequential_mdio_state[3]_i_1_n_0 ;
  wire \FSM_sequential_mdio_state[3]_i_2_n_0 ;
  wire \FSM_sequential_mdio_state[3]_i_3_n_0 ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0] ;
  wire \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10] ;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1] ;
  wire \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2] ;
  wire \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3] ;
  wire \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4] ;
  wire \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5] ;
  wire \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6] ;
  wire \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7] ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0 ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8] ;
  wire \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9] ;
  wire \MDIO_GEN.mdio_clk_i_reg ;
  wire \MDIO_GEN.mdio_data_out[0]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[1]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[3]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[7]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[8]_i_2_n_0 ;
  wire [4:0]\MDIO_GEN.mdio_phy_addr_reg[4] ;
  wire \MDIO_GEN.mdio_req_i_i_2_n_0 ;
  wire \MDIO_GEN.mdio_req_i_reg ;
  wire \MDIO_GEN.mdio_req_i_reg_0 ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[10] ;
  wire [15:0]\MDIO_GEN.mdio_wr_data_reg_reg[15] ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[2] ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[4] ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[5] ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[6] ;
  wire \MDIO_GEN.mdio_wr_data_reg_reg[9] ;
  wire PHY_MDIO_O_i_10_n_0;
  wire PHY_MDIO_O_i_11_n_0;
  wire PHY_MDIO_O_i_12_n_0;
  wire PHY_MDIO_O_i_13_n_0;
  wire PHY_MDIO_O_i_1_n_0;
  wire PHY_MDIO_O_i_2_n_0;
  wire PHY_MDIO_O_i_3_n_0;
  wire PHY_MDIO_O_i_4_n_0;
  wire PHY_MDIO_O_i_5_n_0;
  wire PHY_MDIO_O_i_6_n_0;
  wire PHY_MDIO_O_i_7_n_0;
  wire PHY_MDIO_O_i_8_n_0;
  wire PHY_MDIO_O_reg_i_9_n_0;
  wire PHY_MDIO_T_i_1_n_0;
  wire [4:0]Q;
  wire \clk_cnt[5]_i_1_n_0 ;
  wire \clk_cnt[5]_i_3_n_0 ;
  wire \clk_cnt[5]_i_4_n_0 ;
  wire [5:0]clk_cnt_reg__0;
  wire [4:1]data;
  wire \ld_cnt_data_reg[1]_i_1_n_0 ;
  wire \ld_cnt_data_reg[2]_i_1_n_0 ;
  wire \ld_cnt_data_reg[4]_i_1_n_0 ;
  wire ld_cnt_en_cmb;
  wire ld_cnt_en_reg;
  wire ld_cnt_en_reg_i_2_n_0;
  wire mdio_clk_reg;
  wire mdio_done_i;
  wire mdio_en_i;
  wire mdio_en_reg;
  wire mdio_en_reg_i_1_n_0;
  wire mdio_idle_i_1_n_0;
  wire mdio_idle_i_3_n_0;
  wire mdio_idle_reg_n_0;
  wire mdio_in_reg1;
  wire mdio_in_reg2;
  wire mdio_op_i;
  (* RTL_KEEP = "yes" *) wire [3:0]mdio_state;
  wire mdio_t_comb;
  wire [5:0]p_0_in__1;
  wire p_21_out;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_axi_wdata;

  LUT5 #(
    .INIT(32'h10001F1F)) 
    \FSM_sequential_mdio_state[0]_i_1 
       (.I0(mdio_state[2]),
        .I1(mdio_state[1]),
        .I2(mdio_state[3]),
        .I3(mdio_op_i),
        .I4(mdio_state[0]),
        .O(\FSM_sequential_mdio_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h112A)) 
    \FSM_sequential_mdio_state[1]_i_1 
       (.I0(mdio_state[0]),
        .I1(mdio_state[3]),
        .I2(mdio_state[2]),
        .I3(mdio_state[1]),
        .O(\FSM_sequential_mdio_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3464)) 
    \FSM_sequential_mdio_state[2]_i_1 
       (.I0(mdio_state[3]),
        .I1(mdio_state[2]),
        .I2(mdio_state[1]),
        .I3(mdio_state[0]),
        .O(\FSM_sequential_mdio_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_sequential_mdio_state[3]_i_1 
       (.I0(\FSM_sequential_mdio_state[3]_i_3_n_0 ),
        .I1(mdio_clk_reg),
        .I2(\MDIO_GEN.mdio_clk_i_reg ),
        .O(\FSM_sequential_mdio_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_mdio_state[3]_i_2 
       (.I0(mdio_state[1]),
        .I1(mdio_state[0]),
        .I2(mdio_state[2]),
        .I3(mdio_state[3]),
        .O(\FSM_sequential_mdio_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F167E563F167F57)) 
    \FSM_sequential_mdio_state[3]_i_3 
       (.I0(mdio_state[1]),
        .I1(mdio_state[3]),
        .I2(mdio_state[2]),
        .I3(ld_cnt_en_reg_i_2_n_0),
        .I4(mdio_state[0]),
        .I5(mdio_idle_reg_n_0),
        .O(\FSM_sequential_mdio_state[3]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mdio_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_mdio_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_mdio_state[0]_i_1_n_0 ),
        .Q(mdio_state[0]),
        .R(s_axi_aresetn_0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mdio_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_mdio_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_mdio_state[1]_i_1_n_0 ),
        .Q(mdio_state[1]),
        .R(s_axi_aresetn_0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mdio_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_mdio_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_mdio_state[2]_i_1_n_0 ),
        .Q(mdio_state[2]),
        .R(s_axi_aresetn_0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mdio_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_mdio_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_mdio_state[3]_i_2_n_0 ),
        .Q(mdio_state[3]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(ld_cnt_en_reg_i_2_n_0),
        .I3(mdio_clk_reg),
        .I4(\MDIO_GEN.mdio_clk_i_reg ),
        .I5(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0] ),
        .O(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2 
       (.I0(mdio_state[3]),
        .I1(mdio_state[2]),
        .I2(mdio_state[0]),
        .I3(mdio_state[1]),
        .O(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10] ),
        .O(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ),
        .O(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\clk_cnt[5]_i_4_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ),
        .O(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2 
       (.I0(clk_cnt_reg__0[3]),
        .I1(clk_cnt_reg__0[4]),
        .I2(clk_cnt_reg__0[5]),
        .I3(clk_cnt_reg__0[2]),
        .O(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ),
        .O(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ),
        .O(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ),
        .O(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1] ),
        .O(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2 
       (.I0(clk_cnt_reg__0[2]),
        .I1(clk_cnt_reg__0[4]),
        .I2(clk_cnt_reg__0[5]),
        .I3(clk_cnt_reg__0[3]),
        .O(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3 
       (.I0(clk_cnt_reg__0[0]),
        .I1(clk_cnt_reg__0[1]),
        .O(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2] ),
        .O(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2 
       (.I0(clk_cnt_reg__0[1]),
        .I1(clk_cnt_reg__0[0]),
        .O(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3] ),
        .O(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2 
       (.I0(clk_cnt_reg__0[1]),
        .I1(clk_cnt_reg__0[0]),
        .O(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\clk_cnt[5]_i_4_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4] ),
        .O(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2 
       (.I0(clk_cnt_reg__0[4]),
        .I1(clk_cnt_reg__0[5]),
        .I2(clk_cnt_reg__0[3]),
        .I3(clk_cnt_reg__0[2]),
        .O(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5] ),
        .O(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6] ),
        .O(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7] ),
        .O(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8] ),
        .O(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2 
       (.I0(clk_cnt_reg__0[0]),
        .I1(clk_cnt_reg__0[1]),
        .I2(clk_cnt_reg__0[2]),
        .O(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3 
       (.I0(clk_cnt_reg__0[5]),
        .I1(clk_cnt_reg__0[4]),
        .I2(clk_cnt_reg__0[3]),
        .O(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0 ),
        .I4(mdio_idle_i_3_n_0),
        .I5(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9] ),
        .O(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2 
       (.I0(clk_cnt_reg__0[2]),
        .I1(clk_cnt_reg__0[3]),
        .I2(clk_cnt_reg__0[4]),
        .I3(clk_cnt_reg__0[5]),
        .O(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9] ),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'h8808)) 
    \MDIO_GEN.mdio_data_out[0]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[0]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I3(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFCCFCCEFECEFEC)) 
    \MDIO_GEN.mdio_data_out[0]_i_2 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [0]),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ),
        .I3(\MDIO_GEN.mdio_req_i_reg_0 ),
        .I4(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0] ),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .O(\MDIO_GEN.mdio_data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[10]_i_2 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[10] ),
        .I1(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(mdio_op_i),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hC044)) 
    \MDIO_GEN.mdio_data_out[1]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[1]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(Q[1]),
        .I3(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \MDIO_GEN.mdio_data_out[1]_i_2 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [1]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1] ),
        .O(\MDIO_GEN.mdio_data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[2]_i_1 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[2] ),
        .I1(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8808)) 
    \MDIO_GEN.mdio_data_out[3]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[3]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I3(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFCCFCCEFECEFEC)) 
    \MDIO_GEN.mdio_data_out[3]_i_2 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [3]),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ),
        .I3(mdio_en_i),
        .I4(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3] ),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .O(\MDIO_GEN.mdio_data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[4]_i_1 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[4] ),
        .I1(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[5]_i_1 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[5] ),
        .I1(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[6]_i_1 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[6] ),
        .I1(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [1]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[7]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[7]_i_2_n_0 ),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [7]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [2]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[7]_i_2 
       (.I0(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .O(\MDIO_GEN.mdio_data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[8]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[8]_i_2_n_0 ),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [8]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [3]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[8]_i_2 
       (.I0(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8] ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .O(\MDIO_GEN.mdio_data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[9]_i_1 
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[9] ),
        .I1(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9] ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(s_axi_aresetn),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg ),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [4]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAAA3FFFAAAA0000)) 
    \MDIO_GEN.mdio_req_i_i_1 
       (.I0(s_axi_wdata),
        .I1(mdio_state[2]),
        .I2(mdio_state[3]),
        .I3(\MDIO_GEN.mdio_req_i_i_2_n_0 ),
        .I4(p_21_out),
        .I5(\MDIO_GEN.mdio_req_i_reg_0 ),
        .O(\MDIO_GEN.mdio_req_i_reg ));
  LUT2 #(
    .INIT(4'h1)) 
    \MDIO_GEN.mdio_req_i_i_2 
       (.I0(mdio_state[1]),
        .I1(mdio_state[0]),
        .O(\MDIO_GEN.mdio_req_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FF0000F100)) 
    PHY_MDIO_O_i_1
       (.I0(PHY_MDIO_O_i_2_n_0),
        .I1(mdio_state[3]),
        .I2(PHY_MDIO_O_i_3_n_0),
        .I3(mdio_clk_reg),
        .I4(\MDIO_GEN.mdio_clk_i_reg ),
        .I5(phy_mdio_o),
        .O(PHY_MDIO_O_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_10
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [11]),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [10]),
        .I2(clk_cnt_reg__0[1]),
        .I3(\MDIO_GEN.mdio_wr_data_reg_reg[15] [9]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_wr_data_reg_reg[15] [8]),
        .O(PHY_MDIO_O_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_11
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [15]),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [14]),
        .I2(clk_cnt_reg__0[1]),
        .I3(\MDIO_GEN.mdio_wr_data_reg_reg[15] [13]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_wr_data_reg_reg[15] [12]),
        .O(PHY_MDIO_O_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_12
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [3]),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [2]),
        .I2(clk_cnt_reg__0[1]),
        .I3(\MDIO_GEN.mdio_wr_data_reg_reg[15] [1]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_wr_data_reg_reg[15] [0]),
        .O(PHY_MDIO_O_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_13
       (.I0(\MDIO_GEN.mdio_wr_data_reg_reg[15] [7]),
        .I1(\MDIO_GEN.mdio_wr_data_reg_reg[15] [6]),
        .I2(clk_cnt_reg__0[1]),
        .I3(\MDIO_GEN.mdio_wr_data_reg_reg[15] [5]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_wr_data_reg_reg[15] [4]),
        .O(PHY_MDIO_O_i_13_n_0));
  LUT6 #(
    .INIT(64'h3FAF0F0F00AF0F0F)) 
    PHY_MDIO_O_i_2
       (.I0(mdio_op_i),
        .I1(PHY_MDIO_O_i_4_n_0),
        .I2(mdio_state[0]),
        .I3(mdio_state[1]),
        .I4(mdio_state[2]),
        .I5(PHY_MDIO_O_i_5_n_0),
        .O(PHY_MDIO_O_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FC00CC32333233)) 
    PHY_MDIO_O_i_3
       (.I0(mdio_op_i),
        .I1(mdio_state[0]),
        .I2(mdio_state[3]),
        .I3(mdio_state[2]),
        .I4(PHY_MDIO_O_i_6_n_0),
        .I5(mdio_state[1]),
        .O(PHY_MDIO_O_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    PHY_MDIO_O_i_4
       (.I0(Q[4]),
        .I1(clk_cnt_reg__0[0]),
        .I2(clk_cnt_reg__0[1]),
        .I3(clk_cnt_reg__0[2]),
        .I4(PHY_MDIO_O_i_7_n_0),
        .O(PHY_MDIO_O_i_4_n_0));
  LUT6 #(
    .INIT(64'hFBFBFBABFBFBFBFB)) 
    PHY_MDIO_O_i_5
       (.I0(mdio_state[0]),
        .I1(PHY_MDIO_O_i_8_n_0),
        .I2(clk_cnt_reg__0[2]),
        .I3(clk_cnt_reg__0[1]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [4]),
        .O(PHY_MDIO_O_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    PHY_MDIO_O_i_6
       (.I0(PHY_MDIO_O_reg_i_9_n_0),
        .I1(clk_cnt_reg__0[3]),
        .I2(PHY_MDIO_O_i_10_n_0),
        .I3(clk_cnt_reg__0[2]),
        .I4(PHY_MDIO_O_i_11_n_0),
        .I5(clk_cnt_reg__0[4]),
        .O(PHY_MDIO_O_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_7
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(clk_cnt_reg__0[1]),
        .I3(Q[1]),
        .I4(clk_cnt_reg__0[0]),
        .I5(Q[0]),
        .O(PHY_MDIO_O_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_8
       (.I0(\MDIO_GEN.mdio_phy_addr_reg[4] [3]),
        .I1(\MDIO_GEN.mdio_phy_addr_reg[4] [2]),
        .I2(clk_cnt_reg__0[1]),
        .I3(\MDIO_GEN.mdio_phy_addr_reg[4] [1]),
        .I4(clk_cnt_reg__0[0]),
        .I5(\MDIO_GEN.mdio_phy_addr_reg[4] [0]),
        .O(PHY_MDIO_O_i_8_n_0));
  FDRE PHY_MDIO_O_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(PHY_MDIO_O_i_1_n_0),
        .Q(phy_mdio_o),
        .R(s_axi_aresetn_0));
  MUXF7 PHY_MDIO_O_reg_i_9
       (.I0(PHY_MDIO_O_i_12_n_0),
        .I1(PHY_MDIO_O_i_13_n_0),
        .O(PHY_MDIO_O_reg_i_9_n_0),
        .S(clk_cnt_reg__0[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    PHY_MDIO_T_i_1
       (.I0(mdio_t_comb),
        .I1(mdio_clk_reg),
        .I2(\MDIO_GEN.mdio_clk_i_reg ),
        .I3(phy_mdio_t),
        .O(PHY_MDIO_T_i_1_n_0));
  LUT5 #(
    .INIT(32'h222000B9)) 
    PHY_MDIO_T_i_2
       (.I0(mdio_state[3]),
        .I1(mdio_state[2]),
        .I2(mdio_op_i),
        .I3(mdio_state[1]),
        .I4(mdio_state[0]),
        .O(mdio_t_comb));
  FDSE PHY_MDIO_T_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(PHY_MDIO_T_i_1_n_0),
        .Q(phy_mdio_t),
        .S(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \clk_cnt[0]_i_1 
       (.I0(data[1]),
        .I1(clk_cnt_reg__0[0]),
        .I2(ld_cnt_en_reg),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \clk_cnt[1]_i_1 
       (.I0(data[1]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg__0[1]),
        .I3(clk_cnt_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \clk_cnt[2]_i_1 
       (.I0(data[2]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg__0[2]),
        .I3(clk_cnt_reg__0[0]),
        .I4(clk_cnt_reg__0[1]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \clk_cnt[3]_i_1 
       (.I0(data[1]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg__0[3]),
        .I3(clk_cnt_reg__0[2]),
        .I4(clk_cnt_reg__0[1]),
        .I5(clk_cnt_reg__0[0]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B88BB8B8)) 
    \clk_cnt[4]_i_1 
       (.I0(data[4]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg__0[4]),
        .I3(clk_cnt_reg__0[3]),
        .I4(\clk_cnt[5]_i_4_n_0 ),
        .I5(clk_cnt_reg__0[2]),
        .O(p_0_in__1[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \clk_cnt[5]_i_1 
       (.I0(mdio_clk_reg),
        .I1(\MDIO_GEN.mdio_clk_i_reg ),
        .I2(\clk_cnt[5]_i_3_n_0 ),
        .O(\clk_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFB0004)) 
    \clk_cnt[5]_i_2 
       (.I0(clk_cnt_reg__0[3]),
        .I1(\clk_cnt[5]_i_4_n_0 ),
        .I2(clk_cnt_reg__0[2]),
        .I3(clk_cnt_reg__0[4]),
        .I4(clk_cnt_reg__0[5]),
        .I5(ld_cnt_en_reg),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'h00000000FBF6FB77)) 
    \clk_cnt[5]_i_3 
       (.I0(mdio_state[2]),
        .I1(mdio_state[1]),
        .I2(ld_cnt_en_reg_i_2_n_0),
        .I3(mdio_state[3]),
        .I4(mdio_state[0]),
        .I5(ld_cnt_en_reg),
        .O(\clk_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt[5]_i_4 
       (.I0(clk_cnt_reg__0[1]),
        .I1(clk_cnt_reg__0[0]),
        .O(\clk_cnt[5]_i_4_n_0 ));
  FDRE \clk_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(clk_cnt_reg__0[0]),
        .R(s_axi_aresetn_0));
  FDRE \clk_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(clk_cnt_reg__0[1]),
        .R(s_axi_aresetn_0));
  FDRE \clk_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[2]),
        .Q(clk_cnt_reg__0[2]),
        .R(s_axi_aresetn_0));
  FDRE \clk_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(clk_cnt_reg__0[3]),
        .R(s_axi_aresetn_0));
  FDRE \clk_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(clk_cnt_reg__0[4]),
        .R(s_axi_aresetn_0));
  FDRE \clk_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\clk_cnt[5]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(clk_cnt_reg__0[5]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00000C01)) 
    \ld_cnt_data_reg[1]_i_1 
       (.I0(mdio_idle_reg_n_0),
        .I1(mdio_state[3]),
        .I2(mdio_state[2]),
        .I3(mdio_state[0]),
        .I4(mdio_state[1]),
        .O(\ld_cnt_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00203C0000203C03)) 
    \ld_cnt_data_reg[2]_i_1 
       (.I0(ld_cnt_en_reg_i_2_n_0),
        .I1(mdio_state[3]),
        .I2(mdio_state[2]),
        .I3(mdio_state[0]),
        .I4(mdio_state[1]),
        .I5(mdio_idle_reg_n_0),
        .O(\ld_cnt_data_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ld_cnt_data_reg[4]_i_1 
       (.I0(mdio_idle_reg_n_0),
        .I1(mdio_state[1]),
        .I2(mdio_state[0]),
        .I3(mdio_state[2]),
        .I4(mdio_state[3]),
        .O(\ld_cnt_data_reg[4]_i_1_n_0 ));
  FDRE \ld_cnt_data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ld_cnt_data_reg[1]_i_1_n_0 ),
        .Q(data[1]),
        .R(s_axi_aresetn_0));
  FDRE \ld_cnt_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ld_cnt_data_reg[2]_i_1_n_0 ),
        .Q(data[2]),
        .R(s_axi_aresetn_0));
  FDRE \ld_cnt_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ld_cnt_data_reg[4]_i_1_n_0 ),
        .Q(data[4]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00303803)) 
    ld_cnt_en_reg_i_1
       (.I0(ld_cnt_en_reg_i_2_n_0),
        .I1(mdio_state[1]),
        .I2(mdio_state[0]),
        .I3(mdio_state[2]),
        .I4(mdio_state[3]),
        .O(ld_cnt_en_cmb));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ld_cnt_en_reg_i_2
       (.I0(clk_cnt_reg__0[2]),
        .I1(clk_cnt_reg__0[1]),
        .I2(clk_cnt_reg__0[0]),
        .I3(clk_cnt_reg__0[4]),
        .I4(clk_cnt_reg__0[5]),
        .I5(clk_cnt_reg__0[3]),
        .O(ld_cnt_en_reg_i_2_n_0));
  FDRE ld_cnt_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ld_cnt_en_cmb),
        .Q(ld_cnt_en_reg),
        .R(s_axi_aresetn_0));
  FDRE mdio_clk_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.mdio_clk_i_reg ),
        .Q(mdio_clk_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    mdio_en_reg_i_1
       (.I0(mdio_en_i),
        .I1(\MDIO_GEN.mdio_clk_i_reg ),
        .I2(mdio_clk_reg),
        .I3(mdio_idle_reg_n_0),
        .I4(mdio_en_reg),
        .O(mdio_en_reg_i_1_n_0));
  FDRE mdio_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_en_reg_i_1_n_0),
        .Q(mdio_en_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF70FFF0FFF0FF)) 
    mdio_idle_i_1
       (.I0(\MDIO_GEN.mdio_req_i_reg_0 ),
        .I1(mdio_en_reg),
        .I2(mdio_idle_reg_n_0),
        .I3(s_axi_aresetn),
        .I4(mdio_done_i),
        .I5(mdio_idle_i_3_n_0),
        .O(mdio_idle_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    mdio_idle_i_2
       (.I0(mdio_state[0]),
        .I1(mdio_state[1]),
        .I2(mdio_state[3]),
        .I3(mdio_state[2]),
        .O(mdio_done_i));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mdio_idle_i_3
       (.I0(\MDIO_GEN.mdio_clk_i_reg ),
        .I1(mdio_clk_reg),
        .O(mdio_idle_i_3_n_0));
  FDRE mdio_idle_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_idle_i_1_n_0),
        .Q(mdio_idle_reg_n_0),
        .R(1'b0));
  FDRE mdio_in_reg1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_mdio_i),
        .Q(mdio_in_reg1),
        .R(s_axi_aresetn_0));
  FDRE mdio_in_reg2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_in_reg1),
        .Q(mdio_in_reg2),
        .R(s_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module ntps_top_axi_ethernetlite_0_0_memory
   (\txNibbleCnt_pad_reg[0] ,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    s_axi_aclk,
    E,
    DIA,
    D,
    \gc0.count_d1_reg[3] ,
    \gic0.gc0.count_d2_reg[3] ,
    Q,
    axi_phy_tx_en_i_p,
    fifo_tx_en_reg,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output \txNibbleCnt_pad_reg[0] ;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input s_axi_aclk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input [11:0]Q;
  input axi_phy_tx_en_i_p;
  input [0:0]fifo_tx_en_reg;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [3:0]D;
  wire [0:0]DIA;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire axi_phy_tx_en_i_p;
  wire [0:0]fifo_tx_en_reg;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;

  ntps_top_axi_ethernetlite_0_0_dmem \gdm.dm 
       (.D(D),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_tx_en_reg(fifo_tx_en_reg),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gic0.gc0.count_d2_reg[3] (\gic0.gc0.count_d2_reg[3] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module ntps_top_axi_ethernetlite_0_0_memory_39
   (SR,
    Q,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    \rdDestAddrNib_D_t_q_reg[3] ,
    D,
    busFifoData_is_5_d1_reg,
    phy_rx_clk,
    E,
    DIA,
    DIB,
    DIC,
    \gc0.count_d1_reg[3] ,
    \gic0.gc0.count_d2_reg[3] ,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    \gv.ram_valid_d1_reg ,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    ram_empty_i_reg,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a,
    \crc_local_reg[31] ,
    ram_empty_fb_i_reg,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output [0:0]SR;
  output [5:0]Q;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input phy_rx_clk;
  input [0:0]E;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [3:0]\gc0.count_d1_reg[3] ;
  input [3:0]\gic0.gc0.count_d2_reg[3] ;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input \gv.ram_valid_d1_reg ;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input ram_empty_i_reg;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a;
  input [10:0]\crc_local_reg[31] ;
  input [0:0]ram_empty_fb_i_reg;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire [0:0]SR;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gv.ram_valid_d1_reg ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire phy_rx_clk;
  wire preamble;
  wire [0:0]ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state2a;
  wire state3a;

  ntps_top_axi_ethernetlite_0_0_dmem_41 \gdm.dm 
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .\gc0.count_d1_reg[3] (\gc0.count_d1_reg[3] ),
        .\gic0.gc0.count_d2_reg[3] (\gic0.gc0.count_d2_reg[3] ),
        .\gv.ram_valid_d1_reg (\gv.ram_valid_d1_reg ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .phy_rx_clk(phy_rx_clk),
        .preamble(preamble),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_empty_i_reg(ram_empty_i_reg),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state2a(state2a),
        .state3a(state3a));
endmodule

(* ORIG_REF_NAME = "mux_onehot_f" *) 
module ntps_top_axi_ethernetlite_0_0_mux_onehot_f
   (D,
    lut_val,
    STATE15A,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    STATE15A_0,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    STATE15A_1,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \nibData_reg[0] );
  output [3:0]D;
  input lut_val;
  input STATE15A;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input STATE15A_0;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input STATE15A_1;
  input \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \nibData_reg[0] ;

  wire [3:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire STATE15A;
  wire STATE15A_0;
  wire STATE15A_1;
  wire lut_val;
  wire \nibData_reg[0] ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[3],\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],STATE15A,lut_val}));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[2],\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],STATE15A_0,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[1],\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],STATE15A_1,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[0],\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\nibData_reg[0] ,\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 }));
endmodule

(* ORIG_REF_NAME = "ram16x4" *) 
module ntps_top_axi_ethernetlite_0_0_ram16x4
   (\rdDestAddrNib_D_t_q_reg[2] ,
    \rdDestAddrNib_D_t_q_reg[2]_0 ,
    Q,
    s_axi_aclk,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \rdDestAddrNib_D_t_q_reg[2] ;
  output \rdDestAddrNib_D_t_q_reg[2]_0 ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [3:0]Q;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_data;
  wire mac_addr_ram_we;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[2]_0 ;
  wire s_axi_aclk;

  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000220),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_0
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(mac_addr_ram_data[3]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000710),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_1
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .O(mac_addr_ram_data[2]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000E30),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_2
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(mac_addr_ram_data[1]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32X1S #(
    .INIT(32'h00000F10),
    .IS_WCLK_INVERTED(1'b0)) 
    ram16x1_3
       (.A0(mac_addr_ram_addr[3]),
        .A1(mac_addr_ram_addr[2]),
        .A2(mac_addr_ram_addr[1]),
        .A3(mac_addr_ram_addr[0]),
        .A4(1'b0),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .O(mac_addr_ram_data[0]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  LUT4 #(
    .INIT(16'h6FF6)) 
    state17a_i_5
       (.I0(mac_addr_ram_data[3]),
        .I1(Q[0]),
        .I2(mac_addr_ram_data[0]),
        .I3(Q[3]),
        .O(\rdDestAddrNib_D_t_q_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    state17a_i_6
       (.I0(mac_addr_ram_data[2]),
        .I1(Q[1]),
        .I2(mac_addr_ram_data[1]),
        .I3(Q[2]),
        .O(\rdDestAddrNib_D_t_q_reg[2] ));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module ntps_top_axi_ethernetlite_0_0_rd_bin_cntr
   (Q,
    ram_empty_fb_i_reg,
    D,
    \rd_pntr_gc_reg[3] ,
    p_18_out,
    fifo_tx_en,
    \wr_pntr_bin_reg[1] ,
    E,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output [1:0]Q;
  output ram_empty_fb_i_reg;
  output [2:0]D;
  output [3:0]\rd_pntr_gc_reg[3] ;
  input p_18_out;
  input fifo_tx_en;
  input [1:0]\wr_pntr_bin_reg[1] ;
  input [0:0]E;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire fifo_tx_en;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire p_18_out;
  wire phy_tx_clk;
  wire [3:0]plusOp__2;
  wire ram_empty_fb_i_reg;
  wire [3:0]\rd_pntr_gc_reg[3] ;
  wire [1:0]rd_pntr_plus1;
  wire [1:0]\wr_pntr_bin_reg[1] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(Q[0]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__0 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(plusOp__2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[0]),
        .Q(\rd_pntr_gc_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(rd_pntr_plus1[1]),
        .Q(\rd_pntr_gc_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[0]),
        .Q(\rd_pntr_gc_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[1]),
        .Q(\rd_pntr_gc_reg[3] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(phy_tx_clk),
        .CE(E),
        .D(plusOp__2[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__2[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__2[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(phy_tx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp__2[3]),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h4004000000004004)) 
    ram_empty_i_i_2__0
       (.I0(p_18_out),
        .I1(fifo_tx_en),
        .I2(rd_pntr_plus1[1]),
        .I3(\wr_pntr_bin_reg[1] [1]),
        .I4(rd_pntr_plus1[0]),
        .I5(\wr_pntr_bin_reg[1] [0]),
        .O(ram_empty_fb_i_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[0]_i_1__0 
       (.I0(\rd_pntr_gc_reg[3] [0]),
        .I1(\rd_pntr_gc_reg[3] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[1]_i_1__0 
       (.I0(\rd_pntr_gc_reg[3] [1]),
        .I1(\rd_pntr_gc_reg[3] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[2]_i_1__0 
       (.I0(\rd_pntr_gc_reg[3] [2]),
        .I1(\rd_pntr_gc_reg[3] [3]),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45
   (Q,
    D,
    \rd_pntr_gc_reg[3] ,
    E,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output [3:0]Q;
  output [2:0]D;
  output [3:0]\rd_pntr_gc_reg[3] ;
  input [0:0]E;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire [3:0]plusOp;
  wire [3:0]\rd_pntr_gc_reg[3] ;
  wire s_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gc0.count[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gc0.count[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[0]),
        .Q(\rd_pntr_gc_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[1]),
        .Q(\rd_pntr_gc_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[2]),
        .Q(\rd_pntr_gc_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[3]),
        .Q(\rd_pntr_gc_reg[3] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[3]),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[0]_i_1 
       (.I0(\rd_pntr_gc_reg[3] [1]),
        .I1(\rd_pntr_gc_reg[3] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[1]_i_1 
       (.I0(\rd_pntr_gc_reg[3] [1]),
        .I1(\rd_pntr_gc_reg[3] [2]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_gc[2]_i_1 
       (.I0(\rd_pntr_gc_reg[3] [2]),
        .I1(\rd_pntr_gc_reg[3] [3]),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "rd_handshaking_flags" *) 
module ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags
   (\rxbuffer_addr_reg[11] ,
    goto_readDestAdrNib1,
    rx_addr_en,
    state0a,
    ram_valid_i,
    s_axi_aclk,
    Q,
    Q3_in9_in,
    \gpr1.dout_i_reg[0] ,
    state4a,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    ping_rx_status_reg,
    ram_empty_i_reg);
  output \rxbuffer_addr_reg[11] ;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output state0a;
  input ram_valid_i;
  input s_axi_aclk;
  input [0:0]Q;
  input Q3_in9_in;
  input [0:0]\gpr1.dout_i_reg[0] ;
  input state4a;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input ping_rx_status_reg;
  input ram_empty_i_reg;

  wire [0:0]Q;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire goto_readDestAdrNib1;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire ping_rx_status_reg;
  wire ram_empty_i_reg;
  wire ram_valid_i;
  wire rx_addr_en;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire state0a;
  wire state4a;

  FDCE #(
    .INIT(1'b0)) 
    \gv.ram_valid_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_valid_i),
        .Q(\rxbuffer_addr_reg[11] ));
  LUT3 #(
    .INIT(8'h08)) 
    \pkt_length_cnt[6]_i_6 
       (.I0(\rxbuffer_addr_reg[11] ),
        .I1(Q3_in9_in),
        .I2(\gpr1.dout_i_reg[0] ),
        .O(goto_readDestAdrNib1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rxbuffer_addr[11]_i_2 
       (.I0(\rxbuffer_addr_reg[11] ),
        .I1(state4a),
        .O(rx_addr_en));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7077)) 
    state0a_i_4
       (.I0(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .I1(ping_rx_status_reg),
        .I2(\rxbuffer_addr_reg[11] ),
        .I3(ram_empty_i_reg),
        .O(state0a));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module ntps_top_axi_ethernetlite_0_0_rd_logic
   (fifo_empty_i,
    \gc0.count_d1_reg[3] ,
    E,
    ram_empty_fb_i_reg,
    D,
    \rd_pntr_gc_reg[3] ,
    \wr_pntr_bin_reg[3] ,
    phy_tx_clk,
    Q,
    fifo_tx_en,
    \wr_pntr_bin_reg[1] );
  output fifo_empty_i;
  output [1:0]\gc0.count_d1_reg[3] ;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [2:0]D;
  output [3:0]\rd_pntr_gc_reg[3] ;
  input \wr_pntr_bin_reg[3] ;
  input phy_tx_clk;
  input [0:0]Q;
  input fifo_tx_en;
  input [1:0]\wr_pntr_bin_reg[1] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire [1:0]\gc0.count_d1_reg[3] ;
  wire p_18_out;
  wire phy_tx_clk;
  wire ram_empty_fb_i_reg;
  wire [3:0]\rd_pntr_gc_reg[3] ;
  wire [1:0]\wr_pntr_bin_reg[1] ;
  wire \wr_pntr_bin_reg[3] ;

  ntps_top_axi_ethernetlite_0_0_rd_status_flags_as \gras.rsts 
       (.E(E),
        .Q(Q),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_18_out(p_18_out),
        .phy_tx_clk(phy_tx_clk),
        .\wr_pntr_bin_reg[3] (\wr_pntr_bin_reg[3] ));
  ntps_top_axi_ethernetlite_0_0_rd_bin_cntr rpntr
       (.D(D),
        .E(E),
        .Q(\gc0.count_d1_reg[3] ),
        .fifo_tx_en(fifo_tx_en),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q),
        .p_18_out(p_18_out),
        .phy_tx_clk(phy_tx_clk),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .\rd_pntr_gc_reg[3] (\rd_pntr_gc_reg[3] ),
        .\wr_pntr_bin_reg[1] (\wr_pntr_bin_reg[1] ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module ntps_top_axi_ethernetlite_0_0_rd_logic_37
   (\rxbuffer_addr_reg[11] ,
    state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    state1a_0,
    goto_readDestAdrNib1,
    rx_addr_en,
    state0a,
    \gc0.count_d1_reg[3] ,
    D,
    \rd_pntr_gc_reg[3] ,
    ram_valid_i,
    s_axi_aclk,
    Q,
    \wr_pntr_bin_reg[2] ,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \gpr1.dout_i_reg[1] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    Q3_in9_in,
    state4a,
    E);
  output \rxbuffer_addr_reg[11] ;
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output state1a_0;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output state0a;
  output [3:0]\gc0.count_d1_reg[3] ;
  output [2:0]D;
  output [3:0]\rd_pntr_gc_reg[3] ;
  input ram_valid_i;
  input s_axi_aclk;
  input [0:0]Q;
  input \wr_pntr_bin_reg[2] ;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input [1:0]\gpr1.dout_i_reg[1] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input Q3_in9_in;
  input state4a;
  input [0:0]E;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire goto_readDestAdrNib1;
  wire [1:0]\gpr1.dout_i_reg[1] ;
  wire p_18_out;
  wire ping_rx_status_reg;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire [3:0]\rd_pntr_gc_reg[3] ;
  wire rxCrcRst;
  wire rx_addr_en;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state1a_0;
  wire state4a;
  wire \wr_pntr_bin_reg[2] ;

  ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44 \gras.rsts 
       (.Q(Q),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] [1]),
        .\gv.ram_valid_d1_reg (\rxbuffer_addr_reg[11] ),
        .p_18_out(p_18_out),
        .ping_rx_status_reg(ping_rx_status_reg),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .rxCrcRst(rxCrcRst),
        .s_axi_aclk(s_axi_aclk),
        .state0a(state0a_0),
        .state1a(state1a),
        .state1a_0(state1a_0),
        .\wr_pntr_bin_reg[2] (\wr_pntr_bin_reg[2] ));
  ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags \grhf.rhf 
       (.Q(Q),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .\gpr1.dout_i_reg[0] (\gpr1.dout_i_reg[1] [0]),
        .ping_rx_status_reg(ping_rx_status_reg),
        .ram_empty_i_reg(state1a),
        .ram_valid_i(ram_valid_i),
        .rx_addr_en(rx_addr_en),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .state0a(state0a),
        .state4a(state4a));
  ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45 rpntr
       (.D(D),
        .E(E),
        .Q(\gc0.count_d1_reg[3] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (Q),
        .\rd_pntr_gc_reg[3] (\rd_pntr_gc_reg[3] ),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module ntps_top_axi_ethernetlite_0_0_rd_status_flags_as
   (fifo_empty_i,
    p_18_out,
    E,
    \wr_pntr_bin_reg[3] ,
    phy_tx_clk,
    Q,
    fifo_tx_en);
  output fifo_empty_i;
  output p_18_out;
  output [0:0]E;
  input \wr_pntr_bin_reg[3] ;
  input phy_tx_clk;
  input [0:0]Q;
  input fifo_tx_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_18_out;
  wire phy_tx_clk;
  wire \wr_pntr_bin_reg[3] ;

  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[5]_i_1__0 
       (.I0(fifo_tx_en),
        .I1(p_18_out),
        .O(E));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\wr_pntr_bin_reg[3] ),
        .PRE(Q),
        .Q(p_18_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\wr_pntr_bin_reg[3] ),
        .PRE(Q),
        .Q(fifo_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44
   (state1a,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    state1a_0,
    \wr_pntr_bin_reg[2] ,
    s_axi_aclk,
    Q,
    \rdDestAddrNib_D_t_q_reg[2] ,
    \gpr1.dout_i_reg[1] ,
    \gv.ram_valid_d1_reg ,
    state0a,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst);
  output state1a;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output state1a_0;
  input \wr_pntr_bin_reg[2] ;
  input s_axi_aclk;
  input [0:0]Q;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input [0:0]\gpr1.dout_i_reg[1] ;
  input \gv.ram_valid_d1_reg ;
  input state0a;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;

  wire [0:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]\gpr1.dout_i_reg[1] ;
  wire \gv.ram_valid_d1_reg ;
  wire p_18_out;
  wire ping_rx_status_reg;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire rxCrcRst;
  wire s_axi_aclk;
  wire state0a;
  wire state1a;
  wire state1a_0;
  wire \wr_pntr_bin_reg[2] ;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_pntr_bin_reg[2] ),
        .PRE(Q),
        .Q(p_18_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_pntr_bin_reg[2] ),
        .PRE(Q),
        .Q(state1a));
  LUT5 #(
    .INIT(32'h1515FF05)) 
    \rdDestAddrNib_D_t_q[1]_i_4 
       (.I0(\rdDestAddrNib_D_t_q_reg[2] ),
        .I1(state1a),
        .I2(\gpr1.dout_i_reg[1] ),
        .I3(\gv.ram_valid_d1_reg ),
        .I4(state0a),
        .O(\rdDestAddrNib_D_t_q_reg[1] ));
  LUT5 #(
    .INIT(32'h0DDD0000)) 
    state1a_i_1
       (.I0(state1a),
        .I1(\gv.ram_valid_d1_reg ),
        .I2(ping_rx_status_reg),
        .I3(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .I4(rxCrcRst),
        .O(state1a_0));
endmodule

(* ORIG_REF_NAME = "receive" *) 
module ntps_top_axi_ethernetlite_0_0_receive
   (Q,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    WEA,
    rx_addr_en,
    checkingBroadcastAdr_reg_reg,
    \rxbuffer_addr_reg[11] ,
    D694_out,
    RX_DONE_D1_I,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    \rdDestAddrNib_D_t_q_reg[2] ,
    s_axi_aclk,
    SS,
    phy_rx_clk,
    DIA,
    DIB,
    DIC,
    s_axi_aresetn,
    ping_rx_status_reg_0,
    \RX_PONG_REG_GEN.pong_rx_status_reg_0 ,
    rx_pong_ping_l,
    \emac_rx_rd_data_d1_reg[3]_0 ,
    \emac_rx_rd_data_d1_reg[2]_0 ,
    gie_enable,
    p_9_in,
    STATE17A,
    p_17_in,
    s_axi_wdata,
    rx_intr_en0,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg );
  output [3:0]Q;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]WEA;
  output rx_addr_en;
  output [3:0]checkingBroadcastAdr_reg_reg;
  output \rxbuffer_addr_reg[11] ;
  output D694_out;
  output RX_DONE_D1_I;
  output ping_rx_status_reg;
  output \RX_PONG_REG_GEN.pong_rx_status_reg ;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input s_axi_aclk;
  input [0:0]SS;
  input phy_rx_clk;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input s_axi_aresetn;
  input ping_rx_status_reg_0;
  input \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  input rx_pong_ping_l;
  input \emac_rx_rd_data_d1_reg[3]_0 ;
  input \emac_rx_rd_data_d1_reg[2]_0 ;
  input gie_enable;
  input [0:0]p_9_in;
  input STATE17A;
  input [0:0]p_17_in;
  input [0:0]s_axi_wdata;
  input rx_intr_en0;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  input \AXI4_LITE_IF_GEN.write_in_prog_reg ;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire D694_out;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire INST_CRCGENRX_n_0;
  wire INST_CRCGENRX_n_1;
  wire INST_CRCGENRX_n_12;
  wire INST_RX_INTRFCE_n_10;
  wire INST_RX_INTRFCE_n_11;
  wire INST_RX_INTRFCE_n_13;
  wire INST_RX_INTRFCE_n_14;
  wire INST_RX_INTRFCE_n_19;
  wire INST_RX_INTRFCE_n_20;
  wire INST_RX_INTRFCE_n_29;
  wire INST_RX_INTRFCE_n_3;
  wire INST_RX_STATE_n_15;
  wire INST_RX_STATE_n_16;
  wire INST_RX_STATE_n_7;
  wire INST_RX_STATE_n_8;
  wire \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i ;
  wire \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out ;
  wire \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out ;
  wire [3:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire Q7_in;
  wire RX_DONE_D1_I;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  wire [0:0]SS;
  wire STATE17A;
  wire [0:0]WEA;
  wire busFifoData_is_5_d1;
  wire [3:0]checkingBroadcastAdr_reg_reg;
  wire \emac_rx_rd_data_d1_reg[2]_0 ;
  wire \emac_rx_rd_data_d1_reg[3]_0 ;
  wire [4:5]emac_rx_rd_data_i;
  wire fifo_empty_i;
  wire gie_enable;
  wire goto_readDestAdrNib1;
  wire p_10_in;
  wire p_12_in;
  wire [0:0]p_17_in;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_4_in;
  wire p_6_in;
  wire p_7_in;
  wire [0:0]p_9_in;
  wire p_9_in_0;
  wire [13:4]parallel_crc;
  wire parallel_crc1;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire ping_rx_status_reg_0;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire rxBusFifoRdAck;
  wire rxComboCrcRst;
  wire rxCrcEn;
  wire rxCrcEn_d1;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_intr_en0;
  wire rx_pong_ping_l;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;

  ntps_top_axi_ethernetlite_0_0_crcgenrx INST_CRCGENRX
       (.D({parallel_crc[13],parallel_crc[11:10],parallel_crc[8:7],parallel_crc[5:4],parallel_crc1}),
        .E(rxCrcEn_d1),
        .Q({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in,p_12_in,p_10_in,p_9_in_0,p_7_in,p_6_in,p_4_in,INST_CRCGENRX_n_12}),
        .Q7_in(Q7_in),
        .SS(rxComboCrcRst),
        .crcokdelay(INST_CRCGENRX_n_0),
        .crcokdelay_0(INST_CRCGENRX_n_1),
        .\gpr1.dout_i_reg[5] (Q),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  ntps_top_axi_ethernetlite_0_0_rx_intrfce INST_RX_INTRFCE
       (.D({parallel_crc[13],parallel_crc[11:10],parallel_crc[8:7],parallel_crc[5:4],parallel_crc1}),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out ),
        .Q({Q,emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg_0 ),
        .SR(INST_RX_INTRFCE_n_11),
        .SS(SS),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(INST_RX_INTRFCE_n_29),
        .\crc_local_reg[31] ({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in,p_12_in,p_10_in,p_9_in_0,p_7_in,p_6_in,p_4_in,INST_CRCGENRX_n_12}),
        .fifo_empty_i(fifo_empty_i),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out ),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg_0),
        .preamble(INST_RX_INTRFCE_n_14),
        .ram_valid_i(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i ),
        .\rdDestAddrNib_D_t_q_reg[1] (INST_RX_INTRFCE_n_3),
        .\rdDestAddrNib_D_t_q_reg[2] (INST_RX_STATE_n_15),
        .\rdDestAddrNib_D_t_q_reg[3] (INST_RX_INTRFCE_n_19),
        .rxBusFifoRdAck(rxBusFifoRdAck),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(INST_RX_INTRFCE_n_20),
        .state0a_0(INST_RX_STATE_n_8),
        .state1a(INST_RX_INTRFCE_n_10),
        .state2a(INST_RX_INTRFCE_n_13),
        .state3a(INST_RX_STATE_n_16),
        .state4a(INST_RX_STATE_n_7));
  ntps_top_axi_ethernetlite_0_0_rx_statemachine INST_RX_STATE
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg (\AXI4_LITE_IF_GEN.write_in_prog_reg ),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .D694_out(D694_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .E(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out ),
        .Q({Q[3],emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .Q7_in(Q7_in),
        .RX_DONE_D1_I(RX_DONE_D1_I),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_0 (INST_RX_INTRFCE_n_20),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_1 (\RX_PONG_REG_GEN.pong_rx_status_reg_0 ),
        .SR(INST_RX_INTRFCE_n_11),
        .SS(SS),
        .STATE17A(STATE17A),
        .WEA(WEA),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .\crc_local_reg[16] (INST_CRCGENRX_n_1),
        .\crc_local_reg[31] (rxComboCrcRst),
        .crcokdelay_0(INST_CRCGENRX_n_0),
        .\emac_rx_rd_data_d1_reg[0] (checkingBroadcastAdr_reg_reg),
        .\emac_rx_rd_data_d1_reg[2] (\emac_rx_rd_data_d1_reg[2]_0 ),
        .\emac_rx_rd_data_d1_reg[3] (\emac_rx_rd_data_d1_reg[3]_0 ),
        .fifo_empty_i(fifo_empty_i),
        .gie_enable(gie_enable),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .\gpr1.dout_i_reg[1] (INST_RX_INTRFCE_n_13),
        .\gpr1.dout_i_reg[1]_0 (INST_RX_INTRFCE_n_19),
        .\gpr1.dout_i_reg[4] (INST_RX_INTRFCE_n_14),
        .\gpr1.dout_i_reg[5] (INST_RX_INTRFCE_n_29),
        .\gv.ram_valid_d1_reg (INST_RX_STATE_n_7),
        .p_17_in(p_17_in),
        .p_18_out(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out ),
        .p_9_in(p_9_in),
        .ping_rx_status_reg(ping_rx_status_reg),
        .ping_rx_status_reg_0(ping_rx_status_reg_0),
        .ram_empty_i_reg(INST_RX_INTRFCE_n_10),
        .ram_empty_i_reg_0(INST_RX_INTRFCE_n_3),
        .ram_valid_i(\I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i ),
        .\rdDestAddrNib_D_t_q_reg[2]_0 (INST_RX_STATE_n_8),
        .\rdDestAddrNib_D_t_q_reg[2]_1 (\rdDestAddrNib_D_t_q_reg[2] ),
        .rxBusFifoRdAck(rxBusFifoRdAck),
        .rxCrcEn(rxCrcEn),
        .rxCrcEn_d1_reg(INST_RX_STATE_n_15),
        .rxCrcRst(rxCrcRst),
        .rx_intr_en0(rx_intr_en0),
        .rx_pong_ping_l(rx_pong_ping_l),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (\rxbuffer_addr_reg[11] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .state2a_0(INST_RX_STATE_n_16));
  FDRE \emac_rx_rd_data_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(checkingBroadcastAdr_reg_reg[3]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(checkingBroadcastAdr_reg_reg[2]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(checkingBroadcastAdr_reg_reg[1]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(checkingBroadcastAdr_reg_reg[0]),
        .R(SS));
  FDRE rxCrcEn_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCrcEn),
        .Q(rxCrcEn_d1),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo
   (rst_full_ff_i,
    rst_full_gen_i,
    Q,
    \gic0.gc0.count_d2_reg[0] ,
    s_axi_aclk,
    Rst0,
    phy_tx_clk);
  output rst_full_ff_i;
  output rst_full_gen_i;
  output [2:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[0] ;
  input s_axi_aclk;
  input Rst0;
  input phy_tx_clk;

  wire [2:0]Q;
  wire Rst0;
  wire [1:0]\gic0.gc0.count_d2_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0 ;
  wire phy_tx_clk;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire rst_rd_reg1;
  wire rst_rd_reg2;
  wire rst_wr_reg1;
  wire rst_wr_reg2;
  wire s_axi_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

  assign rst_full_ff_i = rst_d2;
  FDCE #(
    .INIT(1'b0)) 
    \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(Rst0),
        .D(rst_d3),
        .Q(rst_full_gen_i));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Rst0),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(Rst0),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(Rst0),
        .Q(rst_d3));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0 
       (.I0(rd_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0 ),
        .Q(Q[1]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Rst0),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(Rst0),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Rst0),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(Rst0),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0 ),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0 ),
        .Q(\gic0.gc0.count_d2_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0 ),
        .Q(\gic0.gc0.count_d2_reg[0] [1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40
   (rst_full_ff_i,
    rst_full_gen_i,
    Q,
    \gic0.gc0.count_reg[0] ,
    phy_rx_clk,
    rst_s,
    s_axi_aclk);
  output rst_full_ff_i;
  output rst_full_gen_i;
  output [2:0]Q;
  output [1:0]\gic0.gc0.count_reg[0] ;
  input phy_rx_clk;
  input rst_s;
  input s_axi_aclk;

  wire [2:0]Q;
  wire [1:0]\gic0.gc0.count_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ;
  wire phy_rx_clk;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire rst_rd_reg1;
  wire rst_rd_reg2;
  wire rst_s;
  wire rst_wr_reg1;
  wire rst_wr_reg2;
  wire s_axi_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  assign rst_full_ff_i = rst_d2;
  FDCE #(
    .INIT(1'b0)) 
    \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(rst_s),
        .D(rst_d3),
        .Q(rst_full_gen_i));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_s),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_s),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst_s),
        .Q(rst_d3));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_s),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst_s),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_s),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst_s),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gic0.gc0.count_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0 ),
        .Q(\gic0.gc0.count_reg[0] [1]));
endmodule

(* ORIG_REF_NAME = "rx_intrfce" *) 
module ntps_top_axi_ethernetlite_0_0_rx_intrfce
   (rxBusFifoRdAck,
    fifo_empty_i,
    p_18_out,
    \rdDestAddrNib_D_t_q_reg[1] ,
    Q,
    state1a,
    SR,
    D11_out,
    state2a,
    preamble,
    D10_out,
    D20_out,
    goto_readDestAdrNib1,
    rx_addr_en,
    \rdDestAddrNib_D_t_q_reg[3] ,
    state0a,
    D,
    busFifoData_is_5_d1_reg,
    ram_valid_i,
    s_axi_aclk,
    phy_rx_clk,
    DIA,
    DIB,
    DIC,
    \rdDestAddrNib_D_t_q_reg[2] ,
    state0a_0,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    rxCrcRst,
    D17_out,
    s_axi_aresetn,
    Q3_in9_in,
    rx_start,
    busFifoData_is_5_d1,
    Q11_in,
    state3a,
    E,
    state4a,
    \crc_local_reg[31] ,
    SS);
  output rxBusFifoRdAck;
  output fifo_empty_i;
  output p_18_out;
  output \rdDestAddrNib_D_t_q_reg[1] ;
  output [5:0]Q;
  output state1a;
  output [0:0]SR;
  output D11_out;
  output state2a;
  output preamble;
  output D10_out;
  output D20_out;
  output goto_readDestAdrNib1;
  output rx_addr_en;
  output \rdDestAddrNib_D_t_q_reg[3] ;
  output state0a;
  output [7:0]D;
  output busFifoData_is_5_d1_reg;
  input ram_valid_i;
  input s_axi_aclk;
  input phy_rx_clk;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input \rdDestAddrNib_D_t_q_reg[2] ;
  input state0a_0;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input rxCrcRst;
  input D17_out;
  input s_axi_aresetn;
  input Q3_in9_in;
  input rx_start;
  input busFifoData_is_5_d1;
  input Q11_in;
  input state3a;
  input [0:0]E;
  input state4a;
  input [10:0]\crc_local_reg[31] ;
  input [0:0]SS;

  wire [7:0]D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D20_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire [0:0]E;
  wire [5:0]Q;
  wire Q11_in;
  wire Q3_in9_in;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg;
  wire [10:0]\crc_local_reg[31] ;
  wire fifo_empty_i;
  wire goto_readDestAdrNib1;
  wire p_18_out;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire preamble;
  wire ram_valid_i;
  wire \rdDestAddrNib_D_t_q_reg[1] ;
  wire \rdDestAddrNib_D_t_q_reg[2] ;
  wire \rdDestAddrNib_D_t_q_reg[3] ;
  wire rst_s;
  wire rxBusFifoRdAck;
  wire rxCrcRst;
  wire rx_addr_en;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire state0a;
  wire state0a_0;
  wire state1a;
  wire state2a;
  wire state3a;
  wire state4a;

  ntps_top_axi_ethernetlite_0_0_cdc_sync_30 CDC_FIFO_RST
       (.SS(SS),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(rst_s));
  ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31 I_RX_FIFO
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D17_out(D17_out),
        .D20_out(D20_out),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .E(E),
        .Q(Q),
        .Q11_in(Q11_in),
        .Q3_in9_in(Q3_in9_in),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(SR),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg(busFifoData_is_5_d1_reg),
        .\crc_local_reg[31] (\crc_local_reg[31] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_18_out(p_18_out),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .preamble(preamble),
        .ram_valid_i(ram_valid_i),
        .\rdDestAddrNib_D_t_q_reg[1] (\rdDestAddrNib_D_t_q_reg[1] ),
        .\rdDestAddrNib_D_t_q_reg[2] (\rdDestAddrNib_D_t_q_reg[2] ),
        .\rdDestAddrNib_D_t_q_reg[3] (\rdDestAddrNib_D_t_q_reg[3] ),
        .rst_s(rst_s),
        .rxCrcRst(rxCrcRst),
        .rx_addr_en(rx_addr_en),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[11] (rxBusFifoRdAck),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .state0a(state0a),
        .state0a_0(state0a_0),
        .state1a(fifo_empty_i),
        .state1a_0(state1a),
        .state2a(state2a),
        .state3a(state3a),
        .state4a(state4a));
endmodule

(* ORIG_REF_NAME = "rx_statemachine" *) 
module ntps_top_axi_ethernetlite_0_0_rx_statemachine
   (Q7_in,
    rxCrcRst,
    D17_out,
    Q11_in,
    rx_start,
    Q3_in9_in,
    busFifoData_is_5_d1,
    \gv.ram_valid_d1_reg ,
    \rdDestAddrNib_D_t_q_reg[2]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    ram_valid_i,
    E,
    WEA,
    rxCrcEn,
    rxCrcEn_d1_reg,
    state2a_0,
    \rxbuffer_addr_reg[11] ,
    D694_out,
    RX_DONE_D1_I,
    \crc_local_reg[31] ,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    \rdDestAddrNib_D_t_q_reg[2]_1 ,
    crcokdelay_0,
    s_axi_aclk,
    SS,
    ram_empty_i_reg,
    D10_out,
    D20_out,
    D11_out,
    \gpr1.dout_i_reg[4] ,
    \gpr1.dout_i_reg[5] ,
    Q,
    \gpr1.dout_i_reg[1] ,
    s_axi_aresetn,
    rxBusFifoRdAck,
    \gpr1.dout_i_reg[1]_0 ,
    fifo_empty_i,
    rx_pong_ping_l,
    \RX_PONG_REG_GEN.pong_rx_status_reg_0 ,
    goto_readDestAdrNib1,
    p_18_out,
    ram_empty_i_reg_0,
    \crc_local_reg[16] ,
    \emac_rx_rd_data_d1_reg[3] ,
    \emac_rx_rd_data_d1_reg[2] ,
    \emac_rx_rd_data_d1_reg[0] ,
    gie_enable,
    p_9_in,
    STATE17A,
    p_17_in,
    s_axi_wdata,
    rx_intr_en0,
    ping_rx_status_reg_0,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg ,
    \RX_PONG_REG_GEN.pong_rx_status_reg_1 ,
    SR);
  output Q7_in;
  output rxCrcRst;
  output D17_out;
  output Q11_in;
  output rx_start;
  output Q3_in9_in;
  output busFifoData_is_5_d1;
  output \gv.ram_valid_d1_reg ;
  output \rdDestAddrNib_D_t_q_reg[2]_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output ram_valid_i;
  output [0:0]E;
  output [0:0]WEA;
  output rxCrcEn;
  output rxCrcEn_d1_reg;
  output state2a_0;
  output \rxbuffer_addr_reg[11] ;
  output D694_out;
  output RX_DONE_D1_I;
  output [0:0]\crc_local_reg[31] ;
  output ping_rx_status_reg;
  output \RX_PONG_REG_GEN.pong_rx_status_reg ;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2]_1 ;
  input crcokdelay_0;
  input s_axi_aclk;
  input [0:0]SS;
  input ram_empty_i_reg;
  input D10_out;
  input D20_out;
  input D11_out;
  input \gpr1.dout_i_reg[4] ;
  input \gpr1.dout_i_reg[5] ;
  input [2:0]Q;
  input \gpr1.dout_i_reg[1] ;
  input s_axi_aresetn;
  input rxBusFifoRdAck;
  input \gpr1.dout_i_reg[1]_0 ;
  input fifo_empty_i;
  input rx_pong_ping_l;
  input \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  input goto_readDestAdrNib1;
  input p_18_out;
  input ram_empty_i_reg_0;
  input \crc_local_reg[16] ;
  input \emac_rx_rd_data_d1_reg[3] ;
  input \emac_rx_rd_data_d1_reg[2] ;
  input [3:0]\emac_rx_rd_data_d1_reg[0] ;
  input gie_enable;
  input [0:0]p_9_in;
  input STATE17A;
  input [0:0]p_17_in;
  input [0:0]s_axi_wdata;
  input rx_intr_en0;
  input ping_rx_status_reg_0;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  input \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  input \RX_PONG_REG_GEN.pong_rx_status_reg_1 ;
  input [0:0]SR;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  wire D;
  wire D10_out;
  wire D11_out;
  wire D17_out;
  wire D18_out;
  wire D19_out;
  wire D20_out;
  wire D24_out;
  wire D25_out;
  wire D694_out;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]E;
  wire \Mac_addr_ram_addr_rd[0]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_rd[1]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_rd[2]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_rd[2]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_rd[2]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_rd[3]_i_1_n_0 ;
  wire [2:0]Q;
  wire Q0_in;
  wire Q11_in;
  wire Q17_in;
  wire Q3_in;
  wire Q3_in9_in;
  wire Q7_in;
  wire Q_0;
  wire RX_DONE_D1_I;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_1 ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire STATE17A;
  wire [0:0]WEA;
  wire busFifoData_is_5_d1;
  wire checkingBroadcastAdr_reg;
  wire checkingBroadcastAdr_reg_i_1_n_0;
  wire checkingBroadcastAdr_reg_i_2_n_0;
  wire checkingBroadcastAdr_reg_i_3_n_0;
  wire \crc_local_reg[16] ;
  wire [0:0]\crc_local_reg[31] ;
  wire crcokdelay_0;
  wire [3:0]\emac_rx_rd_data_d1_reg[0] ;
  wire \emac_rx_rd_data_d1_reg[2] ;
  wire \emac_rx_rd_data_d1_reg[3] ;
  wire fifo_empty_i;
  wire gie_enable;
  wire goto_readDestAdrNib1;
  wire \gpr1.dout_i_reg[1] ;
  wire \gpr1.dout_i_reg[1]_0 ;
  wire \gpr1.dout_i_reg[4] ;
  wire \gpr1.dout_i_reg[5] ;
  wire \gv.ram_valid_d1_reg ;
  wire [0:0]p_17_in;
  wire p_18_out;
  wire [0:0]p_9_in;
  wire ping_rx_status_reg;
  wire ping_rx_status_reg_0;
  wire \pkt_length_cnt[0]_i_1_n_0 ;
  wire \pkt_length_cnt[1]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_2_n_0 ;
  wire \pkt_length_cnt[3]_i_1_n_0 ;
  wire \pkt_length_cnt[3]_i_2_n_0 ;
  wire \pkt_length_cnt[4]_i_1_n_0 ;
  wire \pkt_length_cnt[5]_i_1_n_0 ;
  wire \pkt_length_cnt[6]_i_1_n_0 ;
  wire \pkt_length_cnt[6]_i_2_n_0 ;
  wire \pkt_length_cnt[6]_i_3_n_0 ;
  wire \pkt_length_cnt[6]_i_5_n_0 ;
  wire \pkt_length_cnt_reg_n_0_[0] ;
  wire \pkt_length_cnt_reg_n_0_[1] ;
  wire \pkt_length_cnt_reg_n_0_[2] ;
  wire \pkt_length_cnt_reg_n_0_[3] ;
  wire \pkt_length_cnt_reg_n_0_[4] ;
  wire \pkt_length_cnt_reg_n_0_[5] ;
  wire \pkt_length_cnt_reg_n_0_[6] ;
  wire preamble_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_valid_i;
  wire [0:3]rdDestAddrNib_D_t;
  wire [0:3]rdDestAddrNib_D_t_q;
  wire \rdDestAddrNib_D_t_q[0]_i_1_n_0 ;
  wire \rdDestAddrNib_D_t_q[0]_i_3_n_0 ;
  wire \rdDestAddrNib_D_t_q[0]_i_4_n_0 ;
  wire \rdDestAddrNib_D_t_q[1]_i_2_n_0 ;
  wire \rdDestAddrNib_D_t_q[1]_i_3_n_0 ;
  wire \rdDestAddrNib_D_t_q[2]_i_2_n_0 ;
  wire \rdDestAddrNib_D_t_q[2]_i_3_n_0 ;
  wire \rdDestAddrNib_D_t_q[2]_i_4_n_0 ;
  wire \rdDestAddrNib_D_t_q[2]_i_5_n_0 ;
  wire \rdDestAddrNib_D_t_q[3]_i_2_n_0 ;
  wire \rdDestAddrNib_D_t_q[3]_i_3_n_0 ;
  wire \rdDestAddrNib_D_t_q[3]_i_4_n_0 ;
  wire \rdDestAddrNib_D_t_q[3]_i_5_n_0 ;
  wire \rdDestAddrNib_D_t_q[3]_i_6_n_0 ;
  wire \rdDestAddrNib_D_t_q_reg[2]_0 ;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2]_1 ;
  wire rxAbortRst;
  wire rxBusFifoRdAck;
  wire rxCrcEn;
  wire rxCrcEn_d1_reg;
  wire rxCrcRst;
  wire rx_intr_en0;
  wire rx_pong_ping_l;
  wire rx_start;
  wire \rxbuffer_addr_reg[11] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire state0a_i_3_n_0;
  wire state17a_i_2_n_0;
  wire state17a_i_4_n_0;
  wire state2a_0;

  LUT5 #(
    .INIT(32'hF200FFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(rxBusFifoRdAck),
        .I1(\gv.ram_valid_d1_reg ),
        .I2(rxCrcRst),
        .I3(rx_pong_ping_l),
        .I4(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ));
  LUT5 #(
    .INIT(32'h00F2FFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(rxBusFifoRdAck),
        .I1(\gv.ram_valid_d1_reg ),
        .I2(rxCrcRst),
        .I3(rx_pong_ping_l),
        .I4(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_3 
       (.I0(s_axi_aresetn),
        .I1(\gv.ram_valid_d1_reg ),
        .O(WEA));
  LUT5 #(
    .INIT(32'h00020000)) 
    DONE_D1_I_i_1
       (.I0(\pkt_length_cnt[6]_i_5_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[6] ),
        .I2(\pkt_length_cnt_reg_n_0_[5] ),
        .I3(\pkt_length_cnt_reg_n_0_[4] ),
        .I4(Q_0),
        .O(RX_DONE_D1_I));
  LUT5 #(
    .INIT(32'hAA808080)) 
    IP2INTC_IRPT_REG_I_i_2
       (.I0(gie_enable),
        .I1(p_9_in),
        .I2(RX_DONE_D1_I),
        .I3(STATE17A),
        .I4(p_17_in),
        .O(D694_out));
  LUT6 #(
    .INIT(64'hF040F040F04000B0)) 
    \Mac_addr_ram_addr_rd[0]_i_2 
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(state17a_i_2_n_0),
        .I2(rdDestAddrNib_D_t[0]),
        .I3(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I4(rdDestAddrNib_D_t[2]),
        .I5(rdDestAddrNib_D_t[3]),
        .O(\Mac_addr_ram_addr_rd[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5500450055000000)) 
    \Mac_addr_ram_addr_rd[0]_i_3 
       (.I0(\rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .I1(\rdDestAddrNib_D_t_q[2]_i_5_n_0 ),
        .I2(\rdDestAddrNib_D_t_q[3]_i_6_n_0 ),
        .I3(rdDestAddrNib_D_t_q[1]),
        .I4(\rdDestAddrNib_D_t_q[1]_i_3_n_0 ),
        .I5(\rdDestAddrNib_D_t_q[1]_i_2_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h01E0)) 
    \Mac_addr_ram_addr_rd[1]_i_1 
       (.I0(rdDestAddrNib_D_t[3]),
        .I1(rdDestAddrNib_D_t[2]),
        .I2(rdDestAddrNib_D_t[1]),
        .I3(rdDestAddrNib_D_t[0]),
        .O(\Mac_addr_ram_addr_rd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h31393908)) 
    \Mac_addr_ram_addr_rd[2]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[2]_i_2_n_0 ),
        .I1(rdDestAddrNib_D_t[2]),
        .I2(\Mac_addr_ram_addr_rd[2]_i_3_n_0 ),
        .I3(rdDestAddrNib_D_t[1]),
        .I4(rdDestAddrNib_D_t[0]),
        .O(\Mac_addr_ram_addr_rd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAAAAAB)) 
    \Mac_addr_ram_addr_rd[2]_i_2 
       (.I0(\rdDestAddrNib_D_t_q[3]_i_4_n_0 ),
        .I1(\rdDestAddrNib_D_t_q[3]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[1]_0 ),
        .I3(\rdDestAddrNib_D_t_q[3]_i_6_n_0 ),
        .I4(rdDestAddrNib_D_t_q[1]),
        .I5(goto_readDestAdrNib1),
        .O(\Mac_addr_ram_addr_rd[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00D0D0D0)) 
    \Mac_addr_ram_addr_rd[2]_i_3 
       (.I0(\rdDestAddrNib_D_t_q[3]_i_6_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_0 ),
        .I2(rdDestAddrNib_D_t_q[3]),
        .I3(rdDestAddrNib_D_t_q[1]),
        .I4(rdDestAddrNib_D_t_q[0]),
        .O(\Mac_addr_ram_addr_rd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F040F0F0F0F000B)) 
    \Mac_addr_ram_addr_rd[3]_i_1 
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(state17a_i_2_n_0),
        .I2(rdDestAddrNib_D_t[3]),
        .I3(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I4(rdDestAddrNib_D_t[0]),
        .I5(rdDestAddrNib_D_t[2]),
        .O(\Mac_addr_ram_addr_rd[3]_i_1_n_0 ));
  FDRE \Mac_addr_ram_addr_rd_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_rd[0]_i_2_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2]_1 [3]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_rd[1]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2]_1 [2]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_rd[2]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2]_1 [1]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_rd[3]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2]_1 [0]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFAAFFFFC0AAC0C0)) 
    \PONG_REG_GEN.pong_rx_status_i_1 
       (.I0(s_axi_wdata),
        .I1(rx_pong_ping_l),
        .I2(RX_DONE_D1_I),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .I4(\AXI4_LITE_IF_GEN.write_in_prog_reg ),
        .I5(\RX_PONG_REG_GEN.pong_rx_status_reg_1 ),
        .O(\RX_PONG_REG_GEN.pong_rx_status_reg ));
  FDRE busFifoData_is_5_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gpr1.dout_i_reg[5] ),
        .Q(busFifoData_is_5_d1),
        .R(SS));
  LUT6 #(
    .INIT(64'h4444444544444444)) 
    checkingBroadcastAdr_reg_i_1
       (.I0(rxCrcRst),
        .I1(checkingBroadcastAdr_reg),
        .I2(checkingBroadcastAdr_reg_i_2_n_0),
        .I3(checkingBroadcastAdr_reg_i_3_n_0),
        .I4(rdDestAddrNib_D_t_q[0]),
        .I5(rdDestAddrNib_D_t_q[3]),
        .O(checkingBroadcastAdr_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    checkingBroadcastAdr_reg_i_2
       (.I0(\emac_rx_rd_data_d1_reg[0] [1]),
        .I1(\emac_rx_rd_data_d1_reg[0] [3]),
        .I2(\emac_rx_rd_data_d1_reg[0] [0]),
        .I3(\emac_rx_rd_data_d1_reg[0] [2]),
        .O(checkingBroadcastAdr_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    checkingBroadcastAdr_reg_i_3
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(rdDestAddrNib_D_t_q[2]),
        .O(checkingBroadcastAdr_reg_i_3_n_0));
  FDRE checkingBroadcastAdr_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(checkingBroadcastAdr_reg_i_1_n_0),
        .Q(checkingBroadcastAdr_reg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \crc_local[31]_i_1 
       (.I0(rxAbortRst),
        .I1(s_axi_aresetn),
        .I2(rxCrcRst),
        .O(\crc_local_reg[31] ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    crcokdelay
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D24_out),
        .Q(Q7_in),
        .R(crcokdelay_0));
  LUT3 #(
    .INIT(8'hF4)) 
    crcokdelay_i_2
       (.I0(rxCrcEn),
        .I1(Q7_in),
        .I2(\crc_local_reg[16] ),
        .O(D24_out));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \gpr1.dout_i[5]_i_1 
       (.I0(p_18_out),
        .I1(\gv.ram_valid_d1_reg ),
        .I2(Q_0),
        .I3(rxCrcRst),
        .I4(Q11_in),
        .I5(rxBusFifoRdAck),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gpr1.dout_i[5]_i_2 
       (.I0(Q3_in9_in),
        .I1(Q3_in),
        .I2(rdDestAddrNib_D_t_q[1]),
        .I3(rdDestAddrNib_D_t_q[2]),
        .I4(rdDestAddrNib_D_t_q[3]),
        .I5(rdDestAddrNib_D_t_q[0]),
        .O(\gv.ram_valid_d1_reg ));
  LUT6 #(
    .INIT(64'h0000000055555551)) 
    \gv.ram_valid_d1_i_1 
       (.I0(fifo_empty_i),
        .I1(\gv.ram_valid_d1_reg ),
        .I2(Q_0),
        .I3(rxCrcRst),
        .I4(Q11_in),
        .I5(rxBusFifoRdAck),
        .O(ram_valid_i));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    ping_rx_status_i_1
       (.I0(s_axi_wdata),
        .I1(rx_intr_en0),
        .I2(rx_pong_ping_l),
        .I3(RX_DONE_D1_I),
        .I4(ping_rx_status_reg_0),
        .O(ping_rx_status_reg));
  LUT5 #(
    .INIT(32'h1F111111)) 
    \pkt_length_cnt[0]_i_1 
       (.I0(\pkt_length_cnt[2]_i_2_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(Q3_in9_in),
        .I4(rxBusFifoRdAck),
        .O(\pkt_length_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h41FF414141414141)) 
    \pkt_length_cnt[1]_i_1 
       (.I0(\pkt_length_cnt[2]_i_2_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(Q[0]),
        .I4(Q3_in9_in),
        .I5(rxBusFifoRdAck),
        .O(\pkt_length_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4441)) 
    \pkt_length_cnt[2]_i_1 
       (.I0(\pkt_length_cnt[2]_i_2_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[2] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[0] ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pkt_length_cnt[2]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[5] ),
        .I1(\pkt_length_cnt_reg_n_0_[6] ),
        .I2(\pkt_length_cnt_reg_n_0_[3] ),
        .I3(\pkt_length_cnt_reg_n_0_[4] ),
        .I4(\pkt_length_cnt_reg_n_0_[1] ),
        .I5(\pkt_length_cnt_reg_n_0_[2] ),
        .O(\pkt_length_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAA9)) 
    \pkt_length_cnt[3]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[3] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt_reg_n_0_[2] ),
        .I3(\pkt_length_cnt_reg_n_0_[1] ),
        .I4(\pkt_length_cnt[3]_i_2_n_0 ),
        .I5(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pkt_length_cnt[3]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[6] ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[4] ),
        .O(\pkt_length_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFF0EF0)) 
    \pkt_length_cnt[4]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[6] ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[4] ),
        .I3(\pkt_length_cnt[6]_i_5_n_0 ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF9A8A)) 
    \pkt_length_cnt[5]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[5] ),
        .I1(\pkt_length_cnt_reg_n_0_[4] ),
        .I2(\pkt_length_cnt[6]_i_5_n_0 ),
        .I3(\pkt_length_cnt_reg_n_0_[6] ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pkt_length_cnt[6]_i_1 
       (.I0(preamble_n_0),
        .I1(s_axi_aresetn),
        .O(\pkt_length_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pkt_length_cnt[6]_i_2 
       (.I0(rxCrcEn_d1_reg),
        .I1(Q3_in),
        .I2(Q[1]),
        .I3(Q3_in9_in),
        .I4(rxBusFifoRdAck),
        .O(\pkt_length_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFD00)) 
    \pkt_length_cnt[6]_i_3 
       (.I0(\pkt_length_cnt[6]_i_5_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[4] ),
        .I3(\pkt_length_cnt_reg_n_0_[6] ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pkt_length_cnt[6]_i_4 
       (.I0(rdDestAddrNib_D_t_q[2]),
        .I1(rdDestAddrNib_D_t_q[1]),
        .I2(rdDestAddrNib_D_t_q[3]),
        .I3(rdDestAddrNib_D_t_q[0]),
        .O(rxCrcEn_d1_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    \pkt_length_cnt[6]_i_5 
       (.I0(\pkt_length_cnt_reg_n_0_[1] ),
        .I1(\pkt_length_cnt_reg_n_0_[2] ),
        .I2(\pkt_length_cnt_reg_n_0_[0] ),
        .I3(\pkt_length_cnt_reg_n_0_[3] ),
        .O(\pkt_length_cnt[6]_i_5_n_0 ));
  FDRE \pkt_length_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[0]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[0] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[1]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[1] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[2]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[2] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[3]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[3] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[4]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[4] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[5]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[5] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  FDRE \pkt_length_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[6]_i_3_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[6] ),
        .R(\pkt_length_cnt[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    preamble
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gpr1.dout_i_reg[4] ),
        .Q(preamble_n_0),
        .R(SS));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \rdDestAddrNib_D_t_q[0]_i_1 
       (.I0(busFifoData_is_5_d1),
        .I1(rx_start),
        .I2(Q[2]),
        .I3(\gpr1.dout_i_reg[1] ),
        .I4(s_axi_aresetn),
        .O(\rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F444F4)) 
    \rdDestAddrNib_D_t_q[0]_i_2 
       (.I0(\gpr1.dout_i_reg[1]_0 ),
        .I1(\rdDestAddrNib_D_t_q[0]_i_3_n_0 ),
        .I2(rdDestAddrNib_D_t_q[1]),
        .I3(state17a_i_2_n_0),
        .I4(\rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .O(rdDestAddrNib_D_t[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \rdDestAddrNib_D_t_q[0]_i_3 
       (.I0(rdDestAddrNib_D_t_q[0]),
        .I1(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I2(rxBusFifoRdAck),
        .I3(rdDestAddrNib_D_t_q[1]),
        .O(\rdDestAddrNib_D_t_q[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rdDestAddrNib_D_t_q[0]_i_4 
       (.I0(rdDestAddrNib_D_t_q[0]),
        .I1(rdDestAddrNib_D_t_q[3]),
        .I2(rdDestAddrNib_D_t_q[2]),
        .O(\rdDestAddrNib_D_t_q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF550355FF55)) 
    \rdDestAddrNib_D_t_q[1]_i_1 
       (.I0(state17a_i_2_n_0),
        .I1(\rdDestAddrNib_D_t_q[1]_i_2_n_0 ),
        .I2(\rdDestAddrNib_D_t_q[1]_i_3_n_0 ),
        .I3(rdDestAddrNib_D_t_q[1]),
        .I4(ram_empty_i_reg_0),
        .I5(\rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .O(rdDestAddrNib_D_t[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFF3FF32)) 
    \rdDestAddrNib_D_t_q[1]_i_2 
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(Q[1]),
        .I2(rdDestAddrNib_D_t_q[2]),
        .I3(rdDestAddrNib_D_t_q[0]),
        .I4(rdDestAddrNib_D_t_q[3]),
        .O(\rdDestAddrNib_D_t_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \rdDestAddrNib_D_t_q[1]_i_3 
       (.I0(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I1(rdDestAddrNib_D_t_q[2]),
        .I2(rdDestAddrNib_D_t_q[1]),
        .I3(rdDestAddrNib_D_t_q[3]),
        .I4(rdDestAddrNib_D_t_q[0]),
        .I5(fifo_empty_i),
        .O(\rdDestAddrNib_D_t_q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCEE00AACCFE00AA)) 
    \rdDestAddrNib_D_t_q[2]_i_1 
       (.I0(\rdDestAddrNib_D_t_q[2]_i_2_n_0 ),
        .I1(\rdDestAddrNib_D_t_q[2]_i_3_n_0 ),
        .I2(\rdDestAddrNib_D_t_q[2]_i_4_n_0 ),
        .I3(\rdDestAddrNib_D_t_q[1]_i_3_n_0 ),
        .I4(rdDestAddrNib_D_t_q[2]),
        .I5(\rdDestAddrNib_D_t_q[2]_i_5_n_0 ),
        .O(rdDestAddrNib_D_t[2]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \rdDestAddrNib_D_t_q[2]_i_2 
       (.I0(rxBusFifoRdAck),
        .I1(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I2(rdDestAddrNib_D_t_q[3]),
        .I3(rdDestAddrNib_D_t_q[2]),
        .I4(\rdDestAddrNib_D_t_q[2]_i_3_n_0 ),
        .I5(\rdDestAddrNib_D_t_q[2]_i_5_n_0 ),
        .O(\rdDestAddrNib_D_t_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rdDestAddrNib_D_t_q[2]_i_3 
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(rdDestAddrNib_D_t_q[0]),
        .O(\rdDestAddrNib_D_t_q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \rdDestAddrNib_D_t_q[2]_i_4 
       (.I0(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I1(rdDestAddrNib_D_t_q[3]),
        .I2(rxBusFifoRdAck),
        .O(\rdDestAddrNib_D_t_q[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \rdDestAddrNib_D_t_q[2]_i_5 
       (.I0(Q[1]),
        .I1(rdDestAddrNib_D_t_q[0]),
        .I2(rdDestAddrNib_D_t_q[3]),
        .I3(rdDestAddrNib_D_t_q[1]),
        .I4(rdDestAddrNib_D_t_q[2]),
        .O(\rdDestAddrNib_D_t_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF400F4F4F400F500)) 
    \rdDestAddrNib_D_t_q[3]_i_1 
       (.I0(\rdDestAddrNib_D_t_q[3]_i_2_n_0 ),
        .I1(\rdDestAddrNib_D_t_q[3]_i_3_n_0 ),
        .I2(\rdDestAddrNib_D_t_q[3]_i_4_n_0 ),
        .I3(\rdDestAddrNib_D_t_q[3]_i_5_n_0 ),
        .I4(\gpr1.dout_i_reg[1]_0 ),
        .I5(\rdDestAddrNib_D_t_q[3]_i_6_n_0 ),
        .O(rdDestAddrNib_D_t[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFBF)) 
    \rdDestAddrNib_D_t_q[3]_i_2 
       (.I0(rdDestAddrNib_D_t_q[1]),
        .I1(rxBusFifoRdAck),
        .I2(Q3_in9_in),
        .I3(Q[0]),
        .I4(rdDestAddrNib_D_t_q[2]),
        .I5(rdDestAddrNib_D_t_q[0]),
        .O(\rdDestAddrNib_D_t_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdDestAddrNib_D_t_q[3]_i_3 
       (.I0(rdDestAddrNib_D_t_q[2]),
        .I1(rdDestAddrNib_D_t_q[0]),
        .O(\rdDestAddrNib_D_t_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF08FF00FF00)) 
    \rdDestAddrNib_D_t_q[3]_i_4 
       (.I0(Q[1]),
        .I1(rdDestAddrNib_D_t_q[1]),
        .I2(rdDestAddrNib_D_t_q[0]),
        .I3(rdDestAddrNib_D_t_q[3]),
        .I4(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I5(rxBusFifoRdAck),
        .O(\rdDestAddrNib_D_t_q[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \rdDestAddrNib_D_t_q[3]_i_5 
       (.I0(rdDestAddrNib_D_t_q[0]),
        .I1(rdDestAddrNib_D_t_q[1]),
        .I2(rdDestAddrNib_D_t_q[3]),
        .O(\rdDestAddrNib_D_t_q[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rdDestAddrNib_D_t_q[3]_i_6 
       (.I0(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .I1(rxBusFifoRdAck),
        .O(\rdDestAddrNib_D_t_q[3]_i_6_n_0 ));
  FDRE \rdDestAddrNib_D_t_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdDestAddrNib_D_t[0]),
        .Q(rdDestAddrNib_D_t_q[0]),
        .R(\rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  FDRE \rdDestAddrNib_D_t_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdDestAddrNib_D_t[1]),
        .Q(rdDestAddrNib_D_t_q[1]),
        .R(\rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  FDRE \rdDestAddrNib_D_t_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdDestAddrNib_D_t[2]),
        .Q(rdDestAddrNib_D_t_q[2]),
        .R(\rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  FDRE \rdDestAddrNib_D_t_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdDestAddrNib_D_t[3]),
        .Q(rdDestAddrNib_D_t_q[3]),
        .R(\rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA80AA)) 
    rxCrcEn_d1_i_1
       (.I0(rxBusFifoRdAck),
        .I1(Q[1]),
        .I2(Q3_in),
        .I3(rxCrcEn_d1_reg),
        .I4(Q3_in9_in),
        .O(rxCrcEn));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rxbuffer_addr[11]_i_1 
       (.I0(rx_start),
        .I1(s_axi_aresetn),
        .O(\rxbuffer_addr_reg[11] ));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    state0a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D17_out),
        .Q(rxCrcRst),
        .S(SS));
  LUT6 #(
    .INIT(64'hFF0EFF0EFFFFFF0E)) 
    state0a_i_1
       (.I0(rx_start),
        .I1(Q17_in),
        .I2(\gpr1.dout_i_reg[1] ),
        .I3(state0a_i_3_n_0),
        .I4(rxCrcRst),
        .I5(\RX_PONG_REG_GEN.pong_rx_status_reg_0 ),
        .O(D17_out));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    state0a_i_3
       (.I0(Q17_in),
        .I1(Q[2]),
        .I2(Q_0),
        .I3(rxAbortRst),
        .O(state0a_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state17a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D18_out),
        .Q(Q3_in),
        .R(SS));
  LUT6 #(
    .INIT(64'h404040FF40404040)) 
    state17a_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q3_in),
        .I3(state17a_i_2_n_0),
        .I4(rdDestAddrNib_D_t_q[1]),
        .I5(rdDestAddrNib_D_t_q[0]),
        .O(D18_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    state17a_i_2
       (.I0(rxBusFifoRdAck),
        .I1(rdDestAddrNib_D_t_q[3]),
        .I2(\rdDestAddrNib_D_t_q[2]_i_5_n_0 ),
        .I3(rdDestAddrNib_D_t_q[2]),
        .I4(\rdDestAddrNib_D_t_q_reg[2]_0 ),
        .O(state17a_i_2_n_0));
  LUT6 #(
    .INIT(64'hFBFAFBFAFBFA4040)) 
    state17a_i_3
       (.I0(rxCrcRst),
        .I1(checkingBroadcastAdr_reg),
        .I2(checkingBroadcastAdr_reg_i_2_n_0),
        .I3(state17a_i_4_n_0),
        .I4(\emac_rx_rd_data_d1_reg[3] ),
        .I5(\emac_rx_rd_data_d1_reg[2] ),
        .O(\rdDestAddrNib_D_t_q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    state17a_i_4
       (.I0(rdDestAddrNib_D_t_q[3]),
        .I1(rdDestAddrNib_D_t_q[0]),
        .I2(rdDestAddrNib_D_t_q[2]),
        .I3(rdDestAddrNib_D_t_q[1]),
        .O(state17a_i_4_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state18a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D19_out),
        .Q(Q0_in),
        .R(SS));
  LUT5 #(
    .INIT(32'hDDCCDDC0)) 
    state18a_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q3_in9_in),
        .I3(Q3_in),
        .I4(Q11_in),
        .O(D19_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state1a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg),
        .Q(Q17_in),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state20a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D25_out),
        .Q(Q_0),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    state20a_i_1
       (.I0(Q0_in),
        .I1(Q7_in),
        .O(D25_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state22a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(rxAbortRst),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    state22a_i_1
       (.I0(\gpr1.dout_i_reg[1]_0 ),
        .I1(Q0_in),
        .I2(Q7_in),
        .I3(preamble_n_0),
        .O(D));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state2a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D10_out),
        .Q(Q11_in),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    state2a_i_3
       (.I0(rx_start),
        .I1(Q17_in),
        .O(state2a_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state3a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D20_out),
        .Q(rx_start),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state4a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D11_out),
        .Q(Q3_in9_in),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff
   (D,
    Q,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [3:0]D;
  input [3:0]Q;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [3:0]Q;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire phy_tx_clk;

  assign D[3:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26
   (D,
    Q,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [3:0]D;
  input [3:0]Q;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [3:0]Q;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire s_axi_aclk;

  assign D[3:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27
   (out,
    \wr_pntr_bin_reg[2] ,
    D,
    phy_tx_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [2:0]\wr_pntr_bin_reg[2] ;
  input [3:0]D;
  input phy_tx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [3:0]D;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire phy_tx_clk;
  wire [2:0]\wr_pntr_bin_reg[2] ;

  assign out[0] = Q_reg[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \wr_pntr_bin[0]_i_1__0 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[3]),
        .I3(Q_reg[2]),
        .O(\wr_pntr_bin_reg[2] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \wr_pntr_bin[1]_i_1__0 
       (.I0(Q_reg[2]),
        .I1(Q_reg[1]),
        .I2(Q_reg[3]),
        .O(\wr_pntr_bin_reg[2] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_bin[2]_i_1__0 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .O(\wr_pntr_bin_reg[2] [2]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28
   (out,
    \rd_pntr_bin_reg[2] ,
    D,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [0:0]out;
  output [2:0]\rd_pntr_bin_reg[2] ;
  input [3:0]D;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [3:0]D;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire [2:0]\rd_pntr_bin_reg[2] ;
  wire s_axi_aclk;

  assign out[0] = Q_reg[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_pntr_bin[0]_i_1__0 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[3]),
        .I3(Q_reg[2]),
        .O(\rd_pntr_bin_reg[2] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \rd_pntr_bin[1]_i_1__0 
       (.I0(Q_reg[2]),
        .I1(Q_reg[1]),
        .I2(Q_reg[3]),
        .O(\rd_pntr_bin_reg[2] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_bin[2]_i_1__0 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .O(\rd_pntr_bin_reg[2] [2]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46
   (D,
    Q,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [3:0]D;
  input [3:0]Q;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [3:0]Q;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire s_axi_aclk;

  assign D[3:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47
   (D,
    Q,
    phy_rx_clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [3:0]D;
  input [3:0]Q;
  input phy_rx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [3:0]Q;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire phy_rx_clk;

  assign D[3:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48
   (out,
    \wr_pntr_bin_reg[2] ,
    D,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [2:0]\wr_pntr_bin_reg[2] ;
  input [3:0]D;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [3:0]D;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire s_axi_aclk;
  wire [2:0]\wr_pntr_bin_reg[2] ;

  assign out[0] = Q_reg[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \wr_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[3]),
        .I3(Q_reg[2]),
        .O(\wr_pntr_bin_reg[2] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \wr_pntr_bin[1]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[1]),
        .I2(Q_reg[3]),
        .O(\wr_pntr_bin_reg[2] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pntr_bin[2]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .O(\wr_pntr_bin_reg[2] [2]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49
   (out,
    \rd_pntr_bin_reg[2] ,
    D,
    phy_rx_clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] );
  output [0:0]out;
  output [2:0]\rd_pntr_bin_reg[2] ;
  input [3:0]D;
  input phy_rx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;

  wire [3:0]D;
  wire [3:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ;
  wire phy_rx_clk;
  wire [2:0]\rd_pntr_bin_reg[2] ;

  assign out[0] = Q_reg[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[3]),
        .I3(Q_reg[2]),
        .O(\rd_pntr_bin_reg[2] [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \rd_pntr_bin[1]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[1]),
        .I2(Q_reg[3]),
        .O(\rd_pntr_bin_reg[2] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pntr_bin[2]_i_1 
       (.I0(Q_reg[2]),
        .I1(Q_reg[3]),
        .O(\rd_pntr_bin_reg[2] [2]));
endmodule

(* ORIG_REF_NAME = "transmit" *) 
module ntps_top_axi_ethernetlite_0_0_transmit
   (loopback_en_reg,
    SS,
    STATE24A,
    mac_addr_ram_we,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    D,
    \txbuffer_addr_reg[11] ,
    tx_addr_en,
    E,
    loopback_en_reg_0,
    Q,
    prmry_vect_in,
    phy_tx_en_i,
    s_axi_aclk,
    phy_tx_clk,
    DOADO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    s_axi_aresetn,
    rx_pong_ping_l,
    \TX_PONG_REG_GEN.pong_mac_program_reg ,
    \tx_packet_length_reg[15] ,
    C_SENSE_SYNC_2,
    tx_clk_reg_d3,
    tx_clk_reg_d2,
    tx_done_d2,
    \TX_PONG_REG_GEN.pong_tx_status_reg ,
    p_17_in,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg_1);
  output loopback_en_reg;
  output [0:0]SS;
  output STATE24A;
  output mac_addr_ram_we;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [5:0]D;
  output \txbuffer_addr_reg[11] ;
  output tx_addr_en;
  output [0:0]E;
  output loopback_en_reg_0;
  output [3:0]Q;
  output [3:0]prmry_vect_in;
  output phy_tx_en_i;
  input s_axi_aclk;
  input phy_tx_clk;
  input [3:0]DOADO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input s_axi_aresetn;
  input rx_pong_ping_l;
  input \TX_PONG_REG_GEN.pong_mac_program_reg ;
  input [15:0]\tx_packet_length_reg[15] ;
  input C_SENSE_SYNC_2;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;
  input tx_done_d2;
  input \TX_PONG_REG_GEN.pong_tx_status_reg ;
  input [1:0]p_17_in;
  input rx_done_d1;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg_1;

  wire CDC_TX_EN_n_0;
  wire CE;
  wire CE_0;
  wire C_SENSE_SYNC_2;
  wire [5:0]D;
  wire D0;
  wire D029_out;
  wire D031_out;
  wire D28_out;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [3:0]DOADO;
  wire [0:0]E;
  wire INST_CRCCOUNTER_n_4;
  wire INST_CRCCOUNTER_n_6;
  wire INST_CRCGENTX_n_3;
  wire INST_DEFERRAL_CONTROL_n_0;
  wire INST_DEFERRAL_CONTROL_n_1;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_4;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_5;
  wire INST_TXNIBBLECOUNT_n_2;
  wire INST_TX_INTRFCE_n_3;
  wire INST_TX_INTRFCE_n_6;
  wire INST_TX_INTRFCE_n_7;
  wire INST_TX_INTRFCE_n_8;
  wire INST_TX_INTRFCE_n_9;
  wire INST_TX_STATE_MACHINE_n_10;
  wire INST_TX_STATE_MACHINE_n_13;
  wire INST_TX_STATE_MACHINE_n_20;
  wire INST_TX_STATE_MACHINE_n_21;
  wire INST_TX_STATE_MACHINE_n_22;
  wire INST_TX_STATE_MACHINE_n_23;
  wire INST_TX_STATE_MACHINE_n_24;
  wire INST_TX_STATE_MACHINE_n_26;
  wire INST_TX_STATE_MACHINE_n_27;
  wire INST_TX_STATE_MACHINE_n_30;
  wire INST_TX_STATE_MACHINE_n_34;
  wire \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out ;
  wire \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire [3:0]Q;
  wire Q0_in9_in;
  wire Q1_in;
  wire Q32_in;
  wire Rst0;
  wire [0:0]SS;
  wire STATE24A;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_REG_GEN.pong_mac_program_reg ;
  wire \TX_PONG_REG_GEN.pong_tx_status_reg ;
  wire axi_phy_tx_en_i_p;
  wire axi_phy_tx_en_i_p0;
  wire [0:3]crcCnt;
  wire [8:11]currentTxBusFifoWrCnt;
  wire [11:11]currentTxNibbleCnt;
  wire emac_tx_wr_d1;
  wire [0:3]emac_tx_wr_data_d1;
  wire [0:3]emac_tx_wr_data_i;
  wire emac_tx_wr_i;
  wire enblCRC;
  wire enblData;
  wire fifo_tx_en;
  wire loopback_en_reg;
  wire loopback_en_reg_0;
  wire loopback_en_reg_1;
  wire lut_val;
  wire mac_addr_ram_we;
  wire [16:18]mux_in_data;
  wire [1:0]p_17_in;
  wire [11:0]p_1_in;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire [3:0]prmry_vect_in;
  wire rx_done_d1;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire [0:11]txNibbleCnt_pad;
  wire [11:1]txNibbleCnt_pad0;
  wire \txNibbleCnt_pad[0]_i_4_n_0 ;
  wire \txNibbleCnt_pad[0]_i_5_n_0 ;
  wire \txNibbleCnt_pad[0]_i_6_n_0 ;
  wire \txNibbleCnt_pad[3]_i_3_n_0 ;
  wire \txNibbleCnt_pad[3]_i_4_n_0 ;
  wire \txNibbleCnt_pad[3]_i_5_n_0 ;
  wire \txNibbleCnt_pad[3]_i_6_n_0 ;
  wire \txNibbleCnt_pad[7]_i_3_n_0 ;
  wire \txNibbleCnt_pad[7]_i_4_n_0 ;
  wire \txNibbleCnt_pad[7]_i_5_n_0 ;
  wire \txNibbleCnt_pad[7]_i_6_n_0 ;
  wire \txNibbleCnt_pad_reg[0]_i_3_n_2 ;
  wire \txNibbleCnt_pad_reg[0]_i_3_n_3 ;
  wire \txNibbleCnt_pad_reg[3]_i_2_n_0 ;
  wire \txNibbleCnt_pad_reg[3]_i_2_n_1 ;
  wire \txNibbleCnt_pad_reg[3]_i_2_n_2 ;
  wire \txNibbleCnt_pad_reg[3]_i_2_n_3 ;
  wire \txNibbleCnt_pad_reg[7]_i_2_n_0 ;
  wire \txNibbleCnt_pad_reg[7]_i_2_n_1 ;
  wire \txNibbleCnt_pad_reg[7]_i_2_n_2 ;
  wire \txNibbleCnt_pad_reg[7]_i_2_n_3 ;
  wire tx_addr_en;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_d_rst;
  wire tx_done_d2;
  wire tx_en_i;
  wire tx_intr_en0;
  wire [15:0]\tx_packet_length_reg[15] ;
  wire \txbuffer_addr_reg[11] ;
  wire txfifo_empty;
  wire txfifo_full;
  wire [3:2]\NLW_txNibbleCnt_pad_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_txNibbleCnt_pad_reg[0]_i_3_O_UNCONNECTED ;

  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4 CDC_PHY_TX_RST
       (.phy_tx_clk(phy_tx_clk),
        .s_axi_aresetn(SS),
        .scndry_out(tx_d_rst));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3 CDC_TX_EN
       (.fifo_tx_en_reg(CDC_TX_EN_n_0),
        .phy_tx_clk(phy_tx_clk),
        .prmry_in(tx_en_i),
        .tx_d_rst(tx_d_rst));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(INST_TX_INTRFCE_n_9),
        .O(prmry_vect_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(INST_TX_INTRFCE_n_8),
        .O(prmry_vect_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(INST_TX_INTRFCE_n_7),
        .O(prmry_vect_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(INST_TX_INTRFCE_n_6),
        .O(prmry_vect_in[3]));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1 INST_CRCCOUNTER
       (.CE(CE),
        .D0(D0),
        .DIA(INST_CRCCOUNTER_n_4),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q0_in9_in(Q0_in9_in),
        .STATE17A(INST_TX_STATE_MACHINE_n_34),
        .crcCnt(crcCnt),
        .enblCRC(enblCRC),
        .\gic0.gc0.count_reg[3] (INST_CRCCOUNTER_n_6),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(SS),
        .txfifo_full(txfifo_full));
  ntps_top_axi_ethernetlite_0_0_crcgentx INST_CRCGENTX
       (.E(INST_TX_STATE_MACHINE_n_21),
        .Q({mux_in_data[16],mux_in_data[17],mux_in_data[18]}),
        .SR(INST_TX_STATE_MACHINE_n_13),
        .\emac_tx_wr_data_d1_reg[0] ({emac_tx_wr_data_d1[0],emac_tx_wr_data_d1[1],emac_tx_wr_data_d1[2],emac_tx_wr_data_d1[3]}),
        .\emac_tx_wr_data_d1_reg[3] (INST_CRCGENTX_n_3),
        .enblCRC(enblCRC),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
  ntps_top_axi_ethernetlite_0_0_deferral INST_DEFERRAL_CONTROL
       (.C_SENSE_SYNC_2(C_SENSE_SYNC_2),
        .Q({INST_DEFERRAL_CONTROL_n_0,INST_DEFERRAL_CONTROL_n_1}),
        .STATE17A(INST_TX_STATE_MACHINE_n_34),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(SS),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0 INST_TXBUSFIFOWRITENIBBLECOUNT
       (.\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (INST_TX_STATE_MACHINE_n_20),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .STATE11A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .STATE8A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .emac_tx_wr_i(emac_tx_wr_i),
        .s_axi_aclk(s_axi_aclk),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg INST_TXNIBBLECOUNT
       (.CE(CE_0),
        .D029_out(D029_out),
        .D031_out(D031_out),
        .\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ),
        .Q1_in(Q1_in),
        .STATE13A(currentTxNibbleCnt),
        .enblData(enblData),
        .s_axi_aclk(s_axi_aclk),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .\txNibbleCnt_pad_reg[11] (INST_TXNIBBLECOUNT_n_2),
        .\tx_packet_length_reg[15] (\tx_packet_length_reg[15] ),
        .txfifo_full(txfifo_full));
  ntps_top_axi_ethernetlite_0_0_tx_intrfce INST_TX_INTRFCE
       (.D({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3]}),
        .D28_out(D28_out),
        .DIA(INST_CRCCOUNTER_n_4),
        .E(\I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out ),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ({INST_TX_INTRFCE_n_6,INST_TX_INTRFCE_n_7,INST_TX_INTRFCE_n_8,INST_TX_INTRFCE_n_9}),
        .Q({txNibbleCnt_pad[0],txNibbleCnt_pad[1],txNibbleCnt_pad[2],txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6],txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10],txNibbleCnt_pad[11]}),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(INST_CRCCOUNTER_n_6),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(\I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out ),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (INST_TX_INTRFCE_n_3),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
  ntps_top_axi_ethernetlite_0_0_tx_statemachine INST_TX_STATE_MACHINE
       (.CE(CE_0),
        .CE_0(CE),
        .D(D),
        .D0(D0),
        .D029_out(D029_out),
        .D031_out(D031_out),
        .D28_out(D28_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .DOADO(DOADO),
        .E(INST_TX_STATE_MACHINE_n_21),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 (INST_TX_STATE_MACHINE_n_20),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (currentTxNibbleCnt),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .Q({mux_in_data[16],mux_in_data[17],mux_in_data[18]}),
        .Q0_in9_in(Q0_in9_in),
        .Q1_in(Q1_in),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .SR(INST_TX_STATE_MACHINE_n_13),
        .STATE14A_0(INST_CRCCOUNTER_n_6),
        .STATE24A_0(STATE24A),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_REG_GEN.pong_mac_program_reg (\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .\TX_PONG_REG_GEN.pong_tx_status_reg (\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .axi_phy_tx_en_i_p0(axi_phy_tx_en_i_p0),
        .crcCnt(crcCnt),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .emac_tx_wr_d1(emac_tx_wr_d1),
        .\emac_tx_wr_data_d1_reg[0] (INST_TX_STATE_MACHINE_n_24),
        .\emac_tx_wr_data_d1_reg[1] (INST_TX_STATE_MACHINE_n_23),
        .\emac_tx_wr_data_d1_reg[1]_0 (INST_TX_STATE_MACHINE_n_26),
        .\emac_tx_wr_data_d1_reg[2] (INST_TX_STATE_MACHINE_n_10),
        .\emac_tx_wr_data_d1_reg[2]_0 (INST_TX_STATE_MACHINE_n_22),
        .\emac_tx_wr_data_d1_reg[3] (INST_TX_STATE_MACHINE_n_27),
        .emac_tx_wr_i(emac_tx_wr_i),
        .enblCRC(enblCRC),
        .enblData(enblData),
        .\gic0.gc0.count_reg[3] (\I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out ),
        .loopback_en_reg(loopback_en_reg),
        .loopback_en_reg_0(loopback_en_reg_0),
        .loopback_en_reg_1(loopback_en_reg_1),
        .lut_val(lut_val),
        .mac_addr_ram_we(mac_addr_ram_we),
        .p_0_out(\I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out ),
        .p_17_in(p_17_in),
        .\rdDestAddrNib_D_t_q_reg[2] (Q),
        .rx_done_d1(rx_done_d1),
        .rx_pong_ping_l(rx_pong_ping_l),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\status_reg_reg[0] (E),
        .\thisState_reg[1] (INST_TX_STATE_MACHINE_n_34),
        .\thisState_reg[1]_0 ({INST_DEFERRAL_CONTROL_n_0,INST_DEFERRAL_CONTROL_n_1}),
        .transmit_start_reg_reg_0(SS),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .txCrcEn(txCrcEn),
        .txCrcEn_reg(txCrcEn_reg),
        .txNibbleCnt_pad0(txNibbleCnt_pad0),
        .\txNibbleCnt_pad_reg[0] (p_1_in),
        .\txNibbleCnt_pad_reg[11] (INST_TX_STATE_MACHINE_n_30),
        .\txNibbleCnt_pad_reg[11]_0 (txNibbleCnt_pad[11]),
        .\txNibbleCnt_pad_reg[8] (INST_TX_INTRFCE_n_3),
        .tx_addr_en(tx_addr_en),
        .tx_done_d2(tx_done_d2),
        .tx_en_i(tx_en_i),
        .tx_intr_en0(tx_intr_en0),
        .\tx_packet_length_reg[10] (\tx_packet_length_reg[15] [10:0]),
        .\tx_packet_length_reg[15] (INST_TXNIBBLECOUNT_n_2),
        .\txbuffer_addr_reg[11] (\txbuffer_addr_reg[11] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
  ntps_top_axi_ethernetlite_0_0_mux_onehot_f ONR_HOT_MUX
       (.D({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (INST_TX_STATE_MACHINE_n_26),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (INST_TX_STATE_MACHINE_n_10),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (INST_TX_STATE_MACHINE_n_27),
        .STATE15A(INST_TX_STATE_MACHINE_n_24),
        .STATE15A_0(INST_TX_STATE_MACHINE_n_23),
        .STATE15A_1(INST_TX_STATE_MACHINE_n_22),
        .lut_val(lut_val),
        .\nibData_reg[0] (INST_CRCGENTX_n_3));
  FDRE axi_phy_tx_en_i_p_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_phy_tx_en_i_p0),
        .Q(axi_phy_tx_en_i_p),
        .R(SS));
  FDRE emac_tx_wr_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_i),
        .Q(emac_tx_wr_d1),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[0]),
        .Q(emac_tx_wr_data_d1[0]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[1]),
        .Q(emac_tx_wr_data_d1[1]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[2]),
        .Q(emac_tx_wr_data_d1[2]),
        .R(SS));
  FDRE \emac_tx_wr_data_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(emac_tx_wr_data_i[3]),
        .Q(emac_tx_wr_data_d1[3]),
        .R(SS));
  FDRE fifo_tx_en_reg
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(CDC_TX_EN_n_0),
        .Q(fifo_tx_en),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[0]_i_4 
       (.I0(txNibbleCnt_pad[0]),
        .O(\txNibbleCnt_pad[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[0]_i_5 
       (.I0(txNibbleCnt_pad[1]),
        .O(\txNibbleCnt_pad[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[0]_i_6 
       (.I0(txNibbleCnt_pad[2]),
        .O(\txNibbleCnt_pad[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[3]_i_3 
       (.I0(txNibbleCnt_pad[3]),
        .O(\txNibbleCnt_pad[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[3]_i_4 
       (.I0(txNibbleCnt_pad[4]),
        .O(\txNibbleCnt_pad[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[3]_i_5 
       (.I0(txNibbleCnt_pad[5]),
        .O(\txNibbleCnt_pad[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[3]_i_6 
       (.I0(txNibbleCnt_pad[6]),
        .O(\txNibbleCnt_pad[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[7]_i_3 
       (.I0(txNibbleCnt_pad[7]),
        .O(\txNibbleCnt_pad[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[7]_i_4 
       (.I0(txNibbleCnt_pad[8]),
        .O(\txNibbleCnt_pad[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[7]_i_5 
       (.I0(txNibbleCnt_pad[9]),
        .O(\txNibbleCnt_pad[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \txNibbleCnt_pad[7]_i_6 
       (.I0(txNibbleCnt_pad[10]),
        .O(\txNibbleCnt_pad[7]_i_6_n_0 ));
  FDRE \txNibbleCnt_pad_reg[0] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[11]),
        .Q(txNibbleCnt_pad[0]),
        .R(SS));
  CARRY4 \txNibbleCnt_pad_reg[0]_i_3 
       (.CI(\txNibbleCnt_pad_reg[3]_i_2_n_0 ),
        .CO({\NLW_txNibbleCnt_pad_reg[0]_i_3_CO_UNCONNECTED [3:2],\txNibbleCnt_pad_reg[0]_i_3_n_2 ,\txNibbleCnt_pad_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,txNibbleCnt_pad[1],txNibbleCnt_pad[2]}),
        .O({\NLW_txNibbleCnt_pad_reg[0]_i_3_O_UNCONNECTED [3],txNibbleCnt_pad0[11:9]}),
        .S({1'b0,\txNibbleCnt_pad[0]_i_4_n_0 ,\txNibbleCnt_pad[0]_i_5_n_0 ,\txNibbleCnt_pad[0]_i_6_n_0 }));
  FDRE \txNibbleCnt_pad_reg[10] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[1]),
        .Q(txNibbleCnt_pad[10]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[11] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[0]),
        .Q(txNibbleCnt_pad[11]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[1] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[10]),
        .Q(txNibbleCnt_pad[1]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[2] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[9]),
        .Q(txNibbleCnt_pad[2]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[3] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[8]),
        .Q(txNibbleCnt_pad[3]),
        .R(SS));
  CARRY4 \txNibbleCnt_pad_reg[3]_i_2 
       (.CI(\txNibbleCnt_pad_reg[7]_i_2_n_0 ),
        .CO({\txNibbleCnt_pad_reg[3]_i_2_n_0 ,\txNibbleCnt_pad_reg[3]_i_2_n_1 ,\txNibbleCnt_pad_reg[3]_i_2_n_2 ,\txNibbleCnt_pad_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6]}),
        .O(txNibbleCnt_pad0[8:5]),
        .S({\txNibbleCnt_pad[3]_i_3_n_0 ,\txNibbleCnt_pad[3]_i_4_n_0 ,\txNibbleCnt_pad[3]_i_5_n_0 ,\txNibbleCnt_pad[3]_i_6_n_0 }));
  FDRE \txNibbleCnt_pad_reg[4] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[7]),
        .Q(txNibbleCnt_pad[4]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[5] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[6]),
        .Q(txNibbleCnt_pad[5]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[6] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[5]),
        .Q(txNibbleCnt_pad[6]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[7] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[4]),
        .Q(txNibbleCnt_pad[7]),
        .R(SS));
  CARRY4 \txNibbleCnt_pad_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\txNibbleCnt_pad_reg[7]_i_2_n_0 ,\txNibbleCnt_pad_reg[7]_i_2_n_1 ,\txNibbleCnt_pad_reg[7]_i_2_n_2 ,\txNibbleCnt_pad_reg[7]_i_2_n_3 }),
        .CYINIT(txNibbleCnt_pad[11]),
        .DI({txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10]}),
        .O(txNibbleCnt_pad0[4:1]),
        .S({\txNibbleCnt_pad[7]_i_3_n_0 ,\txNibbleCnt_pad[7]_i_4_n_0 ,\txNibbleCnt_pad[7]_i_5_n_0 ,\txNibbleCnt_pad[7]_i_6_n_0 }));
  FDRE \txNibbleCnt_pad_reg[8] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[3]),
        .Q(txNibbleCnt_pad[8]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[9] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_30),
        .D(p_1_in[2]),
        .Q(txNibbleCnt_pad[9]),
        .R(SS));
  FDRE txcrcen_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txCrcEn),
        .Q(txCrcEn_reg),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "tx_intrfce" *) 
module ntps_top_axi_ethernetlite_0_0_tx_intrfce
   (txfifo_empty,
    txfifo_full,
    p_0_out,
    \txNibbleCnt_pad_reg[0] ,
    D28_out,
    phy_tx_en_i,
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ,
    Rst0,
    s_axi_aclk,
    phy_tx_clk,
    E,
    DIA,
    D,
    Q,
    Q32_in,
    STATE14A,
    axi_phy_tx_en_i_p,
    fifo_tx_en);
  output txfifo_empty;
  output txfifo_full;
  output p_0_out;
  output \txNibbleCnt_pad_reg[0] ;
  output D28_out;
  output phy_tx_en_i;
  output [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  input Rst0;
  input s_axi_aclk;
  input phy_tx_clk;
  input [0:0]E;
  input [0:0]DIA;
  input [3:0]D;
  input [11:0]Q;
  input Q32_in;
  input STATE14A;
  input axi_phy_tx_en_i_p;
  input fifo_tx_en;

  wire [3:0]D;
  wire D28_out;
  wire [0:0]DIA;
  wire D_0;
  wire [0:0]E;
  wire [3:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [11:0]Q;
  wire Q32_in;
  wire Rst0;
  wire STATE14A;
  wire axi_phy_tx_en_i_p;
  wire fifo_empty_i;
  wire fifo_tx_en;
  wire p_0_out;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire s_axi_aclk;
  wire \txNibbleCnt_pad_reg[0] ;
  wire txfifo_empty;
  wire txfifo_full;

  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2 CDC_FIFO_EMPTY
       (.prmry_in(fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(D_0));
  ntps_top_axi_ethernetlite_0_0_async_fifo_fg I_TX_FIFO
       (.D(D),
        .D28_out(D28_out),
        .DIA(DIA),
        .E(E),
        .\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to (\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .Q(Q),
        .Q32_in(Q32_in),
        .Rst0(Rst0),
        .STATE14A(STATE14A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .fifo_empty_i(fifo_empty_i),
        .fifo_tx_en(fifo_tx_en),
        .p_0_out(p_0_out),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .s_axi_aclk(s_axi_aclk),
        .\txNibbleCnt_pad_reg[0] (\txNibbleCnt_pad_reg[0] ),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pipeIt
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(txfifo_empty),
        .R(Rst0));
endmodule

(* ORIG_REF_NAME = "tx_statemachine" *) 
module ntps_top_axi_ethernetlite_0_0_tx_statemachine
   (loopback_en_reg,
    transmit_start_reg_reg_0,
    Q1_in,
    enblData,
    Q0_in9_in,
    enblCRC,
    Q32_in,
    STATE24A_0,
    tx_en_i,
    mac_addr_ram_we,
    \emac_tx_wr_data_d1_reg[2] ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    SR,
    D,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ,
    E,
    \emac_tx_wr_data_d1_reg[2]_0 ,
    \emac_tx_wr_data_d1_reg[1] ,
    \emac_tx_wr_data_d1_reg[0] ,
    lut_val,
    \emac_tx_wr_data_d1_reg[1]_0 ,
    \emac_tx_wr_data_d1_reg[3] ,
    CE,
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ,
    \txNibbleCnt_pad_reg[11] ,
    txComboBusFifoWrCntRst,
    axi_phy_tx_en_i_p0,
    CE_0,
    \thisState_reg[1] ,
    txCrcEn,
    emac_tx_wr_i,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    txComboNibbleCntRst,
    Rst0,
    \txbuffer_addr_reg[11] ,
    tx_addr_en,
    \gic0.gc0.count_reg[3] ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    \txNibbleCnt_pad_reg[0] ,
    \status_reg_reg[0] ,
    loopback_en_reg_0,
    \rdDestAddrNib_D_t_q_reg[2] ,
    s_axi_aclk,
    D029_out,
    D031_out,
    D0,
    D28_out,
    DOADO,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \txNibbleCnt_pad_reg[8] ,
    s_axi_aresetn,
    rx_pong_ping_l,
    \TX_PONG_REG_GEN.pong_mac_program_reg ,
    currentTxBusFifoWrCnt,
    emac_tx_wr_d1,
    txCrcEn_reg,
    Q,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    \tx_packet_length_reg[15] ,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ,
    txfifo_full,
    crcCnt,
    p_0_out,
    STATE14A_0,
    tx_done_d2,
    \TX_PONG_REG_GEN.pong_tx_status_reg ,
    p_17_in,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ,
    \thisState_reg[1]_0 ,
    txfifo_empty,
    \tx_packet_length_reg[10] ,
    txNibbleCnt_pad0,
    \txNibbleCnt_pad_reg[11]_0 ,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg_1);
  output loopback_en_reg;
  output transmit_start_reg_reg_0;
  output Q1_in;
  output enblData;
  output Q0_in9_in;
  output enblCRC;
  output Q32_in;
  output STATE24A_0;
  output tx_en_i;
  output mac_addr_ram_we;
  output \emac_tx_wr_data_d1_reg[2] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]SR;
  output [5:0]D;
  output \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ;
  output [0:0]E;
  output \emac_tx_wr_data_d1_reg[2]_0 ;
  output \emac_tx_wr_data_d1_reg[1] ;
  output \emac_tx_wr_data_d1_reg[0] ;
  output lut_val;
  output \emac_tx_wr_data_d1_reg[1]_0 ;
  output \emac_tx_wr_data_d1_reg[3] ;
  output CE;
  output \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  output [0:0]\txNibbleCnt_pad_reg[11] ;
  output txComboBusFifoWrCntRst;
  output axi_phy_tx_en_i_p0;
  output CE_0;
  output \thisState_reg[1] ;
  output txCrcEn;
  output emac_tx_wr_i;
  output \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output txComboNibbleCntRst;
  output Rst0;
  output \txbuffer_addr_reg[11] ;
  output tx_addr_en;
  output [0:0]\gic0.gc0.count_reg[3] ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output [11:0]\txNibbleCnt_pad_reg[0] ;
  output [0:0]\status_reg_reg[0] ;
  output loopback_en_reg_0;
  output [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  input s_axi_aclk;
  input D029_out;
  input D031_out;
  input D0;
  input D28_out;
  input [3:0]DOADO;
  input \TX_PONG_GEN.tx_pong_ping_l_reg ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input \txNibbleCnt_pad_reg[8] ;
  input s_axi_aresetn;
  input rx_pong_ping_l;
  input \TX_PONG_REG_GEN.pong_mac_program_reg ;
  input [3:0]currentTxBusFifoWrCnt;
  input emac_tx_wr_d1;
  input txCrcEn_reg;
  input [2:0]Q;
  input [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  input \tx_packet_length_reg[15] ;
  input \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ;
  input txfifo_full;
  input [0:3]crcCnt;
  input p_0_out;
  input STATE14A_0;
  input tx_done_d2;
  input \TX_PONG_REG_GEN.pong_tx_status_reg ;
  input [1:0]p_17_in;
  input \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ;
  input [1:0]\thisState_reg[1]_0 ;
  input txfifo_empty;
  input [10:0]\tx_packet_length_reg[10] ;
  input [10:0]txNibbleCnt_pad0;
  input [0:0]\txNibbleCnt_pad_reg[11]_0 ;
  input rx_done_d1;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg_1;

  wire CE;
  wire CE_0;
  wire [5:0]D;
  wire D0;
  wire D029_out;
  wire D031_out;
  wire D0_in;
  wire D10_in;
  wire D11_in;
  wire D19_out;
  wire D1_in;
  wire D20_out;
  wire D21_out;
  wire D22_out;
  wire D23_out;
  wire D24_out;
  wire D25_out;
  wire D27_out;
  wire D28_out;
  wire D29_out;
  wire D2_in;
  wire D3_in;
  wire D4_in;
  wire D4_in3_in;
  wire D5_in;
  wire D6_in;
  wire D6_in4_in;
  wire D7_in;
  wire D8_in;
  wire D9_in;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0 ;
  wire [3:0]DOADO;
  wire D_0;
  wire [0:0]E;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[0]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_wr[1]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_3_n_0 ;
  wire Mac_addr_ram_we0;
  wire Mac_addr_ram_we_i_2_n_0;
  wire Mac_addr_ram_we_i_3_n_0;
  wire Mac_addr_ram_we_i_4_n_0;
  wire Mac_addr_ram_we_i_5_n_0;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ;
  wire [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ;
  wire \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire [2:0]Q;
  wire Q0_in0_in;
  wire Q0_in11_in;
  wire Q0_in9_in;
  wire Q1_in;
  wire Q26_in;
  wire Q2_in1_in;
  wire Q32_in;
  wire Q5_in;
  wire Rst0;
  wire [0:0]SR;
  wire STATE0A_i_2_n_0;
  wire STATE14A_0;
  wire STATE24A_0;
  wire STATE26A_i_1_n_0;
  wire STATE39A_n_0;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_REG_GEN.pong_mac_program_reg ;
  wire \TX_PONG_REG_GEN.pong_tx_status_reg ;
  wire axi_fifo_tx_en;
  wire axi_phy_tx_en_i_p0;
  wire busFifoWrCntRst_reg;
  wire [0:3]crcCnt;
  wire [3:0]currentTxBusFifoWrCnt;
  wire emac_tx_wr_d1;
  wire \emac_tx_wr_data_d1_reg[0] ;
  wire \emac_tx_wr_data_d1_reg[1] ;
  wire \emac_tx_wr_data_d1_reg[1]_0 ;
  wire \emac_tx_wr_data_d1_reg[2] ;
  wire \emac_tx_wr_data_d1_reg[2]_0 ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire emac_tx_wr_i;
  wire enblCRC;
  wire enblData;
  wire enblPreamble;
  wire enblSFD;
  wire [0:0]\gic0.gc0.count_reg[3] ;
  wire loopback_en_reg;
  wire loopback_en_reg_0;
  wire loopback_en_reg_1;
  wire lut_val;
  wire mac_addr_ram_we;
  wire mac_program_start;
  wire mac_program_start_reg;
  wire p_0_out;
  wire [1:0]p_17_in;
  wire [3:0]\rdDestAddrNib_D_t_q_reg[2] ;
  wire rx_done_d1;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire [0:0]\status_reg_reg[0] ;
  wire \thisState_reg[1] ;
  wire [1:0]\thisState_reg[1]_0 ;
  wire transmit_start;
  wire transmit_start_reg;
  wire transmit_start_reg_reg_0;
  wire txBusFifoWrCntRst;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire [10:0]txNibbleCnt_pad0;
  wire [11:0]\txNibbleCnt_pad_reg[0] ;
  wire [0:0]\txNibbleCnt_pad_reg[11] ;
  wire [0:0]\txNibbleCnt_pad_reg[11]_0 ;
  wire \txNibbleCnt_pad_reg[8] ;
  wire tx_addr_en;
  wire tx_done_d2;
  wire tx_en_i;
  wire tx_intr_en0;
  wire [10:0]\tx_packet_length_reg[10] ;
  wire \tx_packet_length_reg[15] ;
  wire \txbuffer_addr[11]_i_4_n_0 ;
  wire \txbuffer_addr_reg[11] ;
  wire txcrcen_d1_i_2_n_0;
  wire txfifo_empty;
  wire txfifo_full;

  LUT3 #(
    .INIT(8'h1F)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0 ),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I2(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ));
  LUT3 #(
    .INIT(8'h4F)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0 ),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I2(s_axi_aresetn),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4 
       (.I0(\txbuffer_addr[11]_i_4_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0 ),
        .I2(STATE24A_0),
        .I3(loopback_en_reg),
        .I4(Q0_in0_in),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6 
       (.I0(D4_in3_in),
        .I1(D6_in4_in),
        .I2(D_0),
        .I3(Q5_in),
        .I4(Q1_in),
        .I5(Q2_in1_in),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF75FF7F)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [3]),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I3(loopback_en_reg),
        .I4(DOADO[3]),
        .I5(enblSFD),
        .O(lut_val));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(enblData),
        .I1(\txNibbleCnt_pad_reg[8] ),
        .O(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[2]),
        .O(\emac_tx_wr_data_d1_reg[0] ));
  LUT6 #(
    .INIT(64'hAA20AA2AAAAAAAAA)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [2]),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I3(loopback_en_reg),
        .I4(DOADO[2]),
        .I5(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ),
        .O(\emac_tx_wr_data_d1_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(enblSFD),
        .I1(enblPreamble),
        .O(\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[1]),
        .O(\emac_tx_wr_data_d1_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFCDFDFFFFFFFF)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(DOADO[1]),
        .I1(loopback_en_reg),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .I4(\txNibbleCnt_pad_reg[8] ),
        .I5(enblData),
        .O(\emac_tx_wr_data_d1_reg[2] ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[0]),
        .O(\emac_tx_wr_data_d1_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAA20AA2AAAAAAAAA)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I3(loopback_en_reg),
        .I4(DOADO[0]),
        .I5(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0 ),
        .O(\emac_tx_wr_data_d1_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(enblPreamble),
        .I1(axi_fifo_tx_en),
        .I2(loopback_en_reg),
        .I3(STATE24A_0),
        .O(tx_en_i));
  LUT1 #(
    .INIT(2'h1)) 
    IP2INTC_IRPT_REG_I_i_1
       (.I0(s_axi_aresetn),
        .O(transmit_start_reg_reg_0));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \Mac_addr_ram_addr_wr[0]_i_1 
       (.I0(Mac_addr_ram_we_i_5_n_0),
        .I1(Mac_addr_ram_we_i_2_n_0),
        .I2(D8_in),
        .I3(D9_in),
        .I4(\Mac_addr_ram_addr_wr[0]_i_2_n_0 ),
        .I5(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ),
        .O(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_wr[0]_i_2 
       (.I0(D10_in),
        .I1(D11_in),
        .O(\Mac_addr_ram_addr_wr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Mac_addr_ram_addr_wr[0]_i_3 
       (.I0(D5_in),
        .I1(D4_in),
        .I2(D7_in),
        .I3(D6_in),
        .O(\Mac_addr_ram_addr_wr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \Mac_addr_ram_addr_wr[1]_i_1 
       (.I0(Mac_addr_ram_we_i_5_n_0),
        .I1(D5_in),
        .I2(D4_in),
        .I3(D7_in),
        .I4(D6_in),
        .I5(Mac_addr_ram_we_i_2_n_0),
        .O(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8AAA8A8)) 
    \Mac_addr_ram_addr_wr[2]_i_1 
       (.I0(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ),
        .I1(D3_in),
        .I2(D2_in),
        .I3(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ),
        .I4(Mac_addr_ram_we_i_3_n_0),
        .I5(D0_in),
        .O(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Mac_addr_ram_addr_wr[2]_i_2 
       (.I0(Mac_addr_ram_we_i_5_n_0),
        .I1(D1_in),
        .O(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110111011101111)) 
    \Mac_addr_ram_addr_wr[2]_i_3 
       (.I0(D7_in),
        .I1(D6_in),
        .I2(D8_in),
        .I3(D9_in),
        .I4(D10_in),
        .I5(D11_in),
        .O(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Mac_addr_ram_addr_wr[3]_i_1 
       (.I0(D1_in),
        .I1(Mac_addr_ram_we_i_5_n_0),
        .I2(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ),
        .O(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00F2)) 
    \Mac_addr_ram_addr_wr[3]_i_2 
       (.I0(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ),
        .I1(D5_in),
        .I2(D4_in),
        .I3(D3_in),
        .I4(D2_in),
        .I5(D0_in),
        .O(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABBBBBABB)) 
    \Mac_addr_ram_addr_wr[3]_i_3 
       (.I0(D6_in),
        .I1(D7_in),
        .I2(D8_in),
        .I3(D11_in),
        .I4(D10_in),
        .I5(D9_in),
        .O(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ));
  FDRE \Mac_addr_ram_addr_wr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2] [3]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2] [2]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2] [1]),
        .R(1'b0));
  FDRE \Mac_addr_ram_addr_wr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ),
        .Q(\rdDestAddrNib_D_t_q_reg[2] [0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    Mac_addr_ram_we_i_1
       (.I0(Mac_addr_ram_we_i_2_n_0),
        .I1(Mac_addr_ram_we_i_3_n_0),
        .I2(D10_in),
        .I3(D11_in),
        .I4(Mac_addr_ram_we_i_4_n_0),
        .I5(Mac_addr_ram_we_i_5_n_0),
        .O(Mac_addr_ram_we0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mac_addr_ram_we_i_2
       (.I0(D3_in),
        .I1(D2_in),
        .I2(D1_in),
        .I3(D0_in),
        .O(Mac_addr_ram_we_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Mac_addr_ram_we_i_3
       (.I0(D4_in),
        .I1(D5_in),
        .O(Mac_addr_ram_we_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mac_addr_ram_we_i_4
       (.I0(D9_in),
        .I1(D6_in),
        .I2(D7_in),
        .I3(D8_in),
        .O(Mac_addr_ram_we_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    Mac_addr_ram_we_i_5
       (.I0(s_axi_aresetn),
        .I1(Q5_in),
        .I2(STATE0A_i_2_n_0),
        .O(Mac_addr_ram_we_i_5_n_0));
  FDRE Mac_addr_ram_we_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Mac_addr_ram_we0),
        .Q(mac_addr_ram_we),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1__0 
       (.I0(currentTxBusFifoWrCnt[1]),
        .I1(enblPreamble),
        .I2(enblSFD),
        .I3(enblCRC),
        .I4(enblData),
        .O(\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2FFFF)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(busFifoWrCntRst_reg),
        .I1(enblPreamble),
        .I2(loopback_en_reg),
        .I3(STATE24A_0),
        .I4(s_axi_aresetn),
        .I5(Q5_in),
        .O(txComboBusFifoWrCntRst));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1__0 
       (.I0(loopback_en_reg),
        .I1(s_axi_aresetn),
        .I2(Q5_in),
        .O(txComboNibbleCntRst));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(enblData),
        .I1(enblSFD),
        .O(CE));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PERBIT_GEN[11].MULT_AND_i1_i_1 
       (.I0(enblPreamble),
        .I1(enblSFD),
        .I2(enblCRC),
        .I3(enblData),
        .O(emac_tx_wr_i));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1 
       (.I0(enblData),
        .I1(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ),
        .O(\PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1__0 
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(enblPreamble),
        .I2(enblSFD),
        .I3(enblCRC),
        .I4(enblData),
        .O(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[1]),
        .O(\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[2]),
        .O(\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAB)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(enblCRC),
        .I1(enblPreamble),
        .I2(axi_fifo_tx_en),
        .I3(loopback_en_reg),
        .I4(STATE24A_0),
        .O(CE_0));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[3]),
        .O(\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[8].XORCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[3]),
        .I1(enblPreamble),
        .I2(enblSFD),
        .I3(enblCRC),
        .I4(enblData),
        .O(\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1__0 
       (.I0(currentTxBusFifoWrCnt[2]),
        .I1(enblPreamble),
        .I2(enblSFD),
        .I3(enblCRC),
        .I4(enblData),
        .O(\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    RAM_reg_0_15_0_5_i_2
       (.I0(STATE24A_0),
        .I1(loopback_en_reg),
        .I2(axi_fifo_tx_en),
        .I3(enblPreamble),
        .O(\thisState_reg[1] ));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    STATE0A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D19_out),
        .Q(loopback_en_reg),
        .S(transmit_start_reg_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    STATE0A_i_1
       (.I0(Q5_in),
        .I1(STATE0A_i_2_n_0),
        .O(D19_out));
  LUT6 #(
    .INIT(64'h00000C8C08880C8C)) 
    STATE0A_i_2
       (.I0(tx_done_d2),
        .I1(loopback_en_reg),
        .I2(\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .I3(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I4(p_17_in[0]),
        .I5(p_17_in[1]),
        .O(STATE0A_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE10A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D24_out),
        .Q(enblSFD),
        .R(transmit_start_reg_reg_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    STATE10A_i_1
       (.I0(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ),
        .I1(enblSFD),
        .I2(txfifo_full),
        .I3(Q0_in11_in),
        .O(D24_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE11A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D25_out),
        .Q(Q1_in),
        .R(transmit_start_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    STATE11A_i_1
       (.I0(D031_out),
        .I1(enblData),
        .I2(enblSFD),
        .I3(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ),
        .I4(Q1_in),
        .I5(txfifo_full),
        .O(D25_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE12A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D029_out),
        .Q(enblData),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE13A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D031_out),
        .Q(Q26_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE14A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D27_out),
        .Q(Q0_in9_in),
        .R(transmit_start_reg_reg_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    STATE14A_i_1
       (.I0(txfifo_full),
        .I1(Q0_in9_in),
        .I2(Q26_in),
        .I3(enblCRC),
        .O(D27_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE15A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D0),
        .Q(enblCRC),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE16A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D28_out),
        .Q(Q32_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE17A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D29_out),
        .Q(STATE24A_0),
        .R(transmit_start_reg_reg_0));
  LUT3 #(
    .INIT(8'hEA)) 
    STATE17A_i_1
       (.I0(STATE39A_n_0),
        .I1(Q32_in),
        .I2(txfifo_empty),
        .O(D29_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE24A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE24A_0),
        .Q(D4_in3_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE25A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D4_in3_in),
        .Q(Q5_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE26A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE26A_i_1_n_0),
        .Q(D6_in4_in),
        .R(transmit_start_reg_reg_0));
  LUT6 #(
    .INIT(64'h00000000F8880000)) 
    STATE26A_i_1
       (.I0(p_17_in[1]),
        .I1(p_17_in[0]),
        .I2(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I3(\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .I4(loopback_en_reg),
        .I5(mac_program_start_reg),
        .O(STATE26A_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE27A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D6_in4_in),
        .Q(D1_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE28A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D1_in),
        .Q(D0_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE29A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D0_in),
        .Q(D2_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE30A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D2_in),
        .Q(D3_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE31A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D3_in),
        .Q(D4_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE32A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D4_in),
        .Q(D5_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE33A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D5_in),
        .Q(D6_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE34A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D6_in),
        .Q(D7_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE35A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D7_in),
        .Q(D8_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE36A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D8_in),
        .Q(D9_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE37A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D9_in),
        .Q(D10_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE38A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D10_in),
        .Q(D11_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE39A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D11_in),
        .Q(STATE39A_n_0),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE5A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D20_out),
        .Q(D_0),
        .R(transmit_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h08)) 
    STATE5A_i_1
       (.I0(transmit_start),
        .I1(loopback_en_reg),
        .I2(transmit_start_reg),
        .O(D20_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE6A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(Q0_in0_in),
        .R(transmit_start_reg_reg_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE7A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D21_out),
        .Q(Q2_in1_in),
        .R(transmit_start_reg_reg_0));
  LUT4 #(
    .INIT(16'hBFAA)) 
    STATE7A_i_1
       (.I0(D_0),
        .I1(\thisState_reg[1]_0 [1]),
        .I2(\thisState_reg[1]_0 [0]),
        .I3(Q2_in1_in),
        .O(D21_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE8A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D22_out),
        .Q(enblPreamble),
        .R(transmit_start_reg_reg_0));
  LUT5 #(
    .INIT(32'hF4444444)) 
    STATE8A_i_1
       (.I0(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ),
        .I1(enblPreamble),
        .I2(\thisState_reg[1]_0 [1]),
        .I3(\thisState_reg[1]_0 [0]),
        .I4(Q2_in1_in),
        .O(D22_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE9A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D23_out),
        .Q(Q0_in11_in),
        .R(transmit_start_reg_reg_0));
  LUT4 #(
    .INIT(16'hF888)) 
    STATE9A_i_1
       (.I0(Q0_in11_in),
        .I1(txfifo_full),
        .I2(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ),
        .I3(enblPreamble),
        .O(D23_out));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    axi_phy_tx_en_i_p_i_1
       (.I0(axi_fifo_tx_en),
        .I1(STATE24A_0),
        .I2(loopback_en_reg),
        .O(axi_phy_tx_en_i_p0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    busFifoWrCntRst_reg_i_1
       (.I0(STATE24A_0),
        .I1(loopback_en_reg),
        .I2(enblPreamble),
        .I3(busFifoWrCntRst_reg),
        .O(txBusFifoWrCntRst));
  FDRE busFifoWrCntRst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txBusFifoWrCntRst),
        .Q(busFifoWrCntRst_reg),
        .R(transmit_start_reg_reg_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \gic0.gc0.count_d1[3]_i_1 
       (.I0(p_0_out),
        .I1(STATE14A_0),
        .I2(enblData),
        .I3(enblCRC),
        .I4(enblSFD),
        .I5(enblPreamble),
        .O(\gic0.gc0.count_reg[3] ));
  LUT4 #(
    .INIT(16'hBF80)) 
    loopback_en_i_1
       (.I0(s_axi_wdata),
        .I1(tx_intr_en0),
        .I2(loopback_en_reg),
        .I3(loopback_en_reg_1),
        .O(loopback_en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    mac_program_start_reg_i_1
       (.I0(\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .I1(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I2(p_17_in[0]),
        .I3(p_17_in[1]),
        .O(mac_program_start));
  FDRE mac_program_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_program_start),
        .Q(mac_program_start_reg),
        .R(transmit_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFF1FFFF)) 
    \nibData[31]_i_1 
       (.I0(enblPreamble),
        .I1(axi_fifo_tx_en),
        .I2(loopback_en_reg),
        .I3(STATE24A_0),
        .I4(s_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \nibData[31]_i_2 
       (.I0(emac_tx_wr_d1),
        .I1(enblCRC),
        .I2(Q0_in9_in),
        .I3(txCrcEn_reg),
        .O(E));
  FDRE phytx_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_en_i),
        .Q(axi_fifo_tx_en),
        .R(transmit_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hB)) 
    pipeIt_i_1
       (.I0(Q5_in),
        .I1(s_axi_aresetn),
        .O(Rst0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \status_reg[0]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I2(STATE24A_0),
        .I3(s_axi_aresetn),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \status_reg[1]_i_1 
       (.I0(p_17_in[1]),
        .I1(STATE24A_0),
        .I2(s_axi_aresetn),
        .I3(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \status_reg[2]_i_1 
       (.I0(rx_pong_ping_l),
        .I1(s_axi_aresetn),
        .I2(STATE24A_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \status_reg[3]_i_1 
       (.I0(rx_pong_ping_l),
        .I1(s_axi_aresetn),
        .I2(STATE24A_0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \status_reg[4]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .I2(STATE24A_0),
        .I3(s_axi_aresetn),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \status_reg[5]_i_1 
       (.I0(rx_done_d1),
        .I1(s_axi_aresetn),
        .I2(STATE24A_0),
        .O(\status_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \status_reg[5]_i_2 
       (.I0(p_17_in[1]),
        .I1(STATE24A_0),
        .I2(s_axi_aresetn),
        .I3(\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h000044F4)) 
    transmit_start_reg_i_1
       (.I0(\TX_PONG_REG_GEN.pong_mac_program_reg ),
        .I1(\TX_PONG_REG_GEN.pong_tx_status_reg ),
        .I2(p_17_in[0]),
        .I3(p_17_in[1]),
        .I4(tx_done_d2),
        .O(transmit_start));
  FDRE transmit_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmit_start),
        .Q(transmit_start_reg),
        .R(transmit_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \txNibbleCnt_pad[0]_i_1 
       (.I0(enblSFD),
        .I1(\tx_packet_length_reg[15] ),
        .I2(enblData),
        .O(\txNibbleCnt_pad_reg[11] ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[0]_i_2 
       (.I0(\tx_packet_length_reg[10] [10]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[10]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[10]_i_1 
       (.I0(\tx_packet_length_reg[10] [0]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[0]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \txNibbleCnt_pad[11]_i_1 
       (.I0(\txNibbleCnt_pad_reg[11]_0 ),
        .I1(enblSFD),
        .I2(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [0]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[1]_i_1 
       (.I0(\tx_packet_length_reg[10] [9]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[9]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[2]_i_1 
       (.I0(\tx_packet_length_reg[10] [8]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[8]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[3]_i_1 
       (.I0(\tx_packet_length_reg[10] [7]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[7]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [8]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[4]_i_1 
       (.I0(\tx_packet_length_reg[10] [6]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[6]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [7]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[5]_i_1 
       (.I0(\tx_packet_length_reg[10] [5]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[5]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [6]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[6]_i_1 
       (.I0(\tx_packet_length_reg[10] [4]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[4]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [5]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[7]_i_1 
       (.I0(\tx_packet_length_reg[10] [3]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[3]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [4]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[8]_i_1 
       (.I0(\tx_packet_length_reg[10] [2]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[2]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[9]_i_1 
       (.I0(\tx_packet_length_reg[10] [1]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[1]),
        .I3(\txNibbleCnt_pad_reg[8] ),
        .O(\txNibbleCnt_pad_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \txbuffer_addr[11]_i_1 
       (.I0(enblPreamble),
        .I1(s_axi_aresetn),
        .I2(D6_in4_in),
        .O(\txbuffer_addr_reg[11] ));
  LUT2 #(
    .INIT(4'hB)) 
    \txbuffer_addr[11]_i_2 
       (.I0(enblData),
        .I1(\txbuffer_addr[11]_i_4_n_0 ),
        .O(tx_addr_en));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \txbuffer_addr[11]_i_4 
       (.I0(STATE39A_n_0),
        .I1(Mac_addr_ram_we_i_4_n_0),
        .I2(Mac_addr_ram_we_i_2_n_0),
        .I3(D11_in),
        .I4(D10_in),
        .I5(Mac_addr_ram_we_i_3_n_0),
        .O(\txbuffer_addr[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    txcrcen_d1_i_1
       (.I0(Q1_in),
        .I1(txcrcen_d1_i_2_n_0),
        .I2(enblPreamble),
        .I3(enblSFD),
        .I4(enblCRC),
        .O(txCrcEn));
  LUT4 #(
    .INIT(16'hFFFD)) 
    txcrcen_d1_i_2
       (.I0(txCrcEn_reg),
        .I1(Q0_in11_in),
        .I2(Q0_in9_in),
        .I3(loopback_en_reg),
        .O(txcrcen_d1_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module ntps_top_axi_ethernetlite_0_0_wr_bin_cntr
   (Q,
    \gic0.gc0.count_d2_reg[3]_0 ,
    \wr_pntr_gc_reg[3] ,
    E,
    s_axi_aclk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output [3:0]Q;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  output [3:0]\wr_pntr_gc_reg[3] ;
  input [0:0]E;
  input s_axi_aclk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire [3:0]plusOp__0;
  wire s_axi_aclk;
  wire [3:0]\wr_pntr_gc_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(plusOp__0[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [0]),
        .Q(\wr_pntr_gc_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [1]),
        .Q(\wr_pntr_gc_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [2]),
        .Q(\wr_pntr_gc_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [3]),
        .Q(\wr_pntr_gc_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__0[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43
   (Q,
    \gic0.gc0.count_d2_reg[3]_0 ,
    \wr_pntr_gc_reg[3] ,
    E,
    phy_rx_clk,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output [3:0]Q;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  output [3:0]\wr_pntr_gc_reg[3] ;
  input [0:0]E;
  input phy_rx_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire phy_rx_clk;
  wire [3:0]plusOp__1;
  wire [3:0]\wr_pntr_gc_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__1[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(phy_rx_clk),
        .CE(E),
        .D(Q[0]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [0]),
        .Q(\wr_pntr_gc_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [1]),
        .Q(\wr_pntr_gc_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [2]),
        .Q(\wr_pntr_gc_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(\gic0.gc0.count_d2_reg[3]_0 [3]),
        .Q(\wr_pntr_gc_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__1[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(phy_rx_clk),
        .CE(E),
        .D(plusOp__1[1]),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(phy_rx_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .D(plusOp__1[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module ntps_top_axi_ethernetlite_0_0_wr_logic
   (txfifo_full,
    p_0_out,
    Q,
    D28_out,
    \gic0.gc0.count_d2_reg[3] ,
    \wr_pntr_gc_reg[3] ,
    ram_full_i,
    s_axi_aclk,
    rst_full_ff_i,
    txfifo_empty,
    Q32_in,
    STATE14A,
    E,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output txfifo_full;
  output p_0_out;
  output [3:0]Q;
  output D28_out;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  output [3:0]\wr_pntr_gc_reg[3] ;
  input ram_full_i;
  input s_axi_aclk;
  input rst_full_ff_i;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;
  input [0:0]E;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire D28_out;
  wire [0:0]E;
  wire [3:0]Q;
  wire Q32_in;
  wire STATE14A;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire p_0_out;
  wire ram_full_i;
  wire rst_full_ff_i;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire txfifo_full;
  wire [3:0]\wr_pntr_gc_reg[3] ;

  ntps_top_axi_ethernetlite_0_0_wr_status_flags_as \gwas.wsts 
       (.D28_out(D28_out),
        .Q32_in(Q32_in),
        .STATE14A(STATE14A),
        .p_0_out(p_0_out),
        .ram_full_i(ram_full_i),
        .rst_full_ff_i(rst_full_ff_i),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .txfifo_full(txfifo_full));
  ntps_top_axi_ethernetlite_0_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .s_axi_aclk(s_axi_aclk),
        .\wr_pntr_gc_reg[3] (\wr_pntr_gc_reg[3] ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module ntps_top_axi_ethernetlite_0_0_wr_logic_38
   (Q,
    ram_full_i_reg,
    E,
    \gic0.gc0.count_d2_reg[3] ,
    \wr_pntr_gc_reg[3] ,
    ram_full_i,
    phy_rx_clk,
    rst_full_ff_i,
    \rd_pntr_bin_reg[3] ,
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] );
  output [2:0]Q;
  output ram_full_i_reg;
  output [0:0]E;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  output [3:0]\wr_pntr_gc_reg[3] ;
  input ram_full_i;
  input phy_rx_clk;
  input rst_full_ff_i;
  input [0:0]\rd_pntr_bin_reg[3] ;
  input [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ;
  wire phy_rx_clk;
  wire ram_full_i;
  wire ram_full_i_reg;
  wire [0:0]\rd_pntr_bin_reg[3] ;
  wire rst_full_ff_i;
  wire [3:0]\wr_pntr_gc_reg[3] ;
  wire [3:3]wr_pntr_plus2;

  ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42 \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .phy_rx_clk(phy_rx_clk),
        .ram_full_i(ram_full_i),
        .ram_full_i_reg_0(ram_full_i_reg),
        .\rd_pntr_bin_reg[3] (\rd_pntr_bin_reg[3] ),
        .rst_full_ff_i(rst_full_ff_i));
  ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43 wpntr
       (.E(E),
        .Q({wr_pntr_plus2,Q}),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] ),
        .phy_rx_clk(phy_rx_clk),
        .\wr_pntr_gc_reg[3] (\wr_pntr_gc_reg[3] ));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module ntps_top_axi_ethernetlite_0_0_wr_status_flags_as
   (txfifo_full,
    p_0_out,
    D28_out,
    ram_full_i,
    s_axi_aclk,
    rst_full_ff_i,
    txfifo_empty,
    Q32_in,
    STATE14A);
  output txfifo_full;
  output p_0_out;
  output D28_out;
  input ram_full_i;
  input s_axi_aclk;
  input rst_full_ff_i;
  input txfifo_empty;
  input Q32_in;
  input STATE14A;

  wire D28_out;
  wire Q32_in;
  wire STATE14A;
  wire p_0_out;
  wire ram_full_i;
  wire rst_full_ff_i;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire txfifo_full;

  LUT4 #(
    .INIT(16'h4F44)) 
    STATE16A_i_1
       (.I0(txfifo_empty),
        .I1(Q32_in),
        .I2(txfifo_full),
        .I3(STATE14A),
        .O(D28_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_full_ff_i),
        .Q(p_0_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_full_ff_i),
        .Q(txfifo_full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42
   (ram_full_i_reg_0,
    E,
    ram_full_i,
    phy_rx_clk,
    rst_full_ff_i,
    Q,
    \rd_pntr_bin_reg[3] );
  output ram_full_i_reg_0;
  output [0:0]E;
  input ram_full_i;
  input phy_rx_clk;
  input rst_full_ff_i;
  input [0:0]Q;
  input [0:0]\rd_pntr_bin_reg[3] ;

  wire [0:0]E;
  wire [0:0]Q;
  wire p_0_out;
  wire phy_rx_clk;
  wire ram_full_i;
  wire ram_full_i__0;
  wire ram_full_i_reg_0;
  wire [0:0]\rd_pntr_bin_reg[3] ;
  wire rst_full_ff_i;

  LUT2 #(
    .INIT(4'h1)) 
    \gic0.gc0.count_d1[3]_i_1__0 
       (.I0(p_0_out),
        .I1(ram_full_i__0),
        .O(E));
  LUT4 #(
    .INIT(16'h1001)) 
    ram_full_fb_i_i_3
       (.I0(ram_full_i__0),
        .I1(p_0_out),
        .I2(Q),
        .I3(\rd_pntr_bin_reg[3] ),
        .O(ram_full_i_reg_0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_full_ff_i),
        .Q(p_0_out));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_full_ff_i),
        .Q(ram_full_i__0));
endmodule

(* ORIG_REF_NAME = "xemac" *) 
module ntps_top_axi_ethernetlite_0_0_xemac
   (ip2intc_irpt,
    SS,
    phy_mdc,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    p_33_in184_in,
    p_27_in165_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ,
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ,
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ,
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ,
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ,
    phy_mdio_o,
    phy_mdio_t,
    reg_access,
    mdio_en_i,
    p_15_in,
    p_17_in,
    loopback_en_reg_0,
    p_9_in,
    pong_rx_status,
    gie_enable,
    ping_soft_status,
    pong_soft_status,
    D,
    Q,
    \tx_packet_length_reg[15]_0 ,
    \tx_packet_length_reg[15]_1 ,
    \MDIO_GEN.mdio_data_out_reg[15]_0 ,
    prmry_vect_in,
    phy_tx_en_i,
    s_axi_aclk,
    phy_crs,
    phy_rx_clk,
    DIA,
    DIB,
    DIC,
    phy_tx_clk,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    s_axi_wdata,
    WEBWE,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2 ,
    phy_mdio_i,
    E,
    \AXI4_LITE_IF_GEN.read_in_prog_reg ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ,
    \ping_pkt_lenth_reg[15]_0 ,
    \ping_pkt_lenth_reg[14]_0 ,
    \ping_pkt_lenth_reg[13]_0 ,
    \ping_pkt_lenth_reg[12]_0 ,
    \ping_pkt_lenth_reg[11]_0 ,
    \ping_pkt_lenth_reg[10]_0 ,
    \ping_pkt_lenth_reg[9]_0 ,
    \ping_pkt_lenth_reg[8]_0 ,
    \ping_pkt_lenth_reg[7]_0 ,
    \ping_pkt_lenth_reg[6]_0 ,
    \reg_data_out_reg[31]_0 ,
    \reg_data_out_reg[5]_0 ,
    \reg_data_out_reg[4]_0 ,
    \reg_data_out_reg[2]_0 ,
    \reg_data_out_reg[1]_0 ,
    \reg_data_out_reg[0]_0 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ,
    \MDIO_GEN.mdio_en_i_reg_0 ,
    tx_intr_en_reg_0,
    rx_intr_en_reg_0,
    \AXI4_LITE_IF_GEN.write_in_prog_reg ,
    ping_soft_status_reg_0,
    \TX_PONG_REG_GEN.pong_soft_status_reg_0 ,
    s_axi_aresetn,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_5 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ,
    p_21_out,
    tx_intr_en0,
    rx_intr_en0,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ,
    p_48_out,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_6 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_7 ,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ,
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ,
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ,
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ,
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg_1 ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg_2 );
  output ip2intc_irpt;
  output [0:0]SS;
  output phy_mdc;
  output \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  output p_33_in184_in;
  output p_27_in165_in;
  output \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] ;
  output \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ;
  output \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ;
  output \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  output \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  output \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  output \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  output \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  output phy_mdio_o;
  output phy_mdio_t;
  output reg_access;
  output mdio_en_i;
  output [1:0]p_15_in;
  output [2:0]p_17_in;
  output loopback_en_reg_0;
  output [1:0]p_9_in;
  output pong_rx_status;
  output gie_enable;
  output ping_soft_status;
  output pong_soft_status;
  output [31:0]D;
  output [4:0]Q;
  output [14:0]\tx_packet_length_reg[15]_0 ;
  output [14:0]\tx_packet_length_reg[15]_1 ;
  output [4:0]\MDIO_GEN.mdio_data_out_reg[15]_0 ;
  output [3:0]prmry_vect_in;
  output phy_tx_en_i;
  input s_axi_aclk;
  input phy_crs;
  input phy_rx_clk;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input phy_tx_clk;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  input [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  input [31:0]s_axi_wdata;
  input [0:0]WEBWE;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1 ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2 ;
  input phy_mdio_i;
  input [0:0]E;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ;
  input \ping_pkt_lenth_reg[15]_0 ;
  input \ping_pkt_lenth_reg[14]_0 ;
  input \ping_pkt_lenth_reg[13]_0 ;
  input \ping_pkt_lenth_reg[12]_0 ;
  input \ping_pkt_lenth_reg[11]_0 ;
  input \ping_pkt_lenth_reg[10]_0 ;
  input \ping_pkt_lenth_reg[9]_0 ;
  input \ping_pkt_lenth_reg[8]_0 ;
  input \ping_pkt_lenth_reg[7]_0 ;
  input \ping_pkt_lenth_reg[6]_0 ;
  input \reg_data_out_reg[31]_0 ;
  input \reg_data_out_reg[5]_0 ;
  input \reg_data_out_reg[4]_0 ;
  input \reg_data_out_reg[2]_0 ;
  input \reg_data_out_reg[1]_0 ;
  input \reg_data_out_reg[0]_0 ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ;
  input \MDIO_GEN.mdio_en_i_reg_0 ;
  input tx_intr_en_reg_0;
  input rx_intr_en_reg_0;
  input \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  input ping_soft_status_reg_0;
  input \TX_PONG_REG_GEN.pong_soft_status_reg_0 ;
  input s_axi_aresetn;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3 ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_5 ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  input p_21_out;
  input tx_intr_en0;
  input rx_intr_en0;
  input \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ;
  input \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ;
  input p_48_out;
  input [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  input [0:0]\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ;
  input \AXI4_LITE_IF_GEN.read_in_prog_reg_7 ;
  input \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  input \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ;
  input \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ;
  input \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ;
  input \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ;
  input [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ;
  input [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ;
  wire [10:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ;
  wire [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_5 ;
  wire [0:0]\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_7 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ;
  wire [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ;
  wire [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ;
  wire [31:0]D;
  wire D694_out;
  wire [1:0]DIA;
  wire [1:0]DIB;
  wire [1:0]DIC;
  wire D_0;
  wire [0:0]E;
  wire EMAC_I_n_31;
  wire EMAC_I_n_32;
  wire EMAC_I_n_33;
  wire EMAC_I_n_34;
  wire EMAC_I_n_35;
  wire EMAC_I_n_36;
  wire EMAC_I_n_37;
  wire EMAC_I_n_38;
  wire EMAC_I_n_39;
  wire EMAC_I_n_40;
  wire EMAC_I_n_44;
  wire EMAC_I_n_45;
  wire EMAC_I_n_46;
  wire EMAC_I_n_47;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  wire \MDIO_GEN.MDIO_IF_I_n_10 ;
  wire \MDIO_GEN.MDIO_IF_I_n_11 ;
  wire \MDIO_GEN.MDIO_IF_I_n_12 ;
  wire \MDIO_GEN.MDIO_IF_I_n_13 ;
  wire \MDIO_GEN.MDIO_IF_I_n_14 ;
  wire \MDIO_GEN.MDIO_IF_I_n_15 ;
  wire \MDIO_GEN.MDIO_IF_I_n_16 ;
  wire \MDIO_GEN.MDIO_IF_I_n_17 ;
  wire \MDIO_GEN.MDIO_IF_I_n_18 ;
  wire \MDIO_GEN.MDIO_IF_I_n_7 ;
  wire \MDIO_GEN.MDIO_IF_I_n_8 ;
  wire \MDIO_GEN.MDIO_IF_I_n_9 ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[0] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[1] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[2] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[3] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[4] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[5] ;
  wire \MDIO_GEN.mdio_clk_i_i_1_n_0 ;
  wire \MDIO_GEN.mdio_clk_i_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[10]_i_3_n_0 ;
  wire \MDIO_GEN.mdio_data_out[2]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[4]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[5]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[6]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[9]_i_2_n_0 ;
  wire [4:0]\MDIO_GEN.mdio_data_out_reg[15]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg_n_0_[0] ;
  wire \MDIO_GEN.mdio_en_i_reg_0 ;
  wire \MDIO_GEN.mdio_req_i_reg_n_0 ;
  wire [4:0]Q;
  wire RX_PING_n_28;
  wire \RX_PONG_GEN.rx_pong_ping_l_i_1_n_0 ;
  wire [0:0]SS;
  wire \TX/INST_TX_STATE_MACHINE/D3_in2_in ;
  wire TX_PING_n_0;
  wire TX_PING_n_4;
  wire \TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ;
  wire \TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ;
  wire \TX_PONG_REG_GEN.pong_soft_status_reg_0 ;
  wire \TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ;
  wire [0:0]WEBWE;
  wire [5:0]clk_cnt;
  wire [3:3]data7;
  wire gie_enable;
  wire ip2intc_irpt;
  wire loopback_en_reg_0;
  wire mdio_en_i;
  wire mdio_op_i;
  wire [4:0]mdio_phy_addr;
  wire [4:0]mdio_reg_addr;
  wire [10:0]mdio_wr_data_reg;
  wire p_101_in;
  wire p_103_in401_in;
  wire p_107_in;
  wire p_109_in417_in;
  wire p_113_in;
  wire p_115_in433_in;
  wire p_119_in;
  wire p_11_in;
  wire p_121_in;
  wire p_125_in;
  wire p_127_in467_in;
  wire p_131_in;
  wire p_133_in483_in;
  wire p_137_in;
  wire p_139_in;
  wire p_13_in;
  wire p_143_in;
  wire p_145_in517_in;
  wire p_149_in;
  wire p_14_in128_in;
  wire p_151_in533_in;
  wire p_155_in;
  wire p_157_in;
  wire [1:0]p_15_in;
  wire p_161_in;
  wire p_163_in567_in;
  wire p_167_in;
  wire p_169_in583_in;
  wire p_173_in;
  wire p_175_in600_in;
  wire p_179_in;
  wire [2:0]p_17_in;
  wire p_181_in;
  wire p_185_in;
  wire p_187_in;
  wire p_19_in;
  wire [31:0]p_1_out;
  wire p_20_in146_in;
  wire p_21_in;
  wire p_21_out;
  wire p_23_in154_in;
  wire p_25_in159_in;
  wire p_26_in;
  wire p_27_in165_in;
  wire p_29_in173_in;
  wire p_2_in678_in;
  wire [31:31]p_2_out;
  wire p_31_in;
  wire p_32_in;
  wire p_33_in184_in;
  wire p_35_in192_in;
  wire p_37_in197_in;
  wire p_38_in202_in;
  wire p_39_in204_in;
  wire p_41_in;
  wire p_43_in;
  wire p_44_in219_in;
  wire p_45_in221_in;
  wire p_47_in229_in;
  wire p_48_out;
  wire p_49_in;
  wire p_4_in100_in;
  wire p_4_in682_in;
  wire [3:0]p_4_out;
  wire p_50_in238_in;
  wire p_51_in;
  wire p_53_in;
  wire p_55_in;
  wire p_56_in;
  wire p_57_in257_in;
  wire p_59_in;
  wire p_61_in;
  wire p_62_in;
  wire p_63_in273_in;
  wire p_65_in;
  wire p_67_in;
  wire p_68_in290_in;
  wire p_69_in;
  wire p_6_in104_in;
  wire p_6_in686_in;
  wire p_71_in;
  wire p_73_in;
  wire p_74_in308_in;
  wire p_75_in;
  wire p_77_in317_in;
  wire p_79_in323_in;
  wire p_80_in328_in;
  wire p_81_in330_in;
  wire p_83_in338_in;
  wire p_85_in344_in;
  wire p_86_in349_in;
  wire p_87_in351_in;
  wire p_89_in359_in;
  wire p_8_in110_in;
  wire p_91_in365_in;
  wire p_92_in370_in;
  wire p_93_in;
  wire p_95_in;
  wire p_97_in;
  wire [1:0]p_9_in;
  wire phy_crs;
  wire phy_mdc;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire phy_tx_en_i;
  wire ping_mac_program_i_1_n_0;
  wire [3:3]ping_pkt_lenth;
  wire \ping_pkt_lenth_reg[10]_0 ;
  wire \ping_pkt_lenth_reg[11]_0 ;
  wire \ping_pkt_lenth_reg[12]_0 ;
  wire \ping_pkt_lenth_reg[13]_0 ;
  wire \ping_pkt_lenth_reg[14]_0 ;
  wire \ping_pkt_lenth_reg[15]_0 ;
  wire \ping_pkt_lenth_reg[6]_0 ;
  wire \ping_pkt_lenth_reg[7]_0 ;
  wire \ping_pkt_lenth_reg[8]_0 ;
  wire \ping_pkt_lenth_reg[9]_0 ;
  wire ping_soft_status;
  wire ping_soft_status_reg_0;
  wire ping_tx_status_i_1_n_0;
  wire [3:3]pong_pkt_lenth;
  wire pong_rx_status;
  wire pong_soft_status;
  wire [3:0]prmry_vect_in;
  wire reg_access;
  wire \reg_data_out[3]_i_1_n_0 ;
  wire \reg_data_out[3]_i_3_n_0 ;
  wire \reg_data_out[3]_i_6_n_0 ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[1]_0 ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[31]_0 ;
  wire \reg_data_out_reg[4]_0 ;
  wire \reg_data_out_reg[5]_0 ;
  wire [11:0]rx_DPM_adr;
  wire [3:0]rx_DPM_wr_data;
  wire rx_done_d1;
  wire rx_intr_en0;
  wire rx_intr_en_reg_0;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire [11:0]tx_DPM_adr;
  wire [3:0]tx_DPM_rd_data;
  wire tx_done_d1;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire tx_intr_en_reg_0;
  wire [15:0]tx_packet_length;
  wire \tx_packet_length[0]_i_1_n_0 ;
  wire \tx_packet_length[10]_i_1_n_0 ;
  wire \tx_packet_length[11]_i_1_n_0 ;
  wire \tx_packet_length[12]_i_1_n_0 ;
  wire \tx_packet_length[13]_i_1_n_0 ;
  wire \tx_packet_length[14]_i_1_n_0 ;
  wire \tx_packet_length[15]_i_1_n_0 ;
  wire \tx_packet_length[1]_i_1_n_0 ;
  wire \tx_packet_length[2]_i_1_n_0 ;
  wire \tx_packet_length[3]_i_1_n_0 ;
  wire \tx_packet_length[4]_i_1_n_0 ;
  wire \tx_packet_length[5]_i_1_n_0 ;
  wire \tx_packet_length[6]_i_1_n_0 ;
  wire \tx_packet_length[7]_i_1_n_0 ;
  wire \tx_packet_length[8]_i_1_n_0 ;
  wire \tx_packet_length[9]_i_1_n_0 ;
  wire [14:0]\tx_packet_length_reg[15]_0 ;
  wire [14:0]\tx_packet_length_reg[15]_1 ;
  wire wr_rd_n_a_i;

  ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac EMAC_I
       (.ADDRARDADDR(tx_DPM_adr),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg (\AXI4_LITE_IF_GEN.write_in_prog_reg_0 ),
        .D({EMAC_I_n_33,EMAC_I_n_34,EMAC_I_n_35,EMAC_I_n_36,EMAC_I_n_37,EMAC_I_n_38}),
        .D3_in2_in(\TX/INST_TX_STATE_MACHINE/D3_in2_in ),
        .D694_out(D694_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (rx_DPM_adr),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (EMAC_I_n_31),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (EMAC_I_n_32),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 (EMAC_I_n_39),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 (EMAC_I_n_40),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 (p_4_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 (tx_DPM_rd_data),
        .DIA(DIA),
        .DIB(DIB),
        .DIC(DIC),
        .DOADO({TX_PING_n_0,p_6_in686_in,p_4_in682_in,p_2_in678_in}),
        .D_0(D_0),
        .E(EMAC_I_n_44),
        .Q(rx_DPM_wr_data),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (EMAC_I_n_47),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_0 (pong_rx_status),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .\TX_PONG_REG_GEN.pong_mac_program_reg (p_15_in[1]),
        .\TX_PONG_REG_GEN.pong_tx_status_reg (p_15_in[0]),
        .WEA(wr_rd_n_a_i),
        .gie_enable(gie_enable),
        .loopback_en_reg(EMAC_I_n_45),
        .loopback_en_reg_0(loopback_en_reg_0),
        .p_17_in(p_17_in),
        .p_9_in(p_9_in[1]),
        .phy_crs(phy_crs),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_en_i(phy_tx_en_i),
        .ping_rx_status_reg(EMAC_I_n_46),
        .ping_rx_status_reg_0(p_9_in[0]),
        .prmry_in(SS),
        .prmry_vect_in(prmry_vect_in),
        .rx_done_d1(rx_done_d1),
        .rx_intr_en0(rx_intr_en0),
        .rx_pong_ping_l(rx_pong_ping_l),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[0]}),
        .tx_done_d2(tx_done_d2),
        .tx_idle(tx_idle),
        .tx_intr_en0(tx_intr_en0),
        .\tx_packet_length_reg[15] (tx_packet_length));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IP2INTC_IRPT_REG_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D694_out),
        .Q(ip2intc_irpt),
        .R(SS));
  ntps_top_axi_ethernetlite_0_0_mdio_if \MDIO_GEN.MDIO_IF_I 
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [0]),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] ),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg (\AXI4_LITE_IF_GEN.read_in_prog_reg_5 ),
        .D({\MDIO_GEN.MDIO_IF_I_n_7 ,\MDIO_GEN.MDIO_IF_I_n_8 ,\MDIO_GEN.MDIO_IF_I_n_9 ,\MDIO_GEN.MDIO_IF_I_n_10 ,\MDIO_GEN.MDIO_IF_I_n_11 ,\MDIO_GEN.MDIO_IF_I_n_12 ,\MDIO_GEN.MDIO_IF_I_n_13 ,\MDIO_GEN.MDIO_IF_I_n_14 ,\MDIO_GEN.MDIO_IF_I_n_15 ,\MDIO_GEN.MDIO_IF_I_n_16 ,\MDIO_GEN.MDIO_IF_I_n_17 }),
        .\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 (\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ),
        .\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 (\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ),
        .\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 (\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ),
        .\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 (\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 (\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ),
        .\MDIO_GEN.mdio_clk_i_reg (phy_mdc),
        .\MDIO_GEN.mdio_phy_addr_reg[4] (mdio_phy_addr),
        .\MDIO_GEN.mdio_req_i_reg (\MDIO_GEN.MDIO_IF_I_n_18 ),
        .\MDIO_GEN.mdio_req_i_reg_0 (\MDIO_GEN.mdio_req_i_reg_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[10] (\MDIO_GEN.mdio_data_out[10]_i_3_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[15] ({\MDIO_GEN.mdio_data_out_reg[15]_0 ,mdio_wr_data_reg}),
        .\MDIO_GEN.mdio_wr_data_reg_reg[2] (\MDIO_GEN.mdio_data_out[2]_i_2_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[4] (\MDIO_GEN.mdio_data_out[4]_i_2_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[5] (\MDIO_GEN.mdio_data_out[5]_i_2_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[6] (\MDIO_GEN.mdio_data_out[6]_i_2_n_0 ),
        .\MDIO_GEN.mdio_wr_data_reg_reg[9] (\MDIO_GEN.mdio_data_out[9]_i_2_n_0 ),
        .Q(mdio_reg_addr),
        .mdio_en_i(mdio_en_i),
        .mdio_op_i(mdio_op_i),
        .p_21_out(p_21_out),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SS),
        .s_axi_wdata(s_axi_wdata[0]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \MDIO_GEN.clk_cnt[0]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \MDIO_GEN.clk_cnt[1]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[1]));
  LUT6 #(
    .INIT(64'hFFFF0000FF0000FE)) 
    \MDIO_GEN.clk_cnt[2]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \MDIO_GEN.clk_cnt[3]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \MDIO_GEN.clk_cnt[4]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC8)) 
    \MDIO_GEN.clk_cnt[5]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[5]));
  FDRE \MDIO_GEN.clk_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[0]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .R(SS));
  FDSE \MDIO_GEN.clk_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[1]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .S(SS));
  FDRE \MDIO_GEN.clk_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[2]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .R(SS));
  FDSE \MDIO_GEN.clk_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[3]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .S(SS));
  FDSE \MDIO_GEN.clk_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[4]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .S(SS));
  FDRE \MDIO_GEN.clk_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[5]),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \MDIO_GEN.mdio_clk_i_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I4(\MDIO_GEN.mdio_clk_i_i_2_n_0 ),
        .I5(phy_mdc),
        .O(\MDIO_GEN.mdio_clk_i_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \MDIO_GEN.mdio_clk_i_i_2 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .O(\MDIO_GEN.mdio_clk_i_i_2_n_0 ));
  FDRE \MDIO_GEN.mdio_clk_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.mdio_clk_i_i_1_n_0 ),
        .Q(phy_mdc),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[10]_i_3 
       (.I0(mdio_wr_data_reg[10]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[2]_i_2 
       (.I0(mdio_wr_data_reg[2]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[4]_i_2 
       (.I0(mdio_wr_data_reg[4]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[5]_i_2 
       (.I0(mdio_wr_data_reg[5]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[6]_i_2 
       (.I0(mdio_wr_data_reg[6]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[9]_i_2 
       (.I0(mdio_wr_data_reg[9]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\MDIO_GEN.mdio_data_out[9]_i_2_n_0 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_17 ),
        .Q(\MDIO_GEN.mdio_data_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_7 ),
        .Q(p_62_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0 ),
        .Q(p_68_in290_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg_7 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0 ),
        .Q(p_74_in308_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg_7 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0 ),
        .Q(p_80_in328_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg_7 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0 ),
        .Q(p_86_in349_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg_7 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ),
        .Q(p_92_in370_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg_7 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_16 ),
        .Q(p_8_in110_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_15 ),
        .Q(p_14_in128_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_14 ),
        .Q(p_20_in146_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_13 ),
        .Q(p_26_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_12 ),
        .Q(p_32_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_11 ),
        .Q(p_38_in202_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_10 ),
        .Q(p_44_in219_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_9 ),
        .Q(p_50_in238_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_6 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_8 ),
        .Q(p_56_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.mdio_en_i_reg_0 ),
        .Q(mdio_en_i),
        .R(SS));
  FDRE \MDIO_GEN.mdio_op_i_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(mdio_op_i),
        .R(SS));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(mdio_phy_addr[0]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(mdio_phy_addr[1]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(mdio_phy_addr[2]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(mdio_phy_addr[3]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(mdio_phy_addr[4]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(mdio_reg_addr[0]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(mdio_reg_addr[1]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(mdio_reg_addr[2]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(mdio_reg_addr[3]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(mdio_reg_addr[4]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_req_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.MDIO_IF_I_n_18 ),
        .Q(\MDIO_GEN.mdio_req_i_reg_n_0 ),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[0]),
        .Q(mdio_wr_data_reg[0]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[10]),
        .Q(mdio_wr_data_reg[10]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[11]),
        .Q(\MDIO_GEN.mdio_data_out_reg[15]_0 [0]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[12]),
        .Q(\MDIO_GEN.mdio_data_out_reg[15]_0 [1]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[13]),
        .Q(\MDIO_GEN.mdio_data_out_reg[15]_0 [2]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[14]),
        .Q(\MDIO_GEN.mdio_data_out_reg[15]_0 [3]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[15]),
        .Q(\MDIO_GEN.mdio_data_out_reg[15]_0 [4]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[1]),
        .Q(mdio_wr_data_reg[1]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[2]),
        .Q(mdio_wr_data_reg[2]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[3]),
        .Q(mdio_wr_data_reg[3]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[4]),
        .Q(mdio_wr_data_reg[4]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[5]),
        .Q(mdio_wr_data_reg[5]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[6]),
        .Q(mdio_wr_data_reg[6]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[7]),
        .Q(mdio_wr_data_reg[7]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[8]),
        .Q(mdio_wr_data_reg[8]),
        .R(SS));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ),
        .D(s_axi_wdata[9]),
        .Q(mdio_wr_data_reg[9]),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(rx_done_d1),
        .R(SS));
  ntps_top_axi_ethernetlite_0_0_emac_dpram RX_PING
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D[31]),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (p_1_out[31]),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (p_2_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (TX_PING_n_4),
        .DOBDO({p_185_in,p_179_in,p_173_in,p_167_in,p_161_in,p_155_in,p_149_in,p_143_in,p_137_in,p_131_in,p_125_in,p_119_in,p_113_in,p_107_in,p_101_in,p_95_in,p_89_in359_in,p_83_in338_in,p_77_in317_in,p_71_in,p_65_in,p_59_in,p_53_in,p_47_in229_in,p_41_in,p_35_in192_in,p_29_in173_in,p_23_in154_in,RX_PING_n_28,p_11_in,p_4_in100_in}),
        .Q(rx_DPM_wr_data),
        .WEA(wr_rd_n_a_i),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (EMAC_I_n_40),
        .reg_access_reg(reg_access),
        .\reg_data_out_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .\rxbuffer_addr_reg[0] (rx_DPM_adr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  ntps_top_axi_ethernetlite_0_0_emac_dpram_1 \RX_PONG_GEN.RX_PONG_I 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (p_2_out),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] ),
        .D(D[30:0]),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ({p_185_in,p_179_in,p_173_in,p_167_in,p_161_in,p_155_in,p_149_in,p_143_in,p_137_in,p_131_in,p_125_in,p_119_in,p_113_in,p_107_in,p_101_in,p_95_in,p_89_in359_in,p_83_in338_in,p_77_in317_in,p_71_in,p_65_in,p_59_in,p_53_in,p_47_in229_in,p_41_in,p_35_in192_in,p_29_in173_in,p_23_in154_in,RX_PING_n_28,p_11_in,p_4_in100_in}),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (p_1_out[30:0]),
        .DOBDO({p_187_in,p_181_in,p_175_in600_in,p_169_in583_in,p_163_in567_in,p_157_in,p_151_in533_in,p_145_in517_in,p_139_in,p_133_in483_in,p_127_in467_in,p_121_in,p_115_in433_in,p_109_in417_in,p_103_in401_in,p_97_in,p_91_in365_in,p_85_in344_in,p_79_in323_in,p_73_in,p_67_in,p_61_in,p_55_in,p_49_in,p_43_in,p_37_in197_in,p_31_in,p_25_in159_in,p_19_in,p_13_in,p_6_in104_in}),
        .\MDIO_GEN.mdio_data_out_reg[10] ({p_62_in,p_56_in,p_50_in238_in,p_44_in219_in,p_38_in202_in,p_32_in,p_26_in,p_20_in146_in,p_14_in128_in,p_8_in110_in,\MDIO_GEN.mdio_data_out_reg_n_0_[0] }),
        .Q(rx_DPM_wr_data),
        .WEA(wr_rd_n_a_i),
        .WEBWE(WEBWE),
        .\gv.ram_valid_d1_reg (EMAC_I_n_39),
        .p_21_in(p_21_in),
        .p_27_in165_in(p_27_in165_in),
        .p_33_in184_in(p_33_in184_in),
        .p_39_in204_in(p_39_in204_in),
        .p_45_in221_in(p_45_in221_in),
        .p_51_in(p_51_in),
        .p_57_in257_in(p_57_in257_in),
        .p_63_in273_in(p_63_in273_in),
        .p_68_in290_in(p_68_in290_in),
        .p_69_in(p_69_in),
        .p_74_in308_in(p_74_in308_in),
        .p_75_in(p_75_in),
        .p_80_in328_in(p_80_in328_in),
        .p_81_in330_in(p_81_in330_in),
        .p_86_in349_in(p_86_in349_in),
        .p_87_in351_in(p_87_in351_in),
        .p_92_in370_in(p_92_in370_in),
        .p_93_in(p_93_in),
        .reg_access_reg(reg_access),
        .\reg_data_out_reg[0] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ),
        .\reg_data_out_reg[1] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ),
        .\reg_data_out_reg[2] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] ),
        .\rxbuffer_addr_reg[0] (rx_DPM_adr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  LUT2 #(
    .INIT(4'h6)) 
    \RX_PONG_GEN.rx_pong_ping_l_i_1 
       (.I0(rx_done_d1),
        .I1(rx_pong_ping_l),
        .O(\RX_PONG_GEN.rx_pong_ping_l_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_PONG_GEN.rx_pong_ping_l_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RX_PONG_GEN.rx_pong_ping_l_i_1_n_0 ),
        .Q(rx_pong_ping_l),
        .R(SS));
  FDRE \RX_PONG_REG_GEN.pong_rx_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_47),
        .Q(pong_rx_status),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX/INST_TX_STATE_MACHINE/D3_in2_in ),
        .Q(tx_done_d1),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D2_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_done_d1),
        .Q(tx_done_d2),
        .R(SS));
  ntps_top_axi_ethernetlite_0_0_emac_dpram_2 TX_PING
       (.ADDRARDADDR(tx_DPM_adr),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [8:0]),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] ),
        .\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (p_4_out),
        .DOADO({TX_PING_n_0,p_6_in686_in,p_4_in682_in,p_2_in678_in}),
        .DOBDO({TX_PING_n_4,p_187_in,p_181_in,p_175_in600_in,p_169_in583_in,p_163_in567_in,p_157_in,p_151_in533_in,p_145_in517_in,p_139_in,p_133_in483_in,p_127_in467_in,p_121_in,p_115_in433_in,p_109_in417_in,p_103_in401_in,p_97_in,p_91_in365_in,p_85_in344_in,p_79_in323_in,p_73_in,p_67_in,p_61_in,p_55_in,p_49_in,p_43_in,p_37_in197_in,p_31_in,p_25_in159_in,p_19_in,p_13_in,p_6_in104_in}),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (EMAC_I_n_31),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .WEBWE(WEBWE),
        .\rdDestAddrNib_D_t_q_reg[2] (tx_DPM_rd_data),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_idle(tx_idle));
  ntps_top_axi_ethernetlite_0_0_emac_dpram_3 \TX_PONG_GEN.TX_PONG_I 
       (.ADDRARDADDR(tx_DPM_adr),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 [8:0]),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] (\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1 ),
        .DOBDO(p_1_out),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (EMAC_I_n_32),
        .WEBWE(WEBWE),
        .\emac_tx_wr_data_d1_reg[0] (p_4_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  LUT5 #(
    .INIT(32'h22028A88)) 
    \TX_PONG_GEN.tx_pong_ping_l_i_1 
       (.I0(s_axi_aresetn),
        .I1(tx_done_d1),
        .I2(p_17_in[0]),
        .I3(p_15_in[0]),
        .I4(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .O(\TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_PONG_GEN.tx_pong_ping_l_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ),
        .Q(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \TX_PONG_REG_GEN.pong_mac_program_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_48_out),
        .I2(tx_done_d1),
        .I3(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I4(p_15_in[1]),
        .O(\TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ));
  FDRE \TX_PONG_REG_GEN.pong_mac_program_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ),
        .Q(p_15_in[1]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[0] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[0]),
        .Q(\tx_packet_length_reg[15]_0 [0]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[10]),
        .Q(\tx_packet_length_reg[15]_0 [9]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[11]),
        .Q(\tx_packet_length_reg[15]_0 [10]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[12]),
        .Q(\tx_packet_length_reg[15]_0 [11]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[13] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[13]),
        .Q(\tx_packet_length_reg[15]_0 [12]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[14] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[14]),
        .Q(\tx_packet_length_reg[15]_0 [13]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[15]),
        .Q(\tx_packet_length_reg[15]_0 [14]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[1]),
        .Q(\tx_packet_length_reg[15]_0 [1]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[2]),
        .Q(\tx_packet_length_reg[15]_0 [2]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[3]),
        .Q(pong_pkt_lenth),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[4]),
        .Q(\tx_packet_length_reg[15]_0 [3]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[5]),
        .Q(\tx_packet_length_reg[15]_0 [4]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[6]),
        .Q(\tx_packet_length_reg[15]_0 [5]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[7]),
        .Q(\tx_packet_length_reg[15]_0 [6]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[8]),
        .Q(\tx_packet_length_reg[15]_0 [7]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_2 ),
        .D(s_axi_wdata[9]),
        .Q(\tx_packet_length_reg[15]_0 [8]),
        .R(SS));
  FDRE \TX_PONG_REG_GEN.pong_soft_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_soft_status_reg_0 ),
        .Q(pong_soft_status),
        .R(SS));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \TX_PONG_REG_GEN.pong_tx_status_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_48_out),
        .I2(tx_done_d1),
        .I3(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I4(p_15_in[0]),
        .O(\TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ));
  FDRE \TX_PONG_REG_GEN.pong_tx_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ),
        .Q(p_15_in[0]),
        .R(SS));
  FDRE gie_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.write_in_prog_reg ),
        .Q(gie_enable),
        .R(SS));
  FDRE loopback_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_45),
        .Q(loopback_en_reg_0),
        .R(SS));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    ping_mac_program_i_1
       (.I0(s_axi_wdata[1]),
        .I1(tx_intr_en0),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I3(tx_done_d1),
        .I4(p_17_in[1]),
        .O(ping_mac_program_i_1_n_0));
  FDRE ping_mac_program_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_mac_program_i_1_n_0),
        .Q(p_17_in[1]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[0] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[0]),
        .Q(\tx_packet_length_reg[15]_1 [0]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[10]),
        .Q(\tx_packet_length_reg[15]_1 [9]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[11]),
        .Q(\tx_packet_length_reg[15]_1 [10]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[12]),
        .Q(\tx_packet_length_reg[15]_1 [11]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[13] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[13]),
        .Q(\tx_packet_length_reg[15]_1 [12]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[14] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[14]),
        .Q(\tx_packet_length_reg[15]_1 [13]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[15] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[15]),
        .Q(\tx_packet_length_reg[15]_1 [14]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[1] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[1]),
        .Q(\tx_packet_length_reg[15]_1 [1]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[2]),
        .Q(\tx_packet_length_reg[15]_1 [2]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[3]),
        .Q(ping_pkt_lenth),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[4]),
        .Q(\tx_packet_length_reg[15]_1 [3]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[5]),
        .Q(\tx_packet_length_reg[15]_1 [4]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[6]),
        .Q(\tx_packet_length_reg[15]_1 [5]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[7]),
        .Q(\tx_packet_length_reg[15]_1 [6]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[8]),
        .Q(\tx_packet_length_reg[15]_1 [7]),
        .R(SS));
  FDRE \ping_pkt_lenth_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ),
        .D(s_axi_wdata[9]),
        .Q(\tx_packet_length_reg[15]_1 [8]),
        .R(SS));
  FDRE ping_rx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_46),
        .Q(p_9_in[0]),
        .R(SS));
  FDRE ping_soft_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_soft_status_reg_0),
        .Q(ping_soft_status),
        .R(SS));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    ping_tx_status_i_1
       (.I0(s_axi_wdata[0]),
        .I1(tx_intr_en0),
        .I2(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I3(tx_done_d1),
        .I4(p_17_in[0]),
        .O(ping_tx_status_i_1_n_0));
  FDRE ping_tx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_tx_status_i_1_n_0),
        .Q(p_17_in[0]),
        .R(SS));
  FDRE reg_access_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .Q(reg_access),
        .R(SS));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \reg_data_out[3]_i_1 
       (.I0(p_21_in),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .I2(p_17_in[2]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] ),
        .I4(\reg_data_out[3]_i_3_n_0 ),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3 ),
        .O(\reg_data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F2020202F2F2F2F)) 
    \reg_data_out[3]_i_3 
       (.I0(data7),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg_2 ),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg_3 ),
        .I3(\AXI4_LITE_IF_GEN.read_in_prog_reg_4 ),
        .I4(pong_pkt_lenth),
        .I5(\reg_data_out[3]_i_6_n_0 ),
        .O(\reg_data_out[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC5F5)) 
    \reg_data_out[3]_i_6 
       (.I0(ping_pkt_lenth),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg_4 ),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] ),
        .I3(p_9_in[1]),
        .O(\reg_data_out[3]_i_6_n_0 ));
  FDRE \reg_data_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[0]_0 ),
        .Q(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ),
        .R(1'b0));
  FDRE \reg_data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[10]_0 ),
        .Q(p_63_in273_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[11]_0 ),
        .Q(p_69_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[12]_0 ),
        .Q(p_75_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[13]_0 ),
        .Q(p_81_in330_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[14]_0 ),
        .Q(p_87_in351_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[15]_0 ),
        .Q(p_93_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[1]_0 ),
        .Q(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ),
        .R(1'b0));
  FDRE \reg_data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[2]_0 ),
        .Q(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] ),
        .R(1'b0));
  FDRE \reg_data_out_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[31]_0 ),
        .Q(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .R(1'b0));
  FDRE \reg_data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out[3]_i_1_n_0 ),
        .Q(p_21_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[4]_0 ),
        .Q(p_27_in165_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[5]_0 ),
        .Q(p_33_in184_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[6]_0 ),
        .Q(p_39_in204_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[7]_0 ),
        .Q(p_45_in221_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[8]_0 ),
        .Q(p_51_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE \reg_data_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ),
        .D(\ping_pkt_lenth_reg[9]_0 ),
        .Q(p_57_in257_in),
        .R(\AXI4_LITE_IF_GEN.read_in_prog_reg ));
  FDRE rx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_intr_en_reg_0),
        .Q(p_9_in[1]),
        .R(SS));
  FDRE \status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_38),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_37),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_36),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_35),
        .Q(data7),
        .R(1'b0));
  FDRE \status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_34),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_44),
        .D(EMAC_I_n_33),
        .Q(Q[4]),
        .R(1'b0));
  FDRE tx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_intr_en_reg_0),
        .Q(p_17_in[2]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[0]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [0]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [0]),
        .O(\tx_packet_length[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[10]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [9]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [9]),
        .O(\tx_packet_length[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[11]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [10]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [10]),
        .O(\tx_packet_length[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[12]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [11]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [11]),
        .O(\tx_packet_length[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[13]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [12]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [12]),
        .O(\tx_packet_length[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[14]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [13]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [13]),
        .O(\tx_packet_length[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[15]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [14]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [14]),
        .O(\tx_packet_length[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[1]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [1]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [1]),
        .O(\tx_packet_length[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[2]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [2]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [2]),
        .O(\tx_packet_length[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[3]_i_1 
       (.I0(pong_pkt_lenth),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(ping_pkt_lenth),
        .O(\tx_packet_length[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[4]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [3]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [3]),
        .O(\tx_packet_length[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[5]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [4]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [4]),
        .O(\tx_packet_length[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[6]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [5]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [5]),
        .O(\tx_packet_length[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[7]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [6]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [6]),
        .O(\tx_packet_length[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[8]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [7]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [7]),
        .O(\tx_packet_length[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[9]_i_1 
       (.I0(\tx_packet_length_reg[15]_0 [8]),
        .I1(\TX_PONG_GEN.tx_pong_ping_l_reg_n_0 ),
        .I2(\tx_packet_length_reg[15]_1 [8]),
        .O(\tx_packet_length[9]_i_1_n_0 ));
  FDRE \tx_packet_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[0]_i_1_n_0 ),
        .Q(tx_packet_length[0]),
        .R(SS));
  FDRE \tx_packet_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[10]_i_1_n_0 ),
        .Q(tx_packet_length[10]),
        .R(SS));
  FDRE \tx_packet_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[11]_i_1_n_0 ),
        .Q(tx_packet_length[11]),
        .R(SS));
  FDRE \tx_packet_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[12]_i_1_n_0 ),
        .Q(tx_packet_length[12]),
        .R(SS));
  FDRE \tx_packet_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[13]_i_1_n_0 ),
        .Q(tx_packet_length[13]),
        .R(SS));
  FDRE \tx_packet_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[14]_i_1_n_0 ),
        .Q(tx_packet_length[14]),
        .R(SS));
  FDRE \tx_packet_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[15]_i_1_n_0 ),
        .Q(tx_packet_length[15]),
        .R(SS));
  FDRE \tx_packet_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[1]_i_1_n_0 ),
        .Q(tx_packet_length[1]),
        .R(SS));
  FDRE \tx_packet_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[2]_i_1_n_0 ),
        .Q(tx_packet_length[2]),
        .R(SS));
  FDRE \tx_packet_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[3]_i_1_n_0 ),
        .Q(tx_packet_length[3]),
        .R(SS));
  FDRE \tx_packet_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[4]_i_1_n_0 ),
        .Q(tx_packet_length[4]),
        .R(SS));
  FDRE \tx_packet_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[5]_i_1_n_0 ),
        .Q(tx_packet_length[5]),
        .R(SS));
  FDRE \tx_packet_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[6]_i_1_n_0 ),
        .Q(tx_packet_length[6]),
        .R(SS));
  FDRE \tx_packet_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[7]_i_1_n_0 ),
        .Q(tx_packet_length[7]),
        .R(SS));
  FDRE \tx_packet_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[8]_i_1_n_0 ),
        .Q(tx_packet_length[8]),
        .R(SS));
  FDRE \tx_packet_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[9]_i_1_n_0 ),
        .Q(tx_packet_length[9]),
        .R(SS));
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
