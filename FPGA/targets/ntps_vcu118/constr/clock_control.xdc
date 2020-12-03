# System clocks
# 300 MHz
#set_property -dict {LOC G31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_p]
#set_property -dict {LOC F31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_n]
#create_clock -period 3.333 -name clk_300mhz [get_ports clk_300mhz_p]

# 250 MHz
#set_property -dict {LOC E12  IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_1_p]
#set_property -dict {LOC D12  IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_1_n]
#create_clock -period 4 -name clk_250mhz_1 [get_ports clk_250mhz_1_p]

#set_property -dict {LOC AW26 IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_2_p]
#set_property -dict {LOC AW27 IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_2_n]
#create_clock -period 4 -name clk_250mhz_2 [get_ports clk_250mhz_2_p]

# 125 MHz
set_property -dict {LOC AY24 IOSTANDARD LVDS} [get_ports clk_125mhz_p]
set_property -dict {LOC AY23 IOSTANDARD LVDS} [get_ports clk_125mhz_n]
create_clock -period 8.000 -name clk_125mhz [get_ports clk_125mhz_p]

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

# Generated clock
create_generated_clock -name clk50 -source [get_ports SYS_CLK_P] -divide_by 2 [get_pins {clocks/clk50_gen_0/clk_divide_reg[1]/Q}]

# set_false_path -from [get_ports pcie_perst]
