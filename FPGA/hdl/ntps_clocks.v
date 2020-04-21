// ntps_clocks


`default_nettype none

module ntps_clocks(
                   input wire  reset,

                   input wire  pcie_clk_n,
                   input wire  pcie_clk_p,
                   output wire pcie_clk,

                   input wire  sys_clk_n,
                   input wire  sys_clk_p,
                   output wire clk50,

                   inout wire  i2c_clk,
                   inout wire  i2c_data,
                   output wire i2c_mux_rst_n,
                   output wire si5324_rst_n,

                   output wire pps_out,
                   output wire ten_mhz_out
                  );

  //----------------------------------------------------------------
  // Internal wires.
  //----------------------------------------------------------------
  wire sys_clk;
  wire clk50;

  // pcie_clk clock tree input buffer.
  ntps_top_util_ds_buf_0_0 util_ds_buf_0 (
     .IBUF_DS_N  (pcie_clk_n),
     .ibuf_ds_p  (pcie_clk_p),
     .IBUF_OUT   (pcie_clk)
  );


  // 200Mhz System clock from external source.
  // sys_clk clock tree input buffer.
  ntps_top_util_ds_buf_0_3 util_ds_buf_1 (
     .IBUF_DS_N  (sys_clk_n),
     .ibuf_ds_p  (sys_clk_p),
     .IBUF_OUT   (sys_clk)
  );


  // 50MHz clock generator sys_clk / 4.
  // Instantiates a BUFG.
  clk50_gen clk50_gen_0 (
     .clk200     (sys_clk),
     .clk50      (clk50)
  );

  // Control of the external 10Gb ethernet clock generator
  clock_control clock_control_0 (
     .clk50         (clk50),
     .rst           (reset),
     .i2c_clk       (i2c_clk),
     .i2c_data      (i2c_data),
     .i2c_mux_rst_n (i2c_mux_rst_n),
     .si5324_rst_n  (si5324_rst_n)
  );

  // Test pulse and clock output signals
  pps_test pps_test_0 (
    .areset       (reset),
    .clk_in       (sys_clk),
    .PPS_OUT      (test_PPS_OUT),
    .TEN_MHZ_OUT  (test_TEN_MHZ_OUT)
  );

endmodule // ntps_clocks

`default_nettype wire
