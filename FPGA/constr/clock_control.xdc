# 156.25 MHz clock control LOCs
set_property IOSTANDARD LVCMOS18 [get_ports i2c_clk]
set_property SLEW SLOW [get_ports i2c_clk]
set_property DRIVE 16 [get_ports i2c_clk]
set_property PULLUP true [get_ports i2c_clk]
set_property PACKAGE_PIN AT35 [get_ports i2c_clk]

set_property IOSTANDARD LVCMOS18 [get_ports i2c_data]
set_property SLEW SLOW [get_ports i2c_data]
set_property DRIVE 16 [get_ports i2c_data]
set_property PULLUP true [get_ports i2c_data]
set_property PACKAGE_PIN AU32 [get_ports i2c_data]

set_property IOSTANDARD LVCMOS18 [get_ports i2c_mux_rst_n]
set_property SLEW SLOW [get_ports i2c_mux_rst_n]
set_property DRIVE 16 [get_ports i2c_mux_rst_n]
set_property PACKAGE_PIN AY42 [get_ports i2c_mux_rst_n]

set_property IOSTANDARD LVCMOS18 [get_ports si5324_rst_n]
set_property SLEW SLOW [get_ports si5324_rst_n]
set_property DRIVE 16 [get_ports si5324_rst_n]
set_property PACKAGE_PIN AT36 [get_ports si5324_rst_n]

# Generated clock
create_generated_clock -name clk50 -source [get_ports SYS_CLK_P] -divide_by 2 [get_pins {clk50_gen_0/clk_divide_reg[1]/Q}]

set_false_path -from [get_ports pcie_perst]



