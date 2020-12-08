#=======================================================================
# clocks.xdc
# ----------
# Constraints for clocks used in the design
# Input pins, timing, groups etc.
#=======================================================================

# System clocks with external sources.
# ------------------------------------
# 300 MHz system clock. Used for PCIe.
set_property -dict {LOC G31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_p]
set_property -dict {LOC F31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_n]
create_clock -period 3.333 -name clk_300mhz [get_ports clk_300mhz_p]

# 125 MHz system clock. Used for PHYs.
set_property -dict {LOC AY24 IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property -dict {LOC AY23 IOSTANDARD LVDS} [get_ports clk_125mhz_n]
create_clock -period 8.000 -name clk_125mhz [get_ports clk_125mhz_p]


# Derived, generated clocks.
# --------------------------
# clk50
create_generated_clock -name clk50 -source [get_ports SYS_CLK_P] -divide_by 2 [get_pins {clocks/clk50_gen_0/clk_divide_reg[1]/Q}]
set_clock_groups -name clk_50_clocks -asynchronous -group [get_clocks -include_generated_clocks clk50]


# Old, posibly redundant clock constraints
# ----------------------------------------
# 156.25 MHz clock control LOCs
# set_property IOSTANDARD LVCMOS18 [get_ports i2c_clk]
# set_property SLEW SLOW [get_ports i2c_clk]
# set_property DRIVE 16 [get_ports i2c_clk]
# set_property PULLUP true [get_ports i2c_clk]
# set_property PACKAGE_PIN AT35 [get_ports i2c_clk]

# set_property IOSTANDARD LVCMOS18 [get_ports i2c_data]
# set_property SLEW SLOW [get_ports i2c_data]
# set_property DRIVE 16 [get_ports i2c_data]
# set_property PULLUP true [get_ports i2c_data]
# set_property PACKAGE_PIN AU32 [get_ports i2c_data]

# set_property IOSTANDARD LVCMOS18 [get_ports i2c_mux_rst_n]
# set_property SLEW SLOW [get_ports i2c_mux_rst_n]
# set_property DRIVE 16 [get_ports i2c_mux_rst_n]
# set_property PACKAGE_PIN AY42 [get_ports i2c_mux_rst_n]

# set_property IOSTANDARD LVCMOS18 [get_ports si5324_rst_n]
# set_property SLEW SLOW [get_ports si5324_rst_n]
# set_property DRIVE 16 [get_ports si5324_rst_n]
# set_property PACKAGE_PIN AT36 [get_ports si5324_rst_n]

# set_false_path -from [get_ports pcie_perst]

# Separate Eth phy clocks from AXI clocks
# set_clock_groups -name async_userclks_clk156 -asynchronous -group [get_clocks userclk*] -group [get_clocks [get_clocks -of_objects [get_pins ntps_interfaces_0/phys/phy0/refclk_p]]]
