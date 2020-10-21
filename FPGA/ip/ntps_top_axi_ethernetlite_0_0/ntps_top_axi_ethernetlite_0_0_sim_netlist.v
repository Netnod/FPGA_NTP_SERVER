// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Thu Oct 15 15:33:53 2020
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.6.2003 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/joachim/Sandbox/repos/FPGA_NTP_SERVER/FPGA/ip/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0_sim_netlist.v
// Design      : ntps_top_axi_ethernetlite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ntps_top_axi_ethernetlite_0_0,axi_ethernetlite,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_ethernetlite,Vivado 2019.2" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SUGGESTED_PRIORITY HIGH, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME MII, BOARD.ASSOCIATED_PARAM MII_BOARD_INTERFACE" *) input phy_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) input phy_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII CRS" *) input phy_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_DV" *) input phy_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RXD" *) input [3:0]phy_rx_data;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII COL" *) input phy_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_ER" *) input phy_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RST_N" *) output phy_rst_n;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_EN" *) output phy_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TXD" *) output [3:0]phy_tx_data;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_I" *) (* x_interface_parameter = "XIL_INTERFACENAME MDIO, BOARD.ASSOCIATED_PARAM MDIO_BOARD_INTERFACE, CAN_DEBUG false" *) input phy_mdio_i;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_O" *) output phy_mdio_o;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDIO_T" *) output phy_mdio_t;
  (* x_interface_info = "xilinx.com:interface:mdio:1.0 MDIO MDC" *) output phy_mdc;

  wire ip2intc_irpt;
  wire phy_col;
  wire phy_crs;
  wire phy_dv;
  wire phy_mdc;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rst_n;
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
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

  (* C_DUPLEX = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_GLOBAL_BUFFERS = "0" *) 
  (* C_INCLUDE_INTERNAL_LOOPBACK = "0" *) 
  (* C_INCLUDE_MDIO = "1" *) 
  (* C_INSTANCE = "axi_ethernetlite_inst" *) 
  (* C_RX_PING_PONG = "1" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_S_AXI_ACLK_PERIOD_PS = "8000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
  (* C_TX_PING_PONG = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ntps_top_axi_ethernetlite_0_0_axi_ethernetlite U0
       (.ip2intc_irpt(ip2intc_irpt),
        .phy_col(phy_col),
        .phy_crs(phy_crs),
        .phy_dv(phy_dv),
        .phy_mdc(phy_mdc),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .phy_rst_n(phy_rst_n),
        .phy_rx_clk(phy_rx_clk),
        .phy_rx_data(phy_rx_data),
        .phy_rx_er(phy_rx_er),
        .phy_tx_clk(phy_tx_clk),
        .phy_tx_data(phy_tx_data),
        .phy_tx_en(phy_tx_en),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MacAddrRAM" *) 
module ntps_top_axi_ethernetlite_0_0_MacAddrRAM
   (\emac_rx_rd_data_d1_reg[1] ,
    \emac_rx_rd_data_d1_reg[2] ,
    Q,
    s_axi_aclk,
    D,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \emac_rx_rd_data_d1_reg[1] ;
  output \emac_rx_rd_data_d1_reg[2] ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]D;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]D;
  wire [3:0]Q;
  wire \emac_rx_rd_data_d1_reg[1] ;
  wire \emac_rx_rd_data_d1_reg[2] ;
  wire [0:3]mac_addr_ram_addr;
  wire mac_addr_ram_we;
  wire s_axi_aclk;

  ntps_top_axi_ethernetlite_0_0_ram16x4 ram16x4i
       (.D(D),
        .Q(Q),
        .\emac_rx_rd_data_d1_reg[1] (\emac_rx_rd_data_d1_reg[1] ),
        .\emac_rx_rd_data_d1_reg[2] (\emac_rx_rd_data_d1_reg[2] ),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module ntps_top_axi_ethernetlite_0_0_async_fifo_fg
   (full,
    wr_rst_busy,
    dout,
    empty,
    D20_out,
    pipeIt,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    axi_phy_tx_en_i_p_reg,
    rst,
    s_axi_aclk,
    wr_en,
    din,
    phy_tx_clk,
    rd_en,
    D22_out,
    checkBusFifoFull,
    txfifo_empty,
    waitFifoEmpty,
    STATE16A,
    checkBusFifoFullSFD,
    STATE10A,
    enblSFD,
    axi_phy_tx_en_i_p);
  output full;
  output wr_rst_busy;
  output [3:0]dout;
  output empty;
  output D20_out;
  output pipeIt;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output axi_phy_tx_en_i_p_reg;
  input rst;
  input s_axi_aclk;
  input wr_en;
  input [4:0]din;
  input phy_tx_clk;
  input rd_en;
  input D22_out;
  input checkBusFifoFull;
  input txfifo_empty;
  input waitFifoEmpty;
  input STATE16A;
  input checkBusFifoFullSFD;
  input STATE10A;
  input enblSFD;
  input axi_phy_tx_en_i_p;

  wire D20_out;
  wire D22_out;
  wire STATE10A;
  wire STATE16A;
  wire axi_phy_tx_en_i_p;
  wire axi_phy_tx_en_i_p_reg;
  wire [0:0]bus_combo;
  wire checkBusFifoFull;
  wire checkBusFifoFullSFD;
  wire [4:0]din;
  wire [3:0]dout;
  wire empty;
  wire enblSFD;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire phy_tx_clk;
  wire pipeIt;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_en;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_12 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_16 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_17 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_20 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_21 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo),
        .O(axi_phy_tx_en_i_p_reg));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    STATE10A_i_1
       (.I0(full),
        .I1(wr_rst_busy),
        .I2(checkBusFifoFullSFD),
        .I3(STATE10A),
        .I4(enblSFD),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h1)) 
    STATE11A_i_2
       (.I0(full),
        .I1(wr_rst_busy),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    STATE12A_i_1
       (.I0(D22_out),
        .I1(full),
        .I2(wr_rst_busy),
        .I3(checkBusFifoFull),
        .O(D20_out));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h444F4444)) 
    STATE16A_i_1
       (.I0(txfifo_empty),
        .I1(waitFifoEmpty),
        .I2(full),
        .I3(wr_rst_busy),
        .I4(STATE16A),
        .O(pipeIt));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "std" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_20 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ),
        .data_valid(\xpm_fifo_instance.xpm_fifo_async_inst_n_21 ),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din({din[4:1],1'b0,din[0]}),
        .dout({dout,\xpm_fifo_instance.xpm_fifo_async_inst_n_12 ,bus_combo}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(phy_tx_clk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_16 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_17 }),
        .rd_en(rd_en),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(rst),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_7 ),
        .wr_clk(s_axi_aclk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 }),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module ntps_top_axi_ethernetlite_0_0_async_fifo_fg__xdcDup__1
   (dout,
    empty,
    data_valid,
    D13_out,
    \gen_rd_b.doutb_reg_reg[2] ,
    SR,
    D10_out,
    \gen_rd_b.doutb_reg_reg[1] ,
    \gen_rd_b.doutb_reg_reg[4] ,
    D6_out,
    goto_readDestAdrNib1,
    D,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ,
    \gen_rd_b.doutb_reg_reg[1]_0 ,
    D11_out,
    D7_out,
    \gen_rd_b.doutb_reg_reg[4]_0 ,
    \gen_rd_b.doutb_reg_reg[2]_0 ,
    \gen_rd_b.doutb_reg_reg[5] ,
    SS,
    \gen_rd_b.doutb_reg_reg[0] ,
    scndry_out,
    phy_rx_clk,
    din,
    s_axi_aclk,
    rd_en,
    sfd1CheckBusFifoEmpty,
    s_axi_aresetn,
    startReadDestAdrNib,
    waitForSfd1,
    rx_start,
    state0a,
    busFifoData_is_5_d1,
    Q,
    startReadDataNib,
    state17a,
    pong_rx_status,
    p_9_in,
    rxCrcRst,
    \crc_local_reg[8] );
  output [5:0]dout;
  output empty;
  output data_valid;
  output D13_out;
  output \gen_rd_b.doutb_reg_reg[2] ;
  output [0:0]SR;
  output D10_out;
  output \gen_rd_b.doutb_reg_reg[1] ;
  output \gen_rd_b.doutb_reg_reg[4] ;
  output D6_out;
  output goto_readDestAdrNib1;
  output [10:0]D;
  output \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ;
  output \gen_rd_b.doutb_reg_reg[1]_0 ;
  output D11_out;
  output D7_out;
  output [6:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  output \gen_rd_b.doutb_reg_reg[2]_0 ;
  output \gen_rd_b.doutb_reg_reg[5] ;
  output [0:0]SS;
  output \gen_rd_b.doutb_reg_reg[0] ;
  input scndry_out;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aclk;
  input rd_en;
  input sfd1CheckBusFifoEmpty;
  input s_axi_aresetn;
  input startReadDestAdrNib;
  input waitForSfd1;
  input rx_start;
  input state0a;
  input busFifoData_is_5_d1;
  input [12:0]Q;
  input startReadDataNib;
  input state17a;
  input pong_rx_status;
  input [0:0]p_9_in;
  input rxCrcRst;
  input [9:0]\crc_local_reg[8] ;

  wire [10:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D6_out;
  wire D7_out;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire [9:0]\crc_local_reg[8] ;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire \gen_rd_b.doutb_reg_reg[0] ;
  wire \gen_rd_b.doutb_reg_reg[1] ;
  wire \gen_rd_b.doutb_reg_reg[1]_0 ;
  wire \gen_rd_b.doutb_reg_reg[2] ;
  wire \gen_rd_b.doutb_reg_reg[2]_0 ;
  wire \gen_rd_b.doutb_reg_reg[4] ;
  wire [6:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  wire \gen_rd_b.doutb_reg_reg[5] ;
  wire goto_readDestAdrNib1;
  wire [0:0]p_9_in;
  wire phy_rx_clk;
  wire pong_rx_status;
  wire rd_en;
  wire rxCrcRst;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire scndry_out;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state0a;
  wire state0a_i_2_n_0;
  wire state17a;
  wire state3a_i_2_n_0;
  wire state4a_i_2_n_0;
  wire waitForSfd1;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_16 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_17 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_20 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_3 
       (.I0(data_valid),
        .I1(startReadDestAdrNib),
        .I2(dout[0]),
        .O(goto_readDestAdrNib1));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[10]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I1(Q[10]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[9]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[11]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[10]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[11]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h00008000FFFFFFFF)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_1 
       (.I0(rx_start),
        .I1(busFifoData_is_5_d1),
        .I2(dout[5]),
        .I3(dout[1]),
        .I4(state0a_i_2_n_0),
        .I5(s_axi_aresetn),
        .O(SS));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_2 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[11]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[12]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFF051515)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[12]_i_3 
       (.I0(Q[0]),
        .I1(empty),
        .I2(dout[1]),
        .I3(data_valid),
        .I4(state17a),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[2]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I1(Q[2]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[3]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[2]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[4]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[3]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[5]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[4]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[5]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[6]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[5]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[6]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[7]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I1(Q[7]),
        .I2(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I3(Q[6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[8]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[7]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[8]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[9]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[8]),
        .I2(\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .I3(Q[9]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFFFBFB)) 
    \Mac_addr_ram_addr_rd[0]_i_1 
       (.I0(D10_out),
        .I1(s_axi_aresetn),
        .I2(state4a_i_2_n_0),
        .I3(dout[0]),
        .I4(startReadDestAdrNib),
        .I5(data_valid),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \Mac_addr_ram_addr_rd[0]_i_14 
       (.I0(dout[0]),
        .I1(startReadDestAdrNib),
        .I2(data_valid),
        .I3(Q[0]),
        .O(\gen_rd_b.doutb_reg_reg[0] ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    busFifoData_is_5_d1_i_1
       (.I0(dout[5]),
        .I1(dout[4]),
        .I2(dout[3]),
        .I3(dout[2]),
        .I4(data_valid),
        .I5(busFifoData_is_5_d1),
        .O(\gen_rd_b.doutb_reg_reg[5] ));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[0]_i_1 
       (.I0(dout[5]),
        .I1(\crc_local_reg[8] [6]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[10]_i_1 
       (.I0(dout[3]),
        .I1(\crc_local_reg[8] [8]),
        .I2(dout[2]),
        .I3(\crc_local_reg[8] [9]),
        .I4(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I5(\crc_local_reg[8] [4]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[11]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I1(dout[4]),
        .I2(\crc_local_reg[8] [7]),
        .I3(dout[2]),
        .I4(\crc_local_reg[8] [9]),
        .I5(\crc_local_reg[8] [5]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \crc_local[13]_i_2 
       (.I0(dout[2]),
        .I1(\crc_local_reg[8] [9]),
        .O(\gen_rd_b.doutb_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[4]_i_1 
       (.I0(dout[3]),
        .I1(\crc_local_reg[8] [8]),
        .I2(dout[2]),
        .I3(\crc_local_reg[8] [9]),
        .I4(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I5(\crc_local_reg[8] [0]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[5]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I1(dout[2]),
        .I2(\crc_local_reg[8] [9]),
        .I3(dout[4]),
        .I4(\crc_local_reg[8] [7]),
        .I5(\crc_local_reg[8] [1]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[7]_i_1 
       (.I0(dout[3]),
        .I1(\crc_local_reg[8] [8]),
        .I2(dout[2]),
        .I3(\crc_local_reg[8] [9]),
        .I4(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I5(\crc_local_reg[8] [2]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[8]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg[4]_0 [0]),
        .I1(dout[2]),
        .I2(\crc_local_reg[8] [9]),
        .I3(dout[4]),
        .I4(\crc_local_reg[8] [7]),
        .I5(\crc_local_reg[8] [3]),
        .O(\gen_rd_b.doutb_reg_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hDF000000)) 
    preamble_i_1
       (.I0(dout[4]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(rx_start),
        .I4(busFifoData_is_5_d1),
        .O(\gen_rd_b.doutb_reg_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFC88FCFC)) 
    state0a_i_1
       (.I0(dout[5]),
        .I1(waitForSfd1),
        .I2(rx_start),
        .I3(state0a_i_2_n_0),
        .I4(dout[1]),
        .I5(state0a),
        .O(D10_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    state0a_i_2
       (.I0(dout[2]),
        .I1(dout[3]),
        .I2(dout[4]),
        .O(state0a_i_2_n_0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    state17a_i_1
       (.I0(\gen_rd_b.doutb_reg_reg[1]_0 ),
        .I1(Q[11]),
        .I2(dout[0]),
        .I3(dout[1]),
        .I4(startReadDataNib),
        .O(D11_out));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    state17a_i_2
       (.I0(dout[1]),
        .I1(Q[0]),
        .I2(data_valid),
        .I3(state17a),
        .O(\gen_rd_b.doutb_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h70007070)) 
    state1a_i_1
       (.I0(pong_rx_status),
        .I1(p_9_in),
        .I2(rxCrcRst),
        .I3(data_valid),
        .I4(empty),
        .O(D7_out));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    state2a_i_2
       (.I0(dout[1]),
        .I1(dout[2]),
        .I2(dout[3]),
        .I3(dout[4]),
        .I4(dout[5]),
        .O(\gen_rd_b.doutb_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h0020000000200020)) 
    state2a_i_3
       (.I0(dout[2]),
        .I1(dout[3]),
        .I2(dout[4]),
        .I3(dout[5]),
        .I4(data_valid),
        .I5(empty),
        .O(\gen_rd_b.doutb_reg_reg[2] ));
  LUT5 #(
    .INIT(32'h0000D000)) 
    state3a_i_1
       (.I0(empty),
        .I1(data_valid),
        .I2(state3a_i_2_n_0),
        .I3(sfd1CheckBusFifoEmpty),
        .I4(dout[0]),
        .O(D13_out));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    state3a_i_2
       (.I0(dout[5]),
        .I1(dout[4]),
        .I2(dout[3]),
        .I3(dout[2]),
        .O(state3a_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    state4a_i_1
       (.I0(state4a_i_2_n_0),
        .I1(dout[0]),
        .I2(startReadDestAdrNib),
        .I3(data_valid),
        .O(D6_out));
  LUT5 #(
    .INIT(32'h40000000)) 
    state4a_i_2
       (.I0(state0a_i_2_n_0),
        .I1(dout[1]),
        .I2(dout[5]),
        .I3(busFifoData_is_5_d1),
        .I4(rx_start),
        .O(state4a_i_2_n_0));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "std" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_async__xdcDup__1 \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_20 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ),
        .data_valid(data_valid),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(s_axi_aclk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_16 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_17 }),
        .rd_en(rd_en),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(scndry_out),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_7 ),
        .wr_clk(phy_rx_clk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 }),
        .wr_en(\xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ),
        .wr_rst_busy(wr_rst_busy));
  LUT2 #(
    .INIT(4'h1)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1__0 
       (.I0(full),
        .I1(wr_rst_busy),
        .O(\xpm_fifo_instance.xpm_fifo_async_inst_i_1__0_n_0 ));
endmodule

(* C_DUPLEX = "1" *) (* C_FAMILY = "virtex7" *) (* C_INCLUDE_GLOBAL_BUFFERS = "0" *) 
(* C_INCLUDE_INTERNAL_LOOPBACK = "0" *) (* C_INCLUDE_MDIO = "1" *) (* C_INSTANCE = "axi_ethernetlite_inst" *) 
(* C_RX_PING_PONG = "1" *) (* C_SELECT_XPM = "1" *) (* C_S_AXI_ACLK_PERIOD_PS = "8000" *) 
(* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_S_AXI_PROTOCOL = "AXI4LITE" *) (* C_TX_PING_PONG = "1" *) (* ORIG_REF_NAME = "axi_ethernetlite" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module ntps_top_axi_ethernetlite_0_0_axi_ethernetlite
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
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
  input s_axi_aclk;
  input s_axi_aresetn;
  output ip2intc_irpt;
  input [0:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input phy_tx_clk;
  input phy_rx_clk;
  input phy_crs;
  input phy_dv;
  input [3:0]phy_rx_data;
  input phy_col;
  input phy_rx_er;
  output phy_rst_n;
  output phy_tx_en;
  output [3:0]phy_tx_data;
  input phy_mdio_i;
  output phy_mdio_o;
  output phy_mdio_t;
  output phy_mdc;

  wire \<const0> ;
  wire \IOFFS_GEN[0].RX_FF_I_n_0 ;
  wire \IOFFS_GEN[1].RX_FF_I_n_0 ;
  wire \IOFFS_GEN[2].RX_FF_I_n_0 ;
  wire I_AXI_NATIVE_IPIF_n_17;
  wire I_AXI_NATIVE_IPIF_n_18;
  wire I_AXI_NATIVE_IPIF_n_19;
  wire I_AXI_NATIVE_IPIF_n_20;
  wire I_AXI_NATIVE_IPIF_n_21;
  wire I_AXI_NATIVE_IPIF_n_22;
  wire I_AXI_NATIVE_IPIF_n_23;
  wire I_AXI_NATIVE_IPIF_n_24;
  wire I_AXI_NATIVE_IPIF_n_25;
  wire I_AXI_NATIVE_IPIF_n_27;
  wire I_AXI_NATIVE_IPIF_n_28;
  wire I_AXI_NATIVE_IPIF_n_29;
  wire I_AXI_NATIVE_IPIF_n_3;
  wire I_AXI_NATIVE_IPIF_n_32;
  wire I_AXI_NATIVE_IPIF_n_37;
  wire I_AXI_NATIVE_IPIF_n_38;
  wire I_AXI_NATIVE_IPIF_n_39;
  wire I_AXI_NATIVE_IPIF_n_41;
  wire I_AXI_NATIVE_IPIF_n_42;
  wire I_AXI_NATIVE_IPIF_n_43;
  wire I_AXI_NATIVE_IPIF_n_44;
  wire I_AXI_NATIVE_IPIF_n_45;
  wire I_AXI_NATIVE_IPIF_n_46;
  wire I_AXI_NATIVE_IPIF_n_47;
  wire I_AXI_NATIVE_IPIF_n_48;
  wire I_AXI_NATIVE_IPIF_n_49;
  wire I_AXI_NATIVE_IPIF_n_5;
  wire I_AXI_NATIVE_IPIF_n_50;
  wire I_AXI_NATIVE_IPIF_n_51;
  wire I_AXI_NATIVE_IPIF_n_52;
  wire I_AXI_NATIVE_IPIF_n_53;
  wire I_AXI_NATIVE_IPIF_n_54;
  wire I_AXI_NATIVE_IPIF_n_55;
  wire I_AXI_NATIVE_IPIF_n_56;
  wire I_AXI_NATIVE_IPIF_n_57;
  wire I_AXI_NATIVE_IPIF_n_58;
  wire I_AXI_NATIVE_IPIF_n_59;
  wire I_AXI_NATIVE_IPIF_n_60;
  wire I_AXI_NATIVE_IPIF_n_61;
  wire I_AXI_NATIVE_IPIF_n_62;
  wire I_AXI_NATIVE_IPIF_n_63;
  wire I_AXI_NATIVE_IPIF_n_64;
  wire I_AXI_NATIVE_IPIF_n_65;
  wire I_AXI_NATIVE_IPIF_n_66;
  wire I_AXI_NATIVE_IPIF_n_67;
  wire I_AXI_NATIVE_IPIF_n_68;
  wire I_AXI_NATIVE_IPIF_n_69;
  wire I_AXI_NATIVE_IPIF_n_70;
  wire I_AXI_NATIVE_IPIF_n_71;
  wire Q;
  wire XEMAC_I_n_15;
  wire XEMAC_I_n_22;
  wire XEMAC_I_n_29;
  wire XEMAC_I_n_62;
  wire XEMAC_I_n_96;
  wire XEMAC_I_n_97;
  wire [12:2]bus2ip_addr;
  wire bus_rst;
  wire bus_rst_rx_sync_core;
  wire bus_rst_tx_sync_core;
  wire [5:0]data7;
  wire [31:0]ip2bus_data;
  wire ip2intc_irpt;
  wire mdio_en_i0;
  wire mdio_phy_addr0;
  wire [15:11]mdio_rd_data_reg;
  wire [15:11]mdio_wr_data_reg;
  wire mdio_wr_data_reg0;
  wire [3:3]p_0_in;
  wire p_13_in113_in;
  wire [1:1]p_15_in;
  wire [3:1]p_17_in;
  wire p_181_in;
  wire p_19_in;
  wire p_25_in148_in;
  wire p_31_in166_in;
  wire [31:31]p_5_in;
  wire p_7_in94_in;
  wire [3:0]p_9_in;
  wire phy_crs;
  wire phy_dv;
  wire phy_dv_reg;
  wire phy_mdc;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rx_clk;
  wire [3:0]phy_rx_data;
  wire phy_rx_er;
  wire phy_rx_er_reg;
  wire phy_tx_clk;
  wire [3:0]phy_tx_data;
  wire [3:0]phy_tx_data_i;
  wire [3:0]phy_tx_data_i_cdc;
  wire phy_tx_en;
  wire phy_tx_en_i;
  wire phy_tx_en_i_cdc;
  wire [15:0]ping_pkt_lenth;
  wire ping_pkt_lenth0;
  wire ping_soft_status;
  wire pong_mac_program1;
  wire [15:0]pong_pkt_lenth;
  wire pong_pkt_lenth0;
  wire pong_rx_status;
  wire pong_soft_status;
  wire reg_access;
  wire reg_data_out0__0;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;

  assign phy_rst_n = s_axi_aresetn;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = s_axi_rlast;
  ntps_top_axi_ethernetlite_0_0_cdc_sync BUS_RST_RX_SYNC_CORE_I
       (.SR(bus_rst),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(bus_rst_rx_sync_core));
  ntps_top_axi_ethernetlite_0_0_cdc_sync_0 BUS_RST_TX_SYNC_CORE_I
       (.SR(bus_rst),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(bus_rst_tx_sync_core));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1 CDC_PHY_TX_DATA_OUT
       (.phy_tx_clk(phy_tx_clk),
        .prmry_vect_in(phy_tx_data_i),
        .scndry_vect_out(phy_tx_data_i_cdc));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0 CDC_PHY_TX_EN_O
       (.phy_tx_clk(phy_tx_clk),
        .prmry_in(phy_tx_en_i),
        .scndry_out(phy_tx_en_i_cdc));
  GND GND
       (.G(\<const0> ));
  (* IOB = "TRUE" *) 
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
        .Q(phy_dv_reg),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
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
        .Q(phy_rx_er_reg),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN2.TEN_FF 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_en_i_cdc),
        .Q(phy_tx_en),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
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
        .Q(\IOFFS_GEN[0].RX_FF_I_n_0 ),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[0].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[0]),
        .Q(phy_tx_data[0]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
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
        .Q(\IOFFS_GEN[1].RX_FF_I_n_0 ),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[1].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[1]),
        .Q(phy_tx_data[1]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
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
        .Q(\IOFFS_GEN[2].RX_FF_I_n_0 ),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[2].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[2]),
        .Q(phy_tx_data[2]),
        .R(bus_rst_tx_sync_core));
  (* IOB = "TRUE" *) 
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
        .Q(Q),
        .R(bus_rst_rx_sync_core));
  (* IOB = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \IOFFS_GEN[3].TX_FF_I 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(phy_tx_data_i_cdc[3]),
        .Q(phy_tx_data[3]),
        .R(bus_rst_tx_sync_core));
  ntps_top_axi_ethernetlite_0_0_axi_interface I_AXI_NATIVE_IPIF
       (.\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_0 (I_AXI_NATIVE_IPIF_n_27),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_1 (I_AXI_NATIVE_IPIF_n_28),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_10 (I_AXI_NATIVE_IPIF_n_69),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_11 (I_AXI_NATIVE_IPIF_n_70),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_12 (I_AXI_NATIVE_IPIF_n_71),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_2 (I_AXI_NATIVE_IPIF_n_29),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_3 (I_AXI_NATIVE_IPIF_n_50),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_4 (I_AXI_NATIVE_IPIF_n_52),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 (I_AXI_NATIVE_IPIF_n_55),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_6 (I_AXI_NATIVE_IPIF_n_65),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_7 (I_AXI_NATIVE_IPIF_n_66),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_8 (I_AXI_NATIVE_IPIF_n_67),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_9 (I_AXI_NATIVE_IPIF_n_68),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 (I_AXI_NATIVE_IPIF_n_51),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 (I_AXI_NATIVE_IPIF_n_22),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 (I_AXI_NATIVE_IPIF_n_23),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 (I_AXI_NATIVE_IPIF_n_25),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_3 (pong_pkt_lenth0),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 (I_AXI_NATIVE_IPIF_n_38),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 (I_AXI_NATIVE_IPIF_n_39),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 (I_AXI_NATIVE_IPIF_n_59),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 (mdio_wr_data_reg0),
        .\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_1 (I_AXI_NATIVE_IPIF_n_64),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_0 (I_AXI_NATIVE_IPIF_n_21),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_1 (I_AXI_NATIVE_IPIF_n_24),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_2 (I_AXI_NATIVE_IPIF_n_37),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_3 (I_AXI_NATIVE_IPIF_n_41),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_4 (I_AXI_NATIVE_IPIF_n_56),
        .\AXI4_LITE_IF_GEN.read_in_prog_reg_5 (I_AXI_NATIVE_IPIF_n_57),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg_0 (I_AXI_NATIVE_IPIF_n_32),
        .\AXI4_LITE_IF_GEN.write_in_prog_reg_1 (mdio_phy_addr0),
        .D(ip2bus_data),
        .E(ping_pkt_lenth0),
        .\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] (I_AXI_NATIVE_IPIF_n_58),
        .\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] (I_AXI_NATIVE_IPIF_n_60),
        .\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] (I_AXI_NATIVE_IPIF_n_61),
        .\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] (I_AXI_NATIVE_IPIF_n_62),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] (I_AXI_NATIVE_IPIF_n_63),
        .\MDIO_GEN.mdio_data_out_reg[15] (mdio_wr_data_reg),
        .Q(bus2ip_addr),
        .SR(bus_rst),
        .enb(I_AXI_NATIVE_IPIF_n_49),
        .mdio_en_i0(mdio_en_i0),
        .mdio_rd_data_reg(mdio_rd_data_reg),
        .p_0_in(p_0_in),
        .p_13_in113_in(p_13_in113_in),
        .p_15_in(p_15_in),
        .p_17_in({p_17_in[3],p_17_in[1]}),
        .p_181_in(p_181_in),
        .p_19_in(p_19_in),
        .p_25_in148_in(p_25_in148_in),
        .p_31_in166_in(p_31_in166_in),
        .p_5_in(p_5_in),
        .p_7_in94_in(p_7_in94_in),
        .p_9_in({p_9_in[3],p_9_in[0]}),
        .ping_soft_status(ping_soft_status),
        .pong_mac_program1(pong_mac_program1),
        .pong_rx_status(pong_rx_status),
        .pong_soft_status(pong_soft_status),
        .reg_access(reg_access),
        .reg_data_out0__0(reg_data_out0__0),
        .\reg_data_out_reg[0] (I_AXI_NATIVE_IPIF_n_20),
        .\reg_data_out_reg[0]_0 (XEMAC_I_n_29),
        .\reg_data_out_reg[0]_1 (XEMAC_I_n_62),
        .\reg_data_out_reg[15] ({ping_pkt_lenth[15:6],ping_pkt_lenth[4:3],ping_pkt_lenth[1:0]}),
        .\reg_data_out_reg[15]_0 ({pong_pkt_lenth[15:6],pong_pkt_lenth[4:3],pong_pkt_lenth[1:0]}),
        .\reg_data_out_reg[1] (I_AXI_NATIVE_IPIF_n_19),
        .\reg_data_out_reg[2] (I_AXI_NATIVE_IPIF_n_45),
        .\reg_data_out_reg[2]_0 (XEMAC_I_n_97),
        .\reg_data_out_reg[30] (I_AXI_NATIVE_IPIF_n_5),
        .\reg_data_out_reg[31] (XEMAC_I_n_22),
        .\reg_data_out_reg[3] (I_AXI_NATIVE_IPIF_n_18),
        .\reg_data_out_reg[4] (I_AXI_NATIVE_IPIF_n_17),
        .\reg_data_out_reg[4]_0 (XEMAC_I_n_15),
        .\reg_data_out_reg[5] (I_AXI_NATIVE_IPIF_n_46),
        .\reg_data_out_reg[5]_0 (data7),
        .\reg_data_out_reg[5]_1 (XEMAC_I_n_96),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(I_AXI_NATIVE_IPIF_n_3),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[3]}),
        .\s_axi_wdata[31] (I_AXI_NATIVE_IPIF_n_43),
        .\s_axi_wdata[31]_0 (I_AXI_NATIVE_IPIF_n_44),
        .\s_axi_wdata[31]_1 (I_AXI_NATIVE_IPIF_n_47),
        .\s_axi_wdata[3] (I_AXI_NATIVE_IPIF_n_42),
        .\s_axi_wdata[3]_0 (I_AXI_NATIVE_IPIF_n_48),
        .\s_axi_wdata[3]_1 (I_AXI_NATIVE_IPIF_n_54),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_intr_en0(tx_intr_en0),
        .web(I_AXI_NATIVE_IPIF_n_53));
  ntps_top_axi_ethernetlite_0_0_xemac XEMAC_I
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] (I_AXI_NATIVE_IPIF_n_38),
        .D(ip2bus_data),
        .E(mdio_phy_addr0),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] (mdio_rd_data_reg),
        .\MDIO_GEN.mdio_clk_i_reg_0 (phy_mdc),
        .\MDIO_GEN.mdio_data_out_reg[10]_0 (I_AXI_NATIVE_IPIF_n_37),
        .\MDIO_GEN.mdio_data_out_reg[10]_1 (I_AXI_NATIVE_IPIF_n_39),
        .\MDIO_GEN.mdio_data_out_reg[11]_0 (I_AXI_NATIVE_IPIF_n_57),
        .\MDIO_GEN.mdio_data_out_reg[11]_1 (I_AXI_NATIVE_IPIF_n_56),
        .\MDIO_GEN.mdio_data_out_reg[11]_2 (I_AXI_NATIVE_IPIF_n_58),
        .\MDIO_GEN.mdio_data_out_reg[12]_0 (I_AXI_NATIVE_IPIF_n_60),
        .\MDIO_GEN.mdio_data_out_reg[13]_0 (I_AXI_NATIVE_IPIF_n_61),
        .\MDIO_GEN.mdio_data_out_reg[14]_0 (I_AXI_NATIVE_IPIF_n_62),
        .\MDIO_GEN.mdio_data_out_reg[15]_0 (I_AXI_NATIVE_IPIF_n_63),
        .\MDIO_GEN.mdio_data_out_reg[3]_0 (I_AXI_NATIVE_IPIF_n_64),
        .\MDIO_GEN.mdio_data_out_reg[4]_0 (I_AXI_NATIVE_IPIF_n_59),
        .\MDIO_GEN.mdio_en_i_reg_0 (p_0_in),
        .\MDIO_GEN.mdio_en_i_reg_1 (I_AXI_NATIVE_IPIF_n_42),
        .\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 (mdio_wr_data_reg),
        .\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 (mdio_wr_data_reg0),
        .Q(bus2ip_addr),
        .\RX_PONG_REG_GEN.pong_rx_status_reg_0 (I_AXI_NATIVE_IPIF_n_32),
        .SR(bus_rst),
        .\TX_PONG_REG_GEN.pong_mac_program_reg_0 (p_15_in),
        .\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ({pong_pkt_lenth[15:6],pong_pkt_lenth[4:3],pong_pkt_lenth[1:0]}),
        .\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 (pong_pkt_lenth0),
        .\TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]_0 (XEMAC_I_n_96),
        .\TX_PONG_REG_GEN.pong_soft_status_reg_0 (I_AXI_NATIVE_IPIF_n_44),
        .\TX_PONG_REG_GEN.pong_tx_status_reg_0 (XEMAC_I_n_62),
        .din({Q,\IOFFS_GEN[2].RX_FF_I_n_0 ,\IOFFS_GEN[1].RX_FF_I_n_0 ,\IOFFS_GEN[0].RX_FF_I_n_0 ,phy_dv_reg,phy_rx_er_reg}),
        .enb(I_AXI_NATIVE_IPIF_n_49),
        .\gen_wr_b.gen_word_wide.mem_reg (I_AXI_NATIVE_IPIF_n_52),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (I_AXI_NATIVE_IPIF_n_51),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (I_AXI_NATIVE_IPIF_n_50),
        .gie_enable_reg_0(I_AXI_NATIVE_IPIF_n_43),
        .ip2intc_irpt(ip2intc_irpt),
        .loopback_en_reg_0(XEMAC_I_n_15),
        .mdio_en_i0(mdio_en_i0),
        .p_13_in113_in(p_13_in113_in),
        .p_181_in(p_181_in),
        .p_19_in(p_19_in),
        .p_25_in148_in(p_25_in148_in),
        .p_31_in166_in(p_31_in166_in),
        .p_5_in(p_5_in),
        .p_7_in94_in(p_7_in94_in),
        .p_9_in({p_9_in[3],p_9_in[0]}),
        .phy_crs(phy_crs),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .\ping_pkt_lenth_reg[15]_0 ({ping_pkt_lenth[15:6],ping_pkt_lenth[4:3],ping_pkt_lenth[1:0]}),
        .\ping_pkt_lenth_reg[15]_1 (ping_pkt_lenth0),
        .\ping_pkt_lenth_reg[2]_0 (XEMAC_I_n_97),
        .ping_rx_status_reg_0(I_AXI_NATIVE_IPIF_n_55),
        .ping_soft_status(ping_soft_status),
        .ping_soft_status_reg_0(I_AXI_NATIVE_IPIF_n_47),
        .pong_mac_program1(pong_mac_program1),
        .pong_rx_status(pong_rx_status),
        .pong_soft_status(pong_soft_status),
        .prmry_in(phy_tx_en_i),
        .prmry_vect_in(phy_tx_data_i),
        .reg_access(reg_access),
        .reg_access_reg_0(I_AXI_NATIVE_IPIF_n_41),
        .reg_data_out0__0(reg_data_out0__0),
        .\reg_data_out[2]_i_2 (I_AXI_NATIVE_IPIF_n_23),
        .\reg_data_out[2]_i_2_0 (I_AXI_NATIVE_IPIF_n_22),
        .\reg_data_out_reg[0]_0 (XEMAC_I_n_29),
        .\reg_data_out_reg[0]_1 (I_AXI_NATIVE_IPIF_n_20),
        .\reg_data_out_reg[0]_2 (I_AXI_NATIVE_IPIF_n_24),
        .\reg_data_out_reg[0]_3 (I_AXI_NATIVE_IPIF_n_25),
        .\reg_data_out_reg[10]_0 (I_AXI_NATIVE_IPIF_n_69),
        .\reg_data_out_reg[11]_0 (I_AXI_NATIVE_IPIF_n_29),
        .\reg_data_out_reg[12]_0 (I_AXI_NATIVE_IPIF_n_70),
        .\reg_data_out_reg[13]_0 (I_AXI_NATIVE_IPIF_n_71),
        .\reg_data_out_reg[14]_0 (I_AXI_NATIVE_IPIF_n_28),
        .\reg_data_out_reg[15]_0 (I_AXI_NATIVE_IPIF_n_27),
        .\reg_data_out_reg[1]_0 (I_AXI_NATIVE_IPIF_n_19),
        .\reg_data_out_reg[2]_0 (I_AXI_NATIVE_IPIF_n_45),
        .\reg_data_out_reg[30]_0 (I_AXI_NATIVE_IPIF_n_5),
        .\reg_data_out_reg[31]_0 (XEMAC_I_n_22),
        .\reg_data_out_reg[31]_1 (I_AXI_NATIVE_IPIF_n_3),
        .\reg_data_out_reg[3]_0 (I_AXI_NATIVE_IPIF_n_18),
        .\reg_data_out_reg[4]_0 (I_AXI_NATIVE_IPIF_n_17),
        .\reg_data_out_reg[5]_0 (I_AXI_NATIVE_IPIF_n_46),
        .\reg_data_out_reg[6]_0 (I_AXI_NATIVE_IPIF_n_21),
        .\reg_data_out_reg[6]_1 (I_AXI_NATIVE_IPIF_n_65),
        .\reg_data_out_reg[7]_0 (I_AXI_NATIVE_IPIF_n_66),
        .\reg_data_out_reg[8]_0 (I_AXI_NATIVE_IPIF_n_67),
        .\reg_data_out_reg[9]_0 (I_AXI_NATIVE_IPIF_n_68),
        .rx_intr_en_reg_0(I_AXI_NATIVE_IPIF_n_54),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\status_reg_reg[5]_0 (data7),
        .tx_intr_en0(tx_intr_en0),
        .tx_intr_en_reg_0({p_17_in[3],p_17_in[1]}),
        .tx_intr_en_reg_1(I_AXI_NATIVE_IPIF_n_48),
        .web(I_AXI_NATIVE_IPIF_n_53));
endmodule

(* ORIG_REF_NAME = "axi_ethernetlite_v3_0_18_emac" *) 
module ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_18_emac
   (prmry_in,
    dout,
    tx_idle,
    txDone,
    tx_DPM_adr,
    addra,
    wea,
    state17a,
    ena,
    \rxbuffer_addr_reg[9]_0 ,
    \rxbuffer_addr_reg[9]_1 ,
    \rxbuffer_addr_reg[9]_2 ,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \txbuffer_addr_reg[9]_0 ,
    \txbuffer_addr_reg[9]_1 ,
    D_2,
    rx_done,
    ping_mac_program_reg,
    E,
    \s_axi_wdata[4] ,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[0]_0 ,
    prmry_vect_in,
    axi_phy_tx_en_i_p_reg,
    s_axi_aclk,
    phy_rx_clk,
    din,
    phy_tx_clk,
    phy_crs,
    s_axi_aresetn,
    rx_pong_ping_l,
    pong_rx_status,
    p_9_in,
    Q,
    tx_pong_ping_l,
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    tx_done_d2,
    p_17_in,
    \status_reg_reg[5] ,
    p_15_in,
    \status_reg_reg[0] ,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    D,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg );
  output prmry_in;
  output [3:0]dout;
  output tx_idle;
  output txDone;
  output [11:0]tx_DPM_adr;
  output [10:0]addra;
  output [0:0]wea;
  output [0:0]state17a;
  output ena;
  output \rxbuffer_addr_reg[9]_0 ;
  output \rxbuffer_addr_reg[9]_1 ;
  output \rxbuffer_addr_reg[9]_2 ;
  output \TX_PONG_GEN.tx_pong_ping_l_reg ;
  output \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  output \txbuffer_addr_reg[9]_0 ;
  output \txbuffer_addr_reg[9]_1 ;
  output D_2;
  output rx_done;
  output [5:0]ping_mac_program_reg;
  output [0:0]E;
  output \s_axi_wdata[4] ;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[0]_0 ;
  output [3:0]prmry_vect_in;
  output axi_phy_tx_en_i_p_reg;
  input s_axi_aclk;
  input phy_rx_clk;
  input [5:0]din;
  input phy_tx_clk;
  input phy_crs;
  input s_axi_aresetn;
  input rx_pong_ping_l;
  input pong_rx_status;
  input [1:0]p_9_in;
  input [15:0]Q;
  input tx_pong_ping_l;
  input \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input tx_done_d2;
  input [0:0]p_17_in;
  input \status_reg_reg[5] ;
  input [0:0]p_15_in;
  input \status_reg_reg[0] ;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input [3:0]D;
  input rx_done_d1;
  input [1:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;

  wire [3:0]D;
  wire D_2;
  wire [0:0]E;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire NODEMACADDRRAMI_n_0;
  wire NODEMACADDRRAMI_n_1;
  wire Phy_tx_clk_axi_d;
  wire [15:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire RX_n_15;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire TX_n_12;
  wire [10:0]addra;
  wire axi_phy_tx_en_i_p_reg;
  wire [5:0]din;
  wire [3:0]dout;
  wire [5:2]emac_rx_rd_data_d1;
  wire ena;
  wire loopback_en_reg;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_addr_rd;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire [0:0]p_15_in;
  wire [0:0]p_17_in;
  wire [0:0]p_5_in;
  wire [1:0]p_9_in;
  wire phy_crs;
  wire phy_crs_d1;
  wire phy_crs_d2;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire [5:0]ping_mac_program_reg;
  wire ping_rx_status_reg;
  wire pong_rx_status;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire [2:2]rx_DPM_adr__0;
  wire rx_addr_en;
  wire rx_done;
  wire rx_done_d1;
  wire rx_pong_ping_l;
  wire \rxbuffer_addr[11]_i_4_n_0 ;
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
  wire \rxbuffer_addr_reg[9]_0 ;
  wire \rxbuffer_addr_reg[9]_1 ;
  wire \rxbuffer_addr_reg[9]_2 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[0]_0 ;
  wire \s_axi_wdata[4] ;
  wire s_axi_wdata_0_sn_1;
  wire [0:0]state17a;
  wire \status_reg_reg[0] ;
  wire \status_reg_reg[5] ;
  wire txDone;
  wire [11:0]tx_DPM_adr;
  wire tx_addr_en;
  wire tx_clk_reg_d1;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire tx_pong_ping_l;
  wire \txbuffer_addr[11]_i_5_n_0 ;
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
  wire \txbuffer_addr_reg[9]_0 ;
  wire \txbuffer_addr_reg[9]_1 ;
  wire [0:0]wea;
  wire [3:3]\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  ntps_top_axi_ethernetlite_0_0_cdc_sync_1 CDC_TX_CLK
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
        .Q(phy_crs_d1),
        .R(prmry_in));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    C_SENSE_SYNC_2
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(phy_crs_d1),
        .Q(phy_crs_d2),
        .R(prmry_in));
  ntps_top_axi_ethernetlite_0_0_MacAddrRAM NODEMACADDRRAMI
       (.D(D),
        .Q(emac_rx_rd_data_d1),
        .\emac_rx_rd_data_d1_reg[1] (NODEMACADDRRAMI_n_0),
        .\emac_rx_rd_data_d1_reg[2] (NODEMACADDRRAMI_n_1),
        .mac_addr_ram_addr(mac_addr_ram_addr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .s_axi_aclk(s_axi_aclk));
  ntps_top_axi_ethernetlite_0_0_receive RX
       (.D(dout),
        .\Mac_addr_ram_addr_rd[0]_i_5 (NODEMACADDRRAMI_n_0),
        .\Mac_addr_ram_addr_rd[0]_i_5_0 (NODEMACADDRRAMI_n_1),
        .\Mac_addr_ram_addr_rd_reg[0] ({mac_addr_ram_addr_rd[0],mac_addr_ram_addr_rd[1],mac_addr_ram_addr_rd[2],mac_addr_ram_addr_rd[3]}),
        .Q(emac_rx_rd_data_d1),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SS(prmry_in),
        .din(din),
        .ena(ena),
        .p_9_in(p_9_in[0]),
        .phy_rx_clk(phy_rx_clk),
        .ping_rx_status_reg(ping_rx_status_reg),
        .pong_rx_status(pong_rx_status),
        .rx_DPM_adr__0(rx_DPM_adr__0),
        .rx_addr_en(rx_addr_en),
        .rx_pong_ping_l(rx_pong_ping_l),
        .\rxbuffer_addr_reg[9] (\rxbuffer_addr_reg[9]_0 ),
        .\rxbuffer_addr_reg[9]_0 (\rxbuffer_addr_reg[9]_1 ),
        .\rxbuffer_addr_reg[9]_1 (\rxbuffer_addr_reg[9]_2 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[0]),
        .\s_axi_wdata[0]_0 (\s_axi_wdata[0]_0 ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .state17a(state17a),
        .state20a(rx_done),
        .state3a(RX_n_15),
        .wea(wea));
  ntps_top_axi_ethernetlite_0_0_transmit TX
       (.D(D[1]),
        .D_2(D_2),
        .E(E),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .IP2INTC_IRPT_REG_I(IP2INTC_IRPT_REG_I),
        .Q(Q),
        .S(tx_DPM_adr[2]),
        .SS(prmry_in),
        .STATE0A(tx_idle),
        .STATE17A(txDone),
        .STATE8A(TX_n_12),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .axi_phy_tx_en_i_p_reg_0(axi_phy_tx_en_i_p_reg),
        .loopback_en_reg(loopback_en_reg),
        .mac_addr_ram_addr_wr(mac_addr_ram_addr_wr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_5_in(p_5_in),
        .p_9_in(p_9_in[1]),
        .phy_crs_d2(phy_crs_d2),
        .phy_tx_clk(phy_tx_clk),
        .ping_mac_program_reg(ping_mac_program_reg),
        .prmry_vect_in(prmry_vect_in),
        .rx_done(rx_done),
        .rx_done_d1(rx_done_d1),
        .rx_pong_ping_l(rx_pong_ping_l),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[1]),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .\status_reg_reg[0] (\status_reg_reg[0] ),
        .\status_reg_reg[5] (\status_reg_reg[5] ),
        .tx_addr_en(tx_addr_en),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .tx_done_d2(tx_done_d2),
        .tx_intr_en0(tx_intr_en0),
        .tx_pong_ping_l(tx_pong_ping_l),
        .\txbuffer_addr_reg[9] (\txbuffer_addr_reg[9]_0 ),
        .\txbuffer_addr_reg[9]_0 (\txbuffer_addr_reg[9]_1 ));
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
    .INIT(2'h1)) 
    \rxbuffer_addr[11]_i_4 
       (.I0(addra[0]),
        .O(\rxbuffer_addr[11]_i_4_n_0 ));
  FDRE \rxbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(addra[10]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(addra[1]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(addra[0]),
        .R(RX_n_15));
  CARRY4 \rxbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\rxbuffer_addr_reg[11]_i_3_n_0 ,\rxbuffer_addr_reg[11]_i_3_n_1 ,\rxbuffer_addr_reg[11]_i_3_n_2 ,\rxbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rxbuffer_addr_reg[11]_i_3_n_4 ,\rxbuffer_addr_reg[11]_i_3_n_5 ,\rxbuffer_addr_reg[11]_i_3_n_6 ,\rxbuffer_addr_reg[11]_i_3_n_7 }),
        .S({addra[2],rx_DPM_adr__0,addra[1],\rxbuffer_addr[11]_i_4_n_0 }));
  FDRE \rxbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(addra[9]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(addra[8]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(addra[7]),
        .R(RX_n_15));
  CARRY4 \rxbuffer_addr_reg[3]_i_1 
       (.CI(\rxbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\rxbuffer_addr_reg[3]_i_1_n_1 ,\rxbuffer_addr_reg[3]_i_1_n_2 ,\rxbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[3]_i_1_n_4 ,\rxbuffer_addr_reg[3]_i_1_n_5 ,\rxbuffer_addr_reg[3]_i_1_n_6 ,\rxbuffer_addr_reg[3]_i_1_n_7 }),
        .S(addra[10:7]));
  FDRE \rxbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(addra[6]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(addra[5]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(addra[4]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(addra[3]),
        .R(RX_n_15));
  CARRY4 \rxbuffer_addr_reg[7]_i_1 
       (.CI(\rxbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\rxbuffer_addr_reg[7]_i_1_n_0 ,\rxbuffer_addr_reg[7]_i_1_n_1 ,\rxbuffer_addr_reg[7]_i_1_n_2 ,\rxbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rxbuffer_addr_reg[7]_i_1_n_4 ,\rxbuffer_addr_reg[7]_i_1_n_5 ,\rxbuffer_addr_reg[7]_i_1_n_6 ,\rxbuffer_addr_reg[7]_i_1_n_7 }),
        .S(addra[6:3]));
  FDRE \rxbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(addra[2]),
        .R(RX_n_15));
  FDRE \rxbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(rx_addr_en),
        .D(\rxbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(rx_DPM_adr__0),
        .R(RX_n_15));
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
    .INIT(2'h1)) 
    \txbuffer_addr[11]_i_5 
       (.I0(tx_DPM_adr[0]),
        .O(\txbuffer_addr[11]_i_5_n_0 ));
  FDRE \txbuffer_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_4 ),
        .Q(tx_DPM_adr[11]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_6 ),
        .Q(tx_DPM_adr[1]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_7 ),
        .Q(tx_DPM_adr[0]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\txbuffer_addr_reg[11]_i_3_n_0 ,\txbuffer_addr_reg[11]_i_3_n_1 ,\txbuffer_addr_reg[11]_i_3_n_2 ,\txbuffer_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\txbuffer_addr_reg[11]_i_3_n_4 ,\txbuffer_addr_reg[11]_i_3_n_5 ,\txbuffer_addr_reg[11]_i_3_n_6 ,\txbuffer_addr_reg[11]_i_3_n_7 }),
        .S({tx_DPM_adr[3:1],\txbuffer_addr[11]_i_5_n_0 }));
  FDRE \txbuffer_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_5 ),
        .Q(tx_DPM_adr[10]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_6 ),
        .Q(tx_DPM_adr[9]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[3]_i_1_n_7 ),
        .Q(tx_DPM_adr[8]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[3]_i_1 
       (.CI(\txbuffer_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED [3],\txbuffer_addr_reg[3]_i_1_n_1 ,\txbuffer_addr_reg[3]_i_1_n_2 ,\txbuffer_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[3]_i_1_n_4 ,\txbuffer_addr_reg[3]_i_1_n_5 ,\txbuffer_addr_reg[3]_i_1_n_6 ,\txbuffer_addr_reg[3]_i_1_n_7 }),
        .S(tx_DPM_adr[11:8]));
  FDRE \txbuffer_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_4 ),
        .Q(tx_DPM_adr[7]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_5 ),
        .Q(tx_DPM_adr[6]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_6 ),
        .Q(tx_DPM_adr[5]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[7]_i_1_n_7 ),
        .Q(tx_DPM_adr[4]),
        .R(TX_n_12));
  CARRY4 \txbuffer_addr_reg[7]_i_1 
       (.CI(\txbuffer_addr_reg[11]_i_3_n_0 ),
        .CO({\txbuffer_addr_reg[7]_i_1_n_0 ,\txbuffer_addr_reg[7]_i_1_n_1 ,\txbuffer_addr_reg[7]_i_1_n_2 ,\txbuffer_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\txbuffer_addr_reg[7]_i_1_n_4 ,\txbuffer_addr_reg[7]_i_1_n_5 ,\txbuffer_addr_reg[7]_i_1_n_6 ,\txbuffer_addr_reg[7]_i_1_n_7 }),
        .S(tx_DPM_adr[7:4]));
  FDRE \txbuffer_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_4 ),
        .Q(tx_DPM_adr[3]),
        .R(TX_n_12));
  FDRE \txbuffer_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(tx_addr_en),
        .D(\txbuffer_addr_reg[11]_i_3_n_5 ),
        .Q(tx_DPM_adr[2]),
        .R(TX_n_12));
endmodule

(* ORIG_REF_NAME = "axi_interface" *) 
module ntps_top_axi_ethernetlite_0_0_axi_interface
   (s_axi_wready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_aresetn_0,
    reg_data_out0__0,
    \reg_data_out_reg[30] ,
    Q,
    \reg_data_out_reg[4] ,
    \reg_data_out_reg[3] ,
    \reg_data_out_reg[1] ,
    \reg_data_out_reg[0] ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ,
    tx_intr_en0,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_1 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_2 ,
    E,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ,
    \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_3 ,
    pong_mac_program1,
    mdio_en_i0,
    \AXI4_LITE_IF_GEN.write_in_prog_reg_1 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ,
    s_axi_arready,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ,
    \s_axi_wdata[3] ,
    \s_axi_wdata[31] ,
    \s_axi_wdata[31]_0 ,
    \reg_data_out_reg[2] ,
    \reg_data_out_reg[5] ,
    \s_axi_wdata[31]_1 ,
    \s_axi_wdata[3]_0 ,
    enb,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_3 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_4 ,
    web,
    \s_axi_wdata[3]_1 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ,
    \AXI4_LITE_IF_GEN.read_in_prog_reg_5 ,
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ,
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ,
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ,
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_1 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_6 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_7 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_8 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_9 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_10 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_11 ,
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_12 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_aresetn,
    \reg_data_out_reg[31] ,
    p_181_in,
    p_25_in148_in,
    p_19_in,
    p_7_in94_in,
    \reg_data_out_reg[0]_0 ,
    \reg_data_out_reg[0]_1 ,
    \reg_data_out_reg[15] ,
    \reg_data_out_reg[15]_0 ,
    \reg_data_out_reg[5]_0 ,
    pong_rx_status,
    \reg_data_out_reg[2]_0 ,
    \reg_data_out_reg[5]_1 ,
    p_5_in,
    pong_soft_status,
    ping_soft_status,
    \reg_data_out_reg[4]_0 ,
    p_17_in,
    p_9_in,
    p_15_in,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_rready,
    s_axi_bready,
    reg_access,
    s_axi_wdata,
    p_0_in,
    p_13_in113_in,
    p_31_in166_in,
    mdio_rd_data_reg,
    \MDIO_GEN.mdio_data_out_reg[15] ,
    D);
  output s_axi_wready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_aresetn_0;
  output reg_data_out0__0;
  output \reg_data_out_reg[30] ;
  output [10:0]Q;
  output \reg_data_out_reg[4] ;
  output \reg_data_out_reg[3] ;
  output \reg_data_out_reg[1] ;
  output \reg_data_out_reg[0] ;
  output \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  output \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ;
  output tx_intr_en0;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_0 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_1 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_2 ;
  output [0:0]E;
  output [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  output \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ;
  output [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_3 ;
  output pong_mac_program1;
  output mdio_en_i0;
  output [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ;
  output \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ;
  output s_axi_arready;
  output \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ;
  output \s_axi_wdata[3] ;
  output \s_axi_wdata[31] ;
  output \s_axi_wdata[31]_0 ;
  output \reg_data_out_reg[2] ;
  output \reg_data_out_reg[5] ;
  output \s_axi_wdata[31]_1 ;
  output \s_axi_wdata[3]_0 ;
  output enb;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_3 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_4 ;
  output [0:0]web;
  output \s_axi_wdata[3]_1 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 ;
  output \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ;
  output [0:0]\AXI4_LITE_IF_GEN.read_in_prog_reg_5 ;
  output \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ;
  output \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  output \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  output \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  output \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_1 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_6 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_7 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_8 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_9 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_10 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_11 ;
  output \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_12 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \reg_data_out_reg[31] ;
  input p_181_in;
  input p_25_in148_in;
  input p_19_in;
  input p_7_in94_in;
  input \reg_data_out_reg[0]_0 ;
  input \reg_data_out_reg[0]_1 ;
  input [13:0]\reg_data_out_reg[15] ;
  input [13:0]\reg_data_out_reg[15]_0 ;
  input [5:0]\reg_data_out_reg[5]_0 ;
  input pong_rx_status;
  input \reg_data_out_reg[2]_0 ;
  input \reg_data_out_reg[5]_1 ;
  input [0:0]p_5_in;
  input pong_soft_status;
  input ping_soft_status;
  input \reg_data_out_reg[4]_0 ;
  input [1:0]p_17_in;
  input [1:0]p_9_in;
  input [0:0]p_15_in;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [10:0]s_axi_araddr;
  input [10:0]s_axi_awaddr;
  input s_axi_rready;
  input s_axi_bready;
  input reg_access;
  input [1:0]s_axi_wdata;
  input [0:0]p_0_in;
  input p_13_in113_in;
  input p_31_in166_in;
  input [4:0]mdio_rd_data_reg;
  input [4:0]\MDIO_GEN.mdio_data_out_reg[15] ;
  input [31:0]D;

  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_1 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_10 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_11 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_12 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_2 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_3 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_4 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_6 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_7 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_8 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_9 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ;
  wire [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_3 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ;
  wire [0:0]\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ;
  wire \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_1 ;
  wire \AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_0 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_1 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_2 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_3 ;
  wire \AXI4_LITE_IF_GEN.read_in_prog_reg_4 ;
  wire [0:0]\AXI4_LITE_IF_GEN.read_in_prog_reg_5 ;
  wire \AXI4_LITE_IF_GEN.read_req_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg_0 ;
  wire [0:0]\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ;
  wire \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ;
  wire [31:0]D;
  wire [0:0]E;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  wire [4:0]\MDIO_GEN.mdio_data_out_reg[15] ;
  wire [10:0]Q;
  wire [0:0]SR;
  wire \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ;
  wire \XEMAC_I/reg_access_i ;
  wire arready_i1;
  wire arready_i2;
  wire awready_i0;
  wire bus2ip_rdce;
  wire enb;
  wire gie_enable_i_2_n_0;
  wire mdio_en_i0;
  wire [4:0]mdio_rd_data_reg;
  wire [0:0]p_0_in;
  wire p_13_in113_in;
  wire [0:0]p_15_in;
  wire [1:0]p_17_in;
  wire p_181_in;
  wire p_19_in;
  wire p_25_in148_in;
  wire [12:2]p_2_in;
  wire p_31_in166_in;
  wire [0:0]p_5_in;
  wire p_7_in94_in;
  wire [1:0]p_9_in;
  wire \ping_pkt_lenth[15]_i_2_n_0 ;
  wire \ping_pkt_lenth[15]_i_3_n_0 ;
  wire ping_soft_status;
  wire pong_mac_program1;
  wire pong_rx_status;
  wire pong_soft_status;
  wire read_in_prog;
  wire read_req;
  wire reg_access;
  wire reg_data_out0__0;
  wire \reg_data_out[0]_i_3_n_0 ;
  wire \reg_data_out[0]_i_4_n_0 ;
  wire \reg_data_out[0]_i_5_n_0 ;
  wire \reg_data_out[0]_i_6_n_0 ;
  wire \reg_data_out[15]_i_12_n_0 ;
  wire \reg_data_out[15]_i_4_n_0 ;
  wire \reg_data_out[15]_i_5_n_0 ;
  wire \reg_data_out[15]_i_6_n_0 ;
  wire \reg_data_out[15]_i_7_n_0 ;
  wire \reg_data_out[15]_i_8_n_0 ;
  wire \reg_data_out[15]_i_9_n_0 ;
  wire \reg_data_out[1]_i_2_n_0 ;
  wire \reg_data_out[1]_i_3_n_0 ;
  wire \reg_data_out[1]_i_4_n_0 ;
  wire \reg_data_out[1]_i_5_n_0 ;
  wire \reg_data_out[2]_i_2_n_0 ;
  wire \reg_data_out[30]_i_2_n_0 ;
  wire \reg_data_out[31]_i_2_n_0 ;
  wire \reg_data_out[31]_i_3_n_0 ;
  wire \reg_data_out[31]_i_4_n_0 ;
  wire \reg_data_out[31]_i_5_n_0 ;
  wire \reg_data_out[3]_i_2_n_0 ;
  wire \reg_data_out[3]_i_3_n_0 ;
  wire \reg_data_out[3]_i_4_n_0 ;
  wire \reg_data_out[3]_i_5_n_0 ;
  wire \reg_data_out[4]_i_2_n_0 ;
  wire \reg_data_out[4]_i_3_n_0 ;
  wire \reg_data_out[4]_i_4_n_0 ;
  wire \reg_data_out[4]_i_5_n_0 ;
  wire \reg_data_out[4]_i_8_n_0 ;
  wire \reg_data_out[5]_i_2_n_0 ;
  wire \reg_data_out_reg[0] ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[0]_1 ;
  wire [13:0]\reg_data_out_reg[15] ;
  wire [13:0]\reg_data_out_reg[15]_0 ;
  wire \reg_data_out_reg[1] ;
  wire \reg_data_out_reg[2] ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[30] ;
  wire \reg_data_out_reg[31] ;
  wire \reg_data_out_reg[3] ;
  wire \reg_data_out_reg[4] ;
  wire \reg_data_out_reg[4]_0 ;
  wire \reg_data_out_reg[5] ;
  wire [5:0]\reg_data_out_reg[5]_0 ;
  wire \reg_data_out_reg[5]_1 ;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire \s_axi_wdata[31]_0 ;
  wire \s_axi_wdata[31]_1 ;
  wire \s_axi_wdata[3] ;
  wire \s_axi_wdata[3]_0 ;
  wire \s_axi_wdata[3]_1 ;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_intr_en0;
  wire [0:0]web;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCF9F)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\XEMAC_I/reg_access_i ),
        .I3(Q[1]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[11] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[12] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[13] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[14] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[15] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[16] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[17] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[18] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[19] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[20] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[21] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[23] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[24] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[26] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[27] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[29] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[3] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[4] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[5] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[6] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[7] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] 
       (.C(s_axi_aclk),
        .CE(arready_i1),
        .D(D[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.arready_i2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arready_i1),
        .Q(arready_i2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \AXI4_LITE_IF_GEN.awready_i_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(s_axi_wready),
        .O(awready_i0));
  FDRE \AXI4_LITE_IF_GEN.awready_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(awready_i0),
        .Q(s_axi_wready),
        .R(SR));
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
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_arvalid),
        .I2(bus2ip_rdce),
        .I3(s_axi_awvalid),
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
        .Q(Q[8]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(Q[9]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(Q[10]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[2]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[3]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[4]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[5]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(Q[6]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(Q[7]),
        .R(SR));
  FDRE \AXI4_LITE_IF_GEN.bus2ip_rdce_i_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce),
        .Q(arready_i1),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    \AXI4_LITE_IF_GEN.bvalid_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .O(\AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.bvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.bvalid_i_1_n_0 ),
        .Q(s_axi_bvalid),
        .R(SR));
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
        .I1(s_axi_rready),
        .I2(s_axi_rlast),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .O(read_in_prog));
  FDRE \AXI4_LITE_IF_GEN.read_in_prog_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0 ),
        .Q(bus2ip_rdce),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    \AXI4_LITE_IF_GEN.read_req_i_1 
       (.I0(s_axi_rready),
        .I1(arready_i1),
        .I2(s_axi_arvalid),
        .I3(read_req),
        .O(\AXI4_LITE_IF_GEN.read_req_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.read_req_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.read_req_i_1_n_0 ),
        .Q(read_req),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F08080)) 
    \AXI4_LITE_IF_GEN.rvalid_i_1 
       (.I0(arready_i1),
        .I1(read_req),
        .I2(s_axi_aresetn),
        .I3(s_axi_rready),
        .I4(s_axi_rlast),
        .O(\AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ));
  FDRE \AXI4_LITE_IF_GEN.rvalid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\AXI4_LITE_IF_GEN.rvalid_i_1_n_0 ),
        .Q(s_axi_rlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAABAAA)) 
    \AXI4_LITE_IF_GEN.write_in_prog_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(bus2ip_rdce),
        .I2(s_axi_awvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \MDIO_GEN.mdio_data_out[10]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ),
        .I1(bus2ip_rdce),
        .I2(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_5 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \MDIO_GEN.mdio_data_out[10]_i_4 
       (.I0(Q[0]),
        .I1(bus2ip_rdce),
        .I2(Q[1]),
        .I3(\XEMAC_I/reg_access_i ),
        .I4(Q[2]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \MDIO_GEN.mdio_data_out[10]_i_5 
       (.I0(bus2ip_rdce),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\XEMAC_I/reg_access_i ),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_2 ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[11]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ),
        .I1(mdio_rd_data_reg[0]),
        .I2(\MDIO_GEN.mdio_data_out_reg[15] [0]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ),
        .O(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[12]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ),
        .I1(mdio_rd_data_reg[1]),
        .I2(\MDIO_GEN.mdio_data_out_reg[15] [1]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ),
        .O(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[13]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ),
        .I1(mdio_rd_data_reg[2]),
        .I2(\MDIO_GEN.mdio_data_out_reg[15] [2]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ),
        .O(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \MDIO_GEN.mdio_data_out[14]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ),
        .I1(mdio_rd_data_reg[3]),
        .I2(\MDIO_GEN.mdio_data_out_reg[15] [3]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ),
        .O(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \MDIO_GEN.mdio_data_out[15]_i_1 
       (.I0(bus2ip_rdce),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_4 ),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg_2 ),
        .I3(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_4 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \MDIO_GEN.mdio_data_out[15]_i_2 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_5 ),
        .I1(mdio_rd_data_reg[4]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ),
        .I3(\MDIO_GEN.mdio_data_out_reg[15] [4]),
        .O(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \MDIO_GEN.mdio_data_out[15]_i_3 
       (.I0(Q[0]),
        .I1(bus2ip_rdce),
        .I2(Q[1]),
        .I3(\XEMAC_I/reg_access_i ),
        .I4(Q[2]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_6 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \MDIO_GEN.mdio_data_out[3]_i_3 
       (.I0(Q[2]),
        .I1(\XEMAC_I/reg_access_i ),
        .I2(Q[1]),
        .I3(bus2ip_rdce),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MDIO_GEN.mdio_en_i_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(mdio_en_i0),
        .I2(p_0_in),
        .O(\s_axi_wdata[3] ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \MDIO_GEN.mdio_reg_addr[4]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\AXI4_LITE_IF_GEN.write_in_prog_reg_1 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \MDIO_GEN.mdio_reg_addr[4]_i_2 
       (.I0(Q[8]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\XEMAC_I/reg_access_i ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \MDIO_GEN.mdio_req_i_i_2 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\XEMAC_I/reg_access_i ),
        .O(mdio_en_i0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \MDIO_GEN.mdio_wr_data_reg[15]_i_1 
       (.I0(Q[2]),
        .I1(\XEMAC_I/reg_access_i ),
        .I2(Q[1]),
        .I3(s_axi_wvalid),
        .I4(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I5(Q[0]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \RX_PONG_REG_GEN.pong_rx_status_i_2 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(Q[9]),
        .I3(\XEMAC_I/reg_access_i ),
        .I4(Q[10]),
        .I5(\reg_data_out[15]_i_5_n_0 ),
        .O(\AXI4_LITE_IF_GEN.write_in_prog_reg_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_1 
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_3 ));
  LUT2 #(
    .INIT(4'hB)) 
    \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2 
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_PONG_REG_GEN.pong_soft_status_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(pong_mac_program1),
        .I2(pong_soft_status),
        .O(\s_axi_wdata[31]_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \TX_PONG_REG_GEN.pong_tx_status_i_2 
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(pong_mac_program1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    gie_enable_i_1
       (.I0(s_axi_wdata[1]),
        .I1(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I2(s_axi_wvalid),
        .I3(gie_enable_i_2_n_0),
        .I4(p_5_in),
        .O(\s_axi_wdata[31] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    gie_enable_i_2
       (.I0(\XEMAC_I/reg_access_i ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(gie_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \ping_pkt_lenth[15]_i_1 
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ping_pkt_lenth[15]_i_2 
       (.I0(s_axi_wvalid),
        .I1(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .O(\ping_pkt_lenth[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ping_pkt_lenth[15]_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\ping_pkt_lenth[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    ping_rx_status_i_2
       (.I0(Q[9]),
        .I1(s_axi_wvalid),
        .I2(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I3(\XEMAC_I/reg_access_i ),
        .I4(\reg_data_out[15]_i_5_n_0 ),
        .I5(Q[10]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ping_soft_status_i_1
       (.I0(s_axi_wdata[1]),
        .I1(tx_intr_en0),
        .I2(ping_soft_status),
        .O(\s_axi_wdata[31]_1 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    ping_tx_status_i_2
       (.I0(\ping_pkt_lenth[15]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(tx_intr_en0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    reg_access_i_1
       (.I0(\XEMAC_I/reg_access_i ),
        .I1(bus2ip_rdce),
        .I2(reg_access),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_3 ));
  LUT6 #(
    .INIT(64'h00000000E2222222)) 
    \reg_data_out[0]_i_1 
       (.I0(\reg_data_out_reg[0]_0 ),
        .I1(reg_data_out0__0),
        .I2(\reg_data_out_reg[0]_1 ),
        .I3(\reg_data_out[0]_i_3_n_0 ),
        .I4(\reg_data_out[0]_i_4_n_0 ),
        .I5(\reg_data_out[0]_i_5_n_0 ),
        .O(\reg_data_out_reg[0] ));
  LUT6 #(
    .INIT(64'h55DDF5FDFFDDF5FD)) 
    \reg_data_out[0]_i_3 
       (.I0(\reg_data_out[15]_i_12_n_0 ),
        .I1(\reg_data_out_reg[15] [0]),
        .I2(\reg_data_out_reg[15]_0 [0]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out[0]_i_6_n_0 ),
        .O(\reg_data_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7FFFFF7D5FFDD)) 
    \reg_data_out[0]_i_4 
       (.I0(\reg_data_out[15]_i_7_n_0 ),
        .I1(\reg_data_out[15]_i_8_n_0 ),
        .I2(pong_rx_status),
        .I3(\reg_data_out_reg[5]_0 [0]),
        .I4(Q[9]),
        .I5(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_data_out[0]_i_5 
       (.I0(\reg_data_out[15]_i_9_n_0 ),
        .I1(s_axi_aresetn),
        .O(\reg_data_out[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \reg_data_out[0]_i_6 
       (.I0(Q[9]),
        .I1(\reg_data_out[15]_i_8_n_0 ),
        .I2(p_9_in[0]),
        .O(\reg_data_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[10]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [8]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [8]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_10 ));
  LUT6 #(
    .INIT(64'h77F277F2FFFF22F2)) 
    \reg_data_out[11]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out_reg[15] [9]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I4(\reg_data_out_reg[15]_0 [9]),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[12]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [10]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [10]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_11 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[13]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [11]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [11]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_12 ));
  LUT6 #(
    .INIT(64'h77F277F2FFFF22F2)) 
    \reg_data_out[14]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out_reg[15]_0 [12]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I4(\reg_data_out_reg[15] [12]),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_1 ));
  LUT5 #(
    .INIT(32'hAE00AEAE)) 
    \reg_data_out[15]_i_1 
       (.I0(\reg_data_out[15]_i_4_n_0 ),
        .I1(bus2ip_rdce),
        .I2(\reg_data_out[15]_i_5_n_0 ),
        .I3(\reg_data_out[15]_i_6_n_0 ),
        .I4(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \reg_data_out[15]_i_10 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ),
        .I4(\XEMAC_I/reg_access_i ),
        .I5(bus2ip_rdce),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \reg_data_out[15]_i_11 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I4(\XEMAC_I/reg_access_i ),
        .I5(bus2ip_rdce),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \reg_data_out[15]_i_12 
       (.I0(\XEMAC_I/reg_access_i ),
        .I1(Q[10]),
        .I2(\reg_data_out[15]_i_5_n_0 ),
        .I3(bus2ip_rdce),
        .O(\reg_data_out[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF4F)) 
    \reg_data_out[15]_i_2 
       (.I0(\reg_data_out[15]_i_5_n_0 ),
        .I1(bus2ip_rdce),
        .I2(\reg_data_out[15]_i_7_n_0 ),
        .I3(\reg_data_out[15]_i_8_n_0 ),
        .I4(\reg_data_out[15]_i_9_n_0 ),
        .O(reg_data_out0__0));
  LUT6 #(
    .INIT(64'h77F277F2FFFF22F2)) 
    \reg_data_out[15]_i_3 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out_reg[15]_0 [13]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I4(\reg_data_out_reg[15] [13]),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \reg_data_out[15]_i_4 
       (.I0(\reg_data_out[15]_i_9_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\reg_data_out[15]_i_8_n_0 ),
        .I3(\reg_data_out[15]_i_12_n_0 ),
        .O(\reg_data_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_data_out[15]_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\reg_data_out[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data_out[15]_i_6 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\reg_data_out[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_data_out[15]_i_7 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I2(\reg_data_out[15]_i_12_n_0 ),
        .O(\reg_data_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reg_data_out[15]_i_8 
       (.I0(bus2ip_rdce),
        .I1(Q[10]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\reg_data_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \reg_data_out[15]_i_9 
       (.I0(bus2ip_rdce),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\reg_data_out[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \reg_data_out[1]_i_1 
       (.I0(p_7_in94_in),
        .I1(reg_data_out0__0),
        .I2(\reg_data_out[1]_i_2_n_0 ),
        .I3(\reg_data_out[1]_i_3_n_0 ),
        .I4(\reg_data_out[1]_i_4_n_0 ),
        .O(\reg_data_out_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \reg_data_out[1]_i_2 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out_reg[15] [1]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I4(\reg_data_out[1]_i_5_n_0 ),
        .O(\reg_data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8800888800008080)) 
    \reg_data_out[1]_i_3 
       (.I0(\reg_data_out[15]_i_6_n_0 ),
        .I1(\reg_data_out[15]_i_12_n_0 ),
        .I2(\reg_data_out_reg[5]_0 [1]),
        .I3(Q[9]),
        .I4(\reg_data_out[15]_i_8_n_0 ),
        .I5(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \reg_data_out[1]_i_4 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \reg_data_out[1]_i_5 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ),
        .I1(p_17_in[0]),
        .I2(\reg_data_out_reg[15]_0 [1]),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I4(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .I5(p_15_in),
        .O(\reg_data_out[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out[2]_i_1 
       (.I0(p_13_in113_in),
        .I1(reg_data_out0__0),
        .I2(\reg_data_out[2]_i_2_n_0 ),
        .I3(\reg_data_out[15]_i_4_n_0 ),
        .O(\reg_data_out_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000FF3AFFFF)) 
    \reg_data_out[2]_i_2 
       (.I0(\reg_data_out_reg[5]_0 [2]),
        .I1(Q[9]),
        .I2(\reg_data_out[15]_i_8_n_0 ),
        .I3(\reg_data_out[15]_i_9_n_0 ),
        .I4(\reg_data_out[15]_i_7_n_0 ),
        .I5(\reg_data_out_reg[2]_0 ),
        .O(\reg_data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EEE22E2)) 
    \reg_data_out[30]_i_1 
       (.I0(p_181_in),
        .I1(reg_data_out0__0),
        .I2(\reg_data_out[15]_i_8_n_0 ),
        .I3(Q[9]),
        .I4(\reg_data_out[15]_i_6_n_0 ),
        .I5(\reg_data_out[30]_i_2_n_0 ),
        .O(\reg_data_out_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF7F00)) 
    \reg_data_out[30]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(bus2ip_rdce),
        .I4(\reg_data_out[15]_i_4_n_0 ),
        .O(\reg_data_out[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    \reg_data_out[31]_i_1 
       (.I0(\reg_data_out[31]_i_2_n_0 ),
        .I1(\reg_data_out[31]_i_3_n_0 ),
        .I2(s_axi_aresetn),
        .I3(\reg_data_out_reg[31] ),
        .I4(reg_data_out0__0),
        .I5(\reg_data_out[31]_i_4_n_0 ),
        .O(s_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data_out[31]_i_2 
       (.I0(\reg_data_out[15]_i_6_n_0 ),
        .I1(\reg_data_out[15]_i_8_n_0 ),
        .O(\reg_data_out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4000000FFFFFFFF)) 
    \reg_data_out[31]_i_3 
       (.I0(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I1(\XEMAC_I/reg_access_i ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(bus2ip_rdce),
        .O(\reg_data_out[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF4500)) 
    \reg_data_out[31]_i_4 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(p_5_in),
        .I2(\reg_data_out[15]_i_9_n_0 ),
        .I3(\reg_data_out[15]_i_7_n_0 ),
        .I4(\reg_data_out[31]_i_5_n_0 ),
        .O(\reg_data_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \reg_data_out[31]_i_5 
       (.I0(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .I1(pong_soft_status),
        .I2(ping_soft_status),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ),
        .I4(\reg_data_out[15]_i_8_n_0 ),
        .I5(Q[9]),
        .O(\reg_data_out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8AAA800)) 
    \reg_data_out[3]_i_1 
       (.I0(\reg_data_out[4]_i_3_n_0 ),
        .I1(\reg_data_out[3]_i_2_n_0 ),
        .I2(\reg_data_out[3]_i_3_n_0 ),
        .I3(reg_data_out0__0),
        .I4(p_19_in),
        .I5(\reg_data_out[3]_i_4_n_0 ),
        .O(\reg_data_out_reg[3] ));
  LUT6 #(
    .INIT(64'h8800888800008080)) 
    \reg_data_out[3]_i_2 
       (.I0(\reg_data_out[15]_i_6_n_0 ),
        .I1(\reg_data_out[15]_i_12_n_0 ),
        .I2(\reg_data_out_reg[5]_0 [3]),
        .I3(Q[9]),
        .I4(\reg_data_out[15]_i_8_n_0 ),
        .I5(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \reg_data_out[3]_i_3 
       (.I0(\reg_data_out_reg[15]_0 [2]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .I3(\reg_data_out[3]_i_5_n_0 ),
        .I4(\reg_data_out_reg[15] [2]),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .O(\reg_data_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \reg_data_out[3]_i_4 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \reg_data_out[3]_i_5 
       (.I0(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ),
        .I1(p_17_in[1]),
        .I2(\reg_data_out[15]_i_8_n_0 ),
        .I3(Q[9]),
        .I4(p_9_in[1]),
        .O(\reg_data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8880888888800000)) 
    \reg_data_out[4]_i_1 
       (.I0(\reg_data_out[4]_i_2_n_0 ),
        .I1(\reg_data_out[4]_i_3_n_0 ),
        .I2(\reg_data_out[4]_i_4_n_0 ),
        .I3(\reg_data_out[4]_i_5_n_0 ),
        .I4(reg_data_out0__0),
        .I5(p_25_in148_in),
        .O(\reg_data_out_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_data_out[4]_i_2 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data_out[4]_i_3 
       (.I0(s_axi_aresetn),
        .I1(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .O(\reg_data_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_data_out[4]_i_4 
       (.I0(\reg_data_out_reg[5]_0 [4]),
        .I1(\reg_data_out[15]_i_7_n_0 ),
        .I2(\reg_data_out[15]_i_8_n_0 ),
        .I3(\reg_data_out[15]_i_9_n_0 ),
        .O(\reg_data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \reg_data_out[4]_i_5 
       (.I0(\reg_data_out_reg[4]_0 ),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ),
        .I2(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ),
        .I3(\reg_data_out[4]_i_8_n_0 ),
        .I4(\reg_data_out_reg[15]_0 [3]),
        .I5(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .O(\reg_data_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \reg_data_out[4]_i_6 
       (.I0(bus2ip_rdce),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0 ),
        .I5(\XEMAC_I/reg_access_i ),
        .O(\AXI4_LITE_IF_GEN.read_in_prog_reg_1 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \reg_data_out[4]_i_7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\ping_pkt_lenth[15]_i_3_n_0 ),
        .I4(\XEMAC_I/reg_access_i ),
        .I5(bus2ip_rdce),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF2FFF2F2)) 
    \reg_data_out[4]_i_8 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\reg_data_out[15]_i_9_n_0 ),
        .I3(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I4(\reg_data_out_reg[15] [3]),
        .O(\reg_data_out[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out[5]_i_1 
       (.I0(p_31_in166_in),
        .I1(reg_data_out0__0),
        .I2(\reg_data_out[5]_i_2_n_0 ),
        .I3(\reg_data_out[15]_i_4_n_0 ),
        .O(\reg_data_out_reg[5] ));
  LUT6 #(
    .INIT(64'h00000000FF2EFFFF)) 
    \reg_data_out[5]_i_2 
       (.I0(\reg_data_out_reg[5]_0 [5]),
        .I1(\reg_data_out[15]_i_8_n_0 ),
        .I2(Q[9]),
        .I3(\reg_data_out[15]_i_9_n_0 ),
        .I4(\reg_data_out[15]_i_7_n_0 ),
        .I5(\reg_data_out_reg[5]_1 ),
        .O(\reg_data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[6]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [4]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [4]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_6 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[7]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [5]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [5]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_7 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[8]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [6]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [6]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_8 ));
  LUT6 #(
    .INIT(64'h7770777777700700)) 
    \reg_data_out[9]_i_1 
       (.I0(\reg_data_out[15]_i_8_n_0 ),
        .I1(Q[9]),
        .I2(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0 ),
        .I3(\reg_data_out_reg[15] [7]),
        .I4(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1 ),
        .I5(\reg_data_out_reg[15]_0 [7]),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_9 ));
  LUT3 #(
    .INIT(8'hB8)) 
    rx_intr_en_i_1
       (.I0(s_axi_wdata[0]),
        .I1(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_5 ),
        .I2(p_9_in[1]),
        .O(\s_axi_wdata[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(arready_i1),
        .I1(arready_i2),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    tx_intr_en_i_1
       (.I0(s_axi_wdata[0]),
        .I1(tx_intr_en0),
        .I2(p_17_in[1]),
        .O(\s_axi_wdata[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2__0 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(enb));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2__1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2__2 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_3 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ),
        .I3(s_axi_aresetn),
        .O(\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_3__0 
       (.I0(\AXI4_LITE_IF_GEN.write_in_prog_reg_n_0 ),
        .I1(s_axi_wvalid),
        .I2(s_axi_aresetn),
        .O(web));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_5 
       (.I0(bus2ip_rdce),
        .I1(s_axi_wstrb[3]),
        .I2(s_axi_wstrb[2]),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wstrb[1]),
        .I5(\ping_pkt_lenth[15]_i_2_n_0 ),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync
   (scndry_out,
    SR,
    phy_rx_clk);
  output scndry_out;
  input [0:0]SR;
  input phy_rx_clk;

  wire [0:0]SR;
  wire phy_rx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(SR),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_0
   (scndry_out,
    SR,
    phy_tx_clk);
  output scndry_out;
  input [0:0]SR;
  input phy_tx_clk;

  wire [0:0]SR;
  wire phy_tx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(SR),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_1
   (scndry_out,
    phy_tx_clk,
    s_axi_aclk);
  output scndry_out;
  input phy_tx_clk;
  input s_axi_aclk;

  wire phy_tx_clk;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
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
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync_10
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    phy_rx_clk);
  output scndry_out;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input phy_rx_clk;

  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire phy_rx_clk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(phy_rx_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
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

  wire phy_tx_clk;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
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
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0_2
   (scndry_out,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ,
    phy_tx_clk);
  output scndry_out;
  input \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  input phy_tx_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ;
  wire phy_tx_clk;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 ),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0_3
   (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ,
    scndry_out,
    tx_en_i,
    phy_tx_clk);
  output \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  input scndry_out;
  input tx_en_i;
  input phy_tx_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ;
  wire phy_tx_clk;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;
  wire tx_en_i;
  wire tx_en_i_tx_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(tx_en_i),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(tx_en_i_tx_clk),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_tx_en_i_1
       (.I0(tx_en_i_tx_clk),
        .I1(scndry_out),
        .O(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1
   (scndry_vect_out,
    prmry_vect_in,
    phy_tx_clk);
  output [3:0]scndry_vect_out;
  input [3:0]prmry_vect_in;
  input phy_tx_clk;

  wire phy_tx_clk;
  wire [3:0]prmry_vect_in;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d1_cdc_to_2;
  wire s_level_out_bus_d1_cdc_to_3;
  wire [3:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(phy_tx_clk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
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
        .D(s_level_out_bus_d1_cdc_to_1),
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
        .D(s_level_out_bus_d1_cdc_to_2),
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
        .D(s_level_out_bus_d1_cdc_to_3),
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
        .Q(s_level_out_bus_d1_cdc_to_0),
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
        .Q(s_level_out_bus_d1_cdc_to_1),
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
        .Q(s_level_out_bus_d1_cdc_to_2),
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
        .Q(s_level_out_bus_d1_cdc_to_3),
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

  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
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
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cntr5bit" *) 
module ntps_top_axi_ethernetlite_0_0_cntr5bit
   (ifgp1_zero,
    Q,
    zero_i_reg_0,
    s_axi_aclk,
    D,
    \count_reg[1]_0 ,
    \count_reg[0]_0 ,
    E);
  output ifgp1_zero;
  output [1:0]Q;
  input zero_i_reg_0;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\count_reg[1]_0 ;
  input \count_reg[0]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg;
  wire \count_reg[0]_0 ;
  wire [1:0]\count_reg[1]_0 ;
  wire ifgp1_zero;
  wire [4:2]p_0_in__0;
  wire s_axi_aclk;
  wire zero_i_i_1_n_0;
  wire zero_i_reg_0;

  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
    \count[0]_i_2__0 
       (.I0(\count_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(count_reg[1]),
        .I4(count_reg[2]),
        .I5(count_reg[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hFE010000FE01FE01)) 
    \count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(\count_reg[1]_0 [1]),
        .I5(\count_reg[1]_0 [0]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hE100E1E1)) 
    \count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(\count_reg[1]_0 [1]),
        .I4(\count_reg[1]_0 [0]),
        .O(p_0_in__0[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(count_reg[0]),
        .S(zero_i_reg_0));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(count_reg[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .S(zero_i_reg_0));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(zero_i_reg_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    zero_i_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .O(zero_i_i_1_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1_n_0),
        .Q(ifgp1_zero),
        .S(zero_i_reg_0));
endmodule

(* ORIG_REF_NAME = "cntr5bit" *) 
module ntps_top_axi_ethernetlite_0_0_cntr5bit_9
   (ifgp2_zero,
    Q,
    zero_i_reg_0,
    s_axi_aclk,
    D,
    \count_reg[1]_0 ,
    \count_reg[0]_0 ,
    E);
  output ifgp2_zero;
  output [1:0]Q;
  input zero_i_reg_0;
  input s_axi_aclk;
  input [1:0]D;
  input [1:0]\count_reg[1]_0 ;
  input \count_reg[0]_0 ;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:2]count_reg;
  wire \count_reg[0]_0 ;
  wire [1:0]\count_reg[1]_0 ;
  wire ifgp2_zero;
  wire [4:2]p_0_in;
  wire s_axi_aclk;
  wire zero_i_i_1__0_n_0;
  wire zero_i_reg_0;

  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \count[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(count_reg[0]),
        .I5(\count_reg[0]_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFF44444444F)) 
    \count[1]_i_1 
       (.I0(\count_reg[1]_0 [1]),
        .I1(\count_reg[1]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(count_reg[2]),
        .I5(count_reg[1]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hE100E1E1)) 
    \count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(\count_reg[1]_0 [1]),
        .I4(\count_reg[1]_0 [0]),
        .O(p_0_in[2]));
  FDSE \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(count_reg[0]),
        .S(zero_i_reg_0));
  FDSE \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(count_reg[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .S(zero_i_reg_0));
  FDSE \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(zero_i_reg_0));
  FDSE \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .S(zero_i_reg_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    zero_i_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .O(zero_i_i_1__0_n_0));
  FDSE zero_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(zero_i_i_1__0_n_0),
        .Q(ifgp2_zero),
        .S(zero_i_reg_0));
endmodule

(* ORIG_REF_NAME = "crcgenrx" *) 
module ntps_top_axi_ethernetlite_0_0_crcgenrx
   (Q,
    crcokdelay,
    D_0,
    D,
    dout,
    \crc_local_reg[13]_0 ,
    crcokr1,
    s_axi_aresetn,
    rxCrcEn,
    SS,
    E,
    s_axi_aclk);
  output [9:0]Q;
  output crcokdelay;
  output D_0;
  input [6:0]D;
  input [3:0]dout;
  input \crc_local_reg[13]_0 ;
  input crcokr1;
  input s_axi_aresetn;
  input rxCrcEn;
  input [0:0]SS;
  input [0:0]E;
  input s_axi_aclk;

  wire [6:0]D;
  wire D_0;
  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SS;
  wire \crc_local[13]_i_1_n_0 ;
  wire \crc_local_reg[13]_0 ;
  wire \crc_local_reg_n_0_[27] ;
  wire crcokdelay;
  wire crcokdelay_i_10_n_0;
  wire crcokdelay_i_3_n_0;
  wire crcokdelay_i_4_n_0;
  wire crcokdelay_i_5_n_0;
  wire crcokdelay_i_6_n_0;
  wire crcokdelay_i_7_n_0;
  wire crcokdelay_i_8_n_0;
  wire crcokdelay_i_9_n_0;
  wire crcokr1;
  wire [3:0]dout;
  wire p_11_in40_in;
  wire p_12_in43_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in62_in;
  wire p_16_in;
  wire p_17_in66_in;
  wire p_18_in;
  wire p_19_in48_in;
  wire p_20_in51_in;
  wire p_21_in;
  wire p_22_in54_in;
  wire p_23_in;
  wire p_24_in69_in;
  wire p_25_in;
  wire p_26_in72_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_5_in;
  wire p_8_in;
  wire [29:1]parallel_crc;
  wire rxCrcEn;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[12]_i_1 
       (.I0(p_11_in40_in),
        .I1(Q[8]),
        .I2(dout[1]),
        .I3(Q[7]),
        .I4(dout[2]),
        .I5(D[0]),
        .O(parallel_crc[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[13]_i_1 
       (.I0(p_12_in43_in),
        .I1(Q[8]),
        .I2(dout[1]),
        .I3(Q[7]),
        .I4(dout[2]),
        .I5(\crc_local_reg[13]_0 ),
        .O(\crc_local[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[14]_i_1 
       (.I0(p_13_in),
        .I1(dout[1]),
        .I2(Q[8]),
        .I3(dout[0]),
        .I4(Q[9]),
        .O(parallel_crc[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[15]_i_1 
       (.I0(p_18_in),
        .I1(Q[9]),
        .I2(dout[0]),
        .O(parallel_crc[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[16]_i_1 
       (.I0(p_19_in48_in),
        .I1(Q[6]),
        .I2(dout[3]),
        .O(parallel_crc[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[17]_i_1 
       (.I0(p_20_in51_in),
        .I1(Q[7]),
        .I2(dout[2]),
        .O(parallel_crc[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[18]_i_1 
       (.I0(p_21_in),
        .I1(Q[8]),
        .I2(dout[1]),
        .O(parallel_crc[18]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[19]_i_1 
       (.I0(p_22_in54_in),
        .I1(Q[9]),
        .I2(dout[0]),
        .O(parallel_crc[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_local[1]_i_1 
       (.I0(Q[7]),
        .I1(dout[2]),
        .I2(Q[6]),
        .I3(dout[3]),
        .O(parallel_crc[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[22]_i_1 
       (.I0(p_23_in),
        .I1(Q[6]),
        .I2(dout[3]),
        .O(parallel_crc[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[23]_i_1 
       (.I0(p_14_in),
        .I1(dout[3]),
        .I2(Q[6]),
        .I3(dout[2]),
        .I4(Q[7]),
        .O(parallel_crc[23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[24]_i_1 
       (.I0(p_15_in62_in),
        .I1(dout[2]),
        .I2(Q[7]),
        .I3(dout[1]),
        .I4(Q[8]),
        .O(parallel_crc[24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[25]_i_1 
       (.I0(p_16_in),
        .I1(dout[1]),
        .I2(Q[8]),
        .I3(dout[0]),
        .I4(Q[9]),
        .O(parallel_crc[25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[26]_i_1 
       (.I0(p_17_in66_in),
        .I1(dout[3]),
        .I2(Q[6]),
        .I3(dout[0]),
        .I4(Q[9]),
        .O(parallel_crc[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[27]_i_1 
       (.I0(p_24_in69_in),
        .I1(Q[7]),
        .I2(dout[2]),
        .O(parallel_crc[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[28]_i_1 
       (.I0(p_25_in),
        .I1(Q[8]),
        .I2(dout[1]),
        .O(parallel_crc[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_local[29]_i_1 
       (.I0(p_26_in72_in),
        .I1(Q[9]),
        .I2(dout[0]),
        .O(parallel_crc[29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[2]_i_1 
       (.I0(Q[6]),
        .I1(dout[3]),
        .I2(dout[2]),
        .I3(Q[7]),
        .I4(dout[1]),
        .I5(Q[8]),
        .O(parallel_crc[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_local[3]_i_1 
       (.I0(Q[8]),
        .I1(dout[1]),
        .I2(Q[7]),
        .I3(dout[2]),
        .I4(dout[0]),
        .I5(Q[9]),
        .O(parallel_crc[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[6]_i_1 
       (.I0(p_5_in),
        .I1(dout[2]),
        .I2(Q[7]),
        .I3(dout[1]),
        .I4(Q[8]),
        .O(parallel_crc[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_local[9]_i_1 
       (.I0(p_8_in),
        .I1(dout[2]),
        .I2(Q[7]),
        .I3(dout[1]),
        .I4(Q[8]),
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
        .Q(p_18_in),
        .S(SS));
  FDSE \crc_local_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[12]),
        .Q(p_19_in48_in),
        .S(SS));
  FDSE \crc_local_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\crc_local[13]_i_1_n_0 ),
        .Q(p_20_in51_in),
        .S(SS));
  FDSE \crc_local_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[14]),
        .Q(p_21_in),
        .S(SS));
  FDSE \crc_local_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[15]),
        .Q(p_22_in54_in),
        .S(SS));
  FDSE \crc_local_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[16]),
        .Q(p_27_in),
        .S(SS));
  FDSE \crc_local_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[17]),
        .Q(p_28_in),
        .S(SS));
  FDSE \crc_local_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[18]),
        .Q(p_23_in),
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
        .D(p_27_in),
        .Q(p_15_in62_in),
        .S(SS));
  FDSE \crc_local_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_28_in),
        .Q(p_16_in),
        .S(SS));
  FDSE \crc_local_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[22]),
        .Q(p_17_in66_in),
        .S(SS));
  FDSE \crc_local_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[23]),
        .Q(p_24_in69_in),
        .S(SS));
  FDSE \crc_local_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[24]),
        .Q(p_25_in),
        .S(SS));
  FDSE \crc_local_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[25]),
        .Q(p_26_in72_in),
        .S(SS));
  FDSE \crc_local_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[26]),
        .Q(p_29_in),
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
        .Q(Q[6]),
        .S(SS));
  FDSE \crc_local_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[29]),
        .Q(Q[7]),
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
        .D(p_29_in),
        .Q(Q[8]),
        .S(SS));
  FDSE \crc_local_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\crc_local_reg_n_0_[27] ),
        .Q(Q[9]),
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
        .Q(p_11_in40_in),
        .S(SS));
  FDSE \crc_local_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(parallel_crc[9]),
        .Q(p_12_in43_in),
        .S(SS));
  LUT6 #(
    .INIT(64'hFFFB0000FFFFFFFF)) 
    crcokdelay_i_1
       (.I0(crcokdelay_i_3_n_0),
        .I1(crcokdelay_i_4_n_0),
        .I2(crcokdelay_i_5_n_0),
        .I3(crcokdelay_i_6_n_0),
        .I4(crcokr1),
        .I5(s_axi_aresetn),
        .O(crcokdelay));
  LUT4 #(
    .INIT(16'hFFFE)) 
    crcokdelay_i_10
       (.I0(p_14_in),
        .I1(p_17_in66_in),
        .I2(p_15_in62_in),
        .I3(p_16_in),
        .O(crcokdelay_i_10_n_0));
  LUT6 #(
    .INIT(64'h00040004FFFF0004)) 
    crcokdelay_i_2
       (.I0(crcokdelay_i_3_n_0),
        .I1(crcokdelay_i_4_n_0),
        .I2(crcokdelay_i_5_n_0),
        .I3(crcokdelay_i_6_n_0),
        .I4(crcokr1),
        .I5(rxCrcEn),
        .O(D_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    crcokdelay_i_3
       (.I0(Q[4]),
        .I1(p_11_in40_in),
        .I2(p_8_in),
        .I3(p_13_in),
        .I4(crcokdelay_i_7_n_0),
        .O(crcokdelay_i_3_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    crcokdelay_i_4
       (.I0(p_25_in),
        .I1(p_26_in72_in),
        .I2(p_23_in),
        .I3(p_29_in),
        .I4(crcokdelay_i_8_n_0),
        .O(crcokdelay_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    crcokdelay_i_5
       (.I0(p_5_in),
        .I1(Q[9]),
        .I2(Q[5]),
        .I3(Q[8]),
        .I4(crcokdelay_i_9_n_0),
        .O(crcokdelay_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    crcokdelay_i_6
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(\crc_local_reg_n_0_[27] ),
        .I3(p_24_in69_in),
        .I4(crcokdelay_i_10_n_0),
        .O(crcokdelay_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    crcokdelay_i_7
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(crcokdelay_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    crcokdelay_i_8
       (.I0(p_21_in),
        .I1(p_18_in),
        .I2(p_19_in48_in),
        .I3(p_22_in54_in),
        .O(crcokdelay_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    crcokdelay_i_9
       (.I0(p_20_in51_in),
        .I1(p_28_in),
        .I2(p_12_in43_in),
        .I3(p_27_in),
        .O(crcokdelay_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "crcgentx" *) 
module ntps_top_axi_ethernetlite_0_0_crcgentx
   (Q,
    txCrcEn_reg,
    \nibData_reg[30] ,
    SR,
    E,
    s_axi_aclk);
  output [3:0]Q;
  input txCrcEn_reg;
  input [3:0]\nibData_reg[30] ;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\nibData_reg[30] ;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  ntps_top_axi_ethernetlite_0_0_crcnibshiftreg NSR
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\nibData_reg[30]_0 (\nibData_reg[30] ),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
endmodule

(* ORIG_REF_NAME = "crcnibshiftreg" *) 
module ntps_top_axi_ethernetlite_0_0_crcnibshiftreg
   (Q,
    txCrcEn_reg,
    \nibData_reg[30]_0 ,
    SR,
    E,
    s_axi_aclk);
  output [3:0]Q;
  input txCrcEn_reg;
  input [3:0]\nibData_reg[30]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [31:4]nibData;
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
  wire [3:0]\nibData_reg[30]_0 ;
  wire s_axi_aclk;
  wire txCrcEn_reg;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[12]_i_1 
       (.I0(nibData[16]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .O(\nibData[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[13]_i_1 
       (.I0(nibData[17]),
        .I1(Q[1]),
        .I2(\nibData_reg[30]_0 [1]),
        .I3(txCrcEn_reg),
        .O(\nibData[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[14]_i_1 
       (.I0(nibData[18]),
        .I1(Q[2]),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(txCrcEn_reg),
        .O(\nibData[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[15]_i_1 
       (.I0(nibData[19]),
        .I1(Q[3]),
        .I2(\nibData_reg[30]_0 [3]),
        .I3(txCrcEn_reg),
        .O(\nibData[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[16]_i_1 
       (.I0(nibData[20]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .O(\nibData[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[17]_i_1 
       (.I0(nibData[21]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [1]),
        .I3(Q[1]),
        .I4(\nibData_reg[30]_0 [0]),
        .I5(Q[0]),
        .O(\nibData[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[18]_i_1 
       (.I0(nibData[22]),
        .I1(\nibData_reg[30]_0 [2]),
        .I2(Q[2]),
        .I3(\nibData[27]_i_2_n_0 ),
        .I4(txCrcEn_reg),
        .O(\nibData[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[19]_i_1 
       (.I0(nibData[23]),
        .I1(\nibData[26]_i_2_n_0 ),
        .I2(\nibData_reg[30]_0 [1]),
        .I3(Q[1]),
        .I4(txCrcEn_reg),
        .O(\nibData[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[20]_i_1 
       (.I0(nibData[24]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[21]_i_1 
       (.I0(nibData[25]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(\nibData[27]_i_2_n_0 ),
        .I4(txCrcEn_reg),
        .O(\nibData[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[22]_i_1 
       (.I0(nibData[26]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(\nibData_reg[30]_0 [1]),
        .I5(Q[1]),
        .O(\nibData[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[23]_i_1 
       (.I0(nibData[27]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[24]_i_1 
       (.I0(nibData[28]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(\nibData[27]_i_2_n_0 ),
        .I4(txCrcEn_reg),
        .O(\nibData[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[25]_i_1 
       (.I0(nibData[29]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(\nibData_reg[30]_0 [1]),
        .I5(Q[1]),
        .O(\nibData[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96AA69AA)) 
    \nibData[26]_i_1 
       (.I0(nibData[30]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .I4(\nibData[26]_i_2_n_0 ),
        .O(\nibData[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[26]_i_2 
       (.I0(\nibData_reg[30]_0 [3]),
        .I1(Q[3]),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .O(\nibData[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9669AAAA)) 
    \nibData[27]_i_1 
       (.I0(nibData[31]),
        .I1(\nibData_reg[30]_0 [3]),
        .I2(Q[3]),
        .I3(\nibData[27]_i_2_n_0 ),
        .I4(txCrcEn_reg),
        .O(\nibData[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \nibData[27]_i_2 
       (.I0(\nibData_reg[30]_0 [1]),
        .I1(Q[1]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(Q[0]),
        .O(\nibData[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    \nibData[28]_i_1 
       (.I0(\nibData[28]_i_2_n_0 ),
        .I1(\nibData_reg[30]_0 [0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\nibData_reg[30]_0 [2]),
        .I5(txCrcEn_reg),
        .O(\nibData[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nibData[28]_i_2 
       (.I0(Q[1]),
        .I1(\nibData_reg[30]_0 [1]),
        .O(\nibData[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    \nibData[29]_i_1 
       (.I0(Q[1]),
        .I1(\nibData_reg[30]_0 [1]),
        .I2(\nibData[29]_i_2_n_0 ),
        .I3(\nibData_reg[30]_0 [2]),
        .I4(Q[2]),
        .I5(txCrcEn_reg),
        .O(\nibData[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nibData[29]_i_2 
       (.I0(Q[3]),
        .I1(\nibData_reg[30]_0 [3]),
        .O(\nibData[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[2]_i_1 
       (.I0(nibData[6]),
        .I1(Q[0]),
        .I2(\nibData_reg[30]_0 [0]),
        .I3(txCrcEn_reg),
        .O(\nibData[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h82282882)) 
    \nibData[30]_i_1 
       (.I0(txCrcEn_reg),
        .I1(Q[2]),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[3]),
        .I4(\nibData_reg[30]_0 [3]),
        .O(\nibData[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \nibData[31]_i_3 
       (.I0(\nibData_reg[30]_0 [3]),
        .I1(Q[3]),
        .I2(txCrcEn_reg),
        .O(\nibData[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[3]_i_1 
       (.I0(nibData[7]),
        .I1(Q[1]),
        .I2(\nibData_reg[30]_0 [1]),
        .I3(txCrcEn_reg),
        .O(\nibData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[4]_i_1 
       (.I0(nibData[8]),
        .I1(Q[2]),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(txCrcEn_reg),
        .O(\nibData[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[5]_i_1 
       (.I0(nibData[9]),
        .I1(txCrcEn_reg),
        .I2(Q[0]),
        .I3(\nibData_reg[30]_0 [0]),
        .I4(\nibData_reg[30]_0 [3]),
        .I5(Q[3]),
        .O(\nibData[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[6]_i_1 
       (.I0(nibData[10]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [1]),
        .I3(Q[1]),
        .I4(\nibData_reg[30]_0 [0]),
        .I5(Q[0]),
        .O(\nibData[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[7]_i_1 
       (.I0(nibData[11]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [2]),
        .I3(Q[2]),
        .I4(\nibData_reg[30]_0 [1]),
        .I5(Q[1]),
        .O(\nibData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA66A6AA66AA6A66A)) 
    \nibData[8]_i_1 
       (.I0(nibData[12]),
        .I1(txCrcEn_reg),
        .I2(\nibData_reg[30]_0 [3]),
        .I3(Q[3]),
        .I4(\nibData_reg[30]_0 [2]),
        .I5(Q[2]),
        .O(\nibData[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \nibData[9]_i_1 
       (.I0(nibData[13]),
        .I1(Q[3]),
        .I2(\nibData_reg[30]_0 [3]),
        .I3(txCrcEn_reg),
        .O(\nibData[9]_i_1_n_0 ));
  FDRE \nibData_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[4]),
        .Q(Q[0]),
        .R(SR));
  FDRE \nibData_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[14]),
        .Q(nibData[10]),
        .R(SR));
  FDRE \nibData_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[15]),
        .Q(nibData[11]),
        .R(SR));
  FDRE \nibData_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[12]_i_1_n_0 ),
        .Q(nibData[12]),
        .R(SR));
  FDRE \nibData_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[13]_i_1_n_0 ),
        .Q(nibData[13]),
        .R(SR));
  FDRE \nibData_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[14]_i_1_n_0 ),
        .Q(nibData[14]),
        .R(SR));
  FDRE \nibData_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[15]_i_1_n_0 ),
        .Q(nibData[15]),
        .R(SR));
  FDRE \nibData_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[16]_i_1_n_0 ),
        .Q(nibData[16]),
        .R(SR));
  FDRE \nibData_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[17]_i_1_n_0 ),
        .Q(nibData[17]),
        .R(SR));
  FDRE \nibData_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[18]_i_1_n_0 ),
        .Q(nibData[18]),
        .R(SR));
  FDRE \nibData_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[19]_i_1_n_0 ),
        .Q(nibData[19]),
        .R(SR));
  FDRE \nibData_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(nibData[5]),
        .Q(Q[1]),
        .R(SR));
  FDRE \nibData_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[20]_i_1_n_0 ),
        .Q(nibData[20]),
        .R(SR));
  FDRE \nibData_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[21]_i_1_n_0 ),
        .Q(nibData[21]),
        .R(SR));
  FDRE \nibData_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[22]_i_1_n_0 ),
        .Q(nibData[22]),
        .R(SR));
  FDRE \nibData_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[23]_i_1_n_0 ),
        .Q(nibData[23]),
        .R(SR));
  FDRE \nibData_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[24]_i_1_n_0 ),
        .Q(nibData[24]),
        .R(SR));
  FDRE \nibData_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[25]_i_1_n_0 ),
        .Q(nibData[25]),
        .R(SR));
  FDRE \nibData_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[26]_i_1_n_0 ),
        .Q(nibData[26]),
        .R(SR));
  FDRE \nibData_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[27]_i_1_n_0 ),
        .Q(nibData[27]),
        .R(SR));
  FDRE \nibData_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[28]_i_1_n_0 ),
        .Q(nibData[28]),
        .R(SR));
  FDRE \nibData_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[29]_i_1_n_0 ),
        .Q(nibData[29]),
        .R(SR));
  FDRE \nibData_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \nibData_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[30]_i_1_n_0 ),
        .Q(nibData[30]),
        .R(SR));
  FDRE \nibData_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[31]_i_3_n_0 ),
        .Q(nibData[31]),
        .R(SR));
  FDRE \nibData_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \nibData_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[4]_i_1_n_0 ),
        .Q(nibData[4]),
        .R(SR));
  FDRE \nibData_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[5]_i_1_n_0 ),
        .Q(nibData[5]),
        .R(SR));
  FDRE \nibData_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[6]_i_1_n_0 ),
        .Q(nibData[6]),
        .R(SR));
  FDRE \nibData_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[7]_i_1_n_0 ),
        .Q(nibData[7]),
        .R(SR));
  FDRE \nibData_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[8]_i_1_n_0 ),
        .Q(nibData[8]),
        .R(SR));
  FDRE \nibData_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\nibData[9]_i_1_n_0 ),
        .Q(nibData[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "defer_state" *) 
module ntps_top_axi_ethernetlite_0_0_defer_state
   (Q,
    E,
    \FSM_sequential_thisState_reg[0]_0 ,
    D,
    \FSM_sequential_thisState_reg[1]_0 ,
    \FSM_sequential_thisState_reg[0]_1 ,
    D24_out,
    tx_en_i,
    ifgp1_zero,
    ifgp2_zero,
    phy_crs_d2,
    tx_clk_reg_d3,
    tx_clk_reg_d2,
    \count_reg[3] ,
    \count_reg[3]_0 ,
    ldLngthCntr,
    STATE8A,
    enblPreamble,
    \FSM_sequential_thisState_reg[1]_1 ,
    s_axi_aclk);
  output [1:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_thisState_reg[0]_0 ;
  output [1:0]D;
  output [1:0]\FSM_sequential_thisState_reg[1]_0 ;
  output \FSM_sequential_thisState_reg[0]_1 ;
  output D24_out;
  input tx_en_i;
  input ifgp1_zero;
  input ifgp2_zero;
  input phy_crs_d2;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;
  input [1:0]\count_reg[3] ;
  input [1:0]\count_reg[3]_0 ;
  input ldLngthCntr;
  input STATE8A;
  input enblPreamble;
  input \FSM_sequential_thisState_reg[1]_1 ;
  input s_axi_aclk;

  wire [1:0]D;
  wire D24_out;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_thisState_reg[0]_0 ;
  wire \FSM_sequential_thisState_reg[0]_1 ;
  wire [1:0]\FSM_sequential_thisState_reg[1]_0 ;
  wire \FSM_sequential_thisState_reg[1]_1 ;
  wire [1:0]Q;
  wire STATE8A;
  wire [1:0]\count_reg[3] ;
  wire [1:0]\count_reg[3]_0 ;
  wire enblPreamble;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire ldLngthCntr;
  wire [1:0]nextState;
  wire phy_crs_d2;
  wire s_axi_aclk;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_en_i;

  LUT5 #(
    .INIT(32'h77557750)) 
    \FSM_sequential_thisState[0]_i_1 
       (.I0(Q[1]),
        .I1(ifgp1_zero),
        .I2(tx_en_i),
        .I3(Q[0]),
        .I4(phy_crs_d2),
        .O(nextState[0]));
  LUT5 #(
    .INIT(32'hAA00ABAA)) 
    \FSM_sequential_thisState[1]_i_1 
       (.I0(Q[1]),
        .I1(tx_en_i),
        .I2(ifgp1_zero),
        .I3(Q[0]),
        .I4(ifgp2_zero),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "startifgp1cnt:11,startifgp2cnt:10,cntdone:00,loadcntr:01" *) 
  FDSE \FSM_sequential_thisState_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nextState[0]),
        .Q(Q[0]),
        .S(\FSM_sequential_thisState_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "startifgp1cnt:11,startifgp2cnt:10,cntdone:00,loadcntr:01" *) 
  FDRE \FSM_sequential_thisState_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nextState[1]),
        .Q(Q[1]),
        .R(\FSM_sequential_thisState_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    STATE8A_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ldLngthCntr),
        .I3(STATE8A),
        .I4(enblPreamble),
        .O(D24_out));
  LUT6 #(
    .INIT(64'h00300000AAAAAAAA)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .I1(ifgp2_zero),
        .I2(ifgp1_zero),
        .I3(tx_clk_reg_d3),
        .I4(tx_clk_reg_d2),
        .I5(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h0300AAAA)) 
    \count[0]_i_1__0 
       (.I0(Q[0]),
        .I1(ifgp1_zero),
        .I2(tx_clk_reg_d3),
        .I3(tx_clk_reg_d2),
        .I4(Q[1]),
        .O(\FSM_sequential_thisState_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\FSM_sequential_thisState_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg[3] [0]),
        .I3(\count_reg[3] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hB00B)) 
    \count[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg[3]_0 [0]),
        .I3(\count_reg[3]_0 [1]),
        .O(\FSM_sequential_thisState_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \count[4]_i_1 
       (.I0(\count_reg[3] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \count[4]_i_1__0 
       (.I0(\count_reg[3]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_thisState_reg[1]_0 [0]));
endmodule

(* ORIG_REF_NAME = "deferral" *) 
module ntps_top_axi_ethernetlite_0_0_deferral
   (Q,
    D24_out,
    zero_i_reg,
    s_axi_aclk,
    tx_en_i,
    phy_crs_d2,
    tx_clk_reg_d3,
    tx_clk_reg_d2,
    ldLngthCntr,
    STATE8A,
    enblPreamble);
  output [1:0]Q;
  output D24_out;
  input zero_i_reg;
  input s_axi_aclk;
  input tx_en_i;
  input phy_crs_d2;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;
  input ldLngthCntr;
  input STATE8A;
  input enblPreamble;

  wire D24_out;
  wire [1:0]Q;
  wire STATE8A;
  wire [3:4]count_reg;
  wire [3:4]count_reg_0;
  wire enblPreamble;
  wire ifgp1_zero;
  wire ifgp2_zero;
  wire inst_deferral_state_n_2;
  wire inst_deferral_state_n_3;
  wire inst_deferral_state_n_8;
  wire ldLngthCntr;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in__0;
  wire phy_crs_d2;
  wire s_axi_aclk;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_en_i;
  wire zero_i_reg;

  ntps_top_axi_ethernetlite_0_0_defer_state inst_deferral_state
       (.D(p_0_in),
        .D24_out(D24_out),
        .E(inst_deferral_state_n_2),
        .\FSM_sequential_thisState_reg[0]_0 (inst_deferral_state_n_3),
        .\FSM_sequential_thisState_reg[0]_1 (inst_deferral_state_n_8),
        .\FSM_sequential_thisState_reg[1]_0 (p_0_in__0),
        .\FSM_sequential_thisState_reg[1]_1 (zero_i_reg),
        .Q(Q),
        .STATE8A(STATE8A),
        .\count_reg[3] ({count_reg_0[3],count_reg_0[4]}),
        .\count_reg[3]_0 ({count_reg[3],count_reg[4]}),
        .enblPreamble(enblPreamble),
        .ifgp1_zero(ifgp1_zero),
        .ifgp2_zero(ifgp2_zero),
        .ldLngthCntr(ldLngthCntr),
        .phy_crs_d2(phy_crs_d2),
        .s_axi_aclk(s_axi_aclk),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .tx_en_i(tx_en_i));
  ntps_top_axi_ethernetlite_0_0_cntr5bit inst_ifgp1_count
       (.D(p_0_in__0),
        .E(inst_deferral_state_n_3),
        .Q({count_reg[3],count_reg[4]}),
        .\count_reg[0]_0 (inst_deferral_state_n_8),
        .\count_reg[1]_0 (Q),
        .ifgp1_zero(ifgp1_zero),
        .s_axi_aclk(s_axi_aclk),
        .zero_i_reg_0(zero_i_reg));
  ntps_top_axi_ethernetlite_0_0_cntr5bit_9 inst_ifgp2_count
       (.D(p_0_in),
        .E(inst_deferral_state_n_2),
        .Q({count_reg_0[3],count_reg_0[4]}),
        .\count_reg[0]_0 (inst_deferral_state_n_8),
        .\count_reg[1]_0 (Q),
        .ifgp2_zero(ifgp2_zero),
        .s_axi_aclk(s_axi_aclk),
        .zero_i_reg_0(zero_i_reg));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram
   (\gen_wr_b.gen_word_wide.mem_reg ,
    D,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    addra,
    dout,
    \gen_wr_b.gen_word_wide.mem_reg_2 ,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg_3 ,
    wea,
    p_13_in113_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ,
    tx_ping_data_out,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 ,
    tx_pong_data_out,
    p_37_in186_in,
    p_61_in265_in,
    p_73_in303_in,
    p_72_in301_in,
    p_91_in355_in,
    p_90_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 );
  output [19:0]\gen_wr_b.gen_word_wide.mem_reg ;
  output [11:0]D;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg_0 ;
  input [0:0]\gen_wr_b.gen_word_wide.mem_reg_1 ;
  input [10:0]addra;
  input [3:0]dout;
  input \gen_wr_b.gen_word_wide.mem_reg_2 ;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg_3 ;
  input [0:0]wea;
  input p_13_in113_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ;
  input [2:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ;
  input [11:0]tx_ping_data_out;
  input [11:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 ;
  input [11:0]tx_pong_data_out;
  input p_37_in186_in;
  input p_61_in265_in;
  input p_73_in303_in;
  input p_72_in301_in;
  input p_91_in355_in;
  input p_90_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ;
  wire [2:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ;
  wire [11:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ;
  wire [11:0]D;
  wire [3:0]Data_out_a_2;
  wire [10:0]Q;
  wire [10:0]addra;
  wire [3:0]dout;
  wire [3:0]douta;
  wire [19:0]\gen_wr_b.gen_word_wide.mem_reg ;
  wire \gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire [0:0]\gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_2 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_3 ;
  wire p_13_in113_in;
  wire p_37_in186_in;
  wire p_61_in265_in;
  wire p_72_in301_in;
  wire p_73_in303_in;
  wire p_90_in;
  wire p_91_in355_in;
  wire [30:2]rx_pong_data_out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire [11:0]tx_ping_data_out;
  wire [11:0]tx_pong_data_out;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_1 
       (.I0(p_61_in265_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] [2]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2 
       (.I0(rx_pong_data_out[10]),
        .I1(tx_ping_data_out[2]),
        .I2(tx_pong_data_out[2]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [2]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_1 
       (.I0(p_73_in303_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(p_72_in301_in),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2 
       (.I0(rx_pong_data_out[12]),
        .I1(tx_ping_data_out[3]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [3]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[3]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_1 
       (.I0(p_91_in355_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(p_90_in),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2 
       (.I0(rx_pong_data_out[15]),
        .I1(tx_ping_data_out[4]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [4]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[4]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2 
       (.I0(rx_pong_data_out[18]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [5]),
        .I2(tx_pong_data_out[5]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(tx_ping_data_out[5]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2 
       (.I0(rx_pong_data_out[23]),
        .I1(tx_pong_data_out[6]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [6]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_ping_data_out[6]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2 
       (.I0(rx_pong_data_out[24]),
        .I1(tx_ping_data_out[7]),
        .I2(tx_pong_data_out[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [7]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2 
       (.I0(rx_pong_data_out[26]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [8]),
        .I2(tx_pong_data_out[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(tx_ping_data_out[8]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2 
       (.I0(rx_pong_data_out[27]),
        .I1(tx_ping_data_out[9]),
        .I2(tx_pong_data_out[9]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [9]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2 
       (.I0(rx_pong_data_out[29]),
        .I1(tx_ping_data_out[10]),
        .I2(tx_pong_data_out[10]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [10]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_1 
       (.I0(p_13_in113_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] [0]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2 
       (.I0(rx_pong_data_out[2]),
        .I1(tx_ping_data_out[0]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [0]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[0]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2 
       (.I0(rx_pong_data_out[30]),
        .I1(tx_pong_data_out[11]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [11]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_ping_data_out[11]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_1 
       (.I0(p_37_in186_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] [1]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2 
       (.I0(rx_pong_data_out[6]),
        .I1(tx_ping_data_out[1]),
        .I2(tx_pong_data_out[1]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 [1]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0 ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__10 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[15:0]),
        .douta(douta),
        .doutb({rx_pong_data_out[15],\gen_wr_b.gen_word_wide.mem_reg [10:9],rx_pong_data_out[12],\gen_wr_b.gen_word_wide.mem_reg [8],rx_pong_data_out[10],\gen_wr_b.gen_word_wide.mem_reg [7:5],rx_pong_data_out[6],\gen_wr_b.gen_word_wide.mem_reg [4:2],rx_pong_data_out[2],\gen_wr_b.gen_word_wide.mem_reg [1:0]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_0 ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram \xpm_mem_gen.xpm_memory_inst_2 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[31:16]),
        .douta(Data_out_a_2),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [19],rx_pong_data_out[30:29],\gen_wr_b.gen_word_wide.mem_reg [18],rx_pong_data_out[27:26],\gen_wr_b.gen_word_wide.mem_reg [17],rx_pong_data_out[24:23],\gen_wr_b.gen_word_wide.mem_reg [16:13],rx_pong_data_out[18],\gen_wr_b.gen_word_wide.mem_reg [12:11]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_3 ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__1
   (\gen_wr_b.gen_word_wide.mem_reg ,
    select_2,
    D,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    \gen_wr_b.gen_word_wide.mem_reg_2 ,
    \gen_wr_b.gen_word_wide.mem_reg_3 ,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg_4 ,
    tx_DPM_adr,
    enb,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg_5 ,
    prmry_in,
    p_7_in94_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 ,
    tx_pong_data_out,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_3 ,
    douta,
    ram16x1_3,
    tx_pong_ping_l,
    tx_idle,
    ram16x1_1);
  output [27:0]\gen_wr_b.gen_word_wide.mem_reg ;
  output select_2;
  output [3:0]D;
  output [3:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  output \gen_wr_b.gen_word_wide.mem_reg_1 ;
  output \gen_wr_b.gen_word_wide.mem_reg_2 ;
  output \gen_wr_b.gen_word_wide.mem_reg_3 ;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg_4 ;
  input [11:0]tx_DPM_adr;
  input enb;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg_5 ;
  input prmry_in;
  input p_7_in94_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  input [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ;
  input [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 ;
  input [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 ;
  input [3:0]tx_pong_data_out;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_3 ;
  input [2:0]douta;
  input [2:0]ram16x1_3;
  input tx_pong_ping_l;
  input tx_idle;
  input ram16x1_1;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ;
  wire [0:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ;
  wire [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 ;
  wire [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_3 ;
  wire [3:0]D;
  wire [3:0]Data_out_a_2;
  wire [10:0]Q;
  wire [2:0]douta;
  wire [3:0]douta_0;
  wire enb;
  wire [27:0]\gen_wr_b.gen_word_wide.mem_reg ;
  wire [3:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_2 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_3 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_4 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_5 ;
  wire p_7_in94_in;
  wire prmry_in;
  wire ram16x1_1;
  wire [2:0]ram16x1_3;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire select_2;
  wire [11:0]tx_DPM_adr;
  wire tx_idle;
  wire [31:1]tx_ping_data_out;
  wire [3:0]tx_pong_data_out;
  wire tx_pong_ping_l;
  wire [0:0]web;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2 
       (.I0(tx_ping_data_out[16]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 [1]),
        .I2(tx_pong_data_out[1]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 [1]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_1 
       (.I0(p_7_in94_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2 
       (.I0(tx_ping_data_out[1]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 [0]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 [0]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[0]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2 
       (.I0(tx_ping_data_out[25]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 [2]),
        .I2(tx_pong_data_out[2]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 [2]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_3 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3 
       (.I0(tx_ping_data_out[31]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 [3]),
        .I2(tx_pong_data_out[3]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 [3]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAEAAAA)) 
    ram16x1_0_i_1
       (.I0(\gen_wr_b.gen_word_wide.mem_reg_3 ),
        .I1(douta[0]),
        .I2(select_2),
        .I3(ram16x1_3[0]),
        .I4(tx_pong_ping_l),
        .I5(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 [0]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    ram16x1_0_i_6
       (.I0(douta_0[0]),
        .I1(select_2),
        .I2(Data_out_a_2[0]),
        .I3(tx_pong_ping_l),
        .I4(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    ram16x1_1_i_1
       (.I0(tx_idle),
        .I1(tx_pong_ping_l),
        .I2(Data_out_a_2[1]),
        .I3(select_2),
        .I4(douta_0[1]),
        .I5(ram16x1_1),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAEAAAA)) 
    ram16x1_2_i_1
       (.I0(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .I1(douta[1]),
        .I2(select_2),
        .I3(ram16x1_3[1]),
        .I4(tx_pong_ping_l),
        .I5(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 [2]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    ram16x1_2_i_2
       (.I0(douta_0[2]),
        .I1(select_2),
        .I2(Data_out_a_2[2]),
        .I3(tx_pong_ping_l),
        .I4(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAEAAAA)) 
    ram16x1_3_i_1
       (.I0(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .I1(douta[2]),
        .I2(select_2),
        .I3(ram16x1_3[2]),
        .I4(tx_pong_ping_l),
        .I5(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_0 [3]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    ram16x1_3_i_2
       (.I0(douta_0[3]),
        .I1(select_2),
        .I2(Data_out_a_2[3]),
        .I3(tx_pong_ping_l),
        .I4(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_1 ));
  FDRE \xpm_mem_gen.select_2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_DPM_adr[2]),
        .Q(select_2),
        .R(prmry_in));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__4 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra({tx_DPM_adr[11:3],tx_DPM_adr[1:0]}),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[15:0]),
        .douta(douta_0),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [14:1],tx_ping_data_out[1],\gen_wr_b.gen_word_wide.mem_reg [0]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_4 ),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__5 \xpm_mem_gen.xpm_memory_inst_2 
       (.addra({tx_DPM_adr[11:3],tx_DPM_adr[1:0]}),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[31:16]),
        .douta(Data_out_a_2),
        .doutb({tx_ping_data_out[31],\gen_wr_b.gen_word_wide.mem_reg [27:23],tx_ping_data_out[25],\gen_wr_b.gen_word_wide.mem_reg [22:15],tx_ping_data_out[16]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_5 ),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__2
   (\gen_wr_b.gen_word_wide.mem_reg ,
    D,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    addra,
    dout,
    \gen_wr_b.gen_word_wide.mem_reg_2 ,
    web,
    Q,
    s_axi_wdata,
    ena,
    wea,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ,
    tx_pong_data_out,
    rx_pong_data_out,
    tx_ping_data_out,
    p_19_in,
    p_43_in207_in,
    p_49_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 );
  output [23:0]\gen_wr_b.gen_word_wide.mem_reg ;
  output [7:0]D;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg_0 ;
  input [0:0]\gen_wr_b.gen_word_wide.mem_reg_1 ;
  input [10:0]addra;
  input [3:0]dout;
  input \gen_wr_b.gen_word_wide.mem_reg_2 ;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input ena;
  input [0:0]wea;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ;
  input [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ;
  input [7:0]tx_pong_data_out;
  input [7:0]rx_pong_data_out;
  input [7:0]tx_ping_data_out;
  input p_19_in;
  input p_43_in207_in;
  input p_49_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ;
  wire [3:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] ;
  wire [7:0]D;
  wire [3:0]Data_out_a_2;
  wire [10:0]Q;
  wire [10:0]addra;
  wire [3:0]dout;
  wire [3:0]douta;
  wire ena;
  wire [23:0]\gen_wr_b.gen_word_wide.mem_reg ;
  wire \gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire [0:0]\gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_2 ;
  wire p_19_in;
  wire p_43_in207_in;
  wire p_49_in;
  wire [28:0]rx_ping_data_out;
  wire [7:0]rx_pong_data_out;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire [7:0]tx_ping_data_out;
  wire [7:0]tx_pong_data_out;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] [0]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2 
       (.I0(rx_ping_data_out[0]),
        .I1(tx_pong_data_out[0]),
        .I2(rx_pong_data_out[0]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_ping_data_out[0]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2 
       (.I0(rx_ping_data_out[17]),
        .I1(tx_ping_data_out[4]),
        .I2(rx_pong_data_out[4]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[4]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2 
       (.I0(rx_ping_data_out[20]),
        .I1(rx_pong_data_out[5]),
        .I2(tx_ping_data_out[5]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[5]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2 
       (.I0(rx_ping_data_out[21]),
        .I1(rx_pong_data_out[6]),
        .I2(tx_ping_data_out[6]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[6]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2 
       (.I0(rx_ping_data_out[28]),
        .I1(tx_ping_data_out[7]),
        .I2(rx_pong_data_out[7]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_pong_data_out[7]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_1 
       (.I0(p_19_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] [1]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2 
       (.I0(rx_ping_data_out[3]),
        .I1(tx_pong_data_out[1]),
        .I2(tx_ping_data_out[1]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(rx_pong_data_out[1]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_1 
       (.I0(p_43_in207_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] [2]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2 
       (.I0(rx_ping_data_out[7]),
        .I1(tx_pong_data_out[2]),
        .I2(rx_pong_data_out[2]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_ping_data_out[2]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_1 
       (.I0(p_49_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] [3]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2 
       (.I0(rx_ping_data_out[8]),
        .I1(tx_pong_data_out[3]),
        .I2(rx_pong_data_out[3]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tx_ping_data_out[3]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0 ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__6 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[15:0]),
        .douta(douta),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [11:5],rx_ping_data_out[8:7],\gen_wr_b.gen_word_wide.mem_reg [4:2],rx_ping_data_out[3],\gen_wr_b.gen_word_wide.mem_reg [1:0],rx_ping_data_out[0]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_0 ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__7 \xpm_mem_gen.xpm_memory_inst_2 
       (.addra(addra),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina(dout),
        .dinb(s_axi_wdata[31:16]),
        .douta(Data_out_a_2),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [23:21],rx_ping_data_out[28],\gen_wr_b.gen_word_wide.mem_reg [20:15],rx_ping_data_out[21:20],\gen_wr_b.gen_word_wide.mem_reg [14:13],rx_ping_data_out[17],\gen_wr_b.gen_word_wide.mem_reg [12]}),
        .ena(ena),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "emac_dpram" *) 
module ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__3
   (douta,
    \gen_wr_b.gen_word_wide.mem_reg ,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    D,
    STATE0A,
    STATE0A_0,
    STATE0A_1,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    s_axi_aclk,
    \gen_wr_b.gen_word_wide.mem_reg_2 ,
    tx_DPM_adr,
    \gen_wr_b.gen_word_wide.mem_reg_3 ,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg_4 ,
    p_25_in148_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 ,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 ,
    p_31_in166_in,
    p_55_in246_in,
    p_67_in,
    p_66_in,
    p_79_in,
    p_78_in,
    p_85_in339_in,
    p_84_in,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 ,
    tx_idle,
    tx_pong_ping_l,
    select_2,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ,
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ,
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 );
  output [2:0]douta;
  output [23:0]\gen_wr_b.gen_word_wide.mem_reg ;
  output [2:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  output [7:0]D;
  output STATE0A;
  output STATE0A_0;
  output STATE0A_1;
  output \gen_wr_b.gen_word_wide.mem_reg_1 ;
  input s_axi_aclk;
  input \gen_wr_b.gen_word_wide.mem_reg_2 ;
  input [10:0]tx_DPM_adr;
  input \gen_wr_b.gen_word_wide.mem_reg_3 ;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg_4 ;
  input p_25_in148_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ;
  input [2:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] ;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ;
  input [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 ;
  input [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 ;
  input [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 ;
  input p_31_in166_in;
  input p_55_in246_in;
  input p_67_in;
  input p_66_in;
  input p_79_in;
  input p_78_in;
  input p_85_in339_in;
  input p_84_in;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 ;
  input tx_idle;
  input tx_pong_ping_l;
  input select_2;
  input \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;
  input \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;
  input \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ;
  wire [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 ;
  wire [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 ;
  wire [7:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 ;
  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 ;
  wire [2:0]\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] ;
  wire [7:0]D;
  wire [1:1]Data_out_a_2;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ;
  wire [10:0]Q;
  wire STATE0A;
  wire STATE0A_0;
  wire STATE0A_1;
  wire [2:0]douta;
  wire [1:1]douta_0;
  wire [23:0]\gen_wr_b.gen_word_wide.mem_reg ;
  wire [2:0]\gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_2 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_3 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_4 ;
  wire p_25_in148_in;
  wire p_31_in166_in;
  wire p_55_in246_in;
  wire p_66_in;
  wire p_67_in;
  wire p_78_in;
  wire p_79_in;
  wire p_84_in;
  wire p_85_in339_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;
  wire select_2;
  wire [10:0]tx_DPM_adr;
  wire tx_idle;
  wire [22:4]tx_pong_data_out;
  wire tx_pong_ping_l;
  wire [0:0]web;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ;
  wire \NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_1 
       (.I0(p_67_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(p_66_in),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2 
       (.I0(tx_pong_data_out[11]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [3]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [3]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [3]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_1 
       (.I0(p_79_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(p_78_in),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2 
       (.I0(tx_pong_data_out[13]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [4]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [4]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [4]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_1 
       (.I0(p_85_in339_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(p_84_in),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2 
       (.I0(tx_pong_data_out[14]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [5]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [5]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [5]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2 
       (.I0(tx_pong_data_out[19]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [6]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [6]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [6]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_1 
       (.I0(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 ),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2 
       (.I0(tx_pong_data_out[22]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [7]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [7]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [7]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_1 
       (.I0(p_25_in148_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] [0]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2 
       (.I0(tx_pong_data_out[4]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [0]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [0]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [0]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_1 
       (.I0(p_31_in166_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] [1]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2 
       (.I0(tx_pong_data_out[5]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [1]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [1]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [1]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_1 
       (.I0(p_55_in246_in),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] [2]),
        .I3(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 ),
        .I4(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2 
       (.I0(tx_pong_data_out[9]),
        .I1(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 [2]),
        .I2(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 [2]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 [2]),
        .O(\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFBBBFFF)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3 
       (.I0(tx_idle),
        .I1(tx_pong_ping_l),
        .I2(\gen_wr_b.gen_word_wide.mem_reg_0 [2]),
        .I3(select_2),
        .I4(douta[2]),
        .I5(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ),
        .O(STATE0A));
  LUT6 #(
    .INIT(64'h00000000BFBBBFFF)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(tx_idle),
        .I1(tx_pong_ping_l),
        .I2(\gen_wr_b.gen_word_wide.mem_reg_0 [1]),
        .I3(select_2),
        .I4(douta[1]),
        .I5(\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ),
        .O(STATE0A_0));
  LUT6 #(
    .INIT(64'h00000000BFBBBFFF)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(tx_idle),
        .I1(tx_pong_ping_l),
        .I2(\gen_wr_b.gen_word_wide.mem_reg_0 [0]),
        .I3(select_2),
        .I4(douta[0]),
        .I5(\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 ),
        .O(STATE0A_1));
  LUT5 #(
    .INIT(32'h0000E200)) 
    ram16x1_1_i_2
       (.I0(douta_0),
        .I1(select_2),
        .I2(Data_out_a_2),
        .I3(tx_pong_ping_l),
        .I4(tx_idle),
        .O(\gen_wr_b.gen_word_wide.mem_reg_1 ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__8 \xpm_mem_gen.xpm_memory_inst_1 
       (.addra(tx_DPM_adr),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[15:0]),
        .douta({douta[2:1],douta_0,douta[0]}),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [9],tx_pong_data_out[14:13],\gen_wr_b.gen_word_wide.mem_reg [8],tx_pong_data_out[11],\gen_wr_b.gen_word_wide.mem_reg [7],tx_pong_data_out[9],\gen_wr_b.gen_word_wide.mem_reg [6:4],tx_pong_data_out[5:4],\gen_wr_b.gen_word_wide.mem_reg [3:0]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_2 ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_3 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_1_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "blockram" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__9 \xpm_mem_gen.xpm_memory_inst_2 
       (.addra(tx_DPM_adr),
        .addrb(Q[8:0]),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_dbiterrb_UNCONNECTED ),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb(s_axi_wdata[31:16]),
        .douta({\gen_wr_b.gen_word_wide.mem_reg_0 [2:1],Data_out_a_2,\gen_wr_b.gen_word_wide.mem_reg_0 [0]}),
        .doutb({\gen_wr_b.gen_word_wide.mem_reg [23:15],tx_pong_data_out[22],\gen_wr_b.gen_word_wide.mem_reg [14:13],tx_pong_data_out[19],\gen_wr_b.gen_word_wide.mem_reg [12:10]}),
        .ena(\gen_wr_b.gen_word_wide.mem_reg_4 ),
        .enb(\gen_wr_b.gen_word_wide.mem_reg_3 ),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rstb(1'b0),
        .sbiterra(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_xpm_mem_gen.xpm_memory_inst_2_sbiterrb_UNCONNECTED ),
        .sleep(1'b0),
        .wea(1'b0),
        .web(web));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg
   (\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    \tx_packet_length_reg[14] ,
    \tx_packet_length_reg[0] ,
    D22_out,
    enblData,
    S,
    txComboNibbleCntRst,
    CE,
    s_axi_aclk,
    Q);
  output [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  output \tx_packet_length_reg[14] ;
  output \tx_packet_length_reg[0] ;
  output D22_out;
  input enblData;
  input S;
  input txComboNibbleCntRst;
  input CE;
  input s_axi_aclk;
  input [15:0]Q;

  wire CE;
  wire D22_out;
  wire O;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ;
  wire \PERBIT_GEN[10].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[3].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[4].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[5].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[6].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[7].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[9].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ;
  wire [15:0]Q;
  wire S;
  wire STATE13A_i_2_n_0;
  wire STATE13A_i_3_n_0;
  wire [0:10]currentTxNibbleCnt;
  wire enblData;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_10;
  wire gen_cry_kill_n_2;
  wire gen_cry_kill_n_3;
  wire gen_cry_kill_n_4;
  wire gen_cry_kill_n_5;
  wire gen_cry_kill_n_6;
  wire gen_cry_kill_n_7;
  wire gen_cry_kill_n_8;
  wire gen_cry_kill_n_9;
  wire s_axi_aclk;
  wire txComboNibbleCntRst;
  wire \tx_packet_length_reg[0] ;
  wire \tx_packet_length_reg[14] ;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_10;
  wire xorcy_out_11;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire xorcy_out_4;
  wire xorcy_out_5;
  wire xorcy_out_6;
  wire xorcy_out_7;
  wire xorcy_out_8;
  wire xorcy_out_9;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
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
        .D(xorcy_out_11),
        .Q(currentTxNibbleCnt[0]),
        .R(txComboNibbleCntRst));
  LUT3 #(
    .INIT(8'h5C)) 
    \PERBIT_GEN[0].XORCY_i1_i_1 
       (.I0(currentTxNibbleCnt[0]),
        .I1(Q[10]),
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
        .D(xorcy_out_1),
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
        .O(gen_cry_kill_n_1));
  LUT5 #(
    .INIT(32'h00FFB0B0)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1__0 
       (.I0(\tx_packet_length_reg[0] ),
        .I1(\tx_packet_length_reg[14] ),
        .I2(Q[0]),
        .I3(currentTxNibbleCnt[10]),
        .I4(enblData),
        .O(\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \PERBIT_GEN[10].MUXCY_i1_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(\tx_packet_length_reg[0] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \PERBIT_GEN[10].MUXCY_i1_i_3 
       (.I0(Q[14]),
        .I1(Q[11]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(\PERBIT_GEN[10].MUXCY_i1_i_4_n_0 ),
        .O(\tx_packet_length_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \PERBIT_GEN[10].MUXCY_i1_i_4 
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[13]),
        .I3(Q[7]),
        .I4(Q[15]),
        .I5(Q[12]),
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
        .D(xorcy_out_0),
        .Q(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ),
        .R(txComboNibbleCntRst));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MULT_AND_i1 
       (.I0(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ),
        .I1(enblData),
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\PERBIT_GEN[8].MUXCY_i1_n_0 ,\PERBIT_GEN[9].MUXCY_i1_n_0 ,\PERBIT_GEN[10].MUXCY_i1_n_0 ,O}),
        .CYINIT(enblData),
        .DI({gen_cry_kill_n_3,gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_10),
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
        .O(gen_cry_kill_n_10));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[1].MUXCY_i1_i_1 
       (.I0(Q[9]),
        .I1(currentTxNibbleCnt[1]),
        .I2(enblData),
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
        .D(xorcy_out_9),
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
        .O(gen_cry_kill_n_9));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[2].MUXCY_i1_i_1 
       (.I0(Q[8]),
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
        .D(xorcy_out_8),
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
        .O(gen_cry_kill_n_8));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(\PERBIT_GEN[4].MUXCY_i1_n_0 ),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],\PERBIT_GEN[1].MUXCY_i1_n_0 ,\PERBIT_GEN[2].MUXCY_i1_n_0 ,\PERBIT_GEN[3].MUXCY_i1_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_10,gen_cry_kill_n_9,gen_cry_kill_n_8}),
        .O({xorcy_out_11,xorcy_out_10,xorcy_out_9,xorcy_out_8}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1 
       (.I0(Q[7]),
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
        .D(xorcy_out_7),
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
        .O(gen_cry_kill_n_7));
  LUT3 #(
    .INIT(8'h3A)) 
    \PERBIT_GEN[4].MUXCY_i1_i_1 
       (.I0(Q[6]),
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
        .D(xorcy_out_6),
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
        .O(gen_cry_kill_n_6));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \PERBIT_GEN[5].MUXCY_i1_i_1 
       (.I0(Q[5]),
        .I1(\tx_packet_length_reg[14] ),
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
        .D(xorcy_out_5),
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
        .O(gen_cry_kill_n_5));
  LUT5 #(
    .INIT(32'h00FFF4F4)) 
    \PERBIT_GEN[6].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[0] ),
        .I1(\tx_packet_length_reg[14] ),
        .I2(Q[4]),
        .I3(currentTxNibbleCnt[6]),
        .I4(enblData),
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
        .D(xorcy_out_4),
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
        .O(gen_cry_kill_n_4));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[7].MUXCY_i1_CARRY4 
       (.CI(\PERBIT_GEN[8].MUXCY_i1_n_0 ),
        .CO({\PERBIT_GEN[4].MUXCY_i1_n_0 ,\PERBIT_GEN[5].MUXCY_i1_n_0 ,\PERBIT_GEN[6].MUXCY_i1_n_0 ,\PERBIT_GEN[7].MUXCY_i1_n_0 }),
        .CYINIT(1'b0),
        .DI({gen_cry_kill_n_7,gen_cry_kill_n_6,gen_cry_kill_n_5,gen_cry_kill_n_4}),
        .O({xorcy_out_7,xorcy_out_6,xorcy_out_5,xorcy_out_4}),
        .S({\PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg }));
  LUT4 #(
    .INIT(16'h0FEE)) 
    \PERBIT_GEN[7].MUXCY_i1_i_1 
       (.I0(Q[3]),
        .I1(\tx_packet_length_reg[14] ),
        .I2(currentTxNibbleCnt[7]),
        .I3(enblData),
        .O(\PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_3),
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
        .O(gen_cry_kill_n_3));
  LUT5 #(
    .INIT(32'h00FFF4F4)) 
    \PERBIT_GEN[8].MUXCY_i1_i_1 
       (.I0(\tx_packet_length_reg[0] ),
        .I1(\tx_packet_length_reg[14] ),
        .I2(Q[2]),
        .I3(currentTxNibbleCnt[8]),
        .I4(enblData),
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
        .D(xorcy_out_2),
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
        .O(gen_cry_kill_n_2));
  LUT5 #(
    .INIT(32'h00FFB0B0)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1__0 
       (.I0(\tx_packet_length_reg[0] ),
        .I1(\tx_packet_length_reg[14] ),
        .I2(Q[1]),
        .I3(currentTxNibbleCnt[9]),
        .I4(enblData),
        .O(\PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'h00000002)) 
    STATE13A_i_1
       (.I0(STATE13A_i_2_n_0),
        .I1(STATE13A_i_3_n_0),
        .I2(currentTxNibbleCnt[9]),
        .I3(currentTxNibbleCnt[2]),
        .I4(currentTxNibbleCnt[6]),
        .O(D22_out));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    STATE13A_i_2
       (.I0(currentTxNibbleCnt[3]),
        .I1(enblData),
        .I2(currentTxNibbleCnt[10]),
        .I3(currentTxNibbleCnt[0]),
        .I4(currentTxNibbleCnt[7]),
        .I5(currentTxNibbleCnt[5]),
        .O(STATE13A_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    STATE13A_i_3
       (.I0(currentTxNibbleCnt[1]),
        .I1(currentTxNibbleCnt[8]),
        .I2(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ),
        .I3(currentTxNibbleCnt[4]),
        .O(STATE13A_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0
   (currentTxBusFifoWrCnt,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ,
    emac_tx_wr_i,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ,
    txComboBusFifoWrCntRst,
    s_axi_aclk,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg );
  output [3:0]currentTxBusFifoWrCnt;
  output \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  output \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ;
  input emac_tx_wr_i;
  input \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ;
  input txComboBusFifoWrCntRst;
  input s_axi_aclk;
  input \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  input \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;

  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire cry_1;
  wire cry_2;
  wire cry_3;
  wire [3:0]currentTxBusFifoWrCnt;
  wire emac_tx_wr_i;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire s_axi_aclk;
  wire txComboBusFifoWrCntRst;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire [3:3]\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
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
        .D(xorcy_out_1),
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
        .O(gen_cry_kill_n_1));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_0),
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
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[11].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],cry_3,cry_2,cry_1}),
        .CYINIT(1'b0),
        .DI({\NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 }));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(emac_tx_wr_i),
        .D(xorcy_out_3),
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
        .D(xorcy_out_2),
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
        .O(gen_cry_kill_n_2));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    STATE10A_i_2
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(currentTxBusFifoWrCnt[1]),
        .I2(currentTxBusFifoWrCnt[2]),
        .I3(currentTxBusFifoWrCnt[3]),
        .O(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    STATE8A_i_2
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(currentTxBusFifoWrCnt[1]),
        .I2(currentTxBusFifoWrCnt[2]),
        .I3(currentTxBusFifoWrCnt[3]),
        .O(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 ));
endmodule

(* ORIG_REF_NAME = "ld_arith_reg" *) 
module ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1
   (crcCnt,
    din,
    wr_en,
    D9_out,
    STATE14A,
    enblCRC,
    S,
    \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ,
    CE,
    s_axi_aclk,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    tx_en_i,
    checkBusFifoFullCrc,
    \gwack.wr_ack_i_reg ,
    STATE15A);
  output [0:3]crcCnt;
  output [0:0]din;
  output wr_en;
  output D9_out;
  output STATE14A;
  input enblCRC;
  input S;
  input \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  input CE;
  input s_axi_aclk;
  input \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  input \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  input tx_en_i;
  input checkBusFifoFullCrc;
  input \gwack.wr_ack_i_reg ;
  input STATE15A;

  wire CE;
  wire D9_out;
  wire O;
  wire \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[1].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].MUXCY_i1_n_0 ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire S;
  wire STATE14A;
  wire STATE15A;
  wire checkBusFifoFullCrc;
  wire [0:3]crcCnt;
  wire [0:0]din;
  wire enblCRC;
  wire gen_cry_kill_n_0;
  wire gen_cry_kill_n_1;
  wire gen_cry_kill_n_2;
  wire \gwack.wr_ack_i_reg ;
  wire s_axi_aclk;
  wire tx_en_i;
  wire wr_en;
  wire xorcy_out_0;
  wire xorcy_out_1;
  wire xorcy_out_2;
  wire xorcy_out_3;
  wire [3:3]\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED ;
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
        .D(xorcy_out_3),
        .Q(crcCnt[0]),
        .S(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_2),
        .Q(crcCnt[1]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[1].MULT_AND_i1 
       (.I0(crcCnt[1]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_2));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_1),
        .Q(crcCnt[2]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[2].MULT_AND_i1 
       (.I0(crcCnt[2]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_1));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1 
       (.C(s_axi_aclk),
        .CE(CE),
        .D(xorcy_out_0),
        .Q(crcCnt[3]),
        .R(\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MULT_AND_i1 
       (.I0(crcCnt[3]),
        .I1(enblCRC),
        .O(gen_cry_kill_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \PERBIT_GEN[3].MUXCY_i1_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED [3],\PERBIT_GEN[1].MUXCY_i1_n_0 ,\PERBIT_GEN[2].MUXCY_i1_n_0 ,O}),
        .CYINIT(enblCRC),
        .DI({\NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED [3],gen_cry_kill_n_2,gen_cry_kill_n_1,gen_cry_kill_n_0}),
        .O({xorcy_out_3,xorcy_out_2,xorcy_out_1,xorcy_out_0}),
        .S({\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,S}));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    STATE15A_i_1
       (.I0(crcCnt[2]),
        .I1(crcCnt[1]),
        .I2(crcCnt[3]),
        .I3(crcCnt[0]),
        .I4(STATE15A),
        .I5(checkBusFifoFullCrc),
        .O(D9_out));
  LUT5 #(
    .INIT(32'h00000002)) 
    STATE16A_i_2
       (.I0(checkBusFifoFullCrc),
        .I1(crcCnt[2]),
        .I2(crcCnt[1]),
        .I3(crcCnt[3]),
        .I4(crcCnt[0]),
        .O(STATE14A));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_2 
       (.I0(crcCnt[0]),
        .I1(crcCnt[3]),
        .I2(crcCnt[1]),
        .I3(crcCnt[2]),
        .I4(checkBusFifoFullCrc),
        .I5(\gwack.wr_ack_i_reg ),
        .O(wr_en));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_3__0 
       (.I0(tx_en_i),
        .I1(crcCnt[0]),
        .I2(crcCnt[3]),
        .I3(crcCnt[1]),
        .I4(crcCnt[2]),
        .I5(checkBusFifoFullCrc),
        .O(din));
endmodule

(* ORIG_REF_NAME = "mdio_if" *) 
module ntps_top_axi_ethernetlite_0_0_mdio_if
   (\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ,
    phy_mdio_o,
    phy_mdio_t,
    D,
    s_axi_wdata_0_sp_1,
    prmry_in,
    s_axi_aclk,
    mdio_clk_reg_reg_0,
    phy_mdio_i,
    s_axi_aresetn,
    p_0_in_1,
    \MDIO_GEN.mdio_data_out_reg[10] ,
    Q,
    PHY_MDIO_O_reg_i_8_0,
    \MDIO_GEN.mdio_data_out_reg[3] ,
    \MDIO_GEN.mdio_data_out_reg[3]_0 ,
    \MDIO_GEN.mdio_data_out_reg[1] ,
    \MDIO_GEN.mdio_data_out_reg[10]_0 ,
    \MDIO_GEN.mdio_data_out_reg[2] ,
    mdio_en_reg_reg_0,
    \MDIO_GEN.mdio_data_out_reg[5] ,
    \MDIO_GEN.mdio_data_out_reg[9] ,
    \MDIO_GEN.mdio_data_out_reg[6] ,
    \MDIO_GEN.mdio_data_out_reg[7] ,
    \MDIO_GEN.mdio_data_out_reg[8] ,
    \MDIO_GEN.mdio_data_out_reg[9]_0 ,
    \MDIO_GEN.mdio_data_out_reg[10]_1 ,
    mdio_op_i,
    \MDIO_GEN.mdio_data_out_reg[4] ,
    s_axi_wdata,
    mdio_en_i0);
  output [4:0]\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  output phy_mdio_o;
  output phy_mdio_t;
  output [10:0]D;
  output s_axi_wdata_0_sp_1;
  input prmry_in;
  input s_axi_aclk;
  input mdio_clk_reg_reg_0;
  input phy_mdio_i;
  input s_axi_aresetn;
  input [0:0]p_0_in_1;
  input \MDIO_GEN.mdio_data_out_reg[10] ;
  input [4:0]Q;
  input [15:0]PHY_MDIO_O_reg_i_8_0;
  input \MDIO_GEN.mdio_data_out_reg[3] ;
  input [0:0]\MDIO_GEN.mdio_data_out_reg[3]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[1] ;
  input \MDIO_GEN.mdio_data_out_reg[10]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[2] ;
  input [0:0]mdio_en_reg_reg_0;
  input \MDIO_GEN.mdio_data_out_reg[5] ;
  input [4:0]\MDIO_GEN.mdio_data_out_reg[9] ;
  input \MDIO_GEN.mdio_data_out_reg[6] ;
  input \MDIO_GEN.mdio_data_out_reg[7] ;
  input \MDIO_GEN.mdio_data_out_reg[8] ;
  input \MDIO_GEN.mdio_data_out_reg[9]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[10]_1 ;
  input mdio_op_i;
  input \MDIO_GEN.mdio_data_out_reg[4] ;
  input [0:0]s_axi_wdata;
  input mdio_en_i0;

  wire [10:0]D;
  wire \FSM_onehot_mdio_state[10]_i_1_n_0 ;
  wire \FSM_onehot_mdio_state[11]_i_1_n_0 ;
  wire \FSM_onehot_mdio_state[12]_i_2_n_0 ;
  wire \FSM_onehot_mdio_state[12]_i_3_n_0 ;
  wire \FSM_onehot_mdio_state[12]_i_4_n_0 ;
  wire \FSM_onehot_mdio_state[12]_i_5_n_0 ;
  wire \FSM_onehot_mdio_state_reg_n_0_[0] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[10] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[11] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[1] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[2] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[3] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[4] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[5] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[6] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[7] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[8] ;
  wire \FSM_onehot_mdio_state_reg_n_0_[9] ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ;
  wire \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ;
  wire [4:0]\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ;
  wire \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ;
  wire \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ;
  wire \MDIO_GEN.mdio_data_out[0]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[3]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[4]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[10] ;
  wire \MDIO_GEN.mdio_data_out_reg[10]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[10]_1 ;
  wire \MDIO_GEN.mdio_data_out_reg[1] ;
  wire \MDIO_GEN.mdio_data_out_reg[2] ;
  wire \MDIO_GEN.mdio_data_out_reg[3] ;
  wire [0:0]\MDIO_GEN.mdio_data_out_reg[3]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[4] ;
  wire \MDIO_GEN.mdio_data_out_reg[5] ;
  wire \MDIO_GEN.mdio_data_out_reg[6] ;
  wire \MDIO_GEN.mdio_data_out_reg[7] ;
  wire \MDIO_GEN.mdio_data_out_reg[8] ;
  wire [4:0]\MDIO_GEN.mdio_data_out_reg[9] ;
  wire \MDIO_GEN.mdio_data_out_reg[9]_0 ;
  wire PHY_MDIO_O_i_10_n_0;
  wire PHY_MDIO_O_i_11_n_0;
  wire PHY_MDIO_O_i_12_n_0;
  wire PHY_MDIO_O_i_13_n_0;
  wire PHY_MDIO_O_i_14_n_0;
  wire PHY_MDIO_O_i_1_n_0;
  wire PHY_MDIO_O_i_2_n_0;
  wire PHY_MDIO_O_i_4_n_0;
  wire PHY_MDIO_O_i_5_n_0;
  wire PHY_MDIO_O_i_6_n_0;
  wire PHY_MDIO_O_i_7_n_0;
  wire [15:0]PHY_MDIO_O_reg_i_8_0;
  wire PHY_MDIO_O_reg_i_8_n_0;
  wire PHY_MDIO_O_reg_i_9_n_0;
  wire PHY_MDIO_T_i_1_n_0;
  wire [4:0]Q;
  wire clk_cnt;
  wire \clk_cnt[5]_i_3_n_0 ;
  wire [5:0]clk_cnt_reg;
  wire [4:2]data;
  wire [4:2]ld_cnt_data_cmb;
  wire ld_cnt_en_cmb;
  wire ld_cnt_en_reg;
  wire mdc_falling;
  wire mdio_clk_reg;
  wire mdio_clk_reg_reg_0;
  wire mdio_done_i;
  wire mdio_en_i0;
  wire mdio_en_reg;
  wire mdio_en_reg_i_1_n_0;
  wire [0:0]mdio_en_reg_reg_0;
  wire mdio_idle_i_1_n_0;
  wire mdio_idle_i_2_n_0;
  wire mdio_idle_reg_n_0;
  wire mdio_in_reg1;
  wire mdio_in_reg2;
  wire mdio_op_i;
  wire [10:0]mdio_rd_data_reg;
  wire mdio_state;
  wire mdio_t_comb;
  wire [0:0]p_0_in_1;
  wire [5:0]p_0_in__1;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_mdio_state[10]_i_1 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I1(mdio_op_i),
        .O(\FSM_onehot_mdio_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_mdio_state[11]_i_1 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I1(mdio_op_i),
        .O(\FSM_onehot_mdio_state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444440400)) 
    \FSM_onehot_mdio_state[12]_i_1 
       (.I0(mdio_clk_reg),
        .I1(mdio_clk_reg_reg_0),
        .I2(\FSM_onehot_mdio_state[12]_i_3_n_0 ),
        .I3(\FSM_onehot_mdio_state[12]_i_4_n_0 ),
        .I4(\FSM_onehot_mdio_state[12]_i_5_n_0 ),
        .I5(ld_cnt_data_cmb[2]),
        .O(mdio_state));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_mdio_state[12]_i_2 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .O(\FSM_onehot_mdio_state[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_mdio_state[12]_i_3 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_mdio_state_reg_n_0_[7] ),
        .O(\FSM_onehot_mdio_state[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_mdio_state[12]_i_4 
       (.I0(clk_cnt_reg[2]),
        .I1(clk_cnt_reg[0]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[5]),
        .I4(clk_cnt_reg[4]),
        .I5(clk_cnt_reg[3]),
        .O(\FSM_onehot_mdio_state[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_mdio_state[12]_i_5 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[8] ),
        .I3(mdio_done_i),
        .I4(\FSM_onehot_mdio_state_reg_n_0_[3] ),
        .O(\FSM_onehot_mdio_state[12]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mdio_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(mdio_done_i),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .S(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[10] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[10] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[11] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[12] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state[12]_i_2_n_0 ),
        .Q(mdio_done_i),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[1] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[2] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[3] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[4] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[5] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[7] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[8] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[8] ),
        .R(prmry_in));
  (* FSM_ENCODED_STATES = "st2:0000000001000,op1:0000000010000,st1:0000000000100,read:0100000000000,done:1000000000000,write:0010000000000,preamble:0000000000010,idle:0000000000001,ta2:0001000000000,reg_addr:0000010000000,ta1:0000100000000,phy_addr:0000001000000,op2:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mdio_state_reg[9] 
       (.C(s_axi_aclk),
        .CE(mdio_state),
        .D(\FSM_onehot_mdio_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ),
        .I3(mdio_rd_data_reg[0]),
        .O(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2 
       (.I0(clk_cnt_reg[2]),
        .I1(clk_cnt_reg[5]),
        .I2(clk_cnt_reg[4]),
        .I3(clk_cnt_reg[3]),
        .O(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3 
       (.I0(clk_cnt_reg[1]),
        .I1(clk_cnt_reg[0]),
        .I2(mdio_clk_reg_reg_0),
        .I3(mdio_clk_reg),
        .I4(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .O(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[0]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[10]),
        .O(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[10]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [0]),
        .O(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [0]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [1]),
        .O(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2 
       (.I0(clk_cnt_reg[3]),
        .I1(clk_cnt_reg[5]),
        .I2(clk_cnt_reg[4]),
        .I3(clk_cnt_reg[2]),
        .O(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [1]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [2]),
        .O(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [2]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [3]),
        .O(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [3]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0 ),
        .I3(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [4]),
        .O(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0 ),
        .Q(\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 [4]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[1]),
        .O(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2 
       (.I0(mdio_clk_reg_reg_0),
        .I1(mdio_clk_reg),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I3(clk_cnt_reg[0]),
        .I4(clk_cnt_reg[1]),
        .O(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[1]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[2]),
        .O(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2 
       (.I0(mdio_clk_reg_reg_0),
        .I1(mdio_clk_reg),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I3(clk_cnt_reg[1]),
        .I4(clk_cnt_reg[0]),
        .O(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[2]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[3]),
        .O(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2 
       (.I0(mdio_clk_reg_reg_0),
        .I1(mdio_clk_reg),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I3(clk_cnt_reg[1]),
        .I4(clk_cnt_reg[0]),
        .O(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[3]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[4]),
        .O(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2 
       (.I0(clk_cnt_reg[5]),
        .I1(clk_cnt_reg[4]),
        .I2(clk_cnt_reg[3]),
        .I3(clk_cnt_reg[2]),
        .O(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[4]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[5]),
        .O(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[5]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[6]),
        .O(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[6]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[7]),
        .O(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[7]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_3_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[8]),
        .O(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2 
       (.I0(clk_cnt_reg[2]),
        .I1(clk_cnt_reg[3]),
        .I2(clk_cnt_reg[5]),
        .I3(clk_cnt_reg[4]),
        .O(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[8]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1 
       (.I0(mdio_in_reg2),
        .I1(\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0 ),
        .I2(\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0 ),
        .I3(mdio_rd_data_reg[9]),
        .O(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ));
  FDRE \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0 ),
        .Q(mdio_rd_data_reg[9]),
        .R(prmry_in));
  LUT4 #(
    .INIT(16'h8808)) 
    \MDIO_GEN.mdio_data_out[0]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[0]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I3(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFCCFCCEFECEFEC)) 
    \MDIO_GEN.mdio_data_out[0]_i_2 
       (.I0(PHY_MDIO_O_reg_i_8_0[0]),
        .I1(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[3] ),
        .I3(p_0_in_1),
        .I4(mdio_rd_data_reg[0]),
        .I5(\MDIO_GEN.mdio_data_out_reg[3]_0 ),
        .O(\MDIO_GEN.mdio_data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[10]_i_2 
       (.I0(\MDIO_GEN.mdio_data_out_reg[10]_1 ),
        .I1(mdio_rd_data_reg[10]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(mdio_op_i),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[1]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[1] ),
        .I1(mdio_rd_data_reg[1]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[2]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[2] ),
        .I1(mdio_rd_data_reg[2]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8808)) 
    \MDIO_GEN.mdio_data_out[3]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[3]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I3(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFCFAFFFFFC0A0)) 
    \MDIO_GEN.mdio_data_out[3]_i_2 
       (.I0(PHY_MDIO_O_reg_i_8_0[3]),
        .I1(mdio_rd_data_reg[3]),
        .I2(\MDIO_GEN.mdio_data_out_reg[3] ),
        .I3(\MDIO_GEN.mdio_data_out_reg[3]_0 ),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(mdio_en_reg_reg_0),
        .O(\MDIO_GEN.mdio_data_out[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC044)) 
    \MDIO_GEN.mdio_data_out[4]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out[4]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(Q[4]),
        .I3(\MDIO_GEN.mdio_data_out_reg[10] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \MDIO_GEN.mdio_data_out[4]_i_2 
       (.I0(PHY_MDIO_O_reg_i_8_0[4]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(mdio_rd_data_reg[4]),
        .O(\MDIO_GEN.mdio_data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[5]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[5] ),
        .I1(mdio_rd_data_reg[5]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [0]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[6]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[6] ),
        .I1(mdio_rd_data_reg[6]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [1]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[7]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[7] ),
        .I1(mdio_rd_data_reg[7]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [2]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[8]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[8] ),
        .I1(mdio_rd_data_reg[8]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [3]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFF00AE000000AE00)) 
    \MDIO_GEN.mdio_data_out[9]_i_1 
       (.I0(\MDIO_GEN.mdio_data_out_reg[9]_0 ),
        .I1(mdio_rd_data_reg[9]),
        .I2(\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .I3(s_axi_aresetn),
        .I4(\MDIO_GEN.mdio_data_out_reg[10] ),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [4]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    \MDIO_GEN.mdio_req_i_i_1 
       (.I0(s_axi_wdata),
        .I1(mdio_done_i),
        .I2(mdio_en_i0),
        .I3(p_0_in_1),
        .O(s_axi_wdata_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    PHY_MDIO_O_i_1
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[8] ),
        .I3(PHY_MDIO_O_i_2_n_0),
        .I4(mdc_falling),
        .I5(phy_mdio_o),
        .O(PHY_MDIO_O_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_10
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(clk_cnt_reg[1]),
        .I3(Q[1]),
        .I4(clk_cnt_reg[0]),
        .I5(Q[0]),
        .O(PHY_MDIO_O_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_11
       (.I0(PHY_MDIO_O_reg_i_8_0[11]),
        .I1(PHY_MDIO_O_reg_i_8_0[10]),
        .I2(clk_cnt_reg[1]),
        .I3(PHY_MDIO_O_reg_i_8_0[9]),
        .I4(clk_cnt_reg[0]),
        .I5(PHY_MDIO_O_reg_i_8_0[8]),
        .O(PHY_MDIO_O_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_12
       (.I0(PHY_MDIO_O_reg_i_8_0[15]),
        .I1(PHY_MDIO_O_reg_i_8_0[14]),
        .I2(clk_cnt_reg[1]),
        .I3(PHY_MDIO_O_reg_i_8_0[13]),
        .I4(clk_cnt_reg[0]),
        .I5(PHY_MDIO_O_reg_i_8_0[12]),
        .O(PHY_MDIO_O_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_13
       (.I0(PHY_MDIO_O_reg_i_8_0[3]),
        .I1(PHY_MDIO_O_reg_i_8_0[2]),
        .I2(clk_cnt_reg[1]),
        .I3(PHY_MDIO_O_reg_i_8_0[1]),
        .I4(clk_cnt_reg[0]),
        .I5(PHY_MDIO_O_reg_i_8_0[0]),
        .O(PHY_MDIO_O_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_14
       (.I0(PHY_MDIO_O_reg_i_8_0[7]),
        .I1(PHY_MDIO_O_reg_i_8_0[6]),
        .I2(clk_cnt_reg[1]),
        .I3(PHY_MDIO_O_reg_i_8_0[5]),
        .I4(clk_cnt_reg[0]),
        .I5(PHY_MDIO_O_reg_i_8_0[4]),
        .O(PHY_MDIO_O_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    PHY_MDIO_O_i_2
       (.I0(PHY_MDIO_O_i_4_n_0),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[3] ),
        .I2(mdio_done_i),
        .I3(PHY_MDIO_O_i_5_n_0),
        .I4(PHY_MDIO_O_i_6_n_0),
        .O(PHY_MDIO_O_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    PHY_MDIO_O_i_3
       (.I0(mdio_clk_reg),
        .I1(mdio_clk_reg_reg_0),
        .O(mdc_falling));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    PHY_MDIO_O_i_4
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .I2(\MDIO_GEN.mdio_data_out_reg[9] [4]),
        .I3(clk_cnt_reg[2]),
        .I4(PHY_MDIO_O_i_7_n_0),
        .O(PHY_MDIO_O_i_4_n_0));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    PHY_MDIO_O_i_5
       (.I0(mdio_op_i),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[4] ),
        .I2(PHY_MDIO_O_reg_i_8_n_0),
        .I3(clk_cnt_reg[3]),
        .I4(PHY_MDIO_O_reg_i_9_n_0),
        .I5(\FSM_onehot_mdio_state_reg_n_0_[10] ),
        .O(PHY_MDIO_O_i_5_n_0));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    PHY_MDIO_O_i_6
       (.I0(mdio_op_i),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[5] ),
        .I2(Q[4]),
        .I3(clk_cnt_reg[2]),
        .I4(PHY_MDIO_O_i_10_n_0),
        .I5(\FSM_onehot_mdio_state_reg_n_0_[7] ),
        .O(PHY_MDIO_O_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    PHY_MDIO_O_i_7
       (.I0(\MDIO_GEN.mdio_data_out_reg[9] [3]),
        .I1(\MDIO_GEN.mdio_data_out_reg[9] [2]),
        .I2(clk_cnt_reg[1]),
        .I3(\MDIO_GEN.mdio_data_out_reg[9] [1]),
        .I4(clk_cnt_reg[0]),
        .I5(\MDIO_GEN.mdio_data_out_reg[9] [0]),
        .O(PHY_MDIO_O_i_7_n_0));
  FDRE PHY_MDIO_O_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(PHY_MDIO_O_i_1_n_0),
        .Q(phy_mdio_o),
        .R(prmry_in));
  MUXF7 PHY_MDIO_O_reg_i_8
       (.I0(PHY_MDIO_O_i_11_n_0),
        .I1(PHY_MDIO_O_i_12_n_0),
        .O(PHY_MDIO_O_reg_i_8_n_0),
        .S(clk_cnt_reg[2]));
  MUXF7 PHY_MDIO_O_reg_i_9
       (.I0(PHY_MDIO_O_i_13_n_0),
        .I1(PHY_MDIO_O_i_14_n_0),
        .O(PHY_MDIO_O_reg_i_9_n_0),
        .S(clk_cnt_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    PHY_MDIO_T_i_1
       (.I0(mdio_t_comb),
        .I1(mdio_clk_reg),
        .I2(mdio_clk_reg_reg_0),
        .I3(phy_mdio_t),
        .O(PHY_MDIO_T_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    PHY_MDIO_T_i_2
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .I2(mdio_done_i),
        .I3(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_mdio_state_reg_n_0_[8] ),
        .I5(mdio_op_i),
        .O(mdio_t_comb));
  FDSE PHY_MDIO_T_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(PHY_MDIO_T_i_1_n_0),
        .Q(phy_mdio_t),
        .S(prmry_in));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \clk_cnt[0]_i_1 
       (.I0(data[3]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \clk_cnt[1]_i_1 
       (.I0(data[3]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg[0]),
        .I3(clk_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \clk_cnt[2]_i_1 
       (.I0(data[2]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg[2]),
        .I3(clk_cnt_reg[1]),
        .I4(clk_cnt_reg[0]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \clk_cnt[3]_i_1 
       (.I0(data[3]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg[3]),
        .I3(clk_cnt_reg[2]),
        .I4(clk_cnt_reg[0]),
        .I5(clk_cnt_reg[1]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \clk_cnt[4]_i_1 
       (.I0(data[4]),
        .I1(ld_cnt_en_reg),
        .I2(clk_cnt_reg[4]),
        .I3(clk_cnt_reg[3]),
        .I4(\clk_cnt[5]_i_3_n_0 ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h4440444044404444)) 
    \clk_cnt[5]_i_1 
       (.I0(mdio_clk_reg),
        .I1(mdio_clk_reg_reg_0),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .I3(ld_cnt_en_reg),
        .I4(\FSM_onehot_mdio_state[12]_i_3_n_0 ),
        .I5(\FSM_onehot_mdio_state[12]_i_4_n_0 ),
        .O(clk_cnt));
  LUT5 #(
    .INIT(32'h0000FB04)) 
    \clk_cnt[5]_i_2 
       (.I0(clk_cnt_reg[3]),
        .I1(\clk_cnt[5]_i_3_n_0 ),
        .I2(clk_cnt_reg[4]),
        .I3(clk_cnt_reg[5]),
        .I4(ld_cnt_en_reg),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt[5]_i_3 
       (.I0(clk_cnt_reg[1]),
        .I1(clk_cnt_reg[0]),
        .I2(clk_cnt_reg[2]),
        .O(\clk_cnt[5]_i_3_n_0 ));
  FDRE \clk_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[0]),
        .Q(clk_cnt_reg[0]),
        .R(prmry_in));
  FDRE \clk_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[1]),
        .Q(clk_cnt_reg[1]),
        .R(prmry_in));
  FDRE \clk_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[2]),
        .Q(clk_cnt_reg[2]),
        .R(prmry_in));
  FDRE \clk_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[3]),
        .Q(clk_cnt_reg[3]),
        .R(prmry_in));
  FDRE \clk_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[4]),
        .Q(clk_cnt_reg[4]),
        .R(prmry_in));
  FDRE \clk_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk_cnt),
        .D(p_0_in__1[5]),
        .Q(clk_cnt_reg[5]),
        .R(prmry_in));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFF4FFF4)) 
    \ld_cnt_data_reg[2]_i_1 
       (.I0(mdio_idle_reg_n_0),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_mdio_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_mdio_state[12]_i_4_n_0 ),
        .I5(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .O(ld_cnt_data_cmb[2]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ld_cnt_data_reg[3]_i_1 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I1(mdio_idle_reg_n_0),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .O(ld_cnt_data_cmb[3]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ld_cnt_data_reg[4]_i_1 
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .I1(mdio_idle_reg_n_0),
        .O(ld_cnt_data_cmb[4]));
  FDRE \ld_cnt_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ld_cnt_data_cmb[2]),
        .Q(data[2]),
        .R(prmry_in));
  FDRE \ld_cnt_data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ld_cnt_data_cmb[3]),
        .Q(data[3]),
        .R(prmry_in));
  FDRE \ld_cnt_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ld_cnt_data_cmb[4]),
        .Q(data[4]),
        .R(prmry_in));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    ld_cnt_en_reg_i_1
       (.I0(\FSM_onehot_mdio_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_mdio_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_mdio_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_mdio_state[12]_i_4_n_0 ),
        .I4(\FSM_onehot_mdio_state_reg_n_0_[6] ),
        .O(ld_cnt_en_cmb));
  FDRE ld_cnt_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ld_cnt_en_cmb),
        .Q(ld_cnt_en_reg),
        .R(prmry_in));
  FDRE mdio_clk_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_clk_reg_reg_0),
        .Q(mdio_clk_reg),
        .R(prmry_in));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    mdio_en_reg_i_1
       (.I0(mdio_en_reg_reg_0),
        .I1(mdio_idle_reg_n_0),
        .I2(mdio_clk_reg_reg_0),
        .I3(mdio_clk_reg),
        .I4(mdio_en_reg),
        .O(mdio_en_reg_i_1_n_0));
  FDRE mdio_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_en_reg_i_1_n_0),
        .Q(mdio_en_reg),
        .R(prmry_in));
  LUT6 #(
    .INIT(64'hBBFBFBFBF3F3F3F3)) 
    mdio_idle_i_1
       (.I0(mdio_done_i),
        .I1(s_axi_aresetn),
        .I2(mdio_idle_reg_n_0),
        .I3(p_0_in_1),
        .I4(mdio_en_reg),
        .I5(mdio_idle_i_2_n_0),
        .O(mdio_idle_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mdio_idle_i_2
       (.I0(mdio_clk_reg_reg_0),
        .I1(mdio_clk_reg),
        .O(mdio_idle_i_2_n_0));
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
        .R(prmry_in));
  FDRE mdio_in_reg2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mdio_in_reg1),
        .Q(mdio_in_reg2),
        .R(prmry_in));
endmodule

(* ORIG_REF_NAME = "mux_onehot_f" *) 
module ntps_top_axi_ethernetlite_0_0_mux_onehot_f
   (D,
    \txNibbleCnt_pad_reg[8] ,
    \emac_tx_wr_data_d1_reg[0] ,
    \emac_tx_wr_data_d1_reg[0]_0 ,
    \emac_tx_wr_data_d1_reg[1] ,
    \emac_tx_wr_data_d1_reg[1]_0 ,
    \emac_tx_wr_data_d1_reg[2] ,
    \emac_tx_wr_data_d1_reg[2]_0 ,
    \emac_tx_wr_data_d1_reg[3] ,
    \emac_tx_wr_data_d1_reg[3]_0 ,
    Q);
  output [3:0]D;
  output \txNibbleCnt_pad_reg[8] ;
  input \emac_tx_wr_data_d1_reg[0] ;
  input \emac_tx_wr_data_d1_reg[0]_0 ;
  input \emac_tx_wr_data_d1_reg[1] ;
  input \emac_tx_wr_data_d1_reg[1]_0 ;
  input \emac_tx_wr_data_d1_reg[2] ;
  input \emac_tx_wr_data_d1_reg[2]_0 ;
  input \emac_tx_wr_data_d1_reg[3] ;
  input \emac_tx_wr_data_d1_reg[3]_0 ;
  input [11:0]Q;

  wire [3:0]D;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_5_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 ;
  wire [11:0]Q;
  wire cyout_1;
  wire \emac_tx_wr_data_d1_reg[0] ;
  wire \emac_tx_wr_data_d1_reg[0]_0 ;
  wire \emac_tx_wr_data_d1_reg[1] ;
  wire \emac_tx_wr_data_d1_reg[1]_0 ;
  wire \emac_tx_wr_data_d1_reg[2] ;
  wire \emac_tx_wr_data_d1_reg[2]_0 ;
  wire \emac_tx_wr_data_d1_reg[3] ;
  wire \emac_tx_wr_data_d1_reg[3]_0 ;
  wire \txNibbleCnt_pad_reg[8] ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[3],cyout_1}),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[0]_0 ,\emac_tx_wr_data_d1_reg[0] }));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2 
       (.I0(Q[3]),
        .I1(Q[7]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ),
        .I5(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_5_n_0 ),
        .O(\txNibbleCnt_pad_reg[8] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4 
       (.I0(Q[11]),
        .I1(Q[0]),
        .I2(Q[10]),
        .I3(Q[4]),
        .O(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_5 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[5]),
        .O(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_5_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[2],\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[1]_0 ,\emac_tx_wr_data_d1_reg[1] }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[1],\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[2]_0 ,\emac_tx_wr_data_d1_reg[2] }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED [3:2],D[0],\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED [3:2],1'b1,1'b1}),
        .O(\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED [3:2],\emac_tx_wr_data_d1_reg[3]_0 ,\emac_tx_wr_data_d1_reg[3] }));
endmodule

(* ORIG_REF_NAME = "ram16x4" *) 
module ntps_top_axi_ethernetlite_0_0_ram16x4
   (\emac_rx_rd_data_d1_reg[1] ,
    \emac_rx_rd_data_d1_reg[2] ,
    Q,
    s_axi_aclk,
    D,
    mac_addr_ram_we,
    mac_addr_ram_addr);
  output \emac_rx_rd_data_d1_reg[1] ;
  output \emac_rx_rd_data_d1_reg[2] ;
  input [3:0]Q;
  input s_axi_aclk;
  input [3:0]D;
  input mac_addr_ram_we;
  input [0:3]mac_addr_ram_addr;

  wire [3:0]D;
  wire [3:0]Q;
  wire \emac_rx_rd_data_d1_reg[1] ;
  wire \emac_rx_rd_data_d1_reg[2] ;
  wire [0:3]mac_addr_ram_addr;
  wire [0:3]mac_addr_ram_data;
  wire mac_addr_ram_we;
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
        .D(D[0]),
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
        .D(D[1]),
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
        .D(D[2]),
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
        .D(D[3]),
        .O(mac_addr_ram_data[0]),
        .WCLK(s_axi_aclk),
        .WE(mac_addr_ram_we));
  LUT4 #(
    .INIT(16'h9009)) 
    state17a_i_4
       (.I0(mac_addr_ram_data[2]),
        .I1(Q[1]),
        .I2(mac_addr_ram_data[3]),
        .I3(Q[0]),
        .O(\emac_rx_rd_data_d1_reg[2] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    state17a_i_5
       (.I0(mac_addr_ram_data[1]),
        .I1(Q[2]),
        .I2(mac_addr_ram_data[0]),
        .I3(Q[3]),
        .O(\emac_rx_rd_data_d1_reg[1] ));
endmodule

(* ORIG_REF_NAME = "receive" *) 
module ntps_top_axi_ethernetlite_0_0_receive
   (D,
    Q,
    wea,
    state17a,
    ena,
    rx_addr_en,
    \rxbuffer_addr_reg[9] ,
    \rxbuffer_addr_reg[9]_0 ,
    \rxbuffer_addr_reg[9]_1 ,
    state3a,
    state20a,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[0]_0 ,
    \Mac_addr_ram_addr_rd_reg[0] ,
    s_axi_aclk,
    SS,
    phy_rx_clk,
    din,
    s_axi_aresetn,
    \Mac_addr_ram_addr_rd[0]_i_5 ,
    \Mac_addr_ram_addr_rd[0]_i_5_0 ,
    rx_DPM_adr__0,
    rx_pong_ping_l,
    pong_rx_status,
    p_9_in,
    s_axi_wdata,
    ping_rx_status_reg,
    \RX_PONG_REG_GEN.pong_rx_status_reg );
  output [3:0]D;
  output [3:0]Q;
  output [0:0]wea;
  output [0:0]state17a;
  output ena;
  output rx_addr_en;
  output \rxbuffer_addr_reg[9] ;
  output \rxbuffer_addr_reg[9]_0 ;
  output \rxbuffer_addr_reg[9]_1 ;
  output state3a;
  output state20a;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[0]_0 ;
  output [3:0]\Mac_addr_ram_addr_rd_reg[0] ;
  input s_axi_aclk;
  input [0:0]SS;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aresetn;
  input \Mac_addr_ram_addr_rd[0]_i_5 ;
  input \Mac_addr_ram_addr_rd[0]_i_5_0 ;
  input [0:0]rx_DPM_adr__0;
  input rx_pong_ping_l;
  input pong_rx_status;
  input [0:0]p_9_in;
  input [0:0]s_axi_wdata;
  input ping_rx_status_reg;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;

  wire [3:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D6_out;
  wire D7_out;
  wire D_0;
  wire INST_CRCGENRX_n_10;
  wire INST_CRCGENRX_n_9;
  wire INST_RX_INTRFCE_n_10;
  wire INST_RX_INTRFCE_n_12;
  wire INST_RX_INTRFCE_n_13;
  wire INST_RX_INTRFCE_n_16;
  wire INST_RX_INTRFCE_n_17;
  wire INST_RX_INTRFCE_n_18;
  wire INST_RX_INTRFCE_n_19;
  wire INST_RX_INTRFCE_n_20;
  wire INST_RX_INTRFCE_n_21;
  wire INST_RX_INTRFCE_n_22;
  wire INST_RX_INTRFCE_n_23;
  wire INST_RX_INTRFCE_n_24;
  wire INST_RX_INTRFCE_n_25;
  wire INST_RX_INTRFCE_n_26;
  wire INST_RX_INTRFCE_n_27;
  wire INST_RX_INTRFCE_n_28;
  wire INST_RX_INTRFCE_n_38;
  wire INST_RX_INTRFCE_n_39;
  wire INST_RX_INTRFCE_n_40;
  wire INST_RX_INTRFCE_n_41;
  wire INST_RX_INTRFCE_n_9;
  wire INST_RX_STATE_n_10;
  wire INST_RX_STATE_n_11;
  wire INST_RX_STATE_n_12;
  wire INST_RX_STATE_n_13;
  wire INST_RX_STATE_n_14;
  wire INST_RX_STATE_n_15;
  wire INST_RX_STATE_n_16;
  wire INST_RX_STATE_n_17;
  wire INST_RX_STATE_n_18;
  wire INST_RX_STATE_n_19;
  wire INST_RX_STATE_n_20;
  wire INST_RX_STATE_n_21;
  wire INST_RX_STATE_n_30;
  wire INST_RX_STATE_n_36;
  wire INST_RX_STATE_n_8;
  wire INST_RX_STATE_n_9;
  wire \Mac_addr_ram_addr_rd[0]_i_5 ;
  wire \Mac_addr_ram_addr_rd[0]_i_5_0 ;
  wire [3:0]\Mac_addr_ram_addr_rd_reg[0] ;
  wire [3:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire crcokr1;
  wire [5:0]din;
  wire [4:5]emac_rx_rd_data_i;
  wire ena;
  wire fifo_empty_i;
  wire goto_readDestAdrNib1;
  wire p_10_in36_in;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in4_in;
  wire p_1_in7_in;
  wire p_4_in;
  wire p_65_in;
  wire p_6_in;
  wire p_7_in;
  wire [0:0]p_9_in;
  wire p_9_in32_in;
  wire [11:4]parallel_crc;
  wire phy_rx_clk;
  wire ping_rx_status_reg;
  wire pong_rx_status;
  wire rxBusFifoRdAck;
  wire rxComboCrcRst;
  wire rxCrcEn;
  wire rxCrcEn_d1;
  wire rxCrcRst;
  wire [0:0]rx_DPM_adr__0;
  wire rx_addr_en;
  wire rx_pong_ping_l;
  wire rx_start;
  wire \rxbuffer_addr_reg[9] ;
  wire \rxbuffer_addr_reg[9]_0 ;
  wire \rxbuffer_addr_reg[9]_1 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[0]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire [0:0]state17a;
  wire state20a;
  wire state3a;
  wire waitForSfd1;
  wire [0:0]wea;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  ntps_top_axi_ethernetlite_0_0_crcgenrx INST_CRCGENRX
       (.D({parallel_crc[11:10],parallel_crc[8:7],parallel_crc[5:4],p_65_in}),
        .D_0(D_0),
        .E(rxCrcEn_d1),
        .Q({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in,p_10_in36_in,p_9_in32_in,p_7_in,p_6_in,p_4_in,INST_CRCGENRX_n_9}),
        .SS(rxComboCrcRst),
        .\crc_local_reg[13]_0 (INST_RX_INTRFCE_n_38),
        .crcokdelay(INST_CRCGENRX_n_10),
        .crcokr1(crcokr1),
        .dout(D),
        .rxCrcEn(rxCrcEn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  ntps_top_axi_ethernetlite_0_0_rx_intrfce INST_RX_INTRFCE
       (.D({INST_RX_INTRFCE_n_16,INST_RX_INTRFCE_n_17,INST_RX_INTRFCE_n_18,INST_RX_INTRFCE_n_19,INST_RX_INTRFCE_n_20,INST_RX_INTRFCE_n_21,INST_RX_INTRFCE_n_22,INST_RX_INTRFCE_n_23,INST_RX_INTRFCE_n_24,INST_RX_INTRFCE_n_25,INST_RX_INTRFCE_n_26}),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] (INST_RX_INTRFCE_n_27),
        .\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to (SS),
        .Q({INST_RX_STATE_n_8,INST_RX_STATE_n_9,INST_RX_STATE_n_10,INST_RX_STATE_n_11,INST_RX_STATE_n_12,INST_RX_STATE_n_13,INST_RX_STATE_n_14,INST_RX_STATE_n_15,INST_RX_STATE_n_16,INST_RX_STATE_n_17,INST_RX_STATE_n_18,INST_RX_STATE_n_19,INST_RX_STATE_n_20}),
        .SR(INST_RX_INTRFCE_n_10),
        .SS(INST_RX_INTRFCE_n_40),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .\crc_local_reg[8] ({p_1_in7_in,p_1_in4_in,p_1_in1_in,p_1_in,p_10_in36_in,p_9_in32_in,p_7_in,p_6_in,p_4_in,INST_CRCGENRX_n_9}),
        .data_valid(rxBusFifoRdAck),
        .din(din),
        .dout({D,emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .empty(fifo_empty_i),
        .\gen_rd_b.doutb_reg_reg[0] (INST_RX_INTRFCE_n_41),
        .\gen_rd_b.doutb_reg_reg[1] (INST_RX_INTRFCE_n_12),
        .\gen_rd_b.doutb_reg_reg[1]_0 (INST_RX_INTRFCE_n_28),
        .\gen_rd_b.doutb_reg_reg[2] (INST_RX_INTRFCE_n_9),
        .\gen_rd_b.doutb_reg_reg[2]_0 (INST_RX_INTRFCE_n_38),
        .\gen_rd_b.doutb_reg_reg[4] (INST_RX_INTRFCE_n_13),
        .\gen_rd_b.doutb_reg_reg[4]_0 ({parallel_crc[11:10],parallel_crc[8:7],parallel_crc[5:4],p_65_in}),
        .\gen_rd_b.doutb_reg_reg[5] (INST_RX_INTRFCE_n_39),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_9_in(p_9_in),
        .phy_rx_clk(phy_rx_clk),
        .pong_rx_status(pong_rx_status),
        .rd_en(INST_RX_STATE_n_36),
        .rxCrcRst(rxCrcRst),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state0a(INST_RX_STATE_n_30),
        .state17a(INST_RX_STATE_n_21),
        .waitForSfd1(waitForSfd1));
  ntps_top_axi_ethernetlite_0_0_rx_statemachine INST_RX_STATE
       (.D({INST_RX_INTRFCE_n_16,INST_RX_INTRFCE_n_17,INST_RX_INTRFCE_n_18,INST_RX_INTRFCE_n_19,INST_RX_INTRFCE_n_20,INST_RX_INTRFCE_n_21,INST_RX_INTRFCE_n_22,INST_RX_INTRFCE_n_23,INST_RX_INTRFCE_n_24,INST_RX_INTRFCE_n_25,INST_RX_INTRFCE_n_26}),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .D_0(D_0),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 (INST_RX_INTRFCE_n_27),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 (INST_RX_INTRFCE_n_40),
        .\Mac_addr_ram_addr_rd[0]_i_5_0 (\Mac_addr_ram_addr_rd[0]_i_5 ),
        .\Mac_addr_ram_addr_rd[0]_i_5_1 (\Mac_addr_ram_addr_rd[0]_i_5_0 ),
        .\Mac_addr_ram_addr_rd_reg[0]_0 (\Mac_addr_ram_addr_rd_reg[0] ),
        .\Mac_addr_ram_addr_rd_reg[0]_1 (INST_RX_INTRFCE_n_28),
        .\Mac_addr_ram_addr_rd_reg[0]_2 (INST_RX_INTRFCE_n_41),
        .Q({INST_RX_STATE_n_8,INST_RX_STATE_n_9,INST_RX_STATE_n_10,INST_RX_STATE_n_11,INST_RX_STATE_n_12,INST_RX_STATE_n_13,INST_RX_STATE_n_14,INST_RX_STATE_n_15,INST_RX_STATE_n_16,INST_RX_STATE_n_17,INST_RX_STATE_n_18,INST_RX_STATE_n_19,INST_RX_STATE_n_20}),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .SR(INST_RX_INTRFCE_n_10),
        .SS(SS),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .busFifoData_is_5_d1_reg_0(INST_RX_INTRFCE_n_39),
        .checkingBroadcastAdr_reg_reg_0(Q),
        .crcokdelay_0(INST_CRCGENRX_n_10),
        .crcokr1(crcokr1),
        .data_valid(rxBusFifoRdAck),
        .dout({emac_rx_rd_data_i[4],emac_rx_rd_data_i[5]}),
        .empty(fifo_empty_i),
        .ena(ena),
        .\gdvld.data_valid_std_reg (rx_addr_en),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_9_in(p_9_in),
        .ping_rx_status_reg(ping_rx_status_reg),
        .pong_rx_status(pong_rx_status),
        .preamble_0(INST_RX_INTRFCE_n_13),
        .rd_en(INST_RX_STATE_n_36),
        .rxCrcEn(rxCrcEn),
        .rxCrcRst(rxCrcRst),
        .rx_DPM_adr__0(rx_DPM_adr__0),
        .rx_pong_ping_l(rx_pong_ping_l),
        .rx_start(rx_start),
        .\rxbuffer_addr_reg[9] (\rxbuffer_addr_reg[9] ),
        .\rxbuffer_addr_reg[9]_0 (\rxbuffer_addr_reg[9]_0 ),
        .\rxbuffer_addr_reg[9]_1 (\rxbuffer_addr_reg[9]_1 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[0]_0 (\s_axi_wdata[0]_0 ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state0a_0(INST_RX_STATE_n_21),
        .state0a_1(INST_RX_STATE_n_30),
        .state17a_0(state17a),
        .state20a_0(state20a),
        .state22a_0(rxComboCrcRst),
        .state2a_0(INST_RX_INTRFCE_n_12),
        .state2a_1(INST_RX_INTRFCE_n_9),
        .state3a_0(state3a),
        .waitForSfd1(waitForSfd1),
        .wea(wea));
  FDRE \emac_rx_rd_data_d1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
  FDRE \emac_rx_rd_data_d1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE rxCrcEn_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCrcEn),
        .Q(rxCrcEn_d1),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "rx_intrfce" *) 
module ntps_top_axi_ethernetlite_0_0_rx_intrfce
   (dout,
    empty,
    data_valid,
    D13_out,
    \gen_rd_b.doutb_reg_reg[2] ,
    SR,
    D10_out,
    \gen_rd_b.doutb_reg_reg[1] ,
    \gen_rd_b.doutb_reg_reg[4] ,
    D6_out,
    goto_readDestAdrNib1,
    D,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ,
    \gen_rd_b.doutb_reg_reg[1]_0 ,
    D11_out,
    D7_out,
    \gen_rd_b.doutb_reg_reg[4]_0 ,
    \gen_rd_b.doutb_reg_reg[2]_0 ,
    \gen_rd_b.doutb_reg_reg[5] ,
    SS,
    \gen_rd_b.doutb_reg_reg[0] ,
    phy_rx_clk,
    din,
    s_axi_aclk,
    rd_en,
    sfd1CheckBusFifoEmpty,
    s_axi_aresetn,
    startReadDestAdrNib,
    waitForSfd1,
    rx_start,
    state0a,
    busFifoData_is_5_d1,
    Q,
    startReadDataNib,
    state17a,
    pong_rx_status,
    p_9_in,
    rxCrcRst,
    \crc_local_reg[8] ,
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to );
  output [5:0]dout;
  output empty;
  output data_valid;
  output D13_out;
  output \gen_rd_b.doutb_reg_reg[2] ;
  output [0:0]SR;
  output D10_out;
  output \gen_rd_b.doutb_reg_reg[1] ;
  output \gen_rd_b.doutb_reg_reg[4] ;
  output D6_out;
  output goto_readDestAdrNib1;
  output [10:0]D;
  output \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ;
  output \gen_rd_b.doutb_reg_reg[1]_0 ;
  output D11_out;
  output D7_out;
  output [6:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  output \gen_rd_b.doutb_reg_reg[2]_0 ;
  output \gen_rd_b.doutb_reg_reg[5] ;
  output [0:0]SS;
  output \gen_rd_b.doutb_reg_reg[0] ;
  input phy_rx_clk;
  input [5:0]din;
  input s_axi_aclk;
  input rd_en;
  input sfd1CheckBusFifoEmpty;
  input s_axi_aresetn;
  input startReadDestAdrNib;
  input waitForSfd1;
  input rx_start;
  input state0a;
  input busFifoData_is_5_d1;
  input [12:0]Q;
  input startReadDataNib;
  input state17a;
  input pong_rx_status;
  input [0:0]p_9_in;
  input rxCrcRst;
  input [9:0]\crc_local_reg[8] ;
  input [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;

  wire [10:0]D;
  wire D10_out;
  wire D11_out;
  wire D13_out;
  wire D6_out;
  wire D7_out;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ;
  wire [0:0]\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire [9:0]\crc_local_reg[8] ;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire \gen_rd_b.doutb_reg_reg[0] ;
  wire \gen_rd_b.doutb_reg_reg[1] ;
  wire \gen_rd_b.doutb_reg_reg[1]_0 ;
  wire \gen_rd_b.doutb_reg_reg[2] ;
  wire \gen_rd_b.doutb_reg_reg[2]_0 ;
  wire \gen_rd_b.doutb_reg_reg[4] ;
  wire [6:0]\gen_rd_b.doutb_reg_reg[4]_0 ;
  wire \gen_rd_b.doutb_reg_reg[5] ;
  wire goto_readDestAdrNib1;
  wire [0:0]p_9_in;
  wire phy_rx_clk;
  wire pong_rx_status;
  wire rd_en;
  wire rst_s;
  wire rxCrcRst;
  wire rx_start;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state0a;
  wire state17a;
  wire waitForSfd1;

  ntps_top_axi_ethernetlite_0_0_cdc_sync_10 CDC_FIFO_RST
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to ),
        .phy_rx_clk(phy_rx_clk),
        .scndry_out(rst_s));
  ntps_top_axi_ethernetlite_0_0_async_fifo_fg__xdcDup__1 I_RX_FIFO
       (.D(D),
        .D10_out(D10_out),
        .D11_out(D11_out),
        .D13_out(D13_out),
        .D6_out(D6_out),
        .D7_out(D7_out),
        .\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] (\FSM_onehot_rdDestAddrNib_D_t_q_reg[0] ),
        .Q(Q),
        .SR(SR),
        .SS(SS),
        .busFifoData_is_5_d1(busFifoData_is_5_d1),
        .\crc_local_reg[8] (\crc_local_reg[8] ),
        .data_valid(data_valid),
        .din(din),
        .dout(dout),
        .empty(empty),
        .\gen_rd_b.doutb_reg_reg[0] (\gen_rd_b.doutb_reg_reg[0] ),
        .\gen_rd_b.doutb_reg_reg[1] (\gen_rd_b.doutb_reg_reg[1] ),
        .\gen_rd_b.doutb_reg_reg[1]_0 (\gen_rd_b.doutb_reg_reg[1]_0 ),
        .\gen_rd_b.doutb_reg_reg[2] (\gen_rd_b.doutb_reg_reg[2] ),
        .\gen_rd_b.doutb_reg_reg[2]_0 (\gen_rd_b.doutb_reg_reg[2]_0 ),
        .\gen_rd_b.doutb_reg_reg[4] (\gen_rd_b.doutb_reg_reg[4] ),
        .\gen_rd_b.doutb_reg_reg[4]_0 (\gen_rd_b.doutb_reg_reg[4]_0 ),
        .\gen_rd_b.doutb_reg_reg[5] (\gen_rd_b.doutb_reg_reg[5] ),
        .goto_readDestAdrNib1(goto_readDestAdrNib1),
        .p_9_in(p_9_in),
        .phy_rx_clk(phy_rx_clk),
        .pong_rx_status(pong_rx_status),
        .rd_en(rd_en),
        .rxCrcRst(rxCrcRst),
        .rx_start(rx_start),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .scndry_out(rst_s),
        .sfd1CheckBusFifoEmpty(sfd1CheckBusFifoEmpty),
        .startReadDataNib(startReadDataNib),
        .startReadDestAdrNib(startReadDestAdrNib),
        .state0a(state0a),
        .state17a(state17a),
        .waitForSfd1(waitForSfd1));
endmodule

(* ORIG_REF_NAME = "rx_statemachine" *) 
module ntps_top_axi_ethernetlite_0_0_rx_statemachine
   (crcokr1,
    rxCrcRst,
    waitForSfd1,
    sfd1CheckBusFifoEmpty,
    rx_start,
    startReadDestAdrNib,
    startReadDataNib,
    busFifoData_is_5_d1,
    Q,
    state0a_0,
    rxCrcEn,
    wea,
    state17a_0,
    ena,
    \gdvld.data_valid_std_reg ,
    \rxbuffer_addr_reg[9] ,
    \rxbuffer_addr_reg[9]_0 ,
    \rxbuffer_addr_reg[9]_1 ,
    state0a_1,
    state3a_0,
    state20a_0,
    state22a_0,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[0]_0 ,
    rd_en,
    \Mac_addr_ram_addr_rd_reg[0]_0 ,
    crcokdelay_0,
    D_0,
    s_axi_aclk,
    SS,
    D10_out,
    D7_out,
    D13_out,
    D6_out,
    D11_out,
    preamble_0,
    busFifoData_is_5_d1_reg_0,
    state2a_0,
    dout,
    state2a_1,
    \Mac_addr_ram_addr_rd_reg[0]_1 ,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ,
    \Mac_addr_ram_addr_rd_reg[0]_2 ,
    data_valid,
    goto_readDestAdrNib1,
    empty,
    \Mac_addr_ram_addr_rd[0]_i_5_0 ,
    \Mac_addr_ram_addr_rd[0]_i_5_1 ,
    checkingBroadcastAdr_reg_reg_0,
    rx_DPM_adr__0,
    s_axi_aresetn,
    rx_pong_ping_l,
    s_axi_wdata,
    ping_rx_status_reg,
    p_9_in,
    \RX_PONG_REG_GEN.pong_rx_status_reg ,
    pong_rx_status,
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ,
    D,
    SR);
  output crcokr1;
  output rxCrcRst;
  output waitForSfd1;
  output sfd1CheckBusFifoEmpty;
  output rx_start;
  output startReadDestAdrNib;
  output startReadDataNib;
  output busFifoData_is_5_d1;
  output [12:0]Q;
  output state0a_0;
  output rxCrcEn;
  output [0:0]wea;
  output [0:0]state17a_0;
  output ena;
  output \gdvld.data_valid_std_reg ;
  output \rxbuffer_addr_reg[9] ;
  output \rxbuffer_addr_reg[9]_0 ;
  output \rxbuffer_addr_reg[9]_1 ;
  output state0a_1;
  output state3a_0;
  output state20a_0;
  output [0:0]state22a_0;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[0]_0 ;
  output rd_en;
  output [3:0]\Mac_addr_ram_addr_rd_reg[0]_0 ;
  input crcokdelay_0;
  input D_0;
  input s_axi_aclk;
  input [0:0]SS;
  input D10_out;
  input D7_out;
  input D13_out;
  input D6_out;
  input D11_out;
  input preamble_0;
  input busFifoData_is_5_d1_reg_0;
  input state2a_0;
  input [1:0]dout;
  input state2a_1;
  input \Mac_addr_ram_addr_rd_reg[0]_1 ;
  input \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  input \Mac_addr_ram_addr_rd_reg[0]_2 ;
  input data_valid;
  input goto_readDestAdrNib1;
  input empty;
  input \Mac_addr_ram_addr_rd[0]_i_5_0 ;
  input \Mac_addr_ram_addr_rd[0]_i_5_1 ;
  input [3:0]checkingBroadcastAdr_reg_reg_0;
  input [0:0]rx_DPM_adr__0;
  input s_axi_aresetn;
  input rx_pong_ping_l;
  input [0:0]s_axi_wdata;
  input ping_rx_status_reg;
  input [0:0]p_9_in;
  input \RX_PONG_REG_GEN.pong_rx_status_reg ;
  input pong_rx_status;
  input [0:0]\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ;
  input [10:0]D;
  input [0:0]SR;

  wire [10:0]D;
  wire D10_out;
  wire D11_out;
  wire D12_out;
  wire D13_out;
  wire D18_out;
  wire D5_out;
  wire D6_out;
  wire D7_out;
  wire D_0;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ;
  wire \FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ;
  wire [0:0]\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ;
  wire \Mac_addr_ram_addr_rd[0]_i_10_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_11_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_12_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_13_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_15_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_16_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_17_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_18_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_19_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_20_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_21_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_22_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_23_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_4_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_5_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_5_1 ;
  wire \Mac_addr_ram_addr_rd[0]_i_5_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_6_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_7_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_8_n_0 ;
  wire \Mac_addr_ram_addr_rd[0]_i_9_n_0 ;
  wire [3:0]\Mac_addr_ram_addr_rd_reg[0]_0 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_1 ;
  wire \Mac_addr_ram_addr_rd_reg[0]_2 ;
  wire [12:0]Q;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire busFifoData_is_5_d1;
  wire busFifoData_is_5_d1_reg_0;
  wire checkingBroadcastAdr_reg;
  wire checkingBroadcastAdr_reg_i_1_n_0;
  wire checkingBroadcastAdr_reg_i_2_n_0;
  wire [3:0]checkingBroadcastAdr_reg_reg_0;
  wire crcCheck;
  wire crcokdelay_0;
  wire crcokr1;
  wire data_valid;
  wire [1:0]dout;
  wire empty;
  wire ena;
  wire \gdvld.data_valid_std_reg ;
  wire goto_readDestAdrNib1;
  wire [0:3]mac_addr_ram_addr_rd_D;
  wire [0:0]p_9_in;
  wire ping_rx_status_reg;
  wire pkt_length_cnt0;
  wire \pkt_length_cnt[0]_i_1_n_0 ;
  wire \pkt_length_cnt[1]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_1_n_0 ;
  wire \pkt_length_cnt[2]_i_2_n_0 ;
  wire \pkt_length_cnt[3]_i_1_n_0 ;
  wire \pkt_length_cnt[3]_i_2_n_0 ;
  wire \pkt_length_cnt[4]_i_1_n_0 ;
  wire \pkt_length_cnt[4]_i_2_n_0 ;
  wire \pkt_length_cnt[5]_i_1_n_0 ;
  wire \pkt_length_cnt[6]_i_2_n_0 ;
  wire \pkt_length_cnt[6]_i_3_n_0 ;
  wire \pkt_length_cnt[6]_i_4_n_0 ;
  wire \pkt_length_cnt_reg_n_0_[0] ;
  wire \pkt_length_cnt_reg_n_0_[1] ;
  wire \pkt_length_cnt_reg_n_0_[2] ;
  wire \pkt_length_cnt_reg_n_0_[3] ;
  wire \pkt_length_cnt_reg_n_0_[4] ;
  wire \pkt_length_cnt_reg_n_0_[5] ;
  wire \pkt_length_cnt_reg_n_0_[6] ;
  wire pong_rx_status;
  wire preamble_0;
  wire preamble_error_reg;
  wire rd_en;
  wire rxAbortRst;
  wire rxCrcEn;
  wire rxCrcRst;
  wire rxDone;
  wire [0:0]rx_DPM_adr__0;
  wire rx_pong_ping_l;
  wire rx_start;
  wire \rxbuffer_addr_reg[9] ;
  wire \rxbuffer_addr_reg[9]_0 ;
  wire \rxbuffer_addr_reg[9]_1 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[0]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire sfd1CheckBusFifoEmpty;
  wire startReadDataNib;
  wire startReadDestAdrNib;
  wire state0a_0;
  wire state0a_1;
  wire [0:0]state17a_0;
  wire state20a_0;
  wire [0:0]state22a_0;
  wire state22a_i_1_n_0;
  wire state22a_i_2_n_0;
  wire state2a_0;
  wire state2a_1;
  wire state3a_0;
  wire waitForSfd1;
  wire [0:0]wea;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'h888F888FFFFF888F)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I1(Q[12]),
        .I2(state22a_i_2_n_0),
        .I3(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(goto_readDestAdrNib1),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2 
       (.I0(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ),
        .I1(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[11]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5 
       (.I0(Q[2]),
        .I1(Q[10]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    \FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1 
       (.I0(Q[0]),
        .I1(data_valid),
        .I2(startReadDestAdrNib),
        .I3(dout[0]),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I5(Q[1]),
        .O(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[10]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[11]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[12]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_rdDestAddrNib_D_t_q[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[2]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[3]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[4]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[5]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[6]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[7]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[8]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000000001000,iSTATE0:0000000010000,iSTATE1:0000000000100,iSTATE2:0100000000000,iSTATE3:1000000000000,iSTATE4:0010000000000,iSTATE5:0000000000010,iSTATE6:0000000000001,iSTATE7:0001000000000,iSTATE8:0000010000000,iSTATE9:0000100000000,iSTATE10:0000001000000,iSTATE11:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rdDestAddrNib_D_t_q_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[9]),
        .R(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A000800)) 
    \Mac_addr_ram_addr_rd[0]_i_10 
       (.I0(Q[12]),
        .I1(state0a_0),
        .I2(data_valid),
        .I3(dout[1]),
        .I4(empty),
        .I5(Q[0]),
        .O(\Mac_addr_ram_addr_rd[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB0B0B0B0B0)) 
    \Mac_addr_ram_addr_rd[0]_i_11 
       (.I0(Q[6]),
        .I1(\Mac_addr_ram_addr_rd[0]_i_20_n_0 ),
        .I2(Q[0]),
        .I3(empty),
        .I4(state0a_0),
        .I5(dout[1]),
        .O(\Mac_addr_ram_addr_rd[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A000800)) 
    \Mac_addr_ram_addr_rd[0]_i_12 
       (.I0(Q[7]),
        .I1(state0a_0),
        .I2(data_valid),
        .I3(dout[1]),
        .I4(empty),
        .I5(Q[0]),
        .O(\Mac_addr_ram_addr_rd[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h444F444000000000)) 
    \Mac_addr_ram_addr_rd[0]_i_13 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_5_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_5_1 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_21_n_0 ),
        .I3(rxCrcRst),
        .I4(checkingBroadcastAdr_reg_i_2_n_0),
        .I5(data_valid),
        .O(\Mac_addr_ram_addr_rd[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \Mac_addr_ram_addr_rd[0]_i_15 
       (.I0(Q[1]),
        .I1(state0a_0),
        .I2(data_valid),
        .I3(Q[0]),
        .I4(dout[1]),
        .O(\Mac_addr_ram_addr_rd[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \Mac_addr_ram_addr_rd[0]_i_16 
       (.I0(Q[9]),
        .I1(state0a_0),
        .I2(data_valid),
        .I3(Q[0]),
        .I4(dout[1]),
        .O(\Mac_addr_ram_addr_rd[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \Mac_addr_ram_addr_rd[0]_i_17 
       (.I0(Q[5]),
        .I1(state0a_0),
        .I2(data_valid),
        .I3(Q[0]),
        .I4(dout[1]),
        .O(\Mac_addr_ram_addr_rd[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCCC055554440)) 
    \Mac_addr_ram_addr_rd[0]_i_18 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_22_n_0 ),
        .I1(dout[1]),
        .I2(state0a_0),
        .I3(empty),
        .I4(Q[0]),
        .I5(Q[6]),
        .O(\Mac_addr_ram_addr_rd[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000CFCC00008A88)) 
    \Mac_addr_ram_addr_rd[0]_i_19 
       (.I0(Q[11]),
        .I1(Q[0]),
        .I2(\Mac_addr_ram_addr_rd[0]_i_23_n_0 ),
        .I3(dout[1]),
        .I4(\Mac_addr_ram_addr_rd[0]_i_13_n_0 ),
        .I5(Q[3]),
        .O(\Mac_addr_ram_addr_rd[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888828)) 
    \Mac_addr_ram_addr_rd[0]_i_2 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .I4(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_8_n_0 ),
        .O(mac_addr_ram_addr_rd_D[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_rd[0]_i_20 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\Mac_addr_ram_addr_rd[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \Mac_addr_ram_addr_rd[0]_i_21 
       (.I0(checkingBroadcastAdr_reg_reg_0[2]),
        .I1(checkingBroadcastAdr_reg_reg_0[1]),
        .I2(checkingBroadcastAdr_reg_reg_0[0]),
        .I3(checkingBroadcastAdr_reg_reg_0[3]),
        .I4(Q[1]),
        .I5(checkingBroadcastAdr_reg),
        .O(\Mac_addr_ram_addr_rd[0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_rd[0]_i_22 
       (.I0(Q[10]),
        .I1(Q[2]),
        .O(\Mac_addr_ram_addr_rd[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h4545450045454555)) 
    \Mac_addr_ram_addr_rd[0]_i_23 
       (.I0(empty),
        .I1(\Mac_addr_ram_addr_rd[0]_i_5_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_1 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_21_n_0 ),
        .I4(rxCrcRst),
        .I5(checkingBroadcastAdr_reg_i_2_n_0),
        .O(\Mac_addr_ram_addr_rd[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Mac_addr_ram_addr_rd[0]_i_3 
       (.I0(\Mac_addr_ram_addr_rd_reg[0]_1 ),
        .I1(Q[7]),
        .I2(state22a_i_2_n_0),
        .I3(\Mac_addr_ram_addr_rd[0]_i_9_n_0 ),
        .I4(Q[12]),
        .I5(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005051)) 
    \Mac_addr_ram_addr_rd[0]_i_4 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_10_n_0 ),
        .I1(Q[11]),
        .I2(\Mac_addr_ram_addr_rd_reg[0]_1 ),
        .I3(Q[3]),
        .I4(\Mac_addr_ram_addr_rd[0]_i_11_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_12_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F3F5F5F5F5F)) 
    \Mac_addr_ram_addr_rd[0]_i_5 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(state22a_i_2_n_0),
        .I3(Q[2]),
        .I4(Q[10]),
        .I5(\Mac_addr_ram_addr_rd[0]_i_13_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C0CFFAE)) 
    \Mac_addr_ram_addr_rd[0]_i_6 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\Mac_addr_ram_addr_rd_reg[0]_1 ),
        .I3(Q[1]),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I5(\Mac_addr_ram_addr_rd_reg[0]_2 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2222FFFF2222FFF2)) 
    \Mac_addr_ram_addr_rd[0]_i_7 
       (.I0(Q[6]),
        .I1(\Mac_addr_ram_addr_rd_reg[0]_1 ),
        .I2(Q[7]),
        .I3(Q[3]),
        .I4(\FSM_onehot_rdDestAddrNib_D_t_q_reg[1]_0 ),
        .I5(Q[11]),
        .O(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Mac_addr_ram_addr_rd[0]_i_8 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_12_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_15_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_16_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_17_n_0 ),
        .I4(\Mac_addr_ram_addr_rd[0]_i_18_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_19_n_0 ),
        .O(\Mac_addr_ram_addr_rd[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Mac_addr_ram_addr_rd[0]_i_9 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\Mac_addr_ram_addr_rd[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1111111811111111)) 
    \Mac_addr_ram_addr_rd[1]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_8_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ),
        .I4(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .O(mac_addr_ram_addr_rd_D[1]));
  LUT6 #(
    .INIT(64'hBBBBBB0B000000D0)) 
    \Mac_addr_ram_addr_rd[2]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .I4(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_8_n_0 ),
        .O(mac_addr_ram_addr_rd_D[2]));
  LUT6 #(
    .INIT(64'h000000BD00000000)) 
    \Mac_addr_ram_addr_rd[3]_i_1 
       (.I0(\Mac_addr_ram_addr_rd[0]_i_4_n_0 ),
        .I1(\Mac_addr_ram_addr_rd[0]_i_3_n_0 ),
        .I2(\Mac_addr_ram_addr_rd[0]_i_8_n_0 ),
        .I3(\Mac_addr_ram_addr_rd[0]_i_7_n_0 ),
        .I4(\Mac_addr_ram_addr_rd[0]_i_6_n_0 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_5_n_0 ),
        .O(mac_addr_ram_addr_rd_D[3]));
  FDRE \Mac_addr_ram_addr_rd_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[0]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [3]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[1]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [2]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[2]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [1]),
        .R(SR));
  FDRE \Mac_addr_ram_addr_rd_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_addr_ram_addr_rd_D[3]),
        .Q(\Mac_addr_ram_addr_rd_reg[0]_0 [0]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    RX_DONE_D1_I_i_1
       (.I0(\pkt_length_cnt[4]_i_2_n_0 ),
        .I1(rxDone),
        .I2(\pkt_length_cnt_reg_n_0_[4] ),
        .I3(\pkt_length_cnt_reg_n_0_[6] ),
        .I4(\pkt_length_cnt_reg_n_0_[5] ),
        .O(state20a_0));
  LUT5 #(
    .INIT(32'hAAFFAAC0)) 
    \RX_PONG_REG_GEN.pong_rx_status_i_1 
       (.I0(s_axi_wdata),
        .I1(rx_pong_ping_l),
        .I2(state20a_0),
        .I3(\RX_PONG_REG_GEN.pong_rx_status_reg ),
        .I4(pong_rx_status),
        .O(\s_axi_wdata[0]_0 ));
  FDRE busFifoData_is_5_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(busFifoData_is_5_d1_reg_0),
        .Q(busFifoData_is_5_d1),
        .R(SS));
  LUT4 #(
    .INIT(16'h5444)) 
    checkingBroadcastAdr_reg_i_1
       (.I0(rxCrcRst),
        .I1(checkingBroadcastAdr_reg),
        .I2(Q[1]),
        .I3(checkingBroadcastAdr_reg_i_2_n_0),
        .O(checkingBroadcastAdr_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    checkingBroadcastAdr_reg_i_2
       (.I0(checkingBroadcastAdr_reg_reg_0[2]),
        .I1(checkingBroadcastAdr_reg_reg_0[1]),
        .I2(checkingBroadcastAdr_reg_reg_0[0]),
        .I3(checkingBroadcastAdr_reg_reg_0[3]),
        .O(checkingBroadcastAdr_reg_i_2_n_0));
  FDRE checkingBroadcastAdr_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(checkingBroadcastAdr_reg_i_1_n_0),
        .Q(checkingBroadcastAdr_reg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \crc_local[31]_i_1 
       (.I0(rxAbortRst),
        .I1(s_axi_aresetn),
        .I2(rxCrcRst),
        .O(state22a_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    crcokdelay
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(crcokr1),
        .R(crcokdelay_0));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    ping_rx_status_i_1
       (.I0(s_axi_wdata),
        .I1(ping_rx_status_reg),
        .I2(rx_pong_ping_l),
        .I3(state20a_0),
        .I4(p_9_in),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \pkt_length_cnt[0]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[0] ),
        .I1(\pkt_length_cnt[2]_i_2_n_0 ),
        .I2(dout[0]),
        .I3(startReadDestAdrNib),
        .O(\pkt_length_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h90FF9090)) 
    \pkt_length_cnt[1]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[1] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt[2]_i_2_n_0 ),
        .I3(dout[0]),
        .I4(startReadDestAdrNib),
        .O(\pkt_length_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA900)) 
    \pkt_length_cnt[2]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[2] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt[2]_i_2_n_0 ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pkt_length_cnt[2]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[4] ),
        .I1(\pkt_length_cnt_reg_n_0_[6] ),
        .I2(\pkt_length_cnt_reg_n_0_[5] ),
        .I3(\pkt_length_cnt_reg_n_0_[3] ),
        .I4(\pkt_length_cnt_reg_n_0_[1] ),
        .I5(\pkt_length_cnt_reg_n_0_[2] ),
        .O(\pkt_length_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA9AAA8)) 
    \pkt_length_cnt[3]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[3] ),
        .I1(\pkt_length_cnt_reg_n_0_[2] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[0] ),
        .I4(\pkt_length_cnt[3]_i_2_n_0 ),
        .I5(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pkt_length_cnt[3]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[4] ),
        .I1(\pkt_length_cnt_reg_n_0_[6] ),
        .I2(\pkt_length_cnt_reg_n_0_[5] ),
        .O(\pkt_length_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF00E)) 
    \pkt_length_cnt[4]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[6] ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt[4]_i_2_n_0 ),
        .I3(\pkt_length_cnt_reg_n_0_[4] ),
        .I4(goto_readDestAdrNib1),
        .O(\pkt_length_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pkt_length_cnt[4]_i_2 
       (.I0(\pkt_length_cnt_reg_n_0_[3] ),
        .I1(\pkt_length_cnt_reg_n_0_[2] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[0] ),
        .O(\pkt_length_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h2CFF2C2C)) 
    \pkt_length_cnt[5]_i_1 
       (.I0(\pkt_length_cnt_reg_n_0_[6] ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt[6]_i_4_n_0 ),
        .I3(dout[0]),
        .I4(startReadDestAdrNib),
        .O(\pkt_length_cnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pkt_length_cnt[6]_i_1 
       (.I0(preamble_error_reg),
        .I1(s_axi_aresetn),
        .O(pkt_length_cnt0));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    \pkt_length_cnt[6]_i_2 
       (.I0(Q[0]),
        .I1(startReadDataNib),
        .I2(dout[1]),
        .I3(startReadDestAdrNib),
        .I4(data_valid),
        .O(\pkt_length_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \pkt_length_cnt[6]_i_3 
       (.I0(\pkt_length_cnt[6]_i_4_n_0 ),
        .I1(\pkt_length_cnt_reg_n_0_[5] ),
        .I2(\pkt_length_cnt_reg_n_0_[6] ),
        .I3(dout[0]),
        .I4(startReadDestAdrNib),
        .O(\pkt_length_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \pkt_length_cnt[6]_i_4 
       (.I0(\pkt_length_cnt_reg_n_0_[4] ),
        .I1(\pkt_length_cnt_reg_n_0_[0] ),
        .I2(\pkt_length_cnt_reg_n_0_[1] ),
        .I3(\pkt_length_cnt_reg_n_0_[2] ),
        .I4(\pkt_length_cnt_reg_n_0_[3] ),
        .O(\pkt_length_cnt[6]_i_4_n_0 ));
  FDRE \pkt_length_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[0]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[0] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[1]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[1] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[2]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[2] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[3]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[3] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[4]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[4] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[5]_i_1_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[5] ),
        .R(pkt_length_cnt0));
  FDRE \pkt_length_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pkt_length_cnt[6]_i_2_n_0 ),
        .D(\pkt_length_cnt[6]_i_3_n_0 ),
        .Q(\pkt_length_cnt_reg_n_0_[6] ),
        .R(pkt_length_cnt0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    preamble
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(preamble_0),
        .Q(preamble_error_reg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hAAAA80AA)) 
    rxCrcEn_d1_i_1
       (.I0(data_valid),
        .I1(dout[1]),
        .I2(startReadDataNib),
        .I3(Q[0]),
        .I4(startReadDestAdrNib),
        .O(rxCrcEn));
  LUT2 #(
    .INIT(4'hB)) 
    \rxbuffer_addr[11]_i_1 
       (.I0(rx_start),
        .I1(s_axi_aresetn),
        .O(state3a_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \rxbuffer_addr[11]_i_2 
       (.I0(data_valid),
        .I1(startReadDataNib),
        .I2(Q[0]),
        .I3(startReadDestAdrNib),
        .O(\gdvld.data_valid_std_reg ));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    state0a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D10_out),
        .Q(rxCrcRst),
        .S(SS));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    state0a_i_3
       (.I0(D7_out),
        .I1(rxCrcRst),
        .I2(rxAbortRst),
        .I3(rxDone),
        .O(state0a_1));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state17a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D11_out),
        .Q(startReadDataNib),
        .R(SS));
  LUT6 #(
    .INIT(64'h54005400FFBB5400)) 
    state17a_i_3
       (.I0(rxCrcRst),
        .I1(checkingBroadcastAdr_reg),
        .I2(Q[1]),
        .I3(checkingBroadcastAdr_reg_i_2_n_0),
        .I4(\Mac_addr_ram_addr_rd[0]_i_5_1 ),
        .I5(\Mac_addr_ram_addr_rd[0]_i_5_0 ),
        .O(state0a_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state18a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D12_out),
        .Q(crcCheck),
        .R(SS));
  LUT5 #(
    .INIT(32'hDCDCDCD0)) 
    state18a_i_1
       (.I0(dout[1]),
        .I1(dout[0]),
        .I2(startReadDataNib),
        .I3(startReadDestAdrNib),
        .I4(sfd1CheckBusFifoEmpty),
        .O(D12_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state1a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D7_out),
        .Q(waitForSfd1),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state20a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D18_out),
        .Q(rxDone),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    state20a_i_1
       (.I0(crcokr1),
        .I1(crcCheck),
        .O(D18_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state22a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(state22a_i_1_n_0),
        .Q(rxAbortRst),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    state22a_i_1
       (.I0(state22a_i_2_n_0),
        .I1(crcCheck),
        .I2(crcokr1),
        .I3(preamble_error_reg),
        .O(state22a_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEAA)) 
    state22a_i_2
       (.I0(Q[0]),
        .I1(empty),
        .I2(state0a_0),
        .I3(dout[1]),
        .O(state22a_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state2a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D5_out),
        .Q(sfd1CheckBusFifoEmpty),
        .R(SS));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0FFE0E0)) 
    state2a_i_1
       (.I0(rx_start),
        .I1(waitForSfd1),
        .I2(state2a_0),
        .I3(dout[0]),
        .I4(sfd1CheckBusFifoEmpty),
        .I5(state2a_1),
        .O(D5_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state3a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D13_out),
        .Q(rx_start),
        .R(SS));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    state4a
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D6_out),
        .Q(startReadDestAdrNib),
        .R(SS));
  LUT5 #(
    .INIT(32'h55545555)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_2__0 
       (.I0(data_valid),
        .I1(sfd1CheckBusFifoEmpty),
        .I2(rxDone),
        .I3(rxCrcRst),
        .I4(\xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ),
        .O(rd_en));
  LUT3 #(
    .INIT(8'h04)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_3 
       (.I0(startReadDestAdrNib),
        .I1(Q[0]),
        .I2(startReadDataNib),
        .O(\xpm_fifo_instance.xpm_fifo_async_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h1110FFFF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1 
       (.I0(rx_DPM_adr__0),
        .I1(rx_pong_ping_l),
        .I2(\gdvld.data_valid_std_reg ),
        .I3(rxCrcRst),
        .I4(s_axi_aresetn),
        .O(\rxbuffer_addr_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h4440FFFF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1__0 
       (.I0(rx_DPM_adr__0),
        .I1(rx_pong_ping_l),
        .I2(\gdvld.data_valid_std_reg ),
        .I3(rxCrcRst),
        .I4(s_axi_aresetn),
        .O(\rxbuffer_addr_reg[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h0000FB00)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_2 
       (.I0(startReadDataNib),
        .I1(Q[0]),
        .I2(startReadDestAdrNib),
        .I3(s_axi_aresetn),
        .I4(rx_DPM_adr__0),
        .O(state17a_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h2220FFFF)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1 
       (.I0(rx_DPM_adr__0),
        .I1(rx_pong_ping_l),
        .I2(\gdvld.data_valid_std_reg ),
        .I3(rxCrcRst),
        .I4(s_axi_aresetn),
        .O(ena));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h8880FFFF)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1__0 
       (.I0(rx_DPM_adr__0),
        .I1(rx_pong_ping_l),
        .I2(\gdvld.data_valid_std_reg ),
        .I3(rxCrcRst),
        .I4(s_axi_aresetn),
        .O(\rxbuffer_addr_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFB000000)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_2 
       (.I0(startReadDataNib),
        .I1(Q[0]),
        .I2(startReadDestAdrNib),
        .I3(rx_DPM_adr__0),
        .I4(s_axi_aresetn),
        .O(wea));
endmodule

(* ORIG_REF_NAME = "transmit" *) 
module ntps_top_axi_ethernetlite_0_0_transmit
   (STATE0A,
    SS,
    STATE17A,
    mac_addr_ram_we,
    mac_addr_ram_addr_wr,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \txbuffer_addr_reg[9] ,
    \txbuffer_addr_reg[9]_0 ,
    STATE8A,
    tx_addr_en,
    D_2,
    ping_mac_program_reg,
    E,
    \s_axi_wdata[4] ,
    prmry_vect_in,
    axi_phy_tx_en_i_p_reg_0,
    s_axi_aclk,
    phy_tx_clk,
    s_axi_aresetn,
    Q,
    tx_pong_ping_l,
    S,
    phy_crs_d2,
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    tx_done_d2,
    p_17_in,
    \status_reg_reg[5] ,
    p_15_in,
    \status_reg_reg[0] ,
    tx_clk_reg_d3,
    tx_clk_reg_d2,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    p_9_in,
    rx_done,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    D,
    rx_pong_ping_l,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg);
  output STATE0A;
  output [0:0]SS;
  output STATE17A;
  output mac_addr_ram_we;
  output [0:3]mac_addr_ram_addr_wr;
  output \TX_PONG_GEN.tx_pong_ping_l_reg ;
  output \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  output \txbuffer_addr_reg[9] ;
  output \txbuffer_addr_reg[9]_0 ;
  output STATE8A;
  output tx_addr_en;
  output D_2;
  output [5:0]ping_mac_program_reg;
  output [0:0]E;
  output \s_axi_wdata[4] ;
  output [3:0]prmry_vect_in;
  output axi_phy_tx_en_i_p_reg_0;
  input s_axi_aclk;
  input phy_tx_clk;
  input s_axi_aresetn;
  input [15:0]Q;
  input tx_pong_ping_l;
  input [0:0]S;
  input phy_crs_d2;
  input \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input tx_done_d2;
  input [0:0]p_17_in;
  input \status_reg_reg[5] ;
  input [0:0]p_15_in;
  input \status_reg_reg[0] ;
  input tx_clk_reg_d3;
  input tx_clk_reg_d2;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input [0:0]p_9_in;
  input rx_done;
  input \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input [0:0]D;
  input rx_pong_ping_l;
  input rx_done_d1;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg;

  wire CDC_TX_EN_n_0;
  wire CE;
  wire CE_2;
  wire [0:0]D;
  wire D20_out;
  wire D22_out;
  wire D24_out;
  wire D9_out;
  wire D_2;
  wire [0:0]E;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire INST_CRCCOUNTER_n_7;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_4;
  wire INST_TXBUSFIFOWRITENIBBLECOUNT_n_5;
  wire INST_TXNIBBLECOUNT_n_1;
  wire INST_TXNIBBLECOUNT_n_2;
  wire INST_TX_INTRFCE_n_10;
  wire INST_TX_INTRFCE_n_8;
  wire INST_TX_INTRFCE_n_9;
  wire INST_TX_STATE_MACHINE_n_30;
  wire INST_TX_STATE_MACHINE_n_31;
  wire INST_TX_STATE_MACHINE_n_36;
  wire INST_TX_STATE_MACHINE_n_45;
  wire INST_TX_STATE_MACHINE_n_46;
  wire INST_TX_STATE_MACHINE_n_47;
  wire INST_TX_STATE_MACHINE_n_48;
  wire INST_TX_STATE_MACHINE_n_49;
  wire INST_TX_STATE_MACHINE_n_50;
  wire INST_TX_STATE_MACHINE_n_72;
  wire INST_TX_STATE_MACHINE_n_73;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire \I_TX_FIFO/full ;
  wire \I_TX_FIFO/wr_rst_busy ;
  wire \NSR/nibData ;
  wire ONR_HOT_MUX_n_4;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire [15:0]Q;
  wire Rst0;
  wire [0:0]S;
  wire [0:0]SS;
  wire STATE0A;
  wire STATE17A;
  wire STATE8A;
  wire S_0;
  wire S_1;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire axi_phy_tx_en_i_p;
  wire axi_phy_tx_en_i_p0;
  wire axi_phy_tx_en_i_p_reg_0;
  wire [5:2]bus_combo;
  wire checkBusFifoFull;
  wire checkBusFifoFullCrc;
  wire checkBusFifoFullSFD;
  wire [0:3]crcCnt;
  wire crcComboRst;
  wire [8:11]currentTxBusFifoWrCnt;
  wire [11:11]currentTxNibbleCnt;
  wire emac_tx_wr_d1;
  wire [0:3]emac_tx_wr_data_d1;
  wire [0:3]emac_tx_wr_data_i;
  wire emac_tx_wr_i;
  wire emac_tx_wr_mod;
  wire enblCRC;
  wire enblData;
  wire enblPreamble;
  wire enblSFD;
  wire fifo_tx_en;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [1:0]\inst_deferral_state/thisState ;
  wire ldLngthCntr;
  wire loopback_en_reg;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire [16:19]mux_in_data;
  wire [0:0]p_15_in;
  wire [0:0]p_17_in;
  wire [11:0]p_1_in;
  wire [0:0]p_5_in;
  wire [0:0]p_9_in;
  wire phy_crs_d2;
  wire phy_tx_clk;
  wire [5:0]ping_mac_program_reg;
  wire [3:0]prmry_vect_in;
  wire rx_done;
  wire rx_done_d1;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire \status_reg_reg[0] ;
  wire \status_reg_reg[5] ;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire [0:11]txNibbleCnt_pad;
  wire [11:1]txNibbleCnt_pad0;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_1 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__0_n_3 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__1_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry__1_n_3 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_0 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_1 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_2 ;
  wire \txNibbleCnt_pad0_inferred__0/i__carry_n_3 ;
  wire tx_addr_en;
  wire tx_clk_reg_d2;
  wire tx_clk_reg_d3;
  wire tx_d_rst;
  wire tx_done_d2;
  wire tx_en_i;
  wire tx_en_mod;
  wire tx_intr_en0;
  wire tx_pong_ping_l;
  wire \txbuffer_addr_reg[9] ;
  wire \txbuffer_addr_reg[9]_0 ;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire [3:2]\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_O_UNCONNECTED ;

  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0_2 CDC_PHY_TX_RST
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_0 (SS),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(tx_d_rst));
  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0_3 CDC_TX_EN
       (.\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0 (CDC_TX_EN_n_0),
        .phy_tx_clk(phy_tx_clk),
        .scndry_out(tx_d_rst),
        .tx_en_i(tx_en_i));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[2]),
        .O(prmry_vect_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[3]),
        .O(prmry_vect_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[4]),
        .O(prmry_vect_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(axi_phy_tx_en_i_p),
        .I1(bus_combo[5]),
        .O(prmry_vect_in[3]));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1 INST_CRCCOUNTER
       (.CE(CE),
        .D9_out(D9_out),
        .\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1_0 (SS),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .S(S_0),
        .STATE14A(INST_CRCCOUNTER_n_7),
        .STATE15A(INST_TX_INTRFCE_n_10),
        .checkBusFifoFullCrc(checkBusFifoFullCrc),
        .crcCnt(crcCnt),
        .din(tx_en_mod),
        .enblCRC(enblCRC),
        .\gwack.wr_ack_i_reg (INST_TX_STATE_MACHINE_n_36),
        .s_axi_aclk(s_axi_aclk),
        .tx_en_i(tx_en_i),
        .wr_en(emac_tx_wr_mod));
  ntps_top_axi_ethernetlite_0_0_crcgentx INST_CRCGENTX
       (.E(\NSR/nibData ),
        .Q({mux_in_data[16],mux_in_data[17],mux_in_data[18],mux_in_data[19]}),
        .SR(crcComboRst),
        .\nibData_reg[30] ({emac_tx_wr_data_d1[0],emac_tx_wr_data_d1[1],emac_tx_wr_data_d1[2],emac_tx_wr_data_d1[3]}),
        .s_axi_aclk(s_axi_aclk),
        .txCrcEn_reg(txCrcEn_reg));
  ntps_top_axi_ethernetlite_0_0_deferral INST_DEFERRAL_CONTROL
       (.D24_out(D24_out),
        .Q(\inst_deferral_state/thisState ),
        .STATE8A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .enblPreamble(enblPreamble),
        .ldLngthCntr(ldLngthCntr),
        .phy_crs_d2(phy_crs_d2),
        .s_axi_aclk(s_axi_aclk),
        .tx_clk_reg_d2(tx_clk_reg_d2),
        .tx_clk_reg_d3(tx_clk_reg_d3),
        .tx_en_i(tx_en_i),
        .zero_i_reg(SS));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0 INST_TXBUSFIFOWRITENIBBLECOUNT
       (.\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1 (INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2 (INST_TX_STATE_MACHINE_n_72),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .emac_tx_wr_i(emac_tx_wr_i),
        .s_axi_aclk(s_axi_aclk),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst));
  ntps_top_axi_ethernetlite_0_0_ld_arith_reg INST_TXNIBBLECOUNT
       (.CE(CE_2),
        .D22_out(D22_out),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (currentTxNibbleCnt),
        .Q(Q),
        .S(S_1),
        .enblData(enblData),
        .s_axi_aclk(s_axi_aclk),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .\tx_packet_length_reg[0] (INST_TXNIBBLECOUNT_n_2),
        .\tx_packet_length_reg[14] (INST_TXNIBBLECOUNT_n_1));
  ntps_top_axi_ethernetlite_0_0_tx_intrfce INST_TX_INTRFCE
       (.D20_out(D20_out),
        .D22_out(D22_out),
        .STATE10A(INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .STATE16A(INST_CRCCOUNTER_n_7),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .axi_phy_tx_en_i_p_reg(axi_phy_tx_en_i_p_reg_0),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .din({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3],tx_en_mod}),
        .dout(bus_combo),
        .enblSFD(enblSFD),
        .full(\I_TX_FIFO/full ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (INST_TX_INTRFCE_n_9),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (INST_TX_INTRFCE_n_10),
        .phy_tx_clk(phy_tx_clk),
        .pipeIt_0(INST_TX_INTRFCE_n_8),
        .rd_en(fifo_tx_en),
        .rst(Rst0),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_en(emac_tx_wr_mod),
        .wr_rst_busy(\I_TX_FIFO/wr_rst_busy ));
  ntps_top_axi_ethernetlite_0_0_tx_statemachine INST_TX_STATE_MACHINE
       (.CE(CE_2),
        .CE_1(CE),
        .D(D),
        .D20_out(D20_out),
        .D22_out(D22_out),
        .D24_out(D24_out),
        .D9_out(D9_out),
        .D_2(D_2),
        .E(\NSR/nibData ),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .IP2INTC_IRPT_REG_I(IP2INTC_IRPT_REG_I),
        .\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 (INST_TX_STATE_MACHINE_n_72),
        .\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 (currentTxNibbleCnt),
        .\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg (\PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ),
        .\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ),
        .\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg (\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ),
        .Q({mux_in_data[16],mux_in_data[17],mux_in_data[18],mux_in_data[19]}),
        .RX_DONE_D1_I(E),
        .S(S),
        .SR(crcComboRst),
        .STATE0A_0(STATE0A),
        .STATE10A_0(INST_TX_STATE_MACHINE_n_73),
        .STATE10A_1(INST_TX_INTRFCE_n_9),
        .STATE11A_0(INST_TXBUSFIFOWRITENIBBLECOUNT_n_4),
        .STATE11A_1(INST_TX_INTRFCE_n_10),
        .STATE12A_0(INST_TX_STATE_MACHINE_n_49),
        .STATE12A_1(INST_TX_STATE_MACHINE_n_50),
        .STATE15A_0(INST_TX_STATE_MACHINE_n_36),
        .STATE15A_1(INST_TX_STATE_MACHINE_n_45),
        .STATE15A_2(INST_TX_STATE_MACHINE_n_46),
        .STATE15A_3(INST_TX_STATE_MACHINE_n_47),
        .STATE15A_4(INST_TX_STATE_MACHINE_n_48),
        .STATE16A_0(INST_TX_INTRFCE_n_8),
        .STATE17A_0(STATE17A),
        .STATE7A_0(\inst_deferral_state/thisState ),
        .STATE8A_0(INST_TX_STATE_MACHINE_n_30),
        .STATE8A_1(INST_TX_STATE_MACHINE_n_31),
        .STATE8A_2(STATE8A),
        .STATE9A_0(INST_TXBUSFIFOWRITENIBBLECOUNT_n_5),
        .S_0(S_1),
        .S_2(S_0),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (\TX_PONG_GEN.tx_pong_ping_l_reg ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (\TX_PONG_GEN.tx_pong_ping_l_reg_0 ),
        .axi_phy_tx_en_i_p0(axi_phy_tx_en_i_p0),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullCrc(checkBusFifoFullCrc),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .crcCnt(crcCnt),
        .currentTxBusFifoWrCnt({currentTxBusFifoWrCnt[8],currentTxBusFifoWrCnt[9],currentTxBusFifoWrCnt[10],currentTxBusFifoWrCnt[11]}),
        .emac_tx_wr_d1(emac_tx_wr_d1),
        .emac_tx_wr_i(emac_tx_wr_i),
        .enblCRC(enblCRC),
        .enblData(enblData),
        .enblPreamble(enblPreamble),
        .enblSFD(enblSFD),
        .full(\I_TX_FIFO/full ),
        .ldLngthCntr(ldLngthCntr),
        .loopback_en_reg(loopback_en_reg),
        .mac_addr_ram_addr_wr(mac_addr_ram_addr_wr),
        .mac_addr_ram_we(mac_addr_ram_we),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_5_in(p_5_in),
        .p_9_in(p_9_in),
        .ping_mac_program_reg(ping_mac_program_reg),
        .rst(Rst0),
        .rx_done(rx_done),
        .rx_done_d1(rx_done_d1),
        .rx_pong_ping_l(rx_pong_ping_l),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SS),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[4] (\s_axi_wdata[4] ),
        .\status_reg_reg[0] (\status_reg_reg[0] ),
        .\status_reg_reg[5] (\status_reg_reg[5] ),
        .txComboBusFifoWrCntRst(txComboBusFifoWrCntRst),
        .txComboNibbleCntRst(txComboNibbleCntRst),
        .txCrcEn(txCrcEn),
        .txCrcEn_reg(txCrcEn_reg),
        .txNibbleCnt_pad0(txNibbleCnt_pad0),
        .\txNibbleCnt_pad_reg[0] (Q[10:0]),
        .\txNibbleCnt_pad_reg[11] (ONR_HOT_MUX_n_4),
        .\txNibbleCnt_pad_reg[11]_0 (txNibbleCnt_pad[11]),
        .\txNibbleCnt_pad_reg[11]_1 (INST_TXNIBBLECOUNT_n_2),
        .\txNibbleCnt_pad_reg[11]_2 (INST_TXNIBBLECOUNT_n_1),
        .tx_addr_en(tx_addr_en),
        .tx_done_d2(tx_done_d2),
        .tx_en_i(tx_en_i),
        .tx_intr_en0(tx_intr_en0),
        .\tx_packet_length_reg[10] (p_1_in),
        .tx_pong_ping_l(tx_pong_ping_l),
        .\txbuffer_addr_reg[9] (\txbuffer_addr_reg[9] ),
        .\txbuffer_addr_reg[9]_0 (\txbuffer_addr_reg[9]_0 ),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_rst_busy(\I_TX_FIFO/wr_rst_busy ));
  ntps_top_axi_ethernetlite_0_0_mux_onehot_f ONR_HOT_MUX
       (.D({emac_tx_wr_data_i[0],emac_tx_wr_data_i[1],emac_tx_wr_data_i[2],emac_tx_wr_data_i[3]}),
        .Q({txNibbleCnt_pad[0],txNibbleCnt_pad[1],txNibbleCnt_pad[2],txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6],txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10],txNibbleCnt_pad[11]}),
        .\emac_tx_wr_data_d1_reg[0] (INST_TX_STATE_MACHINE_n_49),
        .\emac_tx_wr_data_d1_reg[0]_0 (INST_TX_STATE_MACHINE_n_48),
        .\emac_tx_wr_data_d1_reg[1] (INST_TX_STATE_MACHINE_n_30),
        .\emac_tx_wr_data_d1_reg[1]_0 (INST_TX_STATE_MACHINE_n_47),
        .\emac_tx_wr_data_d1_reg[2] (INST_TX_STATE_MACHINE_n_50),
        .\emac_tx_wr_data_d1_reg[2]_0 (INST_TX_STATE_MACHINE_n_46),
        .\emac_tx_wr_data_d1_reg[3] (INST_TX_STATE_MACHINE_n_31),
        .\emac_tx_wr_data_d1_reg[3]_0 (INST_TX_STATE_MACHINE_n_45),
        .\txNibbleCnt_pad_reg[8] (ONR_HOT_MUX_n_4));
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
    i__carry__0_i_1
       (.I0(txNibbleCnt_pad[3]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(txNibbleCnt_pad[4]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(txNibbleCnt_pad[5]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(txNibbleCnt_pad[6]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(txNibbleCnt_pad[0]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(txNibbleCnt_pad[1]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(txNibbleCnt_pad[2]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(txNibbleCnt_pad[7]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(txNibbleCnt_pad[8]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(txNibbleCnt_pad[9]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(txNibbleCnt_pad[10]),
        .O(i__carry_i_4_n_0));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\txNibbleCnt_pad0_inferred__0/i__carry_n_0 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_1 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry_n_3 }),
        .CYINIT(txNibbleCnt_pad[11]),
        .DI({txNibbleCnt_pad[7],txNibbleCnt_pad[8],txNibbleCnt_pad[9],txNibbleCnt_pad[10]}),
        .O(txNibbleCnt_pad0[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry__0 
       (.CI(\txNibbleCnt_pad0_inferred__0/i__carry_n_0 ),
        .CO({\txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_1 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({txNibbleCnt_pad[3],txNibbleCnt_pad[4],txNibbleCnt_pad[5],txNibbleCnt_pad[6]}),
        .O(txNibbleCnt_pad0[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \txNibbleCnt_pad0_inferred__0/i__carry__1 
       (.CI(\txNibbleCnt_pad0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\txNibbleCnt_pad0_inferred__0/i__carry__1_n_2 ,\txNibbleCnt_pad0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,txNibbleCnt_pad[1],txNibbleCnt_pad[2]}),
        .O({\NLW_txNibbleCnt_pad0_inferred__0/i__carry__1_O_UNCONNECTED [3],txNibbleCnt_pad0[11:9]}),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  FDRE \txNibbleCnt_pad_reg[0] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[11]),
        .Q(txNibbleCnt_pad[0]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[10] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[1]),
        .Q(txNibbleCnt_pad[10]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[11] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[0]),
        .Q(txNibbleCnt_pad[11]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[1] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[10]),
        .Q(txNibbleCnt_pad[1]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[2] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[9]),
        .Q(txNibbleCnt_pad[2]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[3] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[8]),
        .Q(txNibbleCnt_pad[3]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[4] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[7]),
        .Q(txNibbleCnt_pad[4]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[5] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[6]),
        .Q(txNibbleCnt_pad[5]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[6] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[5]),
        .Q(txNibbleCnt_pad[6]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[7] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[4]),
        .Q(txNibbleCnt_pad[7]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[8] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
        .D(p_1_in[3]),
        .Q(txNibbleCnt_pad[8]),
        .R(SS));
  FDRE \txNibbleCnt_pad_reg[9] 
       (.C(s_axi_aclk),
        .CE(INST_TX_STATE_MACHINE_n_73),
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
   (full,
    wr_rst_busy,
    dout,
    txfifo_empty,
    D20_out,
    pipeIt_0,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    axi_phy_tx_en_i_p_reg,
    rst,
    s_axi_aclk,
    wr_en,
    din,
    phy_tx_clk,
    rd_en,
    D22_out,
    checkBusFifoFull,
    waitFifoEmpty,
    STATE16A,
    checkBusFifoFullSFD,
    STATE10A,
    enblSFD,
    axi_phy_tx_en_i_p);
  output full;
  output wr_rst_busy;
  output [3:0]dout;
  output txfifo_empty;
  output D20_out;
  output pipeIt_0;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  output axi_phy_tx_en_i_p_reg;
  input rst;
  input s_axi_aclk;
  input wr_en;
  input [4:0]din;
  input phy_tx_clk;
  input rd_en;
  input D22_out;
  input checkBusFifoFull;
  input waitFifoEmpty;
  input STATE16A;
  input checkBusFifoFullSFD;
  input STATE10A;
  input enblSFD;
  input axi_phy_tx_en_i_p;

  wire D20_out;
  wire D22_out;
  wire STATE10A;
  wire STATE16A;
  wire axi_phy_tx_en_i_p;
  wire axi_phy_tx_en_i_p_reg;
  wire checkBusFifoFull;
  wire checkBusFifoFullSFD;
  wire [4:0]din;
  wire [3:0]dout;
  wire enblSFD;
  wire fifo_empty_c;
  wire fifo_empty_i;
  wire full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire phy_tx_clk;
  wire pipeIt_0;
  wire rd_en;
  wire rst;
  wire s_axi_aclk;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_en;
  wire wr_rst_busy;

  ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2 CDC_FIFO_EMPTY
       (.prmry_in(fifo_empty_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(fifo_empty_c));
  ntps_top_axi_ethernetlite_0_0_async_fifo_fg I_TX_FIFO
       (.D20_out(D20_out),
        .D22_out(D22_out),
        .STATE10A(STATE10A),
        .STATE16A(STATE16A),
        .axi_phy_tx_en_i_p(axi_phy_tx_en_i_p),
        .axi_phy_tx_en_i_p_reg(axi_phy_tx_en_i_p_reg),
        .checkBusFifoFull(checkBusFifoFull),
        .checkBusFifoFullSFD(checkBusFifoFullSFD),
        .din(din),
        .dout(dout),
        .empty(fifo_empty_i),
        .enblSFD(enblSFD),
        .full(full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .phy_tx_clk(phy_tx_clk),
        .pipeIt(pipeIt_0),
        .rd_en(rd_en),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .txfifo_empty(txfifo_empty),
        .waitFifoEmpty(waitFifoEmpty),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    pipeIt
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_empty_c),
        .Q(txfifo_empty),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "tx_statemachine" *) 
module ntps_top_axi_ethernetlite_0_0_tx_statemachine
   (STATE0A_0,
    s_axi_aresetn_0,
    ldLngthCntr,
    enblPreamble,
    checkBusFifoFullSFD,
    enblSFD,
    checkBusFifoFull,
    enblData,
    checkBusFifoFullCrc,
    enblCRC,
    waitFifoEmpty,
    STATE17A_0,
    tx_en_i,
    mac_addr_ram_we,
    mac_addr_ram_addr_wr,
    E,
    CE,
    S_0,
    txComboBusFifoWrCntRst,
    \TX_PONG_GEN.tx_pong_ping_l_reg ,
    \TX_PONG_GEN.tx_pong_ping_l_reg_0 ,
    \txbuffer_addr_reg[9] ,
    \txbuffer_addr_reg[9]_0 ,
    axi_phy_tx_en_i_p0,
    CE_1,
    SR,
    txCrcEn,
    STATE8A_0,
    STATE8A_1,
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ,
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ,
    emac_tx_wr_i,
    STATE15A_0,
    S_2,
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ,
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ,
    txComboNibbleCntRst,
    rst,
    STATE8A_2,
    tx_addr_en,
    D_2,
    STATE15A_1,
    STATE15A_2,
    STATE15A_3,
    STATE15A_4,
    STATE12A_0,
    STATE12A_1,
    \tx_packet_length_reg[10] ,
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ,
    ping_mac_program_reg,
    RX_DONE_D1_I,
    \s_axi_wdata[4] ,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ,
    STATE10A_0,
    s_axi_aclk,
    D24_out,
    STATE10A_1,
    D20_out,
    D22_out,
    D9_out,
    STATE16A_0,
    s_axi_aresetn,
    emac_tx_wr_d1,
    txCrcEn_reg,
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ,
    STATE11A_0,
    STATE11A_1,
    tx_pong_ping_l,
    S,
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    \txNibbleCnt_pad_reg[11] ,
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    currentTxBusFifoWrCnt,
    tx_done_d2,
    p_17_in,
    \status_reg_reg[5] ,
    p_15_in,
    \status_reg_reg[0] ,
    crcCnt,
    p_5_in,
    IP2INTC_IRPT_REG_I,
    p_9_in,
    rx_done,
    Q,
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ,
    D,
    \txNibbleCnt_pad_reg[11]_0 ,
    \txNibbleCnt_pad_reg[0] ,
    txNibbleCnt_pad0,
    full,
    wr_rst_busy,
    STATE9A_0,
    txfifo_empty,
    STATE7A_0,
    rx_pong_ping_l,
    rx_done_d1,
    s_axi_wdata,
    tx_intr_en0,
    loopback_en_reg,
    \txNibbleCnt_pad_reg[11]_1 ,
    \txNibbleCnt_pad_reg[11]_2 );
  output STATE0A_0;
  output s_axi_aresetn_0;
  output ldLngthCntr;
  output enblPreamble;
  output checkBusFifoFullSFD;
  output enblSFD;
  output checkBusFifoFull;
  output enblData;
  output checkBusFifoFullCrc;
  output enblCRC;
  output waitFifoEmpty;
  output STATE17A_0;
  output tx_en_i;
  output mac_addr_ram_we;
  output [0:3]mac_addr_ram_addr_wr;
  output [0:0]E;
  output CE;
  output S_0;
  output txComboBusFifoWrCntRst;
  output \TX_PONG_GEN.tx_pong_ping_l_reg ;
  output \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  output \txbuffer_addr_reg[9] ;
  output \txbuffer_addr_reg[9]_0 ;
  output axi_phy_tx_en_i_p0;
  output CE_1;
  output [0:0]SR;
  output txCrcEn;
  output STATE8A_0;
  output STATE8A_1;
  output \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  output \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  output emac_tx_wr_i;
  output STATE15A_0;
  output S_2;
  output \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  output \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  output txComboNibbleCntRst;
  output rst;
  output STATE8A_2;
  output tx_addr_en;
  output D_2;
  output STATE15A_1;
  output STATE15A_2;
  output STATE15A_3;
  output STATE15A_4;
  output STATE12A_0;
  output STATE12A_1;
  output [11:0]\tx_packet_length_reg[10] ;
  output \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  output [5:0]ping_mac_program_reg;
  output [0:0]RX_DONE_D1_I;
  output \s_axi_wdata[4] ;
  output \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ;
  output [0:0]STATE10A_0;
  input s_axi_aclk;
  input D24_out;
  input STATE10A_1;
  input D20_out;
  input D22_out;
  input D9_out;
  input STATE16A_0;
  input s_axi_aresetn;
  input emac_tx_wr_d1;
  input txCrcEn_reg;
  input [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  input STATE11A_0;
  input STATE11A_1;
  input tx_pong_ping_l;
  input [0:0]S;
  input \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input \txNibbleCnt_pad_reg[11] ;
  input \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input [3:0]currentTxBusFifoWrCnt;
  input tx_done_d2;
  input [0:0]p_17_in;
  input \status_reg_reg[5] ;
  input [0:0]p_15_in;
  input \status_reg_reg[0] ;
  input [0:3]crcCnt;
  input [0:0]p_5_in;
  input [0:0]IP2INTC_IRPT_REG_I;
  input [0:0]p_9_in;
  input rx_done;
  input [3:0]Q;
  input \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  input [0:0]D;
  input [0:0]\txNibbleCnt_pad_reg[11]_0 ;
  input [10:0]\txNibbleCnt_pad_reg[0] ;
  input [10:0]txNibbleCnt_pad0;
  input full;
  input wr_rst_busy;
  input STATE9A_0;
  input txfifo_empty;
  input [1:0]STATE7A_0;
  input rx_pong_ping_l;
  input rx_done_d1;
  input [0:0]s_axi_wdata;
  input tx_intr_en0;
  input loopback_en_reg;
  input \txNibbleCnt_pad_reg[11]_1 ;
  input \txNibbleCnt_pad_reg[11]_2 ;

  wire CE;
  wire CE_1;
  wire [0:0]D;
  wire D20_out;
  wire D22_out;
  wire D23_out;
  wire D24_out;
  wire D25_out;
  wire D27_out;
  wire D28_out;
  wire D30_out;
  wire D9_out;
  wire D_0;
  wire D_2;
  wire [0:0]E;
  wire \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ;
  wire [0:0]IP2INTC_IRPT_REG_I;
  wire \Mac_addr_ram_addr_wr[0]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[1]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[1]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[2]_i_3_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_1_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_2_n_0 ;
  wire \Mac_addr_ram_addr_wr[3]_i_3_n_0 ;
  wire Mac_addr_ram_we_i_1_n_0;
  wire Mac_addr_ram_we_i_2_n_0;
  wire Mac_addr_ram_we_i_3_n_0;
  wire Mac_addr_ram_we_i_4_n_0;
  wire \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1 ;
  wire [0:0]\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ;
  wire \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg ;
  wire \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ;
  wire \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ;
  wire [3:0]Q;
  wire [0:0]RX_DONE_D1_I;
  wire [0:0]S;
  wire [0:0]SR;
  wire STATE0A_0;
  wire STATE0A_i_2_n_0;
  wire [0:0]STATE10A_0;
  wire STATE10A_1;
  wire STATE11A_0;
  wire STATE11A_1;
  wire STATE12A_0;
  wire STATE12A_1;
  wire STATE15A_0;
  wire STATE15A_1;
  wire STATE15A_2;
  wire STATE15A_3;
  wire STATE15A_4;
  wire STATE16A_0;
  wire STATE17A_0;
  wire STATE26A_i_1_n_0;
  wire STATE5A_i_1_n_0;
  wire [1:0]STATE7A_0;
  wire STATE8A_0;
  wire STATE8A_1;
  wire STATE8A_2;
  wire STATE9A_0;
  wire S_0;
  wire S_2;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg ;
  wire \TX_PONG_GEN.tx_pong_ping_l_reg_0 ;
  wire axi_fifo_tx_en;
  wire axi_phy_tx_en_i_p0;
  wire busFifoWrCntRst_reg;
  wire checkBusFifoFull;
  wire checkBusFifoFullCrc;
  wire checkBusFifoFullSFD;
  wire checkCrc;
  wire chgMacAdr1;
  wire chgMacAdr10;
  wire chgMacAdr11;
  wire chgMacAdr12;
  wire chgMacAdr13;
  wire chgMacAdr14;
  wire chgMacAdr2;
  wire chgMacAdr3;
  wire chgMacAdr4;
  wire chgMacAdr5;
  wire chgMacAdr6;
  wire chgMacAdr7;
  wire chgMacAdr8;
  wire chgMacAdr9;
  wire [0:3]crcCnt;
  wire [3:0]currentTxBusFifoWrCnt;
  wire emac_tx_wr_d1;
  wire emac_tx_wr_i;
  wire enblCRC;
  wire enblData;
  wire enblPreamble;
  wire enblSFD;
  wire full;
  wire ldLngthCntr;
  wire lngthDelay1;
  wire lngthDelay2;
  wire loopback_en_reg;
  wire [0:3]mac_addr_ram_addr_wr;
  wire mac_addr_ram_we;
  wire mac_program_start;
  wire mac_program_start_reg;
  wire [0:0]p_15_in;
  wire [0:0]p_17_in;
  wire [0:0]p_5_in;
  wire [0:0]p_9_in;
  wire [5:0]ping_mac_program_reg;
  wire rst;
  wire rx_done;
  wire rx_done_d1;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[4] ;
  wire \status_reg_reg[0] ;
  wire \status_reg_reg[5] ;
  wire transmit_start;
  wire transmit_start_reg;
  wire txBusFifoWrCntRst;
  wire txComboBusFifoWrCntRst;
  wire txComboNibbleCntRst;
  wire txCrcEn;
  wire txCrcEn_reg;
  wire txDone2;
  wire txDonePause;
  wire [10:0]txNibbleCnt_pad0;
  wire [10:0]\txNibbleCnt_pad_reg[0] ;
  wire \txNibbleCnt_pad_reg[11] ;
  wire [0:0]\txNibbleCnt_pad_reg[11]_0 ;
  wire \txNibbleCnt_pad_reg[11]_1 ;
  wire \txNibbleCnt_pad_reg[11]_2 ;
  wire tx_addr_en;
  wire tx_done_d2;
  wire tx_en_i;
  wire tx_intr_en0;
  wire [11:0]\tx_packet_length_reg[10] ;
  wire tx_pong_ping_l;
  wire \txbuffer_addr[11]_i_4_n_0 ;
  wire \txbuffer_addr_reg[9] ;
  wire \txbuffer_addr_reg[9]_0 ;
  wire txcrcen_d1_i_2_n_0;
  wire txfifo_empty;
  wire waitFifoEmpty;
  wire wr_rst_busy;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ;
  wire \xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ;

  LUT4 #(
    .INIT(16'h00FD)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblData),
        .I1(\txNibbleCnt_pad_reg[11] ),
        .I2(\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .I3(enblSFD),
        .O(STATE12A_0));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[3]),
        .O(STATE15A_4));
  LUT5 #(
    .INIT(32'h11111011)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblPreamble),
        .I1(enblSFD),
        .I2(\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .I3(enblData),
        .I4(\txNibbleCnt_pad_reg[11] ),
        .O(STATE8A_0));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[2]),
        .O(STATE15A_3));
  LUT3 #(
    .INIT(8'hBF)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblData),
        .I2(D),
        .O(STATE12A_1));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[1]),
        .O(STATE15A_2));
  LUT5 #(
    .INIT(32'h11111011)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblPreamble),
        .I1(enblSFD),
        .I2(\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I ),
        .I3(enblData),
        .I4(\txNibbleCnt_pad_reg[11] ),
        .O(STATE8A_1));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1 
       (.I0(enblCRC),
        .I1(Q[0]),
        .O(STATE15A_1));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(axi_fifo_tx_en),
        .I3(enblPreamble),
        .O(tx_en_i));
  LUT1 #(
    .INIT(2'h1)) 
    IP2INTC_IRPT_REG_I_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hAA808080)) 
    IP2INTC_IRPT_REG_I_i_2
       (.I0(p_5_in),
        .I1(STATE17A_0),
        .I2(IP2INTC_IRPT_REG_I),
        .I3(p_9_in),
        .I4(rx_done),
        .O(D_2));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \Mac_addr_ram_addr_wr[0]_i_1 
       (.I0(chgMacAdr13),
        .I1(chgMacAdr12),
        .I2(chgMacAdr10),
        .I3(chgMacAdr11),
        .I4(Mac_addr_ram_we_i_3_n_0),
        .O(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \Mac_addr_ram_addr_wr[1]_i_1 
       (.I0(chgMacAdr8),
        .I1(chgMacAdr9),
        .I2(chgMacAdr6),
        .I3(chgMacAdr7),
        .I4(\Mac_addr_ram_addr_wr[1]_i_2_n_0 ),
        .O(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Mac_addr_ram_addr_wr[1]_i_2 
       (.I0(chgMacAdr2),
        .I1(chgMacAdr3),
        .I2(chgMacAdr4),
        .I3(chgMacAdr5),
        .O(\Mac_addr_ram_addr_wr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \Mac_addr_ram_addr_wr[2]_i_1 
       (.I0(chgMacAdr2),
        .I1(chgMacAdr3),
        .I2(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ),
        .I3(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ),
        .I4(chgMacAdr5),
        .I5(chgMacAdr4),
        .O(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Mac_addr_ram_addr_wr[2]_i_2 
       (.I0(chgMacAdr6),
        .I1(chgMacAdr7),
        .O(\Mac_addr_ram_addr_wr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \Mac_addr_ram_addr_wr[2]_i_3 
       (.I0(chgMacAdr9),
        .I1(chgMacAdr8),
        .I2(chgMacAdr13),
        .I3(chgMacAdr12),
        .I4(chgMacAdr10),
        .I5(chgMacAdr11),
        .O(\Mac_addr_ram_addr_wr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Mac_addr_ram_addr_wr[3]_i_1 
       (.I0(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ),
        .I1(STATE0A_i_2_n_0),
        .I2(s_axi_aresetn),
        .I3(txDonePause),
        .I4(chgMacAdr2),
        .O(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \Mac_addr_ram_addr_wr[3]_i_2 
       (.I0(chgMacAdr3),
        .I1(chgMacAdr4),
        .I2(chgMacAdr5),
        .I3(chgMacAdr6),
        .I4(chgMacAdr7),
        .I5(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ),
        .O(\Mac_addr_ram_addr_wr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00F2)) 
    \Mac_addr_ram_addr_wr[3]_i_3 
       (.I0(chgMacAdr13),
        .I1(chgMacAdr12),
        .I2(chgMacAdr11),
        .I3(chgMacAdr10),
        .I4(chgMacAdr9),
        .I5(chgMacAdr8),
        .O(\Mac_addr_ram_addr_wr[3]_i_3_n_0 ));
  FDRE \Mac_addr_ram_addr_wr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[0]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[0]),
        .R(Mac_addr_ram_we_i_1_n_0));
  FDRE \Mac_addr_ram_addr_wr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[1]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[1]),
        .R(Mac_addr_ram_we_i_1_n_0));
  FDRE \Mac_addr_ram_addr_wr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[2]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[2]),
        .R(Mac_addr_ram_we_i_1_n_0));
  FDRE \Mac_addr_ram_addr_wr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Mac_addr_ram_addr_wr[3]_i_1_n_0 ),
        .Q(mac_addr_ram_addr_wr[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFB)) 
    Mac_addr_ram_we_i_1
       (.I0(txDonePause),
        .I1(s_axi_aresetn),
        .I2(STATE0A_i_2_n_0),
        .O(Mac_addr_ram_we_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Mac_addr_ram_we_i_2
       (.I0(Mac_addr_ram_we_i_3_n_0),
        .I1(chgMacAdr13),
        .I2(chgMacAdr12),
        .I3(chgMacAdr10),
        .I4(chgMacAdr11),
        .O(Mac_addr_ram_we_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    Mac_addr_ram_we_i_3
       (.I0(chgMacAdr5),
        .I1(chgMacAdr4),
        .I2(chgMacAdr3),
        .I3(chgMacAdr2),
        .I4(Mac_addr_ram_we_i_4_n_0),
        .O(Mac_addr_ram_we_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Mac_addr_ram_we_i_4
       (.I0(chgMacAdr7),
        .I1(chgMacAdr6),
        .I2(chgMacAdr9),
        .I3(chgMacAdr8),
        .O(Mac_addr_ram_we_i_4_n_0));
  FDRE Mac_addr_ram_we_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Mac_addr_ram_we_i_2_n_0),
        .Q(mac_addr_ram_we),
        .R(Mac_addr_ram_we_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \PERBIT_GEN[0].XORCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[0]),
        .O(\PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[10].MUXCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[1]),
        .I1(enblData),
        .I2(enblPreamble),
        .I3(enblSFD),
        .I4(enblCRC),
        .O(\PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2FFFF)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(busFifoWrCntRst_reg),
        .I1(enblPreamble),
        .I2(STATE17A_0),
        .I3(STATE0A_0),
        .I4(s_axi_aresetn),
        .I5(txDonePause),
        .O(txComboBusFifoWrCntRst));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1__0 
       (.I0(STATE0A_0),
        .I1(s_axi_aresetn),
        .I2(txDonePause),
        .O(txComboNibbleCntRst));
  LUT2 #(
    .INIT(4'hE)) 
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_2 
       (.I0(enblSFD),
        .I1(enblData),
        .O(CE));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \PERBIT_GEN[11].MULT_AND_i1_i_1 
       (.I0(enblData),
        .I1(enblPreamble),
        .I2(enblSFD),
        .I3(enblCRC),
        .O(emac_tx_wr_i));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1 
       (.I0(enblData),
        .I1(\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0 ),
        .O(S_0));
  LUT5 #(
    .INIT(32'h55555554)) 
    \PERBIT_GEN[11].MUXCY_i1_i_1__0 
       (.I0(currentTxBusFifoWrCnt[0]),
        .I1(enblData),
        .I2(enblPreamble),
        .I3(enblSFD),
        .I4(enblCRC),
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
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAB)) 
    \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_i_1 
       (.I0(enblCRC),
        .I1(enblPreamble),
        .I2(axi_fifo_tx_en),
        .I3(STATE17A_0),
        .I4(STATE0A_0),
        .O(CE_1));
  LUT2 #(
    .INIT(4'h8)) 
    \PERBIT_GEN[3].MUXCY_i1_i_1__0 
       (.I0(enblCRC),
        .I1(crcCnt[3]),
        .O(S_2));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[8].XORCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[3]),
        .I1(enblData),
        .I2(enblPreamble),
        .I3(enblSFD),
        .I4(enblCRC),
        .O(\PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \PERBIT_GEN[9].MUXCY_i1_i_1 
       (.I0(currentTxBusFifoWrCnt[2]),
        .I1(enblData),
        .I2(enblPreamble),
        .I3(enblSFD),
        .I4(enblCRC),
        .O(\PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg ));
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  (* box_type = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1)) 
    STATE0A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(STATE0A_0),
        .S(s_axi_aresetn_0));
  LUT2 #(
    .INIT(4'hE)) 
    STATE0A_i_1
       (.I0(txDonePause),
        .I1(STATE0A_i_2_n_0),
        .O(D_0));
  LUT6 #(
    .INIT(64'h00000C8C08880C8C)) 
    STATE0A_i_2
       (.I0(tx_done_d2),
        .I1(STATE0A_0),
        .I2(p_17_in),
        .I3(\status_reg_reg[5] ),
        .I4(p_15_in),
        .I5(\status_reg_reg[0] ),
        .O(STATE0A_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE10A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE10A_1),
        .Q(enblSFD),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE11A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D27_out),
        .Q(checkBusFifoFull),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    STATE11A_i_1
       (.I0(D22_out),
        .I1(enblData),
        .I2(enblSFD),
        .I3(STATE11A_0),
        .I4(checkBusFifoFull),
        .I5(STATE11A_1),
        .O(D27_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE12A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D20_out),
        .Q(enblData),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE13A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D22_out),
        .Q(checkCrc),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE14A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D28_out),
        .Q(checkBusFifoFullCrc),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    STATE14A_i_1
       (.I0(full),
        .I1(wr_rst_busy),
        .I2(checkBusFifoFullCrc),
        .I3(checkCrc),
        .I4(enblCRC),
        .O(D28_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE15A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D9_out),
        .Q(enblCRC),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE16A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE16A_0),
        .Q(waitFifoEmpty),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE17A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D30_out),
        .Q(STATE17A_0),
        .R(s_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hEA)) 
    STATE17A_i_1
       (.I0(chgMacAdr14),
        .I1(txfifo_empty),
        .I2(waitFifoEmpty),
        .O(D30_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE24A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE17A_0),
        .Q(txDone2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE25A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txDone2),
        .Q(txDonePause),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE26A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE26A_i_1_n_0),
        .Q(chgMacAdr1),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00000000F8880000)) 
    STATE26A_i_1
       (.I0(\status_reg_reg[0] ),
        .I1(p_15_in),
        .I2(\status_reg_reg[5] ),
        .I3(p_17_in),
        .I4(STATE0A_0),
        .I5(mac_program_start_reg),
        .O(STATE26A_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE27A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr1),
        .Q(chgMacAdr2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE28A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr2),
        .Q(chgMacAdr3),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE29A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr3),
        .Q(chgMacAdr4),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE30A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr4),
        .Q(chgMacAdr5),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE31A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr5),
        .Q(chgMacAdr6),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE32A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr6),
        .Q(chgMacAdr7),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE33A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr7),
        .Q(chgMacAdr8),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE34A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr8),
        .Q(chgMacAdr9),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE35A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr9),
        .Q(chgMacAdr10),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE36A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr10),
        .Q(chgMacAdr11),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE37A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr11),
        .Q(chgMacAdr12),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE38A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr12),
        .Q(chgMacAdr13),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE39A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(chgMacAdr13),
        .Q(chgMacAdr14),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE5A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(STATE5A_i_1_n_0),
        .Q(lngthDelay1),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h08)) 
    STATE5A_i_1
       (.I0(transmit_start),
        .I1(STATE0A_0),
        .I2(transmit_start_reg),
        .O(STATE5A_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE6A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(lngthDelay1),
        .Q(lngthDelay2),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE7A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D23_out),
        .Q(ldLngthCntr),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hFEAA)) 
    STATE7A_i_1
       (.I0(lngthDelay1),
        .I1(STATE7A_0[1]),
        .I2(STATE7A_0[0]),
        .I3(ldLngthCntr),
        .O(D23_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE8A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D24_out),
        .Q(enblPreamble),
        .R(s_axi_aresetn_0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    STATE9A
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D25_out),
        .Q(checkBusFifoFullSFD),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    STATE9A_i_1
       (.I0(STATE9A_0),
        .I1(enblPreamble),
        .I2(full),
        .I3(wr_rst_busy),
        .I4(checkBusFifoFullSFD),
        .O(D25_out));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h02)) 
    axi_phy_tx_en_i_p_i_1
       (.I0(axi_fifo_tx_en),
        .I1(STATE0A_0),
        .I2(STATE17A_0),
        .O(axi_phy_tx_en_i_p0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    busFifoWrCntRst_reg_i_1
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(enblPreamble),
        .I3(busFifoWrCntRst_reg),
        .O(txBusFifoWrCntRst));
  FDRE busFifoWrCntRst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(txBusFifoWrCntRst),
        .Q(busFifoWrCntRst_reg),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    loopback_en_i_1
       (.I0(s_axi_wdata),
        .I1(STATE0A_0),
        .I2(tx_intr_en0),
        .I3(loopback_en_reg),
        .O(\s_axi_wdata[4] ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    mac_program_start_reg_i_1
       (.I0(p_17_in),
        .I1(\status_reg_reg[5] ),
        .I2(p_15_in),
        .I3(\status_reg_reg[0] ),
        .O(mac_program_start));
  FDRE mac_program_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mac_program_start),
        .Q(mac_program_start_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFFFF57)) 
    \nibData[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(enblPreamble),
        .I2(axi_fifo_tx_en),
        .I3(STATE17A_0),
        .I4(STATE0A_0),
        .O(SR));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \nibData[31]_i_2 
       (.I0(emac_tx_wr_d1),
        .I1(enblCRC),
        .I2(checkBusFifoFullCrc),
        .I3(txCrcEn_reg),
        .O(E));
  FDRE phytx_en_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_en_i),
        .Q(axi_fifo_tx_en),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \status_reg[0]_i_1 
       (.I0(\status_reg_reg[0] ),
        .I1(tx_pong_ping_l),
        .I2(s_axi_aresetn),
        .I3(STATE17A_0),
        .O(ping_mac_program_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \status_reg[1]_i_1 
       (.I0(\status_reg_reg[5] ),
        .I1(s_axi_aresetn),
        .I2(STATE17A_0),
        .I3(tx_pong_ping_l),
        .O(ping_mac_program_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \status_reg[2]_i_1 
       (.I0(rx_pong_ping_l),
        .I1(s_axi_aresetn),
        .I2(STATE17A_0),
        .O(ping_mac_program_reg[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \status_reg[3]_i_1 
       (.I0(rx_pong_ping_l),
        .I1(s_axi_aresetn),
        .I2(STATE17A_0),
        .O(ping_mac_program_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \status_reg[4]_i_1 
       (.I0(\status_reg_reg[0] ),
        .I1(tx_pong_ping_l),
        .I2(s_axi_aresetn),
        .I3(STATE17A_0),
        .O(ping_mac_program_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \status_reg[5]_i_1 
       (.I0(rx_done_d1),
        .I1(s_axi_aresetn),
        .I2(STATE17A_0),
        .O(RX_DONE_D1_I));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \status_reg[5]_i_2 
       (.I0(\status_reg_reg[5] ),
        .I1(s_axi_aresetn),
        .I2(STATE17A_0),
        .I3(tx_pong_ping_l),
        .O(ping_mac_program_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h000044F4)) 
    transmit_start_reg_i_1
       (.I0(\status_reg_reg[0] ),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\status_reg_reg[5] ),
        .I4(tx_done_d2),
        .O(transmit_start));
  FDRE transmit_start_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmit_start),
        .Q(transmit_start_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF4F0)) 
    \txNibbleCnt_pad[0]_i_1 
       (.I0(\txNibbleCnt_pad_reg[11]_1 ),
        .I1(\txNibbleCnt_pad_reg[11]_2 ),
        .I2(enblSFD),
        .I3(enblData),
        .O(STATE10A_0));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[0]_i_2 
       (.I0(\txNibbleCnt_pad_reg[0] [10]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[10]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [11]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[10]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [0]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[0]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \txNibbleCnt_pad[11]_i_1 
       (.I0(\txNibbleCnt_pad_reg[11] ),
        .I1(enblSFD),
        .I2(\txNibbleCnt_pad_reg[11]_0 ),
        .O(\tx_packet_length_reg[10] [0]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[1]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [9]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[9]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[2]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [8]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[8]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[3]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [7]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[7]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [8]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[4]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [6]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[6]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [7]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[5]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [5]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[5]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [6]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[6]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [4]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[4]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [5]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[7]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [3]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[3]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [4]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[8]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [2]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[2]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [3]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \txNibbleCnt_pad[9]_i_1 
       (.I0(\txNibbleCnt_pad_reg[0] [1]),
        .I1(enblSFD),
        .I2(txNibbleCnt_pad0[1]),
        .I3(\txNibbleCnt_pad_reg[11] ),
        .O(\tx_packet_length_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \txbuffer_addr[11]_i_1 
       (.I0(enblPreamble),
        .I1(s_axi_aresetn),
        .I2(chgMacAdr1),
        .O(STATE8A_2));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txbuffer_addr[11]_i_2 
       (.I0(enblData),
        .I1(\txbuffer_addr[11]_i_4_n_0 ),
        .O(tx_addr_en));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \txbuffer_addr[11]_i_4 
       (.I0(chgMacAdr14),
        .I1(chgMacAdr11),
        .I2(chgMacAdr10),
        .I3(chgMacAdr12),
        .I4(chgMacAdr13),
        .I5(Mac_addr_ram_we_i_3_n_0),
        .O(\txbuffer_addr[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    txcrcen_d1_i_1
       (.I0(checkBusFifoFull),
        .I1(txCrcEn_reg),
        .I2(checkBusFifoFullSFD),
        .I3(STATE0A_0),
        .I4(checkBusFifoFullCrc),
        .I5(txcrcen_d1_i_2_n_0),
        .O(txCrcEn));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h01)) 
    txcrcen_d1_i_2
       (.I0(enblPreamble),
        .I1(enblSFD),
        .I2(enblCRC),
        .O(txcrcen_d1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1 
       (.I0(txDonePause),
        .I1(s_axi_aresetn),
        .O(rst));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_4 
       (.I0(enblCRC),
        .I1(enblSFD),
        .I2(enblPreamble),
        .I3(enblData),
        .O(STATE15A_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1__1 
       (.I0(tx_pong_ping_l),
        .I1(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .I2(S),
        .I3(s_axi_aresetn),
        .O(\TX_PONG_GEN.tx_pong_ping_l_reg ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_1__2 
       (.I0(S),
        .I1(tx_pong_ping_l),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .I3(s_axi_aresetn),
        .O(\txbuffer_addr_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_4 
       (.I0(\txbuffer_addr[11]_i_4_n_0 ),
        .I1(\xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ),
        .I2(txDonePause),
        .I3(chgMacAdr1),
        .I4(checkBusFifoFull),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \xpm_mem_gen.xpm_memory_inst_1_i_6 
       (.I0(STATE0A_0),
        .I1(STATE17A_0),
        .I2(lngthDelay1),
        .I3(lngthDelay2),
        .I4(ldLngthCntr),
        .I5(txDone2),
        .O(\xpm_mem_gen.xpm_memory_inst_1_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1__1 
       (.I0(tx_pong_ping_l),
        .I1(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .I2(S),
        .I3(s_axi_aresetn),
        .O(\TX_PONG_GEN.tx_pong_ping_l_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    \xpm_mem_gen.xpm_memory_inst_2_i_1__2 
       (.I0(S),
        .I1(tx_pong_ping_l),
        .I2(\xpm_mem_gen.xpm_memory_inst_1_i_4_n_0 ),
        .I3(s_axi_aresetn),
        .O(\txbuffer_addr_reg[9] ));
endmodule

(* ORIG_REF_NAME = "xemac" *) 
module ntps_top_axi_ethernetlite_0_0_xemac
   (SR,
    \MDIO_GEN.mdio_clk_i_reg_0 ,
    ip2intc_irpt,
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ,
    phy_mdio_o,
    phy_mdio_t,
    reg_access,
    \MDIO_GEN.mdio_en_i_reg_0 ,
    \TX_PONG_REG_GEN.pong_mac_program_reg_0 ,
    tx_intr_en_reg_0,
    loopback_en_reg_0,
    p_9_in,
    pong_rx_status,
    p_5_in,
    ping_soft_status,
    pong_soft_status,
    \reg_data_out_reg[31]_0 ,
    p_181_in,
    p_31_in166_in,
    p_25_in148_in,
    p_19_in,
    p_13_in113_in,
    p_7_in94_in,
    \reg_data_out_reg[0]_0 ,
    D,
    \TX_PONG_REG_GEN.pong_tx_status_reg_0 ,
    \MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ,
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ,
    \ping_pkt_lenth_reg[15]_0 ,
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]_0 ,
    \ping_pkt_lenth_reg[2]_0 ,
    \status_reg_reg[5]_0 ,
    prmry_vect_in,
    prmry_in,
    s_axi_aclk,
    phy_rx_clk,
    din,
    phy_tx_clk,
    phy_crs,
    enb,
    web,
    Q,
    s_axi_wdata,
    \gen_wr_b.gen_word_wide.mem_reg ,
    \gen_wr_b.gen_word_wide.mem_reg_0 ,
    \gen_wr_b.gen_word_wide.mem_reg_1 ,
    phy_mdio_i,
    E,
    \reg_data_out_reg[6]_0 ,
    reg_data_out0__0,
    \reg_data_out_reg[15]_0 ,
    \reg_data_out_reg[14]_0 ,
    \reg_data_out_reg[13]_0 ,
    \reg_data_out_reg[12]_0 ,
    \reg_data_out_reg[11]_0 ,
    \reg_data_out_reg[10]_0 ,
    \reg_data_out_reg[9]_0 ,
    \reg_data_out_reg[8]_0 ,
    \reg_data_out_reg[7]_0 ,
    \reg_data_out_reg[6]_1 ,
    reg_access_reg_0,
    \MDIO_GEN.mdio_en_i_reg_1 ,
    tx_intr_en_reg_1,
    rx_intr_en_reg_0,
    gie_enable_reg_0,
    ping_soft_status_reg_0,
    \TX_PONG_REG_GEN.pong_soft_status_reg_0 ,
    \reg_data_out_reg[31]_1 ,
    \reg_data_out_reg[30]_0 ,
    \reg_data_out_reg[5]_0 ,
    \reg_data_out_reg[4]_0 ,
    \reg_data_out_reg[3]_0 ,
    \reg_data_out_reg[2]_0 ,
    \reg_data_out_reg[1]_0 ,
    \reg_data_out_reg[0]_1 ,
    s_axi_aresetn,
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ,
    \reg_data_out_reg[0]_2 ,
    \reg_data_out_reg[0]_3 ,
    \MDIO_GEN.mdio_data_out_reg[10]_0 ,
    \MDIO_GEN.mdio_data_out_reg[3]_0 ,
    \MDIO_GEN.mdio_data_out_reg[10]_1 ,
    \MDIO_GEN.mdio_data_out_reg[4]_0 ,
    mdio_en_i0,
    tx_intr_en0,
    ping_rx_status_reg_0,
    \RX_PONG_REG_GEN.pong_rx_status_reg_0 ,
    \reg_data_out[2]_i_2 ,
    \reg_data_out[2]_i_2_0 ,
    pong_mac_program1,
    \MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ,
    \MDIO_GEN.mdio_data_out_reg[11]_0 ,
    \MDIO_GEN.mdio_data_out_reg[11]_1 ,
    \MDIO_GEN.mdio_data_out_reg[15]_0 ,
    \MDIO_GEN.mdio_data_out_reg[14]_0 ,
    \MDIO_GEN.mdio_data_out_reg[13]_0 ,
    \MDIO_GEN.mdio_data_out_reg[12]_0 ,
    \MDIO_GEN.mdio_data_out_reg[11]_2 ,
    \ping_pkt_lenth_reg[15]_1 ,
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 );
  output [0:0]SR;
  output \MDIO_GEN.mdio_clk_i_reg_0 ;
  output ip2intc_irpt;
  output [4:0]\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
  output phy_mdio_o;
  output phy_mdio_t;
  output reg_access;
  output [0:0]\MDIO_GEN.mdio_en_i_reg_0 ;
  output [0:0]\TX_PONG_REG_GEN.pong_mac_program_reg_0 ;
  output [1:0]tx_intr_en_reg_0;
  output loopback_en_reg_0;
  output [1:0]p_9_in;
  output pong_rx_status;
  output [0:0]p_5_in;
  output ping_soft_status;
  output pong_soft_status;
  output \reg_data_out_reg[31]_0 ;
  output p_181_in;
  output p_31_in166_in;
  output p_25_in148_in;
  output p_19_in;
  output p_13_in113_in;
  output p_7_in94_in;
  output \reg_data_out_reg[0]_0 ;
  output [31:0]D;
  output \TX_PONG_REG_GEN.pong_tx_status_reg_0 ;
  output [4:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ;
  output [13:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ;
  output [13:0]\ping_pkt_lenth_reg[15]_0 ;
  output \TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]_0 ;
  output \ping_pkt_lenth_reg[2]_0 ;
  output [5:0]\status_reg_reg[5]_0 ;
  output [3:0]prmry_vect_in;
  output prmry_in;
  input s_axi_aclk;
  input phy_rx_clk;
  input [5:0]din;
  input phy_tx_clk;
  input phy_crs;
  input enb;
  input [0:0]web;
  input [10:0]Q;
  input [31:0]s_axi_wdata;
  input \gen_wr_b.gen_word_wide.mem_reg ;
  input \gen_wr_b.gen_word_wide.mem_reg_0 ;
  input \gen_wr_b.gen_word_wide.mem_reg_1 ;
  input phy_mdio_i;
  input [0:0]E;
  input \reg_data_out_reg[6]_0 ;
  input reg_data_out0__0;
  input \reg_data_out_reg[15]_0 ;
  input \reg_data_out_reg[14]_0 ;
  input \reg_data_out_reg[13]_0 ;
  input \reg_data_out_reg[12]_0 ;
  input \reg_data_out_reg[11]_0 ;
  input \reg_data_out_reg[10]_0 ;
  input \reg_data_out_reg[9]_0 ;
  input \reg_data_out_reg[8]_0 ;
  input \reg_data_out_reg[7]_0 ;
  input \reg_data_out_reg[6]_1 ;
  input reg_access_reg_0;
  input \MDIO_GEN.mdio_en_i_reg_1 ;
  input tx_intr_en_reg_1;
  input rx_intr_en_reg_0;
  input gie_enable_reg_0;
  input ping_soft_status_reg_0;
  input \TX_PONG_REG_GEN.pong_soft_status_reg_0 ;
  input \reg_data_out_reg[31]_1 ;
  input \reg_data_out_reg[30]_0 ;
  input \reg_data_out_reg[5]_0 ;
  input \reg_data_out_reg[4]_0 ;
  input \reg_data_out_reg[3]_0 ;
  input \reg_data_out_reg[2]_0 ;
  input \reg_data_out_reg[1]_0 ;
  input \reg_data_out_reg[0]_1 ;
  input s_axi_aresetn;
  input \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ;
  input \reg_data_out_reg[0]_2 ;
  input \reg_data_out_reg[0]_3 ;
  input \MDIO_GEN.mdio_data_out_reg[10]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[3]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[10]_1 ;
  input \MDIO_GEN.mdio_data_out_reg[4]_0 ;
  input mdio_en_i0;
  input tx_intr_en0;
  input ping_rx_status_reg_0;
  input \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  input \reg_data_out[2]_i_2 ;
  input \reg_data_out[2]_i_2_0 ;
  input pong_mac_program1;
  input [0:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ;
  input [0:0]\MDIO_GEN.mdio_data_out_reg[11]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[11]_1 ;
  input \MDIO_GEN.mdio_data_out_reg[15]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[14]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[13]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[12]_0 ;
  input \MDIO_GEN.mdio_data_out_reg[11]_2 ;
  input [0:0]\ping_pkt_lenth_reg[15]_1 ;
  input [0:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ;

  wire \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ;
  wire [31:0]D;
  wire D_2;
  wire [3:0]Data_out_a_2;
  wire [0:0]E;
  wire EMAC_I_n_42;
  wire EMAC_I_n_43;
  wire EMAC_I_n_44;
  wire EMAC_I_n_45;
  wire EMAC_I_n_46;
  wire EMAC_I_n_47;
  wire EMAC_I_n_48;
  wire EMAC_I_n_49;
  wire EMAC_I_n_50;
  wire EMAC_I_n_51;
  wire [4:0]\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ;
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
  wire \MDIO_GEN.clk_cnt[0]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt[1]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt[2]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt[3]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt[4]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt[5]_i_1_n_0 ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[0] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[1] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[2] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[3] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[4] ;
  wire \MDIO_GEN.clk_cnt_reg_n_0_[5] ;
  wire \MDIO_GEN.mdio_clk_i_i_1_n_0 ;
  wire \MDIO_GEN.mdio_clk_i_i_2_n_0 ;
  wire \MDIO_GEN.mdio_clk_i_reg_0 ;
  wire \MDIO_GEN.mdio_data_out[10]_i_3_n_0 ;
  wire \MDIO_GEN.mdio_data_out[1]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[2]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[5]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[6]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[7]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[8]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out[9]_i_2_n_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[10]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[10]_1 ;
  wire [0:0]\MDIO_GEN.mdio_data_out_reg[11]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_1 ;
  wire \MDIO_GEN.mdio_data_out_reg[11]_2 ;
  wire \MDIO_GEN.mdio_data_out_reg[12]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[13]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[14]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[15]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[3]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg[4]_0 ;
  wire \MDIO_GEN.mdio_data_out_reg_n_0_[0] ;
  wire [0:0]\MDIO_GEN.mdio_en_i_reg_0 ;
  wire \MDIO_GEN.mdio_en_i_reg_1 ;
  wire [4:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ;
  wire [0:0]\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ;
  wire [10:0]Q;
  wire Q_0;
  wire \RX_PONG_GEN.rx_pong_ping_l_i_1_n_0 ;
  wire \RX_PONG_REG_GEN.pong_rx_status_reg_0 ;
  wire [0:0]SR;
  wire \TX/INST_TX_STATE_MACHINE/txDone ;
  wire TX_PING_n_37;
  wire TX_PING_n_38;
  wire TX_PING_n_39;
  wire \TX_PONG_GEN.TX_PONG_I_n_38 ;
  wire \TX_PONG_GEN.TX_PONG_I_n_39 ;
  wire \TX_PONG_GEN.TX_PONG_I_n_40 ;
  wire \TX_PONG_GEN.TX_PONG_I_n_41 ;
  wire \TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ;
  wire \TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ;
  wire [0:0]\TX_PONG_REG_GEN.pong_mac_program_reg_0 ;
  wire [13:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 ;
  wire [0:0]\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ;
  wire \TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]_0 ;
  wire \TX_PONG_REG_GEN.pong_soft_status_reg_0 ;
  wire \TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ;
  wire \TX_PONG_REG_GEN.pong_tx_status_reg_0 ;
  wire [5:0]din;
  wire [3:0]douta;
  wire ena;
  wire ena4_out;
  wire ena4_out_0;
  wire ena4_out_3;
  wire ena4_out_5;
  wire ena_1;
  wire ena_2;
  wire ena_4;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg ;
  wire \gen_wr_b.gen_word_wide.mem_reg_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_1 ;
  wire gie_enable_reg_0;
  wire ip2intc_irpt;
  wire loopback_en_reg_0;
  wire mdio_en_i0;
  wire mdio_op_i;
  wire [4:0]mdio_phy_addr;
  wire [4:0]mdio_reg_addr;
  wire [10:0]mdio_wr_data_reg;
  wire [0:0]p_0_in_1;
  wire p_12_in111_in;
  wire p_13_in113_in;
  wire [0:0]p_15_in;
  wire [0:0]p_17_in;
  wire p_181_in;
  wire p_18_in;
  wire p_19_in;
  wire p_24_in;
  wire p_25_in148_in;
  wire p_30_in;
  wire p_31_in166_in;
  wire p_36_in184_in;
  wire p_37_in186_in;
  wire p_42_in205_in;
  wire p_43_in207_in;
  wire p_48_in225_in;
  wire p_49_in;
  wire p_54_in244_in;
  wire p_55_in246_in;
  wire [0:0]p_5_in;
  wire p_60_in263_in;
  wire p_61_in265_in;
  wire p_66_in;
  wire p_67_in;
  wire p_6_in92_in;
  wire p_72_in301_in;
  wire p_73_in303_in;
  wire p_78_in;
  wire p_79_in;
  wire p_7_in94_in;
  wire p_84_in;
  wire p_85_in339_in;
  wire p_90_in;
  wire p_91_in355_in;
  wire [1:0]p_9_in;
  wire phy_crs;
  wire phy_mdio_i;
  wire phy_mdio_o;
  wire phy_mdio_t;
  wire phy_rx_clk;
  wire phy_tx_clk;
  wire ping_mac_program_i_1_n_0;
  wire [5:2]ping_pkt_lenth;
  wire [13:0]\ping_pkt_lenth_reg[15]_0 ;
  wire [0:0]\ping_pkt_lenth_reg[15]_1 ;
  wire \ping_pkt_lenth_reg[2]_0 ;
  wire ping_rx_status_reg_0;
  wire ping_soft_status;
  wire ping_soft_status_reg_0;
  wire ping_tx_status_i_1_n_0;
  wire pong_mac_program1;
  wire [5:2]pong_pkt_lenth;
  wire pong_rx_status;
  wire pong_soft_status;
  wire prmry_in;
  wire [3:0]prmry_vect_in;
  wire reg_access;
  wire reg_access_reg_0;
  wire reg_data_out0__0;
  wire \reg_data_out[2]_i_2 ;
  wire \reg_data_out[2]_i_2_0 ;
  wire \reg_data_out_reg[0]_0 ;
  wire \reg_data_out_reg[0]_1 ;
  wire \reg_data_out_reg[0]_2 ;
  wire \reg_data_out_reg[0]_3 ;
  wire \reg_data_out_reg[10]_0 ;
  wire \reg_data_out_reg[11]_0 ;
  wire \reg_data_out_reg[12]_0 ;
  wire \reg_data_out_reg[13]_0 ;
  wire \reg_data_out_reg[14]_0 ;
  wire \reg_data_out_reg[15]_0 ;
  wire \reg_data_out_reg[1]_0 ;
  wire \reg_data_out_reg[2]_0 ;
  wire \reg_data_out_reg[30]_0 ;
  wire \reg_data_out_reg[31]_0 ;
  wire \reg_data_out_reg[31]_1 ;
  wire \reg_data_out_reg[3]_0 ;
  wire \reg_data_out_reg[4]_0 ;
  wire \reg_data_out_reg[5]_0 ;
  wire \reg_data_out_reg[6]_0 ;
  wire \reg_data_out_reg[6]_1 ;
  wire \reg_data_out_reg[7]_0 ;
  wire \reg_data_out_reg[8]_0 ;
  wire \reg_data_out_reg[9]_0 ;
  wire [11:0]rx_DPM_adr;
  wire [3:0]rx_DPM_wr_data;
  wire rx_done;
  wire rx_done_d1;
  wire rx_intr_en_reg_0;
  wire [31:1]rx_ping_data_out;
  wire [31:0]rx_pong_data_out;
  wire rx_pong_ping_l;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire select_2;
  wire [5:0]\status_reg_reg[5]_0 ;
  wire [11:0]tx_DPM_adr;
  wire [3:0]tx_DPM_rd_data;
  wire tx_done_d2;
  wire tx_idle;
  wire tx_intr_en0;
  wire [1:0]tx_intr_en_reg_0;
  wire tx_intr_en_reg_1;
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
  wire [30:0]tx_ping_data_out;
  wire [31:0]tx_pong_data_out;
  wire tx_pong_ping_l;
  wire wea;
  wire wea3_out;
  wire [0:0]web;

  ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_18_emac EMAC_I
       (.D(tx_DPM_rd_data),
        .D_2(D_2),
        .E(EMAC_I_n_48),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\TX_PONG_GEN.TX_PONG_I_n_38 ),
        .\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\TX_PONG_GEN.TX_PONG_I_n_39 ),
        .\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I (\TX_PONG_GEN.TX_PONG_I_n_40 ),
        .IP2INTC_IRPT_REG_I(tx_intr_en_reg_0[1]),
        .Q(tx_packet_length),
        .\RX_PONG_REG_GEN.pong_rx_status_reg (\RX_PONG_REG_GEN.pong_rx_status_reg_0 ),
        .\TX_PONG_GEN.tx_pong_ping_l_reg (ena_1),
        .\TX_PONG_GEN.tx_pong_ping_l_reg_0 (ena4_out_0),
        .addra({rx_DPM_adr[11:3],rx_DPM_adr[1:0]}),
        .axi_phy_tx_en_i_p_reg(prmry_in),
        .din(din),
        .dout(rx_DPM_wr_data),
        .ena(ena4_out_5),
        .loopback_en_reg(loopback_en_reg_0),
        .p_15_in(p_15_in),
        .p_17_in(p_17_in),
        .p_5_in(p_5_in),
        .p_9_in(p_9_in),
        .phy_crs(phy_crs),
        .phy_rx_clk(phy_rx_clk),
        .phy_tx_clk(phy_tx_clk),
        .ping_mac_program_reg({EMAC_I_n_42,EMAC_I_n_43,EMAC_I_n_44,EMAC_I_n_45,EMAC_I_n_46,EMAC_I_n_47}),
        .ping_rx_status_reg(ping_rx_status_reg_0),
        .pong_rx_status(pong_rx_status),
        .prmry_in(SR),
        .prmry_vect_in(prmry_vect_in),
        .rx_done(rx_done),
        .rx_done_d1(rx_done_d1),
        .rx_pong_ping_l(rx_pong_ping_l),
        .\rxbuffer_addr_reg[9]_0 (ena_4),
        .\rxbuffer_addr_reg[9]_1 (ena4_out_3),
        .\rxbuffer_addr_reg[9]_2 (ena_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[0]}),
        .\s_axi_wdata[0]_0 (EMAC_I_n_51),
        .\s_axi_wdata[4] (EMAC_I_n_49),
        .s_axi_wdata_0_sp_1(EMAC_I_n_50),
        .state17a(wea),
        .\status_reg_reg[0] (\TX_PONG_REG_GEN.pong_mac_program_reg_0 ),
        .\status_reg_reg[5] (tx_intr_en_reg_0[0]),
        .txDone(\TX/INST_TX_STATE_MACHINE/txDone ),
        .tx_DPM_adr(tx_DPM_adr),
        .tx_done_d2(tx_done_d2),
        .tx_idle(tx_idle),
        .tx_intr_en0(tx_intr_en0),
        .tx_pong_ping_l(tx_pong_ping_l),
        .\txbuffer_addr_reg[9]_0 (ena4_out),
        .\txbuffer_addr_reg[9]_1 (ena),
        .wea(wea3_out));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IP2INTC_IRPT_REG_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_2),
        .Q(ip2intc_irpt),
        .R(SR));
  ntps_top_axi_ethernetlite_0_0_mdio_if \MDIO_GEN.MDIO_IF_I 
       (.D({\MDIO_GEN.MDIO_IF_I_n_7 ,\MDIO_GEN.MDIO_IF_I_n_8 ,\MDIO_GEN.MDIO_IF_I_n_9 ,\MDIO_GEN.MDIO_IF_I_n_10 ,\MDIO_GEN.MDIO_IF_I_n_11 ,\MDIO_GEN.MDIO_IF_I_n_12 ,\MDIO_GEN.MDIO_IF_I_n_13 ,\MDIO_GEN.MDIO_IF_I_n_14 ,\MDIO_GEN.MDIO_IF_I_n_15 ,\MDIO_GEN.MDIO_IF_I_n_16 ,\MDIO_GEN.MDIO_IF_I_n_17 }),
        .\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0 (\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15] ),
        .\MDIO_GEN.mdio_data_out_reg[10] (\MDIO_GEN.mdio_data_out_reg[10]_0 ),
        .\MDIO_GEN.mdio_data_out_reg[10]_0 (\MDIO_GEN.mdio_data_out_reg[10]_1 ),
        .\MDIO_GEN.mdio_data_out_reg[10]_1 (\MDIO_GEN.mdio_data_out[10]_i_3_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[1] (\MDIO_GEN.mdio_data_out[1]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[2] (\MDIO_GEN.mdio_data_out[2]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[3] (\MDIO_GEN.mdio_data_out_reg[3]_0 ),
        .\MDIO_GEN.mdio_data_out_reg[3]_0 (Q[0]),
        .\MDIO_GEN.mdio_data_out_reg[4] (\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .\MDIO_GEN.mdio_data_out_reg[5] (\MDIO_GEN.mdio_data_out[5]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[6] (\MDIO_GEN.mdio_data_out[6]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[7] (\MDIO_GEN.mdio_data_out[7]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[8] (\MDIO_GEN.mdio_data_out[8]_i_2_n_0 ),
        .\MDIO_GEN.mdio_data_out_reg[9] (mdio_phy_addr),
        .\MDIO_GEN.mdio_data_out_reg[9]_0 (\MDIO_GEN.mdio_data_out[9]_i_2_n_0 ),
        .PHY_MDIO_O_reg_i_8_0({\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 ,mdio_wr_data_reg}),
        .Q(mdio_reg_addr),
        .mdio_clk_reg_reg_0(\MDIO_GEN.mdio_clk_i_reg_0 ),
        .mdio_en_i0(mdio_en_i0),
        .mdio_en_reg_reg_0(\MDIO_GEN.mdio_en_i_reg_0 ),
        .mdio_op_i(mdio_op_i),
        .p_0_in_1(p_0_in_1),
        .phy_mdio_i(phy_mdio_i),
        .phy_mdio_o(phy_mdio_o),
        .phy_mdio_t(phy_mdio_t),
        .prmry_in(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wdata_0_sp_1(\MDIO_GEN.MDIO_IF_I_n_18 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \MDIO_GEN.clk_cnt[0]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .O(\MDIO_GEN.clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \MDIO_GEN.clk_cnt[1]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(\MDIO_GEN.clk_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA5AAA5AAA5AAA4)) 
    \MDIO_GEN.clk_cnt[2]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .O(\MDIO_GEN.clk_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \MDIO_GEN.clk_cnt[3]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(\MDIO_GEN.clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \MDIO_GEN.clk_cnt[4]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .O(\MDIO_GEN.clk_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \MDIO_GEN.clk_cnt[5]_i_1 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .I4(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I5(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .O(\MDIO_GEN.clk_cnt[5]_i_1_n_0 ));
  FDRE \MDIO_GEN.clk_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[0]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .R(SR));
  FDSE \MDIO_GEN.clk_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[1]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .S(SR));
  FDRE \MDIO_GEN.clk_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[2]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .R(SR));
  FDSE \MDIO_GEN.clk_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[3]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .S(SR));
  FDSE \MDIO_GEN.clk_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[4]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .S(SR));
  FDRE \MDIO_GEN.clk_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.clk_cnt[5]_i_1_n_0 ),
        .Q(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \MDIO_GEN.mdio_clk_i_i_1 
       (.I0(\MDIO_GEN.mdio_clk_i_i_2_n_0 ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[5] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[3] ),
        .I3(\MDIO_GEN.clk_cnt_reg_n_0_[4] ),
        .I4(\MDIO_GEN.mdio_clk_i_reg_0 ),
        .O(\MDIO_GEN.mdio_clk_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \MDIO_GEN.mdio_clk_i_i_2 
       (.I0(\MDIO_GEN.clk_cnt_reg_n_0_[2] ),
        .I1(\MDIO_GEN.clk_cnt_reg_n_0_[1] ),
        .I2(\MDIO_GEN.clk_cnt_reg_n_0_[0] ),
        .O(\MDIO_GEN.mdio_clk_i_i_2_n_0 ));
  FDRE \MDIO_GEN.mdio_clk_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.mdio_clk_i_i_1_n_0 ),
        .Q(\MDIO_GEN.mdio_clk_i_reg_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[10]_i_3 
       (.I0(mdio_wr_data_reg[10]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[1]_i_2 
       (.I0(mdio_wr_data_reg[1]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[2]_i_2 
       (.I0(mdio_wr_data_reg[2]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[5]_i_2 
       (.I0(mdio_wr_data_reg[5]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[6]_i_2 
       (.I0(mdio_wr_data_reg[6]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[7]_i_2 
       (.I0(mdio_wr_data_reg[7]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[8]_i_2 
       (.I0(mdio_wr_data_reg[8]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MDIO_GEN.mdio_data_out[9]_i_2 
       (.I0(mdio_wr_data_reg[9]),
        .I1(\MDIO_GEN.mdio_data_out_reg[4]_0 ),
        .O(\MDIO_GEN.mdio_data_out[9]_i_2_n_0 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_17 ),
        .Q(\MDIO_GEN.mdio_data_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_7 ),
        .Q(p_60_in263_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.mdio_data_out_reg[11]_2 ),
        .Q(p_66_in),
        .R(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.mdio_data_out_reg[12]_0 ),
        .Q(p_72_in301_in),
        .R(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.mdio_data_out_reg[13]_0 ),
        .Q(p_78_in),
        .R(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.mdio_data_out_reg[14]_0 ),
        .Q(p_84_in),
        .R(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.mdio_data_out_reg[15]_0 ),
        .Q(p_90_in),
        .R(\MDIO_GEN.mdio_data_out_reg[11]_1 ));
  FDRE \MDIO_GEN.mdio_data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_16 ),
        .Q(p_6_in92_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_15 ),
        .Q(p_12_in111_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_14 ),
        .Q(p_18_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_13 ),
        .Q(p_24_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_12 ),
        .Q(p_30_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_11 ),
        .Q(p_36_in184_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_10 ),
        .Q(p_42_in205_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_9 ),
        .Q(p_48_in225_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_data_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_data_out_reg[11]_0 ),
        .D(\MDIO_GEN.MDIO_IF_I_n_8 ),
        .Q(p_54_in244_in),
        .R(1'b0));
  FDRE \MDIO_GEN.mdio_en_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.mdio_en_i_reg_1 ),
        .Q(\MDIO_GEN.mdio_en_i_reg_0 ),
        .R(SR));
  FDRE \MDIO_GEN.mdio_op_i_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(mdio_op_i),
        .R(SR));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(mdio_phy_addr[0]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(mdio_phy_addr[1]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(mdio_phy_addr[2]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(mdio_phy_addr[3]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_phy_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(mdio_phy_addr[4]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(mdio_reg_addr[0]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(mdio_reg_addr[1]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(mdio_reg_addr[2]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(mdio_reg_addr[3]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_reg_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(mdio_reg_addr[4]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_req_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MDIO_GEN.MDIO_IF_I_n_18 ),
        .Q(p_0_in_1),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[0]),
        .Q(mdio_wr_data_reg[0]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[10]),
        .Q(mdio_wr_data_reg[10]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [0]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [1]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [2]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [3]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\MDIO_GEN.mdio_wr_data_reg_reg[15]_0 [4]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[1]),
        .Q(mdio_wr_data_reg[1]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[2]),
        .Q(mdio_wr_data_reg[2]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[3]),
        .Q(mdio_wr_data_reg[3]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[4]),
        .Q(mdio_wr_data_reg[4]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[5]),
        .Q(mdio_wr_data_reg[5]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[6]),
        .Q(mdio_wr_data_reg[6]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[7]),
        .Q(mdio_wr_data_reg[7]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[8]),
        .Q(mdio_wr_data_reg[8]),
        .R(SR));
  FDRE \MDIO_GEN.mdio_wr_data_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\MDIO_GEN.mdio_wr_data_reg_reg[15]_1 ),
        .D(s_axi_wdata[9]),
        .Q(mdio_wr_data_reg[9]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_done),
        .Q(rx_done_d1),
        .R(SR));
  ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__2 RX_PING
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0] (\reg_data_out_reg[0]_0 ),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_0 (reg_access),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]_1 (p_181_in),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8] ({p_48_in225_in,p_42_in205_in,p_18_in,\MDIO_GEN.mdio_data_out_reg_n_0_[0] }),
        .D({D[28],D[21:20],D[17],D[8:7],D[3],D[0]}),
        .Q(Q),
        .addra({rx_DPM_adr[11:3],rx_DPM_adr[1:0]}),
        .dout(rx_DPM_wr_data),
        .ena(ena4_out_5),
        .\gen_wr_b.gen_word_wide.mem_reg ({rx_ping_data_out[31:29],rx_ping_data_out[27:22],rx_ping_data_out[19:18],rx_ping_data_out[16:9],rx_ping_data_out[6:4],rx_ping_data_out[2:1]}),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (ena_4),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (wea),
        .\gen_wr_b.gen_word_wide.mem_reg_2 (\gen_wr_b.gen_word_wide.mem_reg ),
        .p_19_in(p_19_in),
        .p_43_in207_in(p_43_in207_in),
        .p_49_in(p_49_in),
        .rx_pong_data_out({rx_pong_data_out[28],rx_pong_data_out[21:20],rx_pong_data_out[17],rx_pong_data_out[8:7],rx_pong_data_out[3],rx_pong_data_out[0]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_ping_data_out({tx_ping_data_out[28],tx_ping_data_out[21:20],tx_ping_data_out[17],tx_ping_data_out[8:7],tx_ping_data_out[3],tx_ping_data_out[0]}),
        .tx_pong_data_out({tx_pong_data_out[28],tx_pong_data_out[21:20],tx_pong_data_out[17],tx_pong_data_out[8:7],tx_pong_data_out[3],tx_pong_data_out[0]}),
        .wea(wea3_out),
        .web(web));
  ntps_top_axi_ethernetlite_0_0_emac_dpram \RX_PONG_GEN.RX_PONG_I 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10] ({p_60_in263_in,p_36_in184_in,p_12_in111_in}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_0 (reg_access),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_1 ({rx_ping_data_out[30:29],rx_ping_data_out[27:26],rx_ping_data_out[24:23],rx_ping_data_out[18],rx_ping_data_out[15],rx_ping_data_out[12],rx_ping_data_out[10],rx_ping_data_out[6],rx_ping_data_out[2]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]_2 (p_181_in),
        .D({D[30:29],D[27:26],D[24:23],D[18],D[15],D[12],D[10],D[6],D[2]}),
        .Q(Q),
        .addra({rx_DPM_adr[11:3],rx_DPM_adr[1:0]}),
        .dout(rx_DPM_wr_data),
        .\gen_wr_b.gen_word_wide.mem_reg ({rx_pong_data_out[31],rx_pong_data_out[28],rx_pong_data_out[25],rx_pong_data_out[22:19],rx_pong_data_out[17:16],rx_pong_data_out[14:13],rx_pong_data_out[11],rx_pong_data_out[9:7],rx_pong_data_out[5:3],rx_pong_data_out[1:0]}),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (ena_2),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (wea),
        .\gen_wr_b.gen_word_wide.mem_reg_2 (\gen_wr_b.gen_word_wide.mem_reg_1 ),
        .\gen_wr_b.gen_word_wide.mem_reg_3 (ena4_out_3),
        .p_13_in113_in(p_13_in113_in),
        .p_37_in186_in(p_37_in186_in),
        .p_61_in265_in(p_61_in265_in),
        .p_72_in301_in(p_72_in301_in),
        .p_73_in303_in(p_73_in303_in),
        .p_90_in(p_90_in),
        .p_91_in355_in(p_91_in355_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tx_ping_data_out({tx_ping_data_out[30:29],tx_ping_data_out[27:26],tx_ping_data_out[24:23],tx_ping_data_out[18],tx_ping_data_out[15],tx_ping_data_out[12],tx_ping_data_out[10],tx_ping_data_out[6],tx_ping_data_out[2]}),
        .tx_pong_data_out({tx_pong_data_out[30:29],tx_pong_data_out[27:26],tx_pong_data_out[24:23],tx_pong_data_out[18],tx_pong_data_out[15],tx_pong_data_out[12],tx_pong_data_out[10],tx_pong_data_out[6],tx_pong_data_out[2]}),
        .wea(wea3_out),
        .web(web));
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
        .R(SR));
  FDRE \RX_PONG_REG_GEN.pong_rx_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_51),
        .Q(pong_rx_status),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D1_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX/INST_TX_STATE_MACHINE/txDone ),
        .Q(Q_0),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    TX_DONE_D2_I
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q_0),
        .Q(tx_done_d2),
        .R(SR));
  ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__1 TX_PING
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1] (p_6_in92_in),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25] (p_181_in),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_0 (reg_access),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_1 ({rx_pong_data_out[31],rx_pong_data_out[25],rx_pong_data_out[16],rx_pong_data_out[1]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_2 ({rx_ping_data_out[31],rx_ping_data_out[25],rx_ping_data_out[16],rx_ping_data_out[1]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]_3 (\reg_data_out_reg[31]_0 ),
        .D({D[31],D[25],D[16],D[1]}),
        .Q(Q),
        .douta({douta[3:2],douta[0]}),
        .enb(enb),
        .\gen_wr_b.gen_word_wide.mem_reg ({tx_ping_data_out[30:26],tx_ping_data_out[24:17],tx_ping_data_out[15:2],tx_ping_data_out[0]}),
        .\gen_wr_b.gen_word_wide.mem_reg_0 (tx_DPM_rd_data),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (TX_PING_n_37),
        .\gen_wr_b.gen_word_wide.mem_reg_2 (TX_PING_n_38),
        .\gen_wr_b.gen_word_wide.mem_reg_3 (TX_PING_n_39),
        .\gen_wr_b.gen_word_wide.mem_reg_4 (ena_1),
        .\gen_wr_b.gen_word_wide.mem_reg_5 (ena4_out_0),
        .p_7_in94_in(p_7_in94_in),
        .prmry_in(SR),
        .ram16x1_1(\TX_PONG_GEN.TX_PONG_I_n_41 ),
        .ram16x1_3({Data_out_a_2[3:2],Data_out_a_2[0]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .select_2(select_2),
        .tx_DPM_adr(tx_DPM_adr),
        .tx_idle(tx_idle),
        .tx_pong_data_out({tx_pong_data_out[31],tx_pong_data_out[25],tx_pong_data_out[16],tx_pong_data_out[1]}),
        .tx_pong_ping_l(tx_pong_ping_l),
        .web(web));
  ntps_top_axi_ethernetlite_0_0_emac_dpram__xdcDup__3 \TX_PONG_GEN.TX_PONG_I 
       (.\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] (\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22] ),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_0 (reg_access),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_1 ({rx_ping_data_out[22],rx_ping_data_out[19],rx_ping_data_out[14:13],rx_ping_data_out[11],rx_ping_data_out[9],rx_ping_data_out[5:4]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_2 ({rx_pong_data_out[22],rx_pong_data_out[19],rx_pong_data_out[14:13],rx_pong_data_out[11],rx_pong_data_out[9],rx_pong_data_out[5:4]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_3 ({tx_ping_data_out[22],tx_ping_data_out[19],tx_ping_data_out[14:13],tx_ping_data_out[11],tx_ping_data_out[9],tx_ping_data_out[5:4]}),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]_4 (p_181_in),
        .\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9] ({p_54_in244_in,p_30_in,p_24_in}),
        .D({D[22],D[19],D[14:13],D[11],D[9],D[5:4]}),
        .\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 (TX_PING_n_37),
        .\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 (TX_PING_n_38),
        .\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1 (TX_PING_n_39),
        .Q(Q),
        .STATE0A(\TX_PONG_GEN.TX_PONG_I_n_38 ),
        .STATE0A_0(\TX_PONG_GEN.TX_PONG_I_n_39 ),
        .STATE0A_1(\TX_PONG_GEN.TX_PONG_I_n_40 ),
        .douta({douta[3:2],douta[0]}),
        .\gen_wr_b.gen_word_wide.mem_reg ({tx_pong_data_out[31:23],tx_pong_data_out[21:20],tx_pong_data_out[18:15],tx_pong_data_out[12],tx_pong_data_out[10],tx_pong_data_out[8:6],tx_pong_data_out[3:0]}),
        .\gen_wr_b.gen_word_wide.mem_reg_0 ({Data_out_a_2[3:2],Data_out_a_2[0]}),
        .\gen_wr_b.gen_word_wide.mem_reg_1 (\TX_PONG_GEN.TX_PONG_I_n_41 ),
        .\gen_wr_b.gen_word_wide.mem_reg_2 (ena),
        .\gen_wr_b.gen_word_wide.mem_reg_3 (\gen_wr_b.gen_word_wide.mem_reg_0 ),
        .\gen_wr_b.gen_word_wide.mem_reg_4 (ena4_out),
        .p_25_in148_in(p_25_in148_in),
        .p_31_in166_in(p_31_in166_in),
        .p_55_in246_in(p_55_in246_in),
        .p_66_in(p_66_in),
        .p_67_in(p_67_in),
        .p_78_in(p_78_in),
        .p_79_in(p_79_in),
        .p_84_in(p_84_in),
        .p_85_in339_in(p_85_in339_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .select_2(select_2),
        .tx_DPM_adr({tx_DPM_adr[11:3],tx_DPM_adr[1:0]}),
        .tx_idle(tx_idle),
        .tx_pong_ping_l(tx_pong_ping_l),
        .web(web));
  LUT4 #(
    .INIT(16'h45AE)) 
    \TX_PONG_GEN.tx_pong_ping_l_i_1 
       (.I0(Q_0),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(tx_pong_ping_l),
        .O(\TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_PONG_GEN.tx_pong_ping_l_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_GEN.tx_pong_ping_l_i_1_n_0 ),
        .Q(tx_pong_ping_l),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \TX_PONG_REG_GEN.pong_mac_program_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(pong_mac_program1),
        .I2(tx_pong_ping_l),
        .I3(Q_0),
        .I4(\TX_PONG_REG_GEN.pong_mac_program_reg_0 ),
        .O(\TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ));
  FDRE \TX_PONG_REG_GEN.pong_mac_program_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_mac_program_i_1_n_0 ),
        .Q(\TX_PONG_REG_GEN.pong_mac_program_reg_0 ),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[0] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [0]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[10] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [8]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[11] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [9]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[12] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [10]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[13] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [11]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[14] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [12]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [13]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[1] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [1]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[2] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[2]),
        .Q(pong_pkt_lenth[2]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[3] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [2]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[4] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [3]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[5] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[5]),
        .Q(pong_pkt_lenth[5]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[6] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [4]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[7] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [5]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[8] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [6]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_pkt_lenth_reg[9] 
       (.C(s_axi_aclk),
        .CE(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [7]),
        .R(SR));
  FDRE \TX_PONG_REG_GEN.pong_soft_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_soft_status_reg_0 ),
        .Q(pong_soft_status),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    \TX_PONG_REG_GEN.pong_tx_status_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(pong_mac_program1),
        .I2(tx_pong_ping_l),
        .I3(Q_0),
        .I4(p_15_in),
        .O(\TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ));
  FDRE \TX_PONG_REG_GEN.pong_tx_status_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\TX_PONG_REG_GEN.pong_tx_status_i_1_n_0 ),
        .Q(p_15_in),
        .R(SR));
  FDRE gie_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gie_enable_reg_0),
        .Q(p_5_in),
        .R(SR));
  FDRE loopback_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_49),
        .Q(loopback_en_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    ping_mac_program_i_1
       (.I0(s_axi_wdata[1]),
        .I1(tx_intr_en0),
        .I2(tx_pong_ping_l),
        .I3(Q_0),
        .I4(tx_intr_en_reg_0[0]),
        .O(ping_mac_program_i_1_n_0));
  FDRE ping_mac_program_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_mac_program_i_1_n_0),
        .Q(tx_intr_en_reg_0[0]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[0] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\ping_pkt_lenth_reg[15]_0 [0]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[10] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\ping_pkt_lenth_reg[15]_0 [8]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[11] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\ping_pkt_lenth_reg[15]_0 [9]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[12] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\ping_pkt_lenth_reg[15]_0 [10]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[13] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\ping_pkt_lenth_reg[15]_0 [11]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[14] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\ping_pkt_lenth_reg[15]_0 [12]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[15] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\ping_pkt_lenth_reg[15]_0 [13]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[1] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\ping_pkt_lenth_reg[15]_0 [1]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[2] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[2]),
        .Q(ping_pkt_lenth[2]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[3] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\ping_pkt_lenth_reg[15]_0 [2]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[4] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\ping_pkt_lenth_reg[15]_0 [3]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[5] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[5]),
        .Q(ping_pkt_lenth[5]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[6] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\ping_pkt_lenth_reg[15]_0 [4]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[7] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\ping_pkt_lenth_reg[15]_0 [5]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[8] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\ping_pkt_lenth_reg[15]_0 [6]),
        .R(SR));
  FDRE \ping_pkt_lenth_reg[9] 
       (.C(s_axi_aclk),
        .CE(\ping_pkt_lenth_reg[15]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\ping_pkt_lenth_reg[15]_0 [7]),
        .R(SR));
  FDRE ping_rx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EMAC_I_n_50),
        .Q(p_9_in[0]),
        .R(SR));
  FDRE ping_soft_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_soft_status_reg_0),
        .Q(ping_soft_status),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    ping_tx_status_i_1
       (.I0(s_axi_wdata[0]),
        .I1(tx_intr_en0),
        .I2(tx_pong_ping_l),
        .I3(Q_0),
        .I4(p_17_in),
        .O(ping_tx_status_i_1_n_0));
  FDRE ping_tx_status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ping_tx_status_i_1_n_0),
        .Q(p_17_in),
        .R(SR));
  FDRE reg_access_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reg_access_reg_0),
        .Q(reg_access),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \reg_data_out[0]_i_2 
       (.I0(p_15_in),
        .I1(\reg_data_out_reg[0]_2 ),
        .I2(\reg_data_out_reg[0]_3 ),
        .I3(p_17_in),
        .O(\TX_PONG_REG_GEN.pong_tx_status_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h110D)) 
    \reg_data_out[2]_i_3 
       (.I0(ping_pkt_lenth[2]),
        .I1(\reg_data_out[2]_i_2_0 ),
        .I2(pong_pkt_lenth[2]),
        .I3(\reg_data_out[2]_i_2 ),
        .O(\ping_pkt_lenth_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h110D)) 
    \reg_data_out[5]_i_3 
       (.I0(pong_pkt_lenth[5]),
        .I1(\reg_data_out[2]_i_2 ),
        .I2(ping_pkt_lenth[5]),
        .I3(\reg_data_out[2]_i_2_0 ),
        .O(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]_0 ));
  FDRE \reg_data_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[0]_1 ),
        .Q(\reg_data_out_reg[0]_0 ),
        .R(1'b0));
  FDRE \reg_data_out_reg[10] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[10]_0 ),
        .Q(p_61_in265_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[11] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[11]_0 ),
        .Q(p_67_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[12] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[12]_0 ),
        .Q(p_73_in303_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[13] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[13]_0 ),
        .Q(p_79_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[14] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[14]_0 ),
        .Q(p_85_in339_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[15] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[15]_0 ),
        .Q(p_91_in355_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[1]_0 ),
        .Q(p_7_in94_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[2]_0 ),
        .Q(p_13_in113_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[30]_0 ),
        .Q(p_181_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[31]_1 ),
        .Q(\reg_data_out_reg[31]_0 ),
        .R(1'b0));
  FDRE \reg_data_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[3]_0 ),
        .Q(p_19_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[4]_0 ),
        .Q(p_25_in148_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reg_data_out_reg[5]_0 ),
        .Q(p_31_in166_in),
        .R(1'b0));
  FDRE \reg_data_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[6]_1 ),
        .Q(p_37_in186_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[7]_0 ),
        .Q(p_43_in207_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[8]_0 ),
        .Q(p_49_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE \reg_data_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(reg_data_out0__0),
        .D(\reg_data_out_reg[9]_0 ),
        .Q(p_55_in246_in),
        .R(\reg_data_out_reg[6]_0 ));
  FDRE rx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_intr_en_reg_0),
        .Q(p_9_in[1]),
        .R(SR));
  FDRE \status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_47),
        .Q(\status_reg_reg[5]_0 [0]),
        .R(1'b0));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_46),
        .Q(\status_reg_reg[5]_0 [1]),
        .R(1'b0));
  FDRE \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_45),
        .Q(\status_reg_reg[5]_0 [2]),
        .R(1'b0));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_44),
        .Q(\status_reg_reg[5]_0 [3]),
        .R(1'b0));
  FDRE \status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_43),
        .Q(\status_reg_reg[5]_0 [4]),
        .R(1'b0));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(EMAC_I_n_48),
        .D(EMAC_I_n_42),
        .Q(\status_reg_reg[5]_0 [5]),
        .R(1'b0));
  FDRE tx_intr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_intr_en_reg_1),
        .Q(tx_intr_en_reg_0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[0]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [0]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [0]),
        .O(\tx_packet_length[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[10]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [8]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [8]),
        .O(\tx_packet_length[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[11]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [9]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [9]),
        .O(\tx_packet_length[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[12]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [10]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [10]),
        .O(\tx_packet_length[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[13]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [11]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [11]),
        .O(\tx_packet_length[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[14]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [12]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [12]),
        .O(\tx_packet_length[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[15]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [13]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [13]),
        .O(\tx_packet_length[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[1]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [1]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [1]),
        .O(\tx_packet_length[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[2]_i_1 
       (.I0(pong_pkt_lenth[2]),
        .I1(tx_pong_ping_l),
        .I2(ping_pkt_lenth[2]),
        .O(\tx_packet_length[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[3]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [2]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [2]),
        .O(\tx_packet_length[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[4]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [3]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [3]),
        .O(\tx_packet_length[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[5]_i_1 
       (.I0(pong_pkt_lenth[5]),
        .I1(tx_pong_ping_l),
        .I2(ping_pkt_lenth[5]),
        .O(\tx_packet_length[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[6]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [4]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [4]),
        .O(\tx_packet_length[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[7]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [5]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [5]),
        .O(\tx_packet_length[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[8]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [6]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [6]),
        .O(\tx_packet_length[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_packet_length[9]_i_1 
       (.I0(\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0 [7]),
        .I1(tx_pong_ping_l),
        .I2(\ping_pkt_lenth_reg[15]_0 [7]),
        .O(\tx_packet_length[9]_i_1_n_0 ));
  FDRE \tx_packet_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[0]_i_1_n_0 ),
        .Q(tx_packet_length[0]),
        .R(SR));
  FDRE \tx_packet_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[10]_i_1_n_0 ),
        .Q(tx_packet_length[10]),
        .R(SR));
  FDRE \tx_packet_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[11]_i_1_n_0 ),
        .Q(tx_packet_length[11]),
        .R(SR));
  FDRE \tx_packet_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[12]_i_1_n_0 ),
        .Q(tx_packet_length[12]),
        .R(SR));
  FDRE \tx_packet_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[13]_i_1_n_0 ),
        .Q(tx_packet_length[13]),
        .R(SR));
  FDRE \tx_packet_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[14]_i_1_n_0 ),
        .Q(tx_packet_length[14]),
        .R(SR));
  FDRE \tx_packet_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[15]_i_1_n_0 ),
        .Q(tx_packet_length[15]),
        .R(SR));
  FDRE \tx_packet_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[1]_i_1_n_0 ),
        .Q(tx_packet_length[1]),
        .R(SR));
  FDRE \tx_packet_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[2]_i_1_n_0 ),
        .Q(tx_packet_length[2]),
        .R(SR));
  FDRE \tx_packet_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[3]_i_1_n_0 ),
        .Q(tx_packet_length[3]),
        .R(SR));
  FDRE \tx_packet_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[4]_i_1_n_0 ),
        .Q(tx_packet_length[4]),
        .R(SR));
  FDRE \tx_packet_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[5]_i_1_n_0 ),
        .Q(tx_packet_length[5]),
        .R(SR));
  FDRE \tx_packet_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[6]_i_1_n_0 ),
        .Q(tx_packet_length[6]),
        .R(SR));
  FDRE \tx_packet_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[7]_i_1_n_0 ),
        .Q(tx_packet_length[7]),
        .R(SR));
  FDRE \tx_packet_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[8]_i_1_n_0 ),
        .Q(tx_packet_length[8]),
        .R(SR));
  FDRE \tx_packet_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tx_packet_length[9]_i_1_n_0 ),
        .Q(tx_packet_length[9]),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__5
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__6
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn_12
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__5_n_0 ;
  wire \count_value_i[3]_i_1__5_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__5_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__5_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_11
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__5_n_0 ;
  wire \count_value_i[2]_i_1__5_n_0 ;
  wire \count_value_i[3]_i_1__5_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__5_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__5_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_22
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_8
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1
   (D,
    Q,
    \reg_out_i_reg[3] ,
    E,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    SR,
    rd_clk);
  output [1:0]D;
  output [4:0]Q;
  output [1:0]\reg_out_i_reg[3] ;
  output [0:0]E;
  input [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  input rd_en;
  input \count_value_i_reg[0]_0 ;
  input [4:0]\grdc.rd_data_count_i_reg[4] ;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  wire \grdc.rd_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\reg_out_i_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__5 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4D444D4DDDDD4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [0]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\grdc.rd_data_count_i_reg[4] [3]),
        .O(\reg_out_i_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(\grdc.rd_data_count_i_reg[4] [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\grdc.rd_data_count_i_reg[4] [4]),
        .O(\reg_out_i_reg[3] [1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[4] [2]),
        .I2(\grdc.rd_data_count_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\grdc.rd_data_count_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\grdc.rd_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_17
   (D,
    Q,
    \reg_out_i_reg[3] ,
    E,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    SR,
    rd_clk);
  output [1:0]D;
  output [4:0]Q;
  output [1:0]\reg_out_i_reg[3] ;
  output [0:0]E;
  input [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  input rd_en;
  input \count_value_i_reg[0]_0 ;
  input [4:0]\grdc.rd_data_count_i_reg[4] ;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__5_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  wire \grdc.rd_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\reg_out_i_reg[3] ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__5 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__5_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4D444D4DDDDD4DD)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [0]),
        .I3(rd_en),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\grdc.rd_data_count_i_reg[4] [3]),
        .O(\reg_out_i_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\grdc.rd_data_count_i[4]_i_2_n_0 ),
        .I1(\grdc.rd_data_count_i_reg[4] [3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\grdc.rd_data_count_i_reg[4] [4]),
        .O(\reg_out_i_reg[3] [1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[4] [2]),
        .I2(\grdc.rd_data_count_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\grdc.rd_data_count_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\grdc.rd_data_count_i[4]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_20
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [4:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_6
   (Q,
    wrst_busy,
    wr_pntr_plus1_pf_carry,
    wr_clk);
  output [4:0]Q;
  input wrst_busy;
  input wr_pntr_plus1_pf_carry;
  input wr_clk;

  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_18
   (Q,
    SR,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_21
   (D,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ,
    wrst_busy,
    wr_clk);
  output [0:0]D;
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  input wrst_busy;
  input wr_clk;

  wire [0:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [1]),
        .I4(Q[1]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_7
   (D,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ,
    wrst_busy,
    wr_clk);
  output [0:0]D;
  output [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  input wrst_busy;
  input wr_clk;

  wire [0:0]D;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [1:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[2]_i_1 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(Q[0]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] [1]),
        .I4(Q[1]),
        .O(D));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "0" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "2" *) 
(* READ_DATA_WIDTH = "6" *) (* READ_MODE = "std" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "96" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "10" *) 
  (* PE_THRESH_MAX = "13" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "10" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "0" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "2" *) 
(* READ_DATA_WIDTH = "6" *) (* READ_MODE = "std" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_async__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "96" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "10" *) 
  (* PE_THRESH_MAX = "13" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "10" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "2" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "6" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "6" *) 
  (* WR_DATA_COUNT_WIDTH = "2" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "3" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_base__xdcDup__1 \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "96" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "10" *) (* PE_THRESH_MAX = "13" *) (* PE_THRESH_MIN = "3" *) 
(* PF_THRESH_ADJ = "10" *) (* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "2" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "1" *) (* RD_MODE = "0" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "6" *) (* READ_MODE = "0" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output full_n;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire empty_i0;
  wire full;
  wire \gae_rptr_p2.rdpp2_inst_n_0 ;
  wire \gae_rptr_p2.rdpp2_inst_n_1 ;
  wire \gae_rptr_p2.rdpp2_inst_n_2 ;
  wire \gae_rptr_p2.rdpp2_inst_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:3]\grdc.diff_wr_rd_pntr_rdc0_out ;
  wire [4:3]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire [4:0]rd_pntr_ext;
  wire [1:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [5:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0 \gae_rptr_p2.rdpp2_inst 
       (.E(rdp_inst_n_9),
        .Q({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gdvld.data_valid_std_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(data_valid),
        .R(rd_rst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext[3:0]));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(diff_pntr_pf_q0[4:3]),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\reg_out_i_reg[1]_0 (rd_pntr_wr),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .\reg_out_i_reg[3]_1 (rd_pntr_wr_cdc),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[4]_0 (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_4 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q(rd_pntr_ext[3:0]),
        .SR(rd_rst_busy),
        .almost_empty(almost_empty),
        .empty_i0(empty_i0),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg (empty),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\reg_out_i_reg[3]_1 (wr_pntr_rd_cdc));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_5 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__6 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__6 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .Q(almost_empty),
        .S(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'hFFFF15FF000015FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I4(empty),
        .I5(prog_empty),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(empty),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "6" *) 
  (* BYTE_WRITE_WIDTH_B = "6" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "96" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "6" *) 
  (* P_MIN_WIDTH_DATA_A = "6" *) 
  (* P_MIN_WIDTH_DATA_B = "6" *) 
  (* P_MIN_WIDTH_DATA_ECC = "6" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "6" *) 
  (* P_WIDTH_COL_WRITE_B = "6" *) 
  (* READ_DATA_WIDTH_A = "6" *) 
  (* READ_DATA_WIDTH_B = "6" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "6" *) 
  (* WRITE_DATA_WIDTH_B = "6" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext[3:0]),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [5:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [3]),
        .Q(rd_data_count[0]),
        .R(rd_rst_busy));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [4]),
        .Q(rd_data_count[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .E(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .SR(rd_rst_busy),
        .\count_value_i_reg[0]_0 (empty),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\grdc.rd_data_count_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] (\grdc.diff_wr_rd_pntr_rdc0_out ));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2 rdpp1_inst
       (.E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_6 wrp_inst
       (.Q(wr_pntr_ext),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_7 wrpp1_inst
       (.D(diff_pntr_pf_q0[2]),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_8 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.SR(rd_rst_busy),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "96" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "10" *) (* PE_THRESH_MAX = "13" *) (* PE_THRESH_MIN = "3" *) 
(* PF_THRESH_ADJ = "10" *) (* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "2" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "1" *) (* RD_MODE = "0" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "6" *) (* READ_MODE = "0" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "6" *) (* WR_DATA_COUNT_WIDTH = "2" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "3" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_base__xdcDup__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [5:0]din;
  output full;
  output full_n;
  output prog_full;
  output [1:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [5:0]dout;
  output empty;
  output prog_empty;
  output [1:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [3:0]count_value_i;
  wire data_valid;
  wire [3:0]diff_pntr_pe;
  wire [4:2]diff_pntr_pf_q;
  wire [4:2]diff_pntr_pf_q0;
  wire [5:0]din;
  wire [5:0]dout;
  wire empty;
  wire empty_i0;
  wire full;
  wire \gae_rptr_p2.rdpp2_inst_n_0 ;
  wire \gae_rptr_p2.rdpp2_inst_n_1 ;
  wire \gae_rptr_p2.rdpp2_inst_n_2 ;
  wire \gae_rptr_p2.rdpp2_inst_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:3]\grdc.diff_wr_rd_pntr_rdc0_out ;
  wire [4:3]\gwdc.diff_wr_rd_pntr1_out ;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [1:0]rd_data_count;
  wire rd_en;
  wire [4:0]rd_pntr_ext;
  wire [1:0]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [1:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [5:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_11 \gae_rptr_p2.rdpp2_inst 
       (.E(rdp_inst_n_9),
        .Q({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn_12 \gaf_wptr_p3.wrpp3_inst 
       (.Q(count_value_i),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gdvld.data_valid_std_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(data_valid),
        .R(rd_rst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__5 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__5 \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext[3:0]));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_13 \gen_cdc_pntr.rpw_gray_reg 
       (.D(diff_pntr_pf_q0[4:3]),
        .Q(wr_pntr_plus1_pf),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (full),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (count_value_i),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .\reg_out_i_reg[1]_0 (rd_pntr_wr),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .\reg_out_i_reg[3]_1 (rd_pntr_wr_cdc),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_14 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\reg_out_i_reg[4]_0 (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_15 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q(rd_pntr_ext[3:0]),
        .SR(rd_rst_busy),
        .almost_empty(almost_empty),
        .empty_i0(empty_i0),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg (empty),
        .\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ({\gae_rptr_p2.rdpp2_inst_n_0 ,\gae_rptr_p2.rdpp2_inst_n_1 ,\gae_rptr_p2.rdpp2_inst_n_2 ,\gae_rptr_p2.rdpp2_inst_n_3 }),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\reg_out_i_reg[3]_1 (wr_pntr_rd_cdc));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_16 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__parameterized0__4 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_gray__4 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.wpr_gray_reg_n_7 ),
        .Q(almost_empty),
        .S(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_5 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'hFFFF15FF000015FF)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I4(empty),
        .I5(prog_empty),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(empty),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "6" *) 
  (* BYTE_WRITE_WIDTH_B = "6" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "96" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "6" *) 
  (* P_MIN_WIDTH_DATA_A = "6" *) 
  (* P_MIN_WIDTH_DATA_B = "6" *) 
  (* P_MIN_WIDTH_DATA_ECC = "6" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "6" *) 
  (* P_WIDTH_COL_WRITE_B = "6" *) 
  (* READ_DATA_WIDTH_A = "6" *) 
  (* READ_DATA_WIDTH_B = "6" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "6" *) 
  (* WRITE_DATA_WIDTH_B = "6" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "8" *) 
  (* rstb_loop_iter = "8" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext[3:0]),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [5:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [3]),
        .Q(rd_data_count[0]),
        .R(rd_rst_busy));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc0_out [4]),
        .Q(rd_data_count[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_17 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .E(rdp_inst_n_9),
        .Q(rd_pntr_ext),
        .SR(rd_rst_busy),
        .\count_value_i_reg[0]_0 (empty),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 }),
        .\grdc.rd_data_count_i_reg[4] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[3] (\grdc.diff_wr_rd_pntr_rdc0_out ));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_18 rdpp1_inst
       (.E(rdp_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .SR(rd_rst_busy),
        .rd_clk(rd_clk));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_bit_19 rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized1_20 wrp_inst
       (.Q(wr_pntr_ext),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized2_21 wrpp1_inst
       (.D(diff_pntr_pf_q0[2]),
        .Q(wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[2] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_counter_updn__parameterized0_22 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  ntps_top_axi_ethernetlite_0_0_xpm_fifo_rst__xdcDup__1 xpm_fifo_rst_inst
       (.SR(rd_rst_busy),
        .d_out_reg(xpm_fifo_rst_inst_n_2),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ,
    clr_full,
    overflow_i0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  output clr_full;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_bit_19
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ,
    clr_full,
    overflow_i0,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  output clr_full;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(wrst_busy),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D,
    \reg_out_i_reg[1]_0 ,
    \reg_out_i_reg[3]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ,
    wrst_busy,
    wr_en,
    clr_full,
    \reg_out_i_reg[3]_1 ,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [1:0]D;
  output [1:0]\reg_out_i_reg[1]_0 ;
  output \reg_out_i_reg[3]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  input wrst_busy;
  input wr_en;
  input clr_full;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input wr_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:2]rd_pntr_wr;
  wire [1:0]\reg_out_i_reg[1]_0 ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\reg_out_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[1]_0 [1]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444444D44444444)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I5(wr_en),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[1]_0 [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[1]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[1]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_13
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    D,
    \reg_out_i_reg[1]_0 ,
    \reg_out_i_reg[3]_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    rst,
    rst_d1,
    almost_full,
    Q,
    wr_pntr_plus1_pf_carry,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ,
    wrst_busy,
    wr_en,
    clr_full,
    \reg_out_i_reg[3]_1 ,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  output [1:0]D;
  output [1:0]\reg_out_i_reg[1]_0 ;
  output \reg_out_i_reg[3]_0 ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input rst;
  input rst_d1;
  input almost_full;
  input [3:0]Q;
  input wr_pntr_plus1_pf_carry;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  input wrst_busy;
  input wr_en;
  input clr_full;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input wr_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire almost_full;
  wire clr_full;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire [3:0]\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire leaving_afull;
  wire ram_afull_i0;
  wire [3:2]rd_pntr_wr;
  wire [1:0]\reg_out_i_reg[1]_0 ;
  wire \reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'hF0FE0002)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(ram_afull_i0),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I2(rst),
        .I3(rst_d1),
        .I4(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I5(rd_pntr_wr[3]),
        .O(ram_afull_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF909090)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(rd_pntr_wr[3]),
        .I1(Q[3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(leaving_afull),
        .I4(wr_pntr_plus1_pf_carry),
        .I5(clr_full),
        .O(\reg_out_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[3]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1 [1]),
        .I5(\reg_out_i_reg[1]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\reg_out_i_reg[1]_0 [1]),
        .I3(rd_pntr_wr[2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444444D44444444)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I5(wr_en),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rd_pntr_wr[2]),
        .I3(rd_pntr_wr[3]),
        .I4(Q[3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(\reg_out_i_reg[1]_0 [1]),
        .I1(Q[1]),
        .I2(wr_pntr_plus1_pf_carry),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[1]_0 [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[1]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[1]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(rd_pntr_wr[3]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_15
   (empty_i0,
    \reg_out_i_reg[3]_0 ,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    rd_en,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ,
    Q,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    almost_empty,
    SR,
    \reg_out_i_reg[3]_1 ,
    rd_clk);
  output empty_i0;
  output [3:0]\reg_out_i_reg[3]_0 ;
  output [1:0]D;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  input rd_en;
  input \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  input [3:0]Q;
  input [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input almost_empty;
  input [0:0]SR;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire almost_empty;
  wire empty_i0;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_aempty;
  wire leaving_aempty;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;

  LUT4 #(
    .INIT(16'hFE0E)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_1 
       (.I0(going_aempty),
        .I1(leaving_aempty),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(almost_empty),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
  LUT5 #(
    .INIT(32'h00820000)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_2 
       (.I0(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [3]),
        .I2(\reg_out_i_reg[3]_0 [3]),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I4(rd_en),
        .O(going_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(rd_en),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF2020202020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I2(leaving_aempty),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\reg_out_i_reg[3]_0 [3]),
        .O(empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\reg_out_i_reg[3]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .O(leaving_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(\reg_out_i_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(\reg_out_i_reg[3]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec_4
   (empty_i0,
    \reg_out_i_reg[3]_0 ,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    rd_en,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ,
    Q,
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    almost_empty,
    SR,
    \reg_out_i_reg[3]_1 ,
    rd_clk);
  output empty_i0;
  output [3:0]\reg_out_i_reg[3]_0 ;
  output [1:0]D;
  output \gen_pf_ic_rc.ram_empty_i_reg ;
  input rd_en;
  input \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  input [3:0]Q;
  input [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input almost_empty;
  input [0:0]SR;
  input [3:0]\reg_out_i_reg[3]_1 ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire almost_empty;
  wire empty_i0;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire going_aempty;
  wire leaving_aempty;
  wire rd_clk;
  wire rd_en;
  wire [3:0]\reg_out_i_reg[3]_0 ;
  wire [3:0]\reg_out_i_reg[3]_1 ;

  LUT4 #(
    .INIT(16'hFE0E)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_1 
       (.I0(going_aempty),
        .I1(leaving_aempty),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(almost_empty),
        .O(\gen_pf_ic_rc.ram_empty_i_reg ));
  LUT5 #(
    .INIT(32'h00820000)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_2 
       (.I0(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [3]),
        .I2(\reg_out_i_reg[3]_0 [3]),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I4(rd_en),
        .O(going_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(rd_en),
        .I2(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I3(Q[0]),
        .I4(\reg_out_i_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF2020202020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.gae_ic_std.ram_aempty_i_reg ),
        .I2(leaving_aempty),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\reg_out_i_reg[3]_0 [3]),
        .O(empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\reg_out_i_reg[3]_0 [3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ),
        .O(leaving_aempty));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\reg_out_i_reg[3]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(\reg_out_i_reg[3]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(\reg_out_i_reg[3]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [0]),
        .Q(\reg_out_i_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [1]),
        .Q(\reg_out_i_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [2]),
        .Q(\reg_out_i_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_1 [3]),
        .Q(\reg_out_i_reg[3]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0
   (D,
    Q,
    wrst_busy,
    \reg_out_i_reg[4]_0 ,
    wr_clk);
  output [1:0]D;
  input [4:0]Q;
  input wrst_busy;
  input [4:0]\reg_out_i_reg[4]_0 ;
  input wr_clk;

  wire [1:0]D;
  wire [4:0]Q;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(\reg_out_i_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg_out_i_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_14
   (D,
    Q,
    wrst_busy,
    \reg_out_i_reg[4]_0 ,
    wr_clk);
  output [1:0]D;
  input [4:0]Q;
  input wrst_busy;
  input [4:0]\reg_out_i_reg[4]_0 ;
  input wr_clk;

  wire [1:0]D;
  wire [4:0]Q;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg_n_0_[0] ;
  wire \reg_out_i_reg_n_0_[1] ;
  wire \reg_out_i_reg_n_0_[2] ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(\reg_out_i_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg_out_i_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\reg_out_i_reg_n_0_[1] ),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [0]),
        .Q(\reg_out_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [1]),
        .Q(\reg_out_i_reg_n_0_[1] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [2]),
        .Q(\reg_out_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_16
   (Q,
    SR,
    D,
    rd_clk);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input rd_clk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire rd_clk;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_reg_vec__parameterized0_5
   (Q,
    SR,
    D,
    rd_clk);
  output [4:0]Q;
  input [0:0]SR;
  input [4:0]D;
  input rd_clk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire rd_clk;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_rst
   (SR,
    wrst_busy,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    \guf.underflow_i_reg ,
    rd_en);
  output [0:0]SR;
  output wrst_busy;
  output d_out_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [0:0]SR;
  wire d_out_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__6 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(SR),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_fifo_rst__xdcDup__1
   (SR,
    wrst_busy,
    d_out_reg,
    wr_pntr_plus1_pf_carry,
    wr_rst_busy,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    \gwack.wr_ack_i_reg ,
    wr_en,
    \guf.underflow_i_reg ,
    rd_en);
  output [0:0]SR;
  output wrst_busy;
  output d_out_reg;
  output wr_pntr_plus1_pf_carry;
  output wr_rst_busy;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input \gwack.wr_ack_i_reg ;
  input wr_en;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [0:0]SR;
  wire d_out_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__5 \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_cdc_sync_rst__4 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(wr_pntr_plus1_pf_carry));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(SR),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst_d1),
        .I1(\gwack.wr_ack_i_reg ),
        .I2(wr_en),
        .I3(wrst_busy),
        .I4(\gen_rst_ic.fifo_wr_rst_ic ),
        .I5(rst),
        .O(d_out_reg));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "6" *) (* BYTE_WRITE_WIDTH_B = "6" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "96" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "6" *) (* P_MIN_WIDTH_DATA_A = "6" *) (* P_MIN_WIDTH_DATA_B = "6" *) 
(* P_MIN_WIDTH_DATA_ECC = "6" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "6" *) (* P_WIDTH_COL_WRITE_B = "6" *) (* READ_DATA_WIDTH_A = "6" *) 
(* READ_DATA_WIDTH_B = "6" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "6" *) (* WRITE_DATA_WIDTH_B = "6" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "8" *) 
(* rstb_loop_iter = "8" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [5:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [5:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [5:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [5:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]doutb;
  wire ena;
  wire enb;
  wire [5:0]\gen_rd_b.doutb_reg0 ;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(doutb[0]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(doutb[1]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(doutb[2]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(doutb[3]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(doutb[4]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(doutb[5]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "6" *) (* BYTE_WRITE_WIDTH_B = "6" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "96" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "6" *) (* P_MIN_WIDTH_DATA_A = "6" *) (* P_MIN_WIDTH_DATA_B = "6" *) 
(* P_MIN_WIDTH_DATA_ECC = "6" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "6" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "6" *) (* P_WIDTH_COL_WRITE_B = "6" *) (* READ_DATA_WIDTH_A = "6" *) 
(* READ_DATA_WIDTH_B = "6" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "6" *) (* WRITE_DATA_WIDTH_B = "6" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "8" *) 
(* rstb_loop_iter = "8" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [5:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [5:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [5:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [5:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [5:0]dina;
  wire [5:0]doutb;
  wire ena;
  wire enb;
  wire [5:0]\gen_rd_b.doutb_reg0 ;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(doutb[0]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(doutb[1]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(doutb[2]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(doutb[3]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(doutb[4]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(doutb[5]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "96" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__10
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__4
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__5
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__6
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__7
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__8
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "4" *) (* P_MIN_WIDTH_DATA_A = "4" *) (* P_MIN_WIDTH_DATA_B = "16" *) 
(* P_MIN_WIDTH_DATA_ECC = "4" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "4" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "4" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) 
(* P_WIDTH_COL_WRITE_A = "4" *) (* P_WIDTH_COL_WRITE_B = "4" *) (* READ_DATA_WIDTH_A = "4" *) 
(* READ_DATA_WIDTH_B = "16" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* XPM_MODULE = "TRUE" *) (* rsta_loop_iter = "4" *) 
(* rstb_loop_iter = "16" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__9
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ;
  wire \gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire [15:4]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "3" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "15" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_b.gen_word_wide.mem" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_aspect_ratio = "4" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_b.gen_word_wide.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI(dinb),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_gen_wr_b.gen_word_wide.mem_reg_DOADO_UNCONNECTED [15:4],douta}),
        .DOBDO(doutb),
        .DOPADOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_b.gen_word_wide.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ),
        .ENBWREN(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ,\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_2 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_3 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_b.gen_word_wide.mem_reg_i_4 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_b.gen_word_wide.mem_reg_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__10
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__10 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__4
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__4 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__5
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__5 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__6
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__6 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__7
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__7 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__8
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__8 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "4" *) (* BYTE_WRITE_WIDTH_B = "16" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "blockram" *) 
(* MEMORY_SIZE = "8192" *) (* MESSAGE_CONTROL = "0" *) (* ORIG_REF_NAME = "xpm_memory_tdpram" *) 
(* P_CLOCKING_MODE = "0" *) (* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) 
(* P_MEMORY_PRIMITIVE = "2" *) (* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) 
(* P_WRITE_MODE_B = "1" *) (* READ_DATA_WIDTH_A = "4" *) (* READ_DATA_WIDTH_B = "16" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "4" *) (* WRITE_DATA_WIDTH_B = "16" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* XPM_MODULE = "TRUE" *) 
module ntps_top_axi_ethernetlite_0_0_xpm_memory_tdpram__9
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [3:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [3:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [15:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [15:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [3:0]dina;
  wire [15:0]dinb;
  wire [3:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "4" *) 
  (* BYTE_WRITE_WIDTH_B = "16" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "3" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "4" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "4" *) 
  (* P_MIN_WIDTH_DATA_A = "4" *) 
  (* P_MIN_WIDTH_DATA_B = "16" *) 
  (* P_MIN_WIDTH_DATA_ECC = "4" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "4" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "4" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "2" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "2" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "4" *) 
  (* P_WIDTH_COL_WRITE_B = "4" *) 
  (* READ_DATA_WIDTH_A = "4" *) 
  (* READ_DATA_WIDTH_B = "16" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "4" *) 
  (* WRITE_DATA_WIDTH_B = "16" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "16" *) 
  ntps_top_axi_ethernetlite_0_0_xpm_memory_base__parameterized0__9 xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(rstb),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
