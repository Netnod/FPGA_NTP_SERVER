(* CORE_GENERATION_INFO = "ntps_top,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ntps_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=49,numReposBlks=32,numNonXlnxBlks=15,numHierBlks=17,maxHierDepth=1,da_axi4_cnt=14,da_board_cnt=5,synth_mode=Global}" *) (* HW_HANDOFF = "ntps_top.hwdef" *) 
module ntps_top
   (HEAD10,
    HEAD12,
    HEAD14,
    HEAD16,
    HEAD18,
    HEAD2,
    HEAD20,
    HEAD22,
    HEAD24,
    HEAD26,
    HEAD28,
    HEAD30,
    HEAD32,
    HEAD34,
    HEAD36,
    HEAD4,
    HEAD6,
    HEAD8,
    LED0,
    LED1,
    LED2,
    LED3,
    LED4,
    LED5,
    LED6,
    LED7,
    PCIE_CLK_N,
    PCIE_CLK_P,
    PPS_INA_N,
    PPS_INA_P,
    PPS_INB_N,
    PPS_INB_P,
    PPS_OUTA,
    PPS_OUTB,
    SYS_CLK_N,
    SYS_CLK_P,
    TEN_MHZ_INA_clk_n,
    TEN_MHZ_INA_clk_p,
    TEN_MHZ_INB_clk_n,
    TEN_MHZ_INB_clk_p,
    TEN_MHZ_OUTA,
    TEN_MHZ_OUTB,
    i2c_clk,
    i2c_data,
    i2c_mux_rst_n,
    pci_exp_rxn,
    pci_exp_rxp,
    pci_exp_txn,
    pci_exp_txp,
    pcie_perst,
    pmbus_alert,
    pmbus_clk,
    pmbus_data,
    reset,
    sfp_module_detect0_n,
    sfp_module_detect1_n,
    sfp_module_detect2_n,
    sfp_module_detect3_n,
    sfp_signal_lost0,
    sfp_signal_lost1,
    sfp_signal_lost2,
    sfp_signal_lost3,
    sfp_tx_disable0,
    sfp_tx_disable1,
    sfp_tx_disable2,
    sfp_tx_disable3,
    sfp_tx_fault0,
    sfp_tx_fault1,
    sfp_tx_fault2,
    sfp_tx_fault3,
    si5324_rst_n,
    xphy0_rxn,
    xphy0_rxp,
    xphy0_txn,
    xphy0_txp,
    xphy1_rxn,
    xphy1_rxp,
    xphy1_txn,
    xphy1_txp,
    xphy2_rxn,
    xphy2_rxp,
    xphy2_txn,
    xphy2_txp,
    xphy3_rxn,
    xphy3_rxp,
    xphy3_txn,
    xphy3_txp,
    xphy_refclk_n,
    xphy_refclk_p);
  output [0:0]HEAD10;
  output [0:0]HEAD12;
  output [0:0]HEAD14;
  output [0:0]HEAD16;
  output [0:0]HEAD18;
  output [0:0]HEAD2;
  output [0:0]HEAD20;
  output [0:0]HEAD22;
  output [0:0]HEAD24;
  output [0:0]HEAD26;
  output [0:0]HEAD28;
  output [0:0]HEAD30;
  output [0:0]HEAD32;
  output [0:0]HEAD34;
  output [0:0]HEAD36;
  output [0:0]HEAD4;
  output [0:0]HEAD6;
  output [0:0]HEAD8;
  output LED0;
  output LED1;
  output LED2;
  output [0:0]LED3;
  output LED4;
  output LED5;
  output LED6;
  output LED7;
  input [0:0]PCIE_CLK_N;
  input [0:0]PCIE_CLK_P;
  input [0:0]PPS_INA_N;
  input [0:0]PPS_INA_P;
  input [0:0]PPS_INB_N;
  input [0:0]PPS_INB_P;
  output PPS_OUTA;
  output PPS_OUTB;
  input [0:0]SYS_CLK_N;
  input [0:0]SYS_CLK_P;
  input TEN_MHZ_INA_clk_n;
  input TEN_MHZ_INA_clk_p;
  input TEN_MHZ_INB_clk_n;
  input TEN_MHZ_INB_clk_p;
  output TEN_MHZ_OUTA;
  output TEN_MHZ_OUTB;
  inout i2c_clk;
  inout i2c_data;
  output i2c_mux_rst_n;
  input [7:0]pci_exp_rxn;
  input [7:0]pci_exp_rxp;
  output [7:0]pci_exp_txn;
  output [7:0]pci_exp_txp;
  input pcie_perst;
  input pmbus_alert;
  inout pmbus_clk;
  inout pmbus_data;
  input reset;
  input sfp_module_detect0_n;
  input sfp_module_detect1_n;
  input sfp_module_detect2_n;
  input sfp_module_detect3_n;
  input sfp_signal_lost0;
  input sfp_signal_lost1;
  input sfp_signal_lost2;
  input sfp_signal_lost3;
  output sfp_tx_disable0;
  output sfp_tx_disable1;
  output sfp_tx_disable2;
  output sfp_tx_disable3;
  input sfp_tx_fault0;
  input sfp_tx_fault1;
  input sfp_tx_fault2;
  input sfp_tx_fault3;
  output si5324_rst_n;
  input xphy0_rxn;
  input xphy0_rxp;
  output xphy0_txn;
  output xphy0_txp;
  input xphy1_rxn;
  input xphy1_rxp;
  output xphy1_txn;
  output xphy1_txp;
  input xphy2_rxn;
  input xphy2_rxp;
  output xphy2_txn;
  output xphy2_txp;
  input xphy3_rxn;
  input xphy3_rxp;
  output xphy3_txn;
  output xphy3_txp;
  input xphy_refclk_n;
  input xphy_refclk_p;

  wire GND_1;
  wire [0:0]IBUF_DS_N_1;
  wire [0:0]IBUF_DS_N_2;
  wire [0:0]IBUF_DS_P_1;
  wire [0:0]IBUF_DS_P_2;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire [0:0]PPS_INB_N_1;
  wire [0:0]PPS_INB_P_1;
  wire [0:0]PPS_IN_N_1;
  wire [0:0]PPS_IN_P_1;
  wire TEN_MHZ_INA_1_CLK_N;
  wire TEN_MHZ_INA_1_CLK_P;
  wire TEN_MHZ_INB_1_CLK_N;
  wire TEN_MHZ_INB_1_CLK_P;
  wire VCC_1;
  wire axi_ethernetlite_0_phy_mdc;
  wire axi_ethernetlite_0_phy_mdio_o;
  wire [31:0]axi_pcie3_0_M_AXI_ARADDR;
  wire [1:0]axi_pcie3_0_M_AXI_ARBURST;
  wire [3:0]axi_pcie3_0_M_AXI_ARCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_ARID;
  wire [7:0]axi_pcie3_0_M_AXI_ARLEN;
  wire axi_pcie3_0_M_AXI_ARLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_ARPROT;
  wire axi_pcie3_0_M_AXI_ARREADY;
  wire [2:0]axi_pcie3_0_M_AXI_ARSIZE;
  wire axi_pcie3_0_M_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_M_AXI_AWADDR;
  wire [1:0]axi_pcie3_0_M_AXI_AWBURST;
  wire [3:0]axi_pcie3_0_M_AXI_AWCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_AWID;
  wire [7:0]axi_pcie3_0_M_AXI_AWLEN;
  wire axi_pcie3_0_M_AXI_AWLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_AWPROT;
  wire axi_pcie3_0_M_AXI_AWREADY;
  wire [2:0]axi_pcie3_0_M_AXI_AWSIZE;
  wire axi_pcie3_0_M_AXI_AWVALID;
  wire [2:0]axi_pcie3_0_M_AXI_BID;
  wire axi_pcie3_0_M_AXI_BREADY;
  wire [1:0]axi_pcie3_0_M_AXI_BRESP;
  wire axi_pcie3_0_M_AXI_BVALID;
  wire [255:0]axi_pcie3_0_M_AXI_RDATA;
  wire [2:0]axi_pcie3_0_M_AXI_RID;
  wire axi_pcie3_0_M_AXI_RLAST;
  wire axi_pcie3_0_M_AXI_RREADY;
  wire [1:0]axi_pcie3_0_M_AXI_RRESP;
  wire axi_pcie3_0_M_AXI_RVALID;
  wire [255:0]axi_pcie3_0_M_AXI_WDATA;
  wire axi_pcie3_0_M_AXI_WLAST;
  wire axi_pcie3_0_M_AXI_WREADY;
  wire [31:0]axi_pcie3_0_M_AXI_WSTRB;
  wire axi_pcie3_0_M_AXI_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_ARPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [4:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M00_AXI_AWPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire [4:0]axi_pcie3_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_ARPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_ARVALID;
  wire [4:0]axi_pcie3_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_AWPROT;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_BRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_RRESP;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_WDATA;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_WVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M02_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M02_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M02_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M03_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M03_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M03_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M03_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M03_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M03_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M03_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M03_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M04_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M04_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M05_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M05_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M06_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M06_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M07_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M07_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M07_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M07_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M07_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M07_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M07_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M07_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M07_AXI_WVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M08_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M08_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M08_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M08_AXI_ARVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M08_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M08_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M08_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M08_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M08_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M08_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M08_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M08_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M08_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M08_AXI_WVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M09_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M09_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M09_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M09_AXI_ARVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M09_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M09_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M09_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M09_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M09_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M09_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M09_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M09_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M09_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M09_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M09_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M09_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M09_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M09_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M09_AXI_WVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M10_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M10_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M10_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M10_AXI_ARVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M10_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M10_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M10_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M10_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M10_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M10_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M10_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M10_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M10_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M10_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M10_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M10_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M10_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M10_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M10_AXI_WVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M11_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M11_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M11_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M11_AXI_ARVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M11_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M11_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M11_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M11_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M11_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M11_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M11_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M11_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M11_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M11_AXI_WVALID;
  wire [7:0]axi_pcie3_0_pci_exp_txn;
  wire [7:0]axi_pcie3_0_pci_exp_txp;
  wire axi_pcie3_0_user_link_up;
  wire clk50_gen_0_clk50;
  wire clock_control_0_i2c_mux_rst_n;
  wire clock_control_0_si5324_rst_n;
  wire [255:0]keymem_top_0_key;
  wire keymem_top_0_key_ack;
  wire [255:0]keymem_top_1_key;
  wire keymem_top_1_key_ack;
  wire [255:0]keymem_top_2_key;
  wire keymem_top_2_key_ack;
  wire [255:0]keymem_top_3_key;
  wire keymem_top_3_key_ack;
  wire mdio_mux_0_mdio_out;
  wire [31:0]network_path_1_key_id;
  wire network_path_1_key_req;
  wire network_path_1_mdio_out;
  wire network_path_1_mdio_tri;
  wire network_path_1_tx_disable;
  wire network_path_1_xphy_txn;
  wire network_path_1_xphy_txp;
  wire [31:0]network_path_2_key_id;
  wire network_path_2_key_req;
  wire network_path_2_mdio_out;
  wire network_path_2_mdio_tri;
  wire network_path_2_tx_disable;
  wire network_path_2_xphy_txn;
  wire network_path_2_xphy_txp;
  wire [31:0]network_path_3_key_id;
  wire network_path_3_key_req;
  wire network_path_3_mdio_out;
  wire network_path_3_mdio_tri;
  wire network_path_3_tx_disable;
  wire network_path_3_xphy_txn;
  wire network_path_3_xphy_txp;
  wire network_path_shared_0_areset_clk156;
  wire network_path_shared_0_clk156;
  wire network_path_shared_0_gtrxreset;
  wire network_path_shared_0_gttxreset;
  wire [31:0]network_path_shared_0_key_id;
  wire network_path_shared_0_key_req;
  wire network_path_shared_0_mdio_out;
  wire network_path_shared_0_mdio_tri;
  wire network_path_shared_0_qplllock;
  wire network_path_shared_0_qplloutclk;
  wire network_path_shared_0_qplloutrefclk;
  wire network_path_shared_0_reset_counter_done;
  wire network_path_shared_0_tx_disable;
  wire network_path_shared_0_txuserrdy;
  wire network_path_shared_0_txusrclk;
  wire network_path_shared_0_txusrclk2;
  wire network_path_shared_0_xphy_txn;
  wire network_path_shared_0_xphy_txp;
  wire ntp_clock_0_LED1;
  wire ntp_clock_0_LED2;
  wire [63:0]ntp_clock_topA_NTP_TIME;
  wire ntp_clock_topA_NTP_TIME_UPD;
  wire ntp_clock_topA_PPS_OUT;
  wire ntp_clock_topA_TEN_MHZ_OUT;
  wire ntp_clock_topB_LED1;
  wire ntp_clock_topB_LED2;
  wire [63:0]ntp_clock_topB_NTP_TIME;
  wire ntp_clock_topB_NTP_TIME_UPD;
  wire ntp_clock_topB_PLL_locked;
  wire ntp_clock_topB_PPS_OUT;
  wire ntp_clock_topB_TEN_MHZ_OUT;
  wire ntp_clock_top_locked;
  wire [7:0]pci_exp_rxn_1;
  wire [7:0]pci_exp_rxp_1;
  wire pcie_perst_1;
  wire pmbus_alert_1;
  wire pps_test_PPS_OUT;
  wire pps_test_TEN_MHZ_OUT;
  wire reset_1;
  wire [0:0]rst_axi_pcie3_0_250M_interconnect_aresetn;
  wire [0:0]rst_axi_pcie3_0_250M_peripheral_aresetn;
  wire sfp_module_detect0_n_1;
  wire sfp_module_detect1_n_1;
  wire sfp_module_detect2_n_1;
  wire sfp_module_detect3_n_1;
  wire sfp_signal_detect0_1;
  wire sfp_signal_detect1_1;
  wire sfp_signal_detect2_1;
  wire sfp_signal_detect3_1;
  wire sfp_tx_fault0_1;
  wire sfp_tx_fault1_1;
  wire sfp_tx_fault2_1;
  wire sfp_tx_fault3_1;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]util_ds_buf_1_IBUF_OUT;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [3:0]xlconstant_2_dout;
  wire xphy0_rxp_1;
  wire xphy1_rxn_1;
  wire xphy1_rxp_1;
  wire xphy2_rxn_1;
  wire xphy2_rxp_1;
  wire xphy3_rxn_1;
  wire xphy3_rxp_1;
  wire xphy_refclk_n_1;
  wire xphy_refclk_p_1;
  wire xphy_rxn_1;

  assign HEAD10[0] = pps_test_PPS_OUT;
  assign HEAD12[0] = xlconstant_1_dout;
  assign HEAD14[0] = xlconstant_1_dout;
  assign HEAD16[0] = xlconstant_1_dout;
  assign HEAD18[0] = xlconstant_1_dout;
  assign HEAD2[0] = pps_test_TEN_MHZ_OUT;
  assign HEAD20[0] = xlconstant_1_dout;
  assign HEAD22[0] = xlconstant_1_dout;
  assign HEAD24[0] = xlconstant_1_dout;
  assign HEAD26[0] = xlconstant_1_dout;
  assign HEAD28[0] = xlconstant_1_dout;
  assign HEAD30[0] = xlconstant_1_dout;
  assign HEAD32[0] = xlconstant_1_dout;
  assign HEAD34[0] = xlconstant_1_dout;
  assign HEAD36[0] = xlconstant_1_dout;
  assign HEAD4[0] = xlconstant_1_dout;
  assign HEAD6[0] = xlconstant_1_dout;
  assign HEAD8[0] = xlconstant_1_dout;
  assign IBUF_DS_N_1 = PCIE_CLK_N[0];
  assign IBUF_DS_N_2 = SYS_CLK_N[0];
  assign IBUF_DS_P_1 = PCIE_CLK_P[0];
  assign IBUF_DS_P_2 = SYS_CLK_P[0];
  assign LED0 = ntp_clock_top_locked;
  assign LED1 = ntp_clock_0_LED1;
  assign LED2 = ntp_clock_0_LED2;
  assign LED3[0] = xlconstant_1_dout;
  assign LED4 = ntp_clock_topB_PLL_locked;
  assign LED5 = ntp_clock_topB_LED1;
  assign LED6 = ntp_clock_topB_LED2;
  assign LED7 = axi_pcie3_0_user_link_up;
  assign PPS_INB_N_1 = PPS_INA_N[0];
  assign PPS_INB_P_1 = PPS_INA_P[0];
  assign PPS_IN_N_1 = PPS_INB_N[0];
  assign PPS_IN_P_1 = PPS_INB_P[0];
  assign PPS_OUTA = ntp_clock_topA_PPS_OUT;
  assign PPS_OUTB = ntp_clock_topB_PPS_OUT;
  assign TEN_MHZ_INA_1_CLK_N = TEN_MHZ_INA_clk_n;
  assign TEN_MHZ_INA_1_CLK_P = TEN_MHZ_INA_clk_p;
  assign TEN_MHZ_INB_1_CLK_N = TEN_MHZ_INB_clk_n;
  assign TEN_MHZ_INB_1_CLK_P = TEN_MHZ_INB_clk_p;
  assign TEN_MHZ_OUTA = ntp_clock_topA_TEN_MHZ_OUT;
  assign TEN_MHZ_OUTB = ntp_clock_topB_TEN_MHZ_OUT;
  assign i2c_mux_rst_n = clock_control_0_i2c_mux_rst_n;
  assign pci_exp_rxn_1 = pci_exp_rxn[7:0];
  assign pci_exp_rxp_1 = pci_exp_rxp[7:0];
  assign pci_exp_txn[7:0] = axi_pcie3_0_pci_exp_txn;
  assign pci_exp_txp[7:0] = axi_pcie3_0_pci_exp_txp;
  assign pcie_perst_1 = pcie_perst;
  assign pmbus_alert_1 = pmbus_alert;
  assign reset_1 = reset;
  assign sfp_module_detect0_n_1 = sfp_module_detect0_n;
  assign sfp_module_detect1_n_1 = sfp_module_detect1_n;
  assign sfp_module_detect2_n_1 = sfp_module_detect2_n;
  assign sfp_module_detect3_n_1 = sfp_module_detect3_n;
  assign sfp_signal_detect0_1 = sfp_signal_lost0;
  assign sfp_signal_detect1_1 = sfp_signal_lost1;
  assign sfp_signal_detect2_1 = sfp_signal_lost2;
  assign sfp_signal_detect3_1 = sfp_signal_lost3;
  assign sfp_tx_disable0 = network_path_shared_0_tx_disable;
  assign sfp_tx_disable1 = network_path_1_tx_disable;
  assign sfp_tx_disable2 = network_path_2_tx_disable;
  assign sfp_tx_disable3 = network_path_3_tx_disable;
  assign sfp_tx_fault0_1 = sfp_tx_fault0;
  assign sfp_tx_fault1_1 = sfp_tx_fault1;
  assign sfp_tx_fault2_1 = sfp_tx_fault2;
  assign sfp_tx_fault3_1 = sfp_tx_fault3;
  assign si5324_rst_n = clock_control_0_si5324_rst_n;
  assign xphy0_rxp_1 = xphy0_rxp;
  assign xphy0_txn = network_path_shared_0_xphy_txn;
  assign xphy0_txp = network_path_shared_0_xphy_txp;
  assign xphy1_rxn_1 = xphy1_rxn;
  assign xphy1_rxp_1 = xphy1_rxp;
  assign xphy1_txn = network_path_1_xphy_txn;
  assign xphy1_txp = network_path_1_xphy_txp;
  assign xphy2_rxn_1 = xphy2_rxn;
  assign xphy2_rxp_1 = xphy2_rxp;
  assign xphy2_txn = network_path_2_xphy_txn;
  assign xphy2_txp = network_path_2_xphy_txp;
  assign xphy3_rxn_1 = xphy3_rxn;
  assign xphy3_rxp_1 = xphy3_rxp;
  assign xphy3_txn = network_path_3_xphy_txn;
  assign xphy3_txp = network_path_3_xphy_txp;
  assign xphy_refclk_n_1 = xphy_refclk_n;
  assign xphy_refclk_p_1 = xphy_refclk_p;
  assign xphy_rxn_1 = xphy0_rxn;
  GND GND
       (.G(GND_1));
  VCC VCC
       (.P(VCC_1));
  ntps_top_axi_ethernetlite_0_0 axi_ethernetlite_0
       (.phy_col(xlconstant_2_dout[0]),
        .phy_crs(xlconstant_2_dout[0]),
        .phy_dv(xlconstant_2_dout[0]),
        .phy_mdc(axi_ethernetlite_0_phy_mdc),
        .phy_mdio_i(mdio_mux_0_mdio_out),
        .phy_mdio_o(axi_ethernetlite_0_phy_mdio_o),
        .phy_rx_clk(xlconstant_2_dout[0]),
        .phy_rx_data(xlconstant_2_dout),
        .phy_rx_er(xlconstant_2_dout[0]),
        .phy_tx_clk(xlconstant_2_dout[0]),
        .s_axi_aclk(axi_pcie3_0_axi_aclk),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID));
  ntps_top_axi_pcie3_0_0 axi_pcie3_0
       (.axi_aclk(axi_pcie3_0_axi_aclk),
        .axi_ctl_aclk(axi_pcie3_0_axi_aclk),
        .intx_msi_request(xlconstant_0_dout),
        .m_axi_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_pcie3_0_M_AXI_ARID),
        .m_axi_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .m_axi_arready(axi_pcie3_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_pcie3_0_M_AXI_AWID),
        .m_axi_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .m_axi_awready(axi_pcie3_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .m_axi_bid(axi_pcie3_0_M_AXI_BID),
        .m_axi_bready(axi_pcie3_0_M_AXI_BREADY),
        .m_axi_bresp(axi_pcie3_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .m_axi_rdata(axi_pcie3_0_M_AXI_RDATA),
        .m_axi_rid(axi_pcie3_0_M_AXI_RID),
        .m_axi_rlast(axi_pcie3_0_M_AXI_RLAST),
        .m_axi_rready(axi_pcie3_0_M_AXI_RREADY),
        .m_axi_rresp(axi_pcie3_0_M_AXI_RRESP),
        .m_axi_ruser({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .m_axi_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .m_axi_wdata(axi_pcie3_0_M_AXI_WDATA),
        .m_axi_wlast(axi_pcie3_0_M_AXI_WLAST),
        .m_axi_wready(axi_pcie3_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_pcie3_0_M_AXI_WVALID),
        .msi_vector_num({GND_1,GND_1,GND_1,GND_1,GND_1}),
        .pci_exp_rxn(pci_exp_rxn_1),
        .pci_exp_rxp(pci_exp_rxp_1),
        .pci_exp_txn(axi_pcie3_0_pci_exp_txn),
        .pci_exp_txp(axi_pcie3_0_pci_exp_txp),
        .refclk(util_ds_buf_0_IBUF_OUT),
        .s_axi_ctl_araddr({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_ctl_arvalid(GND_1),
        .s_axi_ctl_awaddr({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_ctl_awvalid(GND_1),
        .s_axi_ctl_bready(GND_1),
        .s_axi_ctl_rready(GND_1),
        .s_axi_ctl_wdata({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .s_axi_ctl_wstrb({GND_1,GND_1,GND_1,GND_1}),
        .s_axi_ctl_wvalid(GND_1),
        .sys_rst_n(pcie_perst_1),
        .user_link_up(axi_pcie3_0_user_link_up));
  ntps_top_axi_pcie3_0_axi_periph_1 axi_pcie3_0_axi_periph
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(rst_axi_pcie3_0_250M_interconnect_aresetn),
        .M00_ACLK(axi_pcie3_0_axi_aclk),
        .M00_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_pcie3_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_pcie3_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie3_0_axi_aclk),
        .M01_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M01_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(axi_pcie3_0_axi_aclk),
        .M02_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M02_AXI_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(axi_pcie3_0_axi_aclk),
        .M03_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M03_AXI_araddr(axi_pcie3_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_pcie3_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_pcie3_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_pcie3_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_pcie3_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_pcie3_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_pcie3_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_pcie3_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_pcie3_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_pcie3_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(axi_pcie3_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_pcie3_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_pcie3_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_pcie3_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(axi_pcie3_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_pcie3_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_pcie3_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(axi_pcie3_0_axi_aclk),
        .M04_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M04_AXI_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(axi_pcie3_0_axi_aclk),
        .M05_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M05_AXI_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(axi_pcie3_0_axi_aclk),
        .M06_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M06_AXI_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(axi_pcie3_0_axi_aclk),
        .M07_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M07_AXI_araddr(axi_pcie3_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_pcie3_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_pcie3_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_pcie3_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_pcie3_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_pcie3_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_pcie3_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_pcie3_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_pcie3_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_pcie3_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(axi_pcie3_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_pcie3_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_pcie3_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_pcie3_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(axi_pcie3_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_pcie3_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_pcie3_0_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(axi_pcie3_0_axi_aclk),
        .M08_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M08_AXI_araddr(axi_pcie3_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arprot(axi_pcie3_0_axi_periph_M08_AXI_ARPROT),
        .M08_AXI_arready(axi_pcie3_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_pcie3_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_pcie3_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awprot(axi_pcie3_0_axi_periph_M08_AXI_AWPROT),
        .M08_AXI_awready(axi_pcie3_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_pcie3_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_pcie3_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_pcie3_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_pcie3_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_pcie3_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(axi_pcie3_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_pcie3_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_pcie3_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_pcie3_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(axi_pcie3_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_pcie3_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_pcie3_0_axi_periph_M08_AXI_WVALID),
        .M09_ACLK(axi_pcie3_0_axi_aclk),
        .M09_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M09_AXI_araddr(axi_pcie3_0_axi_periph_M09_AXI_ARADDR),
        .M09_AXI_arprot(axi_pcie3_0_axi_periph_M09_AXI_ARPROT),
        .M09_AXI_arready(axi_pcie3_0_axi_periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_pcie3_0_axi_periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_pcie3_0_axi_periph_M09_AXI_AWADDR),
        .M09_AXI_awprot(axi_pcie3_0_axi_periph_M09_AXI_AWPROT),
        .M09_AXI_awready(axi_pcie3_0_axi_periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_pcie3_0_axi_periph_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_pcie3_0_axi_periph_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_pcie3_0_axi_periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_pcie3_0_axi_periph_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_pcie3_0_axi_periph_M09_AXI_RDATA),
        .M09_AXI_rready(axi_pcie3_0_axi_periph_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_pcie3_0_axi_periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_pcie3_0_axi_periph_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_pcie3_0_axi_periph_M09_AXI_WDATA),
        .M09_AXI_wready(axi_pcie3_0_axi_periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_pcie3_0_axi_periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_pcie3_0_axi_periph_M09_AXI_WVALID),
        .M10_ACLK(axi_pcie3_0_axi_aclk),
        .M10_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M10_AXI_araddr(axi_pcie3_0_axi_periph_M10_AXI_ARADDR),
        .M10_AXI_arprot(axi_pcie3_0_axi_periph_M10_AXI_ARPROT),
        .M10_AXI_arready(axi_pcie3_0_axi_periph_M10_AXI_ARREADY),
        .M10_AXI_arvalid(axi_pcie3_0_axi_periph_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_pcie3_0_axi_periph_M10_AXI_AWADDR),
        .M10_AXI_awprot(axi_pcie3_0_axi_periph_M10_AXI_AWPROT),
        .M10_AXI_awready(axi_pcie3_0_axi_periph_M10_AXI_AWREADY),
        .M10_AXI_awvalid(axi_pcie3_0_axi_periph_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_pcie3_0_axi_periph_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_pcie3_0_axi_periph_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_pcie3_0_axi_periph_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_pcie3_0_axi_periph_M10_AXI_RDATA),
        .M10_AXI_rready(axi_pcie3_0_axi_periph_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_pcie3_0_axi_periph_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_pcie3_0_axi_periph_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_pcie3_0_axi_periph_M10_AXI_WDATA),
        .M10_AXI_wready(axi_pcie3_0_axi_periph_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_pcie3_0_axi_periph_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_pcie3_0_axi_periph_M10_AXI_WVALID),
        .M11_ACLK(axi_pcie3_0_axi_aclk),
        .M11_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .M11_AXI_araddr(axi_pcie3_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arprot(axi_pcie3_0_axi_periph_M11_AXI_ARPROT),
        .M11_AXI_arready(axi_pcie3_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_pcie3_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_pcie3_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awprot(axi_pcie3_0_axi_periph_M11_AXI_AWPROT),
        .M11_AXI_awready(axi_pcie3_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_pcie3_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_pcie3_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_pcie3_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_pcie3_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_pcie3_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(axi_pcie3_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_pcie3_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_pcie3_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_pcie3_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(axi_pcie3_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_pcie3_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_pcie3_0_axi_periph_M11_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .S00_AXI_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .S00_AXI_arid(axi_pcie3_0_M_AXI_ARID),
        .S00_AXI_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie3_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .S00_AXI_awid(axi_pcie3_0_M_AXI_AWID),
        .S00_AXI_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie3_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .S00_AXI_bid(axi_pcie3_0_M_AXI_BID),
        .S00_AXI_bready(axi_pcie3_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie3_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie3_0_M_AXI_RDATA),
        .S00_AXI_rid(axi_pcie3_0_M_AXI_RID),
        .S00_AXI_rlast(axi_pcie3_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_pcie3_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie3_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie3_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_pcie3_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_pcie3_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie3_0_M_AXI_WVALID));
  ntps_top_clk50_gen_0_0 clk50_gen_0
       (.clk200(util_ds_buf_1_IBUF_OUT),
        .clk50(clk50_gen_0_clk50));
  ntps_top_clock_control_0_0 clock_control_0
       (.clk50(clk50_gen_0_clk50),
        .i2c_clk(i2c_clk),
        .i2c_data(i2c_data),
        .i2c_mux_rst_n(clock_control_0_i2c_mux_rst_n),
        .rst(reset_1),
        .si5324_rst_n(clock_control_0_si5324_rst_n));
  ntps_top_keymem_top_0_0 keymem_top_0
       (.key(keymem_top_0_key),
        .key_ack(keymem_top_0_key_ack),
        .key_clk(network_path_shared_0_clk156),
        .key_id(network_path_shared_0_key_id),
        .key_req(network_path_shared_0_key_req),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M08_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M08_AXI_AWADDR),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M08_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M08_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M08_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M08_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M08_AXI_WVALID));
  ntps_top_keymem_top_0_1 keymem_top_1
       (.key(keymem_top_1_key),
        .key_ack(keymem_top_1_key_ack),
        .key_clk(network_path_shared_0_clk156),
        .key_id(network_path_1_key_id),
        .key_req(network_path_1_key_req),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M09_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M09_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M09_AXI_AWADDR),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M09_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M09_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M09_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M09_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M09_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M09_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M09_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M09_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M09_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M09_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M09_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M09_AXI_WVALID));
  ntps_top_keymem_top_0_2 keymem_top_2
       (.key(keymem_top_2_key),
        .key_ack(keymem_top_2_key_ack),
        .key_clk(network_path_shared_0_clk156),
        .key_id(network_path_2_key_id),
        .key_req(network_path_2_key_req),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M10_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M10_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M10_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M10_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M10_AXI_AWADDR),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M10_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M10_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M10_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M10_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M10_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M10_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M10_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M10_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M10_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M10_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M10_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M10_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M10_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M10_AXI_WVALID));
  ntps_top_keymem_top_0_3 keymem_top_3
       (.key(keymem_top_3_key),
        .key_ack(keymem_top_3_key_ack),
        .key_clk(network_path_shared_0_clk156),
        .key_id(network_path_3_key_id),
        .key_req(network_path_3_key_req),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M11_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M11_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M11_AXI_AWADDR),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M11_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M11_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M11_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M11_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M11_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M11_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M11_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M11_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M11_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M11_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M11_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M11_AXI_WVALID));
  ntps_top_mdio_mux_0_0 mdio_mux_0
       (.mdio_out(mdio_mux_0_mdio_out),
        .mdio_out_0(network_path_shared_0_mdio_out),
        .mdio_out_1(network_path_1_mdio_out),
        .mdio_out_2(network_path_2_mdio_out),
        .mdio_out_3(network_path_3_mdio_out),
        .mdio_tri_0(network_path_shared_0_mdio_tri),
        .mdio_tri_1(network_path_1_mdio_tri),
        .mdio_tri_2(network_path_2_mdio_tri),
        .mdio_tri_3(network_path_3_mdio_tri));
  ntps_top_network_path_0_0 network_path_1
       (.areset_clk156(network_path_shared_0_areset_clk156),
        .clk156(network_path_shared_0_clk156),
        .gtrxreset(network_path_shared_0_gtrxreset),
        .gttxreset(network_path_shared_0_gttxreset),
        .key(keymem_top_1_key),
        .key_ack(keymem_top_1_key_ack),
        .key_id(network_path_1_key_id),
        .key_req(network_path_1_key_req),
        .mdc(axi_ethernetlite_0_phy_mdc),
        .mdio_in(axi_ethernetlite_0_phy_mdio_o),
        .mdio_out(network_path_1_mdio_out),
        .mdio_tri(network_path_1_mdio_tri),
        .module_detect_n(sfp_module_detect1_n_1),
        .ntp_time_a(ntp_clock_topA_NTP_TIME),
        .ntp_time_b(ntp_clock_topB_NTP_TIME),
        .ntp_time_upd_a(ntp_clock_topA_NTP_TIME_UPD),
        .ntp_time_upd_b(ntp_clock_topB_NTP_TIME_UPD),
        .qplllock(network_path_shared_0_qplllock),
        .qplloutclk(network_path_shared_0_qplloutclk),
        .qplloutrefclk(network_path_shared_0_qplloutrefclk),
        .reset_counter_done(network_path_shared_0_reset_counter_done),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID),
        .signal_lost(sfp_signal_detect1_1),
        .sim_speedup_control(xlconstant_2_dout[0]),
        .sys_reset(reset_1),
        .tx_disable(network_path_1_tx_disable),
        .tx_fault(sfp_tx_fault1_1),
        .txuserrdy(network_path_shared_0_txuserrdy),
        .txusrclk(network_path_shared_0_txusrclk),
        .txusrclk2(network_path_shared_0_txusrclk2),
        .xphy_rxn(xphy1_rxn_1),
        .xphy_rxp(xphy1_rxp_1),
        .xphy_txn(network_path_1_xphy_txn),
        .xphy_txp(network_path_1_xphy_txp));
  ntps_top_network_path_1_0 network_path_2
       (.areset_clk156(network_path_shared_0_areset_clk156),
        .clk156(network_path_shared_0_clk156),
        .gtrxreset(network_path_shared_0_gtrxreset),
        .gttxreset(network_path_shared_0_gttxreset),
        .key(keymem_top_2_key),
        .key_ack(keymem_top_2_key_ack),
        .key_id(network_path_2_key_id),
        .key_req(network_path_2_key_req),
        .mdc(axi_ethernetlite_0_phy_mdc),
        .mdio_in(axi_ethernetlite_0_phy_mdio_o),
        .mdio_out(network_path_2_mdio_out),
        .mdio_tri(network_path_2_mdio_tri),
        .module_detect_n(sfp_module_detect2_n_1),
        .ntp_time_a(ntp_clock_topA_NTP_TIME),
        .ntp_time_b(ntp_clock_topB_NTP_TIME),
        .ntp_time_upd_a(ntp_clock_topA_NTP_TIME_UPD),
        .ntp_time_upd_b(ntp_clock_topB_NTP_TIME_UPD),
        .qplllock(network_path_shared_0_qplllock),
        .qplloutclk(network_path_shared_0_qplloutclk),
        .qplloutrefclk(network_path_shared_0_qplloutrefclk),
        .reset_counter_done(network_path_shared_0_reset_counter_done),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID),
        .signal_lost(sfp_signal_detect2_1),
        .sim_speedup_control(xlconstant_2_dout[0]),
        .sys_reset(reset_1),
        .tx_disable(network_path_2_tx_disable),
        .tx_fault(sfp_tx_fault2_1),
        .txuserrdy(network_path_shared_0_txuserrdy),
        .txusrclk(network_path_shared_0_txusrclk),
        .txusrclk2(network_path_shared_0_txusrclk2),
        .xphy_rxn(xphy2_rxn_1),
        .xphy_rxp(xphy2_rxp_1),
        .xphy_txn(network_path_2_xphy_txn),
        .xphy_txp(network_path_2_xphy_txp));
  ntps_top_network_path_1_1 network_path_3
       (.areset_clk156(network_path_shared_0_areset_clk156),
        .clk156(network_path_shared_0_clk156),
        .gtrxreset(network_path_shared_0_gtrxreset),
        .gttxreset(network_path_shared_0_gttxreset),
        .key(keymem_top_3_key),
        .key_ack(keymem_top_3_key_ack),
        .key_id(network_path_3_key_id),
        .key_req(network_path_3_key_req),
        .mdc(axi_ethernetlite_0_phy_mdc),
        .mdio_in(axi_ethernetlite_0_phy_mdio_o),
        .mdio_out(network_path_3_mdio_out),
        .mdio_tri(network_path_3_mdio_tri),
        .module_detect_n(sfp_module_detect3_n_1),
        .ntp_time_a(ntp_clock_topA_NTP_TIME),
        .ntp_time_b(ntp_clock_topB_NTP_TIME),
        .ntp_time_upd_a(ntp_clock_topA_NTP_TIME_UPD),
        .ntp_time_upd_b(ntp_clock_topB_NTP_TIME_UPD),
        .qplllock(network_path_shared_0_qplllock),
        .qplloutclk(network_path_shared_0_qplloutclk),
        .qplloutrefclk(network_path_shared_0_qplloutrefclk),
        .reset_counter_done(network_path_shared_0_reset_counter_done),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID),
        .signal_lost(sfp_signal_detect3_1),
        .sim_speedup_control(xlconstant_2_dout[0]),
        .sys_reset(reset_1),
        .tx_disable(network_path_3_tx_disable),
        .tx_fault(sfp_tx_fault3_1),
        .txuserrdy(network_path_shared_0_txuserrdy),
        .txusrclk(network_path_shared_0_txusrclk),
        .txusrclk2(network_path_shared_0_txusrclk2),
        .xphy_rxn(xphy3_rxn_1),
        .xphy_rxp(xphy3_rxp_1),
        .xphy_txn(network_path_3_xphy_txn),
        .xphy_txp(network_path_3_xphy_txp));
  ntps_top_network_path_shared_0_2 network_path_shared_0
       (.areset_clk156(network_path_shared_0_areset_clk156),
        .clk156(network_path_shared_0_clk156),
        .gtrxreset(network_path_shared_0_gtrxreset),
        .gttxreset(network_path_shared_0_gttxreset),
        .key(keymem_top_0_key),
        .key_ack(keymem_top_0_key_ack),
        .key_id(network_path_shared_0_key_id),
        .key_req(network_path_shared_0_key_req),
        .mdc(axi_ethernetlite_0_phy_mdc),
        .mdio_in(axi_ethernetlite_0_phy_mdio_o),
        .mdio_out(network_path_shared_0_mdio_out),
        .mdio_tri(network_path_shared_0_mdio_tri),
        .module_detect_n(sfp_module_detect0_n_1),
        .ntp_time_a(ntp_clock_topA_NTP_TIME),
        .ntp_time_b(ntp_clock_topB_NTP_TIME),
        .ntp_time_upd_a(ntp_clock_topA_NTP_TIME_UPD),
        .ntp_time_upd_b(ntp_clock_topB_NTP_TIME_UPD),
        .qplllock(network_path_shared_0_qplllock),
        .qplloutclk(network_path_shared_0_qplloutclk),
        .qplloutrefclk(network_path_shared_0_qplloutrefclk),
        .reset_counter_done(network_path_shared_0_reset_counter_done),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M03_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M03_AXI_WVALID),
        .signal_lost(sfp_signal_detect0_1),
        .sim_speedup_control(xlconstant_2_dout[0]),
        .sys_reset(reset_1),
        .tx_disable(network_path_shared_0_tx_disable),
        .tx_fault(sfp_tx_fault0_1),
        .txuserrdy(network_path_shared_0_txuserrdy),
        .txusrclk(network_path_shared_0_txusrclk),
        .txusrclk2(network_path_shared_0_txusrclk2),
        .xphy_refclk_n(xphy_refclk_n_1),
        .xphy_refclk_p(xphy_refclk_p_1),
        .xphy_rxn(xphy_rxn_1),
        .xphy_rxp(xphy0_rxp_1),
        .xphy_txn(network_path_shared_0_xphy_txn),
        .xphy_txp(network_path_shared_0_xphy_txp));
  ntp_clock_topA_imp_IZ2XJU ntp_clock_topA
       (.LED1(ntp_clock_0_LED1),
        .LED2(ntp_clock_0_LED2),
        .NTP_TIME(ntp_clock_topA_NTP_TIME),
        .NTP_TIME_UPD(ntp_clock_topA_NTP_TIME_UPD),
        .PLL_locked(ntp_clock_top_locked),
        .PPS_IN_N(PPS_INB_N_1),
        .PPS_IN_P(PPS_INB_P_1),
        .PPS_OUT(ntp_clock_topA_PPS_OUT),
        .S00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .S00_AXI_arprot(axi_pcie3_0_axi_periph_M00_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .S00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .S00_AXI_awprot(axi_pcie3_0_axi_periph_M00_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .S00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .S00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .S00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .S00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .TEN_MHZ_IN_clk_n(TEN_MHZ_INA_1_CLK_N),
        .TEN_MHZ_IN_clk_p(TEN_MHZ_INA_1_CLK_P),
        .TEN_MHZ_OUT(ntp_clock_topA_TEN_MHZ_OUT),
        .reset(reset_1),
        .s00_axi_aclk(axi_pcie3_0_axi_aclk),
        .s00_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn));
  ntp_clock_topB_imp_YXXTPB ntp_clock_topB
       (.LED1(ntp_clock_topB_LED1),
        .LED2(ntp_clock_topB_LED2),
        .NTP_TIME(ntp_clock_topB_NTP_TIME),
        .NTP_TIME_UPD(ntp_clock_topB_NTP_TIME_UPD),
        .PLL_locked(ntp_clock_topB_PLL_locked),
        .PPS_IN_N(PPS_IN_N_1),
        .PPS_IN_P(PPS_IN_P_1),
        .PPS_OUT(ntp_clock_topB_PPS_OUT),
        .S00_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .S00_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .S00_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .S00_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .S00_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .S00_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .S00_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .S00_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .TEN_MHZ_IN_clk_n(TEN_MHZ_INB_1_CLK_N),
        .TEN_MHZ_IN_clk_p(TEN_MHZ_INB_1_CLK_P),
        .TEN_MHZ_OUT(ntp_clock_topB_TEN_MHZ_OUT),
        .reset(reset_1),
        .s00_axi_aclk(axi_pcie3_0_axi_aclk),
        .s00_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn));
  pps_test_imp_1TIJF2L pps_test
       (.PPS_OUT(pps_test_PPS_OUT),
        .TEN_MHZ_OUT(pps_test_TEN_MHZ_OUT),
        .areset(reset_1),
        .clk_in1(util_ds_buf_1_IBUF_OUT));
  ntps_top_rst_axi_pcie3_0_250M_0 rst_axi_pcie3_0_125M
       (.aux_reset_in(VCC_1),
        .dcm_locked(VCC_1),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(rst_axi_pcie3_0_250M_interconnect_aresetn),
        .mb_debug_sys_rst(GND_1),
        .peripheral_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie3_0_axi_aclk));
  ntps_top_user_registers_slave_0_1 user_registers_slave_0
       (.clk50(clk50_gen_0_clk50),
        .pcie_link_up(axi_pcie3_0_user_link_up),
        .pmbus_alert(pmbus_alert_1),
        .pmbus_clk(pmbus_clk),
        .pmbus_data(pmbus_data),
        .rst(reset_1),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M07_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie3_0_250M_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M07_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M07_AXI_BVALID),
        .s_axi_clk(axi_pcie3_0_axi_aclk),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M07_AXI_WVALID));
  ntps_top_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(IBUF_DS_N_1),
        .IBUF_DS_P(IBUF_DS_P_1),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  ntps_top_util_ds_buf_0_3 util_ds_buf_1
       (.IBUF_DS_N(IBUF_DS_N_2),
        .IBUF_DS_P(IBUF_DS_P_2),
        .IBUF_OUT(util_ds_buf_1_IBUF_OUT));
  ntps_top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  ntps_top_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  ntps_top_xlconstant_0_1 xlconstant_zero
       (.dout(xlconstant_1_dout));
endmodule
