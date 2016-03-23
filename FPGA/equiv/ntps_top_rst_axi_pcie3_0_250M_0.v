module ntps_top_rst_axi_pcie3_0_250M_0 (
    input wire slowest_sync_clk,
    input wire ext_reset_in,
    input wire aux_reset_in,
    input wire mb_debug_sys_rst,
    input wire dcm_locked,
    output wire mb_reset,
    output wire bus_struct_reset,
    output wire peripheral_reset,
    output wire interconnect_aresetn,
    output wire peripheral_aresetn
  );
endmodule // ntps_top_rst_axi_pcie3_0_250M_0

