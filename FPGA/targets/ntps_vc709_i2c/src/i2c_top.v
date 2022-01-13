`timescale 1 ps / 1 ps

`default_nettype none

module i2c_top
  (
   input  wire       SYS_CLK_N,
   input  wire       SYS_CLK_P,

   // PCIe interface
   input  wire       pci_express_x1_rxn,
   input  wire       pci_express_x1_rxp,
   output wire       pci_express_x1_txn,
   output wire       pci_express_x1_txp,
   input  wire       pcie_perstn,
   input  wire       pcie_refclk_clk_n,
   input  wire       pcie_refclk_clk_p,

   // 10MHz/PPS interfaces
   input  wire       PPS_INA_N,
   input  wire       PPS_INA_P,
   input  wire       PPS_INB_N,
   input  wire       PPS_INB_P,
   input  wire       TEN_MHZ_INA_N,
   input  wire       TEN_MHZ_INA_P,
   input  wire       TEN_MHZ_INB_N,
   input  wire       TEN_MHZ_INB_P,
   output wire       TEN_MHZ_OUTA,
   output wire       TEN_MHZ_OUTB,
   output wire       PPS_OUTA,
   output wire       PPS_OUTB,

   // I2C interface - mostly used to set up the Si5324 clock generator
   inout  wire       i2c_scl,
   inout  wire       i2c_sda,
   inout  wire       i2c_mux_rst_n,
   output wire       si5324_rst_n,

   // SFP ports
   input wire        xphy_refclk_n,
   input wire        xphy_refclk_p,

   input  wire [3:0] xphy_rxn,
   input  wire [3:0] xphy_rxp,
   output wire [3:0] xphy_txn,
   output wire [3:0] xphy_txp,

   input  wire [3:0] sfp_module_detect_n,
   input  wire [3:0] sfp_signal_lost,
   output wire [3:0] sfp_tx_disable,
   input  wire [3:0] sfp_tx_fault);

  //----------------------------------------------------------------

  localparam NUM_PATHS = 4;
  localparam PHY_PATHS = 4;
  localparam NUM_SLAVES = NUM_PATHS + 4;

  //----------------------------------------------------------------

  // Input buffers for sysclk
  wire sys_clk;
  IBUFDS sys_clk_ds_buf
    (.I(SYS_CLK_P),
     .IB(SYS_CLK_N),
     .O(sys_clk));

  // Input buffers for NTP clock A
  wire ten_mhz_ina;
  IBUFDS ten_mhz_ina_ds_buf
    (.I(TEN_MHZ_INA_P),
     .IB(TEN_MHZ_INA_N),
     .O(ten_mhz_ina));

  wire pps_ina;
  IBUFDS pps_ina_ds_buf
    (.I(PPS_INA_P),
     .IB(PPS_INA_N),
     .O(pps_ina));

  // Input buffers for NTP clock B
  wire ten_mhz_inb;
  IBUFDS ten_mhz_inb_ds_buf
    (.I(TEN_MHZ_INB_P),
     .IB(TEN_MHZ_INB_N),
     .O(ten_mhz_inb));

  wire pps_inb;
  IBUFDS pps_inb_ds_buf
    (.I(PPS_INB_P),
     .IB(PPS_INB_N),
     .O(pps_inb));

  //----------------------------------------------------------------

  wire reset = 0;

  // clock generators, clock control
  wire clk50;

  ntps_clocks clocks
    (.reset         (reset),
     .sys_clk       (sys_clk),
     .clk50         (clk50),
     .i2c_clk       (i2c_scl),
     .i2c_data      (i2c_sda),
     .i2c_mux_rst_n (i2c_mux_rst_n),
     .si5324_rst_n  (si5324_rst_n),
     .PPS_OUT       (),
     .TEN_MHZ_OUT   ());

  //----------------------------------------------------------------
  // AXI clock
  //----------------------------------------------------------------

  wire axi_aclk;
  wire axi_aresetn;

  //----------------------------------------------------------------
  // AXI Lite bus
  //----------------------------------------------------------------

  wire [NUM_SLAVES*32-1:0]   axil_awaddr;
  wire [NUM_SLAVES*3-1:0]    axil_awprot;
  wire [NUM_SLAVES-1:0]      axil_awvalid;
  wire [NUM_SLAVES-1:0]      axil_awready;
  wire [NUM_SLAVES*32-1:0]   axil_wdata;
  wire [NUM_SLAVES*32/8-1:0] axil_wstrb;
  wire [NUM_SLAVES-1:0]      axil_wvalid;
  wire [NUM_SLAVES-1:0]      axil_wready;
  wire [NUM_SLAVES*2-1:0]    axil_bresp;
  wire [NUM_SLAVES-1:0]      axil_bvalid;
  wire [NUM_SLAVES-1:0]      axil_bready;
  wire [NUM_SLAVES*32-1:0]   axil_araddr;
  wire [NUM_SLAVES*3-1:0]    axil_arprot;
  wire [NUM_SLAVES-1:0]      axil_arvalid;
  wire [NUM_SLAVES-1:0]      axil_arready;
  wire [NUM_SLAVES*32-1:0]   axil_rdata;
  wire [NUM_SLAVES*2-1:0]    axil_rresp;
  wire [NUM_SLAVES-1:0]      axil_rvalid;
  wire [NUM_SLAVES-1:0]      axil_rready;

  //----------------------------------------------------------------
  // PCIe to GPIO (I2C) bridge
  //----------------------------------------------------------------

  wire [7:0]gpio_rtl_tri_i;
  wire [7:0]gpio_rtl_tri_o;
  wire [7:0]gpio_rtl_tri_t;

  design_1 design_1_i
    (.gpio_rtl_tri_i(gpio_rtl_tri_i),
     .gpio_rtl_tri_o(gpio_rtl_tri_o),
     .gpio_rtl_tri_t(gpio_rtl_tri_t),
     .led_8bits_tri_o(),
     .axi_aclk(axi_aclk),
     .axi_aresetn(axi_aresetn),
     .pci_express_x1_rxn(pci_express_x1_rxn),
     .pci_express_x1_rxp(pci_express_x1_rxp),
     .pci_express_x1_txn(pci_express_x1_txn),
     .pci_express_x1_txp(pci_express_x1_txp),
     .pcie_perstn(pcie_perstn),
     .pcie_refclk_clk_n(pcie_refclk_clk_n),
     .pcie_refclk_clk_p(pcie_refclk_clk_p));

  assign gpio_rtl_tri_i[7:3] = 0;

  // Connect I2C slave to bitbang GPIOs and external I2C bus

  wire [NUM_SLAVES-1:0] i2c_axil_scl_i;
  wire [NUM_SLAVES-1:0] i2c_axil_scl_o;
  wire [NUM_SLAVES-1:0] i2c_axil_scl_t;

  wire [NUM_SLAVES-1:0] i2c_axil_sda_i;
  wire [NUM_SLAVES-1:0] i2c_axil_sda_o;
  wire [NUM_SLAVES-1:0] i2c_axil_sda_t;

  wire internal_i2c_scl = (gpio_rtl_tri_t[0] ? 1 : gpio_rtl_tri_o[0]);
  wire internal_i2c_sda = (gpio_rtl_tri_t[1] ? 1 : gpio_rtl_tri_o[1]);

  assign gpio_rtl_tri_i[0] = &i2c_axil_scl_t ? internal_i2c_scl : &i2c_axil_scl_o;
  assign gpio_rtl_tri_i[1] = &i2c_axil_sda_t ? internal_i2c_sda : &i2c_axil_sda_o;

  //----------------------------------------------------------------
  // I2C to AXI bridges
  //----------------------------------------------------------------

  parameter DATA_WIDTH = 32;  // width of data bus in bits
  parameter ADDR_WIDTH = 32;  // width of address bus in bits
  parameter STRB_WIDTH = (DATA_WIDTH/8);

  genvar ii;

  generate
    for (ii = 0; ii < NUM_SLAVES; ii = ii + 1) begin : generate_i2c

      assign i2c_axil_scl_i[ii] = internal_i2c_scl;
      assign i2c_axil_sda_i[ii] = internal_i2c_sda;

      i2c_slave_axil_master
        #(.DATA_WIDTH(DATA_WIDTH),
          .ADDR_WIDTH(ADDR_WIDTH))
      i2c_slave_axil_master_i
        (.enable(1),
         .device_address(7'h40 + ii),

         .busy(),
         .bus_addressed(),
         .bus_active(),

         .i2c_scl_i(i2c_axil_scl_i[ii]),
         .i2c_scl_o(i2c_axil_scl_o[ii]),
         .i2c_scl_t(i2c_axil_scl_t[ii]),

         .i2c_sda_i(i2c_axil_sda_i[ii]),
         .i2c_sda_o(i2c_axil_sda_o[ii]),
         .i2c_sda_t(i2c_axil_sda_t[ii]),

         .clk                (axi_aclk),
         .rst                (!axi_aresetn),

         .m_axil_awaddr      (axil_awaddr  [ii*32 +: 32]),
         .m_axil_awprot      (axil_awprot  [ii*3 +: 3]),
         .m_axil_awvalid     (axil_awvalid [ii]),
         .m_axil_awready     (axil_awready [ii]),
         .m_axil_wdata       (axil_wdata   [ii*32 +: 32]),
         .m_axil_wstrb       (axil_wstrb   [ii*32/8 +: 32/8]),
         .m_axil_wvalid      (axil_wvalid  [ii]),
         .m_axil_wready      (axil_wready  [ii]),
         .m_axil_bresp       (axil_bresp   [ii*2 +: 2]),
         .m_axil_bvalid      (axil_bvalid  [ii]),
         .m_axil_bready      (axil_bready  [ii]),
         .m_axil_araddr      (axil_araddr  [ii*32 +: 32]),
         .m_axil_arprot      (axil_arprot  [ii*3 +: 3]),
         .m_axil_arvalid     (axil_arvalid [ii]),
         .m_axil_arready     (axil_arready [ii]),
         .m_axil_rdata       (axil_rdata   [ii*32 +: 32]),
         .m_axil_rresp       (axil_rresp   [ii*2 +: 2]),
         .m_axil_rvalid      (axil_rvalid  [ii]),
         .m_axil_rready      (axil_rready  [ii]));

    end
  endgenerate

  //----------------------------------------------------------------
  // Ethernet PHYs.
  //----------------------------------------------------------------

  wire clk156;
  wire areset_clk156;

  wire [32*PHY_PATHS-1 : 0] gen_config;
  wire [ 5*PHY_PATHS-1 : 0] xphy_status;

  wire [64*PHY_PATHS-1 : 0] xgmii_txd;
  wire [ 8*PHY_PATHS-1 : 0] xgmii_txc;
  wire [64*PHY_PATHS-1 : 0] xgmii_rxd;
  wire [ 8*PHY_PATHS-1 : 0] xgmii_rxc;

  //----------------------------------------------------------------
  // Ethernet PHYs.
  //----------------------------------------------------------------
  ntps_phys phys
    (.reset                 (reset),
     .clk156                (clk156),
     .areset_clk156         (areset_clk156),

     .mdc                   (),
     .mdio_in               (),
     .mdio_out              (),

     .xphy_refclk_n         (xphy_refclk_n),
     .xphy_refclk_p         (xphy_refclk_p),

     .xphy_config_0         (gen_config[0*32+29+:3]),
     .xphy_config_1         (gen_config[1*32+29+:3]),
     .xphy_config_2         (gen_config[2*32+29+:3]),
     .xphy_config_3         (gen_config[3*32+29+:3]),

     .xphy_status_0         (xphy_status[0*5+:5]),
     .xphy_status_1         (xphy_status[1*5+:5]),
     .xphy_status_2         (xphy_status[2*5+:5]),
     .xphy_status_3         (xphy_status[3*5+:5]),

     .sfp_module_detect_n_0 (sfp_module_detect_n[0]),
     .sfp_signal_lost_0     (sfp_signal_lost[0]),
     .sfp_tx_fault_0        (sfp_tx_fault[0]),
     .sfp_tx_disable_0      (sfp_tx_disable[0]),
     .xphy_rxp_0            (xphy_rxp[0]),
     .xphy_rxn_0            (xphy_rxn[0]),
     .xphy_txp_0            (xphy_txp[0]),
     .xphy_txn_0            (xphy_txn[0]),
     .xgmii_txd_0           (xgmii_txd[0*64+:64]),
     .xgmii_txc_0           (xgmii_txc[0*8+:8]),
     .xgmii_rxd_0           (xgmii_rxd[0*64+:64]),
     .xgmii_rxc_0           (xgmii_rxc[0*8+:8]),

     .sfp_module_detect_n_1 (sfp_module_detect_n[1]),
     .sfp_signal_lost_1     (sfp_signal_lost[1]),
     .sfp_tx_fault_1        (sfp_tx_fault[1]),
     .sfp_tx_disable_1      (sfp_tx_disable[1]),
     .xphy_rxp_1            (xphy_rxp[1]),
     .xphy_rxn_1            (xphy_rxn[1]),
     .xphy_txp_1            (xphy_txp[1]),
     .xphy_txn_1            (xphy_txn[1]),
     .xgmii_txd_1           (xgmii_txd[1*64+:64]),
     .xgmii_txc_1           (xgmii_txc[1*8+:8]),
     .xgmii_rxd_1           (xgmii_rxd[1*64+:64]),
     .xgmii_rxc_1           (xgmii_rxc[1*8+:8]),

     .sfp_module_detect_n_2 (sfp_module_detect_n[2]),
     .sfp_signal_lost_2     (sfp_signal_lost[2]),
     .sfp_tx_fault_2        (sfp_tx_fault[2]),
     .sfp_tx_disable_2      (sfp_tx_disable[2]),
     .xphy_rxp_2            (xphy_rxp[2]),
     .xphy_rxn_2            (xphy_rxn[2]),
     .xphy_txp_2            (xphy_txp[2]),
     .xphy_txn_2            (xphy_txn[2]),
     .xgmii_txd_2           (xgmii_txd[2*64+:64]),
     .xgmii_txc_2           (xgmii_txc[2*8+:8]),
     .xgmii_rxd_2           (xgmii_rxd[2*64+:64]),
     .xgmii_rxc_2           (xgmii_rxc[2*8+:8]),

     .sfp_module_detect_n_3 (sfp_module_detect_n[3]),
     .sfp_signal_lost_3     (sfp_signal_lost[3]),
     .sfp_tx_fault_3        (sfp_tx_fault[3]),
     .sfp_tx_disable_3      (sfp_tx_disable[3]),
     .xphy_rxp_3            (xphy_rxp[3]),
     .xphy_rxn_3            (xphy_rxn[3]),
     .xphy_txp_3            (xphy_txp[3]),
     .xphy_txn_3            (xphy_txn[3]),
     .xgmii_txd_3           (xgmii_txd[3*64+:64]),
     .xgmii_txc_3           (xgmii_txc[3*8+:8]),
     .xgmii_rxd_3           (xgmii_rxd[3*64+:64]),
     .xgmii_rxc_3           (xgmii_rxc[3*8+:8]));

  ntps_interfaces
    #(
      .NUM_PATHS(NUM_PATHS),
      .NUM_SLAVES(NUM_SLAVES)
      )
  ntps_interfaces_0
    (
     .refclk                (clk50),
     .reset                 (reset),

     .clk156                (clk156),
     .areset_clk156         (areset_clk156),

     .axi_aclk              (axi_aclk),
     .axi_aresetn           (axi_aresetn),
     .axil_awaddr           (axil_awaddr),
     .axil_awvalid          (axil_awvalid),
     .axil_awready          (axil_awready),
     .axil_wdata            (axil_wdata),
     .axil_wstrb            (axil_wstrb),
     .axil_wvalid           (axil_wvalid),
     .axil_wready           (axil_wready),
     .axil_bresp            (axil_bresp),
     .axil_bvalid           (axil_bvalid),
     .axil_bready           (axil_bready),
     .axil_araddr           (axil_araddr),
     .axil_arvalid          (axil_arvalid),
     .axil_arready          (axil_arready),
     .axil_rdata            (axil_rdata),
     .axil_rresp            (axil_rresp),
     .axil_rvalid           (axil_rvalid),
     .axil_rready           (axil_rready),

     // 10Gbit ports
     .xgmii_txd             (xgmii_txd),
     .xgmii_txc             (xgmii_txc),
     .xgmii_rxd             (xgmii_rxd),
     .xgmii_rxc             (xgmii_rxc),
     .gen_config            (gen_config),
     .xphy_status           (xphy_status),

     // NTP clocks
     .PPS_INA               (pps_ina),
     .PPS_OUTA              (PPS_OUTA),
     .TEN_MHZ_INA           (ten_mhz_ina),
     .TEN_MHZ_OUTA          (TEN_MHZ_OUTA),
     .NTP_LED1A             (),
     .NTP_LED2A             (),
     .PLL_LOCKEDA           (),

     .PPS_INB               (pps_inb),
     .PPS_OUTB              (PPS_OUTB),
     .TEN_MHZ_INB           (ten_mhz_inb),
     .TEN_MHZ_OUTB          (TEN_MHZ_OUTB),
     .NTP_LED1B             (),
     .NTP_LED2B             (),
     .PLL_LOCKEDB           ());

endmodule

`default_nettype wire
