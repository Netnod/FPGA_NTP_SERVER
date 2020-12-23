#=======================================================================
# clocks.xdc
# ----------
# Constraints for clocks used in the design
# Input pins, timing, groups etc.
#=======================================================================

# 125 MHz system clock. External source. Used for PHYs.
# -----------------------------------------------------
set_property -dict {LOC AY24 IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property -dict {LOC AY23 IOSTANDARD LVDS} [get_ports clk_125mhz_n]
create_clock -period 8.000 -name clk_125mhz [get_ports clk_125mhz_p]

# Separate Eth phy clocks from AXI clocks
# set_clock_groups -name async_userclks_clk156 -asynchronous -group [get_clocks userclk*] -group [get_clocks [get_clocks -of_objects [get_pins ntps_interfaces_0/phys/phy0/refclk_p]]]


# 156.25 MHz MGT reference clock. External source.
# ------------------------------------------------
set_property -dict {LOC W9  } [get_ports qsfp1_mgt_refclk_0_p] ;# MGTREFCLK0P_231 from U38.4
#set_property -dict {LOC W8  } [get_ports qsfp1_mgt_refclk_0_n] ;# MGTREFCLK0N_231 from U38.5
create_clock -period 6.400 -name qsfp1_mgt_refclk_0 [get_ports qsfp1_mgt_refclk_0_p]

#set_property -dict {LOC U9  } [get_ports qsfp1_mgt_refclk_1_p] ;# MGTREFCLK1P_231 from U57.28
#set_property -dict {LOC U8  } [get_ports qsfp1_mgt_refclk_1_n] ;# MGTREFCLK1N_231 from U57.29


# 300 MHz system clock. External source. Used for PCIe.
# -------------------------------------------------------
set_property -dict {LOC G31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_p]
set_property -dict {LOC F31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_n]
create_clock -period 3.333 -name clk_300mhz [get_ports clk_300mhz_p]

set_clock_groups -name async20 -asynchronous -group [get_clocks -of_objects [get_ports clk_300MHz_p]] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]]

set_clock_groups -name async21 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_ports clk_300MHz_p]]

set_clock_groups -name async22 -asynchronous -group [get_clocks -of_objects [get_ports clk_300MHz_p]] -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]]

set_clock_groups -name async23 -asynchronous -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]] -group [get_clocks -of_objects [get_ports clk_300MHz_p]]


# Derived, generated clocks.
# --------------------------
# clk50
create_generated_clock -name clk50 -source [get_ports SYS_CLK_P] -divide_by 2 [get_pins {clocks/clk50_gen_0/clk_divide_reg[1]/Q}]
set_clock_groups -name clk_50_clocks -asynchronous -group [get_clocks -include_generated_clocks clk50]


# 100 MHz PCIe clock. External source.
# ------------------------------------
set_property PACKAGE_PIN AL9 [get_ports pcie_clk_p]
set_property PACKAGE_PIN AL8 [get_ports pcie_clk_n]
create_clock -name pcie_clk -period 10 [get_ports pcie_clk_p]

set_clock_groups -name async18 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]]

set_clock_groups -name asynco -asynchronous -group [get_clocks -of_objects [get_pins mem_clk_inst/clk_out1]] -group [get_clocks {pcie_clk}]

set_clock_groups -name asyncp -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins mem_clk_inst/clk_out1]]

set_clock_groups -name async5 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]]

set_clock_groups -name async6 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks {pcie_clk}]

set_clock_groups -name async1 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/O]]

set_clock_groups -name async2 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/O]] -group [get_clocks {pcie_clk}]

set_clock_groups -name async24 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_intclk/O]] -group [get_clocks {pcie_clk}]

set_clock_groups -name async19 -asynchronous -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE

#=======================================================================
# EOF clocks.xdc
#=======================================================================
