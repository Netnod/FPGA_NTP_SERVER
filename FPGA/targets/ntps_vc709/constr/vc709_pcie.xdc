set_property PACKAGE_PIN AB8 [get_ports pcie_refclk_clk_p]
create_clock -period 10.000 -name PCIE_CLK -waveform {0.000 5.000} [get_ports pcie_refclk_clk_p]
# create_clock -period 8.000 -name axi_aclk -waveform {0.000 4.000} [get_ports axi_aclk]
