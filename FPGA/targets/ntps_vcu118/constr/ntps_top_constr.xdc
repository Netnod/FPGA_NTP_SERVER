# set_property PACKAGE_PIN AB8 [get_ports PCIE_CLK_P]
# create_clock -period 10.000 -name PCIE_CLK -waveform {0.000 5.000} [get_ports PCIE_CLK_P]

# set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_P]
# set_property PACKAGE_PIN H19 [get_ports SYS_CLK_P]

create_clock -period 5.000 -name sys_clk -waveform {0.000 2.500} [get_ports sys_clk_p]

# 156MHz clock
#create_clock -name refclk_156 -period 6.4 [get_ports refclk_156_p]
#set_property PACKAGE_PIN AW23 [get_ports refclk_156_p]
#set_property IOSTANDARD LVDS [get_ports refclk_156_p]

# set_property PACKAGE_PIN AV35 [get_ports pcie_perst]
# set_property IOSTANDARD LVCMOS18 [get_ports pcie_perst]

# set_property PACKAGE_PIN AM39 [get_ports LED0]
# set_property IOSTANDARD LVCMOS18 [get_ports LED0]
# set_property PACKAGE_PIN AN39 [get_ports LED1]
# set_property IOSTANDARD LVCMOS18 [get_ports LED1]
# set_property PACKAGE_PIN AR37 [get_ports LED2]
# set_property IOSTANDARD LVCMOS18 [get_ports LED2]
# set_property PACKAGE_PIN AT37 [get_ports LED3]
# set_property IOSTANDARD LVCMOS18 [get_ports LED3]
# set_property PACKAGE_PIN AR35 [get_ports LED4]
# set_property IOSTANDARD LVCMOS18 [get_ports LED4]
# set_property PACKAGE_PIN AP41 [get_ports LED5]
# set_property IOSTANDARD LVCMOS18 [get_ports LED5]
# set_property PACKAGE_PIN AP42 [get_ports LED6]
# set_property IOSTANDARD LVCMOS18 [get_ports LED6]
# set_property PACKAGE_PIN AU39 [get_ports LED7]
# set_property IOSTANDARD LVCMOS18 [get_ports LED7]

#As per UG470, UG899, UG908, and G18 Flash specifications
# set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
# set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
# set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
# set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
# set_property CONFIG_MODE BPI16 [current_design]
# set_property CFGBVS GND [current_design]
# set_property CONFIG_VOLTAGE 1.8 [current_design]

##-------------------------------------
#PMBUS LOC
##-------------------------------------
# set_property PACKAGE_PIN AW37 [get_ports pmbus_clk]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_clk]
# set_property PACKAGE_PIN AY39 [get_ports pmbus_data]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_data]
# set_property PACKAGE_PIN AV38 [get_ports pmbus_alert]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_alert]


# We really want combinational loops for the rosc oscillators.
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_0/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_0/rosc/core/oscillators[*].rosc_array/dout_reg*]
