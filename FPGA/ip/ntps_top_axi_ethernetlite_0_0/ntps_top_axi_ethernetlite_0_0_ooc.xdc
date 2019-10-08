
# This constraints file contains default clock frequencies to be used during 
# out-of-context flows such as OOC Synthesis and Hierarchical Designs. 
# For best results the frequencies should be modified# to match the target 
# frequencies. 
# This constraints file is not used in normal top-down synthesis (the default flow of Vivado)

#create_clock -name clock_name -period 10 [get_ports clock_name] 

#list of all the clock needed for AXI Ethernetlite core

create_clock -name s_axi_aclk -period 8.000 [get_ports s_axi_aclk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports s_axi_aclk]

create_clock -period 40 [get_ports phy_tx_clk] 
create_clock -period 40 [get_ports phy_rx_clk] 
set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports phy_tx_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y2 [get_ports phy_rx_clk]
