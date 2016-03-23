`default_nettype none

`timescale 1ns/1ps

module mac_test (
  input wire [63:0] xgmii_rxd,
  input wire [7:0]  xgmii_rxc,
  input wire        rx_start,
  input wire [7:0]  rx_state,
  input wire [7:0]  rx_data_valid_exp,
  input wire [63:0] rx_data_exp,
  input wire        status_reg_1,
  input wire        status_reg_2,
  input wire        status_reg,
  input wire        rx_bad_frame_exp,
  input wire        rx_good_frame_exp,
  input wire        tx_start,
  input wire        tx_mac_start,
  input wire [3:0]  tx_state,
  input wire        TRIGGER,
  input wire        WINDOW,
  input wire        GAP

);

  reg        clkx  = '0;
  reg        res_n = '0;

  always #0.5 clkx <= ~clkx;
  wire         clk;

  assign #0.499 clk = clkx;
  
  initial #0.5 res_n <= '1;

  wire [63:0] rx_data;
  wire [7:0]  rx_data_valid;
  wire        rx_good_frame;
  wire        rx_bad_frame;
  
  oc_mac test_mac(
    .res_n         (res_n),
    .tx_clk        (1'b0),
    .tx_start      (1'b0),
    .tx_data       (64'b0),
    .tx_data_valid (8'b0),
    .tx_ack        (),
    .xgmii_txc     (),
    .xgmii_txd     (),
    .rx_clk        (clk),
    .xgmii_rxd     (xgmii_rxd),
    .xgmii_rxc     (xgmii_rxc),
    .rx_data       (rx_data),
    .rx_data_valid (rx_data_valid),
    .rx_bad_frame  (rx_bad_frame),
    .rx_good_frame (rx_good_frame)
  );

  always @(posedge clk) assert (rx_bad_frame === 1'b0);
  
endmodule // mac_test

  
