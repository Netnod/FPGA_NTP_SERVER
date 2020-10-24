# Separate NTP clocks from all other clocks
set_clock_groups -name ntp_clocks_A -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INA_clk_p]
set_clock_groups -name ntp_clocks_B -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INB_clk_p]

# Separate Eth phy clocks from AXI clocks
set_clock_groups -name async_userclks_clk156 -asynchronous -group [get_clocks userclk*] -group [get_clocks [get_clocks -of_objects [get_pins ntps_interfaces_0/phys/phy0/refclk_p]]]

# Separate 50 MHz clock from all other clocks
set_clock_groups -name clk_50_clocks -asynchronous -group [get_clocks -include_generated_clocks clk50]

#EOF
