# Separate NTP clocks from all other clocks
set_clock_groups -name ntp_clocks_A -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INA_P]
set_clock_groups -name ntp_clocks_B -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INB_P]

# set_false_path -from [get_ports pcie_perstn]

# Separate Eth phy clocks from AXI clocks
set_clock_groups -name async_axi_clk156 -asynchronous -group [get_clocks -of_objects [get_pins ntps_interfaces_0/axi_aclk]] -group [get_clocks -of_objects [get_pins phys/phy0/refclk_p]]

# Generated clk50
create_generated_clock -name clk50 -source [get_ports SYS_CLK_P] -divide_by 2 [get_pins {clocks/clk50_gen_0/clk_divide_reg[1]/Q}]

# Separate 50 MHz clock from all other clocks
set_clock_groups -name clk_50_clocks -asynchronous -group [get_clocks -include_generated_clocks clk50]
