# XDC constraints for the Xilinx VC709

#As per UG470, UG899, UG908, and G18 Flash specifications
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# 200 MHz system clock
set_property -dict {LOC H19  IOSTANDARD LVDS} [get_ports clk_200mhz_p]
set_property -dict {LOC G18  IOSTANDARD LVDS} [get_ports clk_200mhz_n]
create_clock -period 5 -name clk_200mhz [get_ports clk_200mhz_p]

# SFP+ Interfaces
set_property -dict {LOC A6   } [get_ports sfp_1_rx_p] ;# MGTHRXN3_119 GTHE2_CHANNEL_X1Y39 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC A5   } [get_ports sfp_1_rx_n] ;# MGTHRXP3_119 GTHE2_CHANNEL_X1Y39 / GTHE2_COMMON_X1Y9
set_property -dict {LOC B4   } [get_ports sfp_1_tx_p] ;# MGTHTXN3_119 GTHE2_CHANNEL_X1Y39 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC B3   } [get_ports sfp_1_tx_n] ;# MGTHTXP3_119 GTHE2_CHANNEL_X1Y39 / GTHE2_COMMON_X1Y9
set_property -dict {LOC B8   } [get_ports sfp_2_rx_p] ;# MGTHRXN2_119 GTHE2_CHANNEL_X1Y38 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC B7   } [get_ports sfp_2_rx_n] ;# MGTHRXP2_119 GTHE2_CHANNEL_X1Y38 / GTHE2_COMMON_X1Y9
set_property -dict {LOC C2   } [get_ports sfp_2_tx_p] ;# MGTHTXN2_119 GTHE2_CHANNEL_X1Y38 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC C1   } [get_ports sfp_2_tx_n] ;# MGTHTXP2_119 GTHE2_CHANNEL_X1Y38 / GTHE2_COMMON_X1Y9
set_property -dict {LOC C6   } [get_ports sfp_3_rx_p] ;# MGTHRXN1_119 GTHE2_CHANNEL_X1Y37 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC C5   } [get_ports sfp_3_rx_n] ;# MGTHRXP1_119 GTHE2_CHANNEL_X1Y37 / GTHE2_COMMON_X1Y9
set_property -dict {LOC D4   } [get_ports sfp_3_tx_p] ;# MGTHTXN1_119 GTHE2_CHANNEL_X1Y37 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC D3   } [get_ports sfp_3_tx_n] ;# MGTHTXP1_119 GTHE2_CHANNEL_X1Y37 / GTHE2_COMMON_X1Y9
set_property -dict {LOC D8   } [get_ports sfp_4_rx_p] ;# MGTHRXN0_119 GTHE2_CHANNEL_X1Y36 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC D7   } [get_ports sfp_4_rx_n] ;# MGTHRXP0_119 GTHE2_CHANNEL_X1Y36 / GTHE2_COMMON_X1Y9
set_property -dict {LOC E2   } [get_ports sfp_4_tx_p] ;# MGTHTXN0_119 GTHE2_CHANNEL_X1Y36 / GTHE2_COMMON_X1Y9
#set_property -dict {LOC E1   } [get_ports sfp_4_tx_n] ;# MGTHTXP0_119 GTHE2_CHANNEL_X1Y36 / GTHE2_COMMON_X1Y9
set_property -dict {LOC E10  } [get_ports sfp_mgt_refclk_p] ;# MGTREFCLK0P_118 from IC20.28
set_property -dict {LOC E9   } [get_ports sfp_mgt_refclk_n] ;# MGTREFCLK0N_118 from IC20.29
#set_property -dict {LOC AW32 IOSTANDARD LVDS} [get_ports sfp_recclk_p] ;# to IC20.16
#set_property -dict {LOC AW33 IOSTANDARD LVDS} [get_ports sfp_recclk_n] ;# to IC20.17
set_property -dict {LOC BA29 IOSTANDARD LVCMOS18} [get_ports sfp_clk_rst]
#set_property -dict {LOC AM29 IOSTANDARD LVCMOS18 PULLUP true} [get_ports sfp_clk_alarm_b]
set_property -dict {LOC N18  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_1_mod_detect]
set_property -dict {LOC L19  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_2_mod_detect]
set_property -dict {LOC J37  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_3_mod_detect]
set_property -dict {LOC H36  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_4_mod_detect]
set_property -dict {LOC N19  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_1_rs[0]}]
set_property -dict {LOC P18  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_1_rs[1]}]
set_property -dict {LOC P20  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_2_rs[0]}]
set_property -dict {LOC N20  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_2_rs[1]}]
set_property -dict {LOC F39  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_3_rs[0]}]
set_property -dict {LOC G36  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_3_rs[1]}]
set_property -dict {LOC H38  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_4_rs[0]}]
set_property -dict {LOC G38  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports {sfp_4_rs[1]}]
set_property -dict {LOC L17  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_1_los]
set_property -dict {LOC L20  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_2_los]
set_property -dict {LOC G37  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_3_los]
set_property -dict {LOC J36  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_4_los]
set_property -dict {LOC M18  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports sfp_1_tx_disable]
set_property -dict {LOC B31  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports sfp_2_tx_disable]
set_property -dict {LOC J38  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports sfp_3_tx_disable]
set_property -dict {LOC L21  IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports sfp_4_tx_disable]
set_property -dict {LOC M19  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_1_tx_fault]
set_property -dict {LOC C26  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_2_tx_fault]
set_property -dict {LOC E39  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_3_tx_fault]
set_property -dict {LOC J26  IOSTANDARD LVCMOS15 PULLUP true} [get_ports sfp_4_tx_fault]

# I2C interface
set_property -dict {LOC AK24 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports i2c_scl]
set_property -dict {LOC AK25 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 12 PULLUP true} [get_ports i2c_sda]
set_property -dict {LOC AM39 IOSTANDARD LVCMOS15 SLEW SLOW DRIVE 12} [get_ports i2c_mux_reset]
