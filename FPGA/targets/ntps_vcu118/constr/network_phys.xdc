#=======================================================================
#
# network_phys.xdc
# ----------------
# Constraints for the network physical interfaces.
# For VCU118 this means the two QSFP28 interfaces.
#
#=======================================================================

# QSFP28 Interface 1
# -------------------
set_property -dict {LOC Y2  } [get_ports qsfp1_rx1_p] ;# MGTYRXP0_231 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC Y1  } [get_ports qsfp1_rx1_n] ;# MGTYRXN0_231 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12

set_property -dict {LOC V7  } [get_ports qsfp1_tx1_p] ;# MGTYTXP0_231 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC V6  } [get_ports qsfp1_tx1_n] ;# MGTYTXN0_231 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12

set_property -dict {LOC W4  } [get_ports qsfp1_rx2_p] ;# MGTYRXP1_231 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC W3  } [get_ports qsfp1_rx2_n] ;# MGTYRXN1_231 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12

set_property -dict {LOC T7  } [get_ports qsfp1_tx2_p] ;# MGTYTXP1_231 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC T6  } [get_ports qsfp1_tx2_n] ;# MGTYTXN1_231 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12

set_property -dict {LOC V2  } [get_ports qsfp1_rx3_p] ;# MGTYRXP2_231 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC V1  } [get_ports qsfp1_rx3_n] ;# MGTYRXN2_231 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12

set_property -dict {LOC P7  } [get_ports qsfp1_tx3_p] ;# MGTYTXP2_231 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC P6  } [get_ports qsfp1_tx3_n] ;# MGTYTXN2_231 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12

set_property -dict {LOC U4  } [get_ports qsfp1_rx4_p] ;# MGTYRXP3_231 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC U3  } [get_ports qsfp1_rx4_n] ;# MGTYRXN3_231 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12

set_property -dict {LOC M7  } [get_ports qsfp1_tx4_p] ;# MGTYTXP3_231 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
#set_property -dict {LOC M6  } [get_ports qsfp1_tx4_n] ;# MGTYTXN3_231 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12

#set_property -dict {LOC AM23 IOSTANDARD LVDS} [get_ports qsfp1_recclk_p] ;# to U57.16
#set_property -dict {LOC AM22 IOSTANDARD LVDS} [get_ports qsfp1_recclk_n] ;# to U57.17

set_property -dict {LOC AM21 IOSTANDARD LVCMOS18} [get_ports qsfp1_modsell]
set_property -dict {LOC BA22 IOSTANDARD LVCMOS18} [get_ports qsfp1_resetl]
set_property -dict {LOC AL21 IOSTANDARD LVCMOS18} [get_ports qsfp1_modprsl]
set_property -dict {LOC AP21 IOSTANDARD LVCMOS18} [get_ports qsfp1_intl]
set_property -dict {LOC AN21 IOSTANDARD LVCMOS18} [get_ports qsfp1_lpmode]



# QSFP28 Interface 2
set_property -dict {LOC T2  } [get_ports qsfp2_rx1_p] ;# MGTYRXP0_232 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC T1  } [get_ports qsfp2_rx1_n] ;# MGTYRXN0_232 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13

set_property -dict {LOC L5  } [get_ports qsfp2_tx1_p] ;# MGTYTXP0_232 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC L4  } [get_ports qsfp2_tx1_n] ;# MGTYTXN0_232 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13

set_property -dict {LOC R4  } [get_ports qsfp2_rx2_p] ;# MGTYRXP1_232 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC R3  } [get_ports qsfp2_rx2_n] ;# MGTYRXN1_232 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13

set_property -dict {LOC K7  } [get_ports qsfp2_tx2_p] ;# MGTYTXP1_232 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC K6  } [get_ports qsfp2_tx2_n] ;# MGTYTXN1_232 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13

set_property -dict {LOC P2  } [get_ports qsfp2_rx3_p] ;# MGTYRXP2_232 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC P1  } [get_ports qsfp2_rx3_n] ;# MGTYRXN2_232 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13

set_property -dict {LOC J5  } [get_ports qsfp2_tx3_p] ;# MGTYTXP2_232 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC J4  } [get_ports qsfp2_tx3_n] ;# MGTYTXN2_232 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13

set_property -dict {LOC M2  } [get_ports qsfp2_rx4_p] ;# MGTYRXP3_232 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC M1  } [get_ports qsfp2_rx4_n] ;# MGTYRXN3_232 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13

set_property -dict {LOC H7  } [get_ports qsfp2_tx4_p] ;# MGTYTXP3_232 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
#set_property -dict {LOC H6  } [get_ports qsfp2_tx4_n] ;# MGTYTXN3_232 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13

#set_property -dict {LOC R9  } [get_ports qsfp2_mgt_refclk_0_p] ;# MGTREFCLK0P_232 from U104.13
#set_property -dict {LOC R8  } [get_ports qsfp2_mgt_refclk_0_n] ;# MGTREFCLK0N_232 from U104.14

#set_property -dict {LOC N9  } [get_ports qsfp2_mgt_refclk_1_p] ;# MGTREFCLK1P_232 from U57.35
#set_property -dict {LOC N8  } [get_ports qsfp2_mgt_refclk_1_n] ;# MGTREFCLK1N_232 from U57.34

#set_property -dict {LOC AP23 IOSTANDARD LVDS} [get_ports qsfp2_recclk_p] ;# to U57.12
#set_property -dict {LOC AP22 IOSTANDARD LVDS} [get_ports qsfp2_recclk_n] ;# to U57.13

set_property -dict {LOC AN23 IOSTANDARD LVCMOS18} [get_ports qsfp2_modsell]
set_property -dict {LOC AY22 IOSTANDARD LVCMOS18} [get_ports qsfp2_resetl]
set_property -dict {LOC AN24 IOSTANDARD LVCMOS18} [get_ports qsfp2_modprsl]
set_property -dict {LOC AT21 IOSTANDARD LVCMOS18} [get_ports qsfp2_intl]
set_property -dict {LOC AT24 IOSTANDARD LVCMOS18} [get_ports qsfp2_lpmode]

#=======================================================================
# EOF network_phys.xdc
#=======================================================================
