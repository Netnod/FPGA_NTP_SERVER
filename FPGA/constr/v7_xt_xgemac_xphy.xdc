## PCS-PMA & 10GBASE-R constraints

##GT Ref clk
set_property PACKAGE_PIN AH8 [get_ports xphy_refclk_p]
set_property PACKAGE_PIN AH7 [get_ports xphy_refclk_n]

##---------------------------------------------------------------------------------------
## 10GBASE-R constraints
##---------------------------------------------------------------------------------------
## SFP+ Cage mapping on VC709
# P2 --> X1Y13
# P3 --> X1Y12
# P4 --> X1Y14
# P5 --> X1Y15
## GT placement ## MGT_BANK_113

# order of ports match panel not pcb!
set_property PACKAGE_PIN AN5 [get_ports xphy1_rxn]
set_property PACKAGE_PIN AN6 [get_ports xphy1_rxp]
set_property PACKAGE_PIN AP3 [get_ports xphy1_txn]
set_property PACKAGE_PIN AP4 [get_ports xphy1_txp]
set_property PACKAGE_PIN AB41 [get_ports sfp_tx_disable1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable1]
set_property PACKAGE_PIN Y38 [get_ports sfp_tx_fault1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault1]
set_property PACKAGE_PIN AB42 [get_ports sfp_module_detect1_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect1_n]
set_property PACKAGE_PIN Y39 [get_ports sfp_signal_lost1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost1]

set_property PACKAGE_PIN AM7 [get_ports xphy0_rxn]
set_property PACKAGE_PIN AM8 [get_ports xphy0_rxp]
set_property PACKAGE_PIN AN1 [get_ports xphy0_txn]
set_property PACKAGE_PIN AN2 [get_ports xphy0_txp]
set_property PACKAGE_PIN Y42 [get_ports sfp_tx_disable0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable0]
set_property PACKAGE_PIN AA39 [get_ports sfp_tx_fault0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault0]
set_property PACKAGE_PIN AA42 [get_ports sfp_module_detect0_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect0_n]
set_property PACKAGE_PIN AA40 [get_ports sfp_signal_lost0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost0]

set_property PACKAGE_PIN AL5 [get_ports xphy2_rxn]
set_property PACKAGE_PIN AL6 [get_ports xphy2_rxp]
set_property PACKAGE_PIN AM3 [get_ports xphy2_txn]
set_property PACKAGE_PIN AM4 [get_ports xphy2_txp]
set_property PACKAGE_PIN AC38 [get_ports sfp_tx_disable2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable2]
set_property PACKAGE_PIN AA41 [get_ports sfp_tx_fault2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault2]
set_property PACKAGE_PIN AC39 [get_ports sfp_module_detect2_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect2_n]
set_property PACKAGE_PIN AD38 [get_ports sfp_signal_lost2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost2]

set_property PACKAGE_PIN AJ5 [get_ports xphy3_rxn]
set_property PACKAGE_PIN AJ6 [get_ports xphy3_rxp]
set_property PACKAGE_PIN AL1 [get_ports xphy3_txn]
set_property PACKAGE_PIN AL2 [get_ports xphy3_txp]
set_property PACKAGE_PIN AC40 [get_ports sfp_tx_disable3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable3]
set_property PACKAGE_PIN AE38 [get_ports sfp_tx_fault3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault3]
set_property PACKAGE_PIN AC41 [get_ports sfp_module_detect3_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect3_n]
set_property PACKAGE_PIN AD40 [get_ports sfp_signal_lost3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost3]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list network_path_shared_0/ten_gig_eth_pcs_pma_inst/inst/ten_gig_eth_pcs_pma_shared_clock_reset_block/CLK]]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {network_path_3/pp/mac/xgmii_rxc[0]} {network_path_3/pp/mac/xgmii_rxc[1]} {network_path_3/pp/mac/xgmii_rxc[2]} {network_path_3/pp/mac/xgmii_rxc[3]} {network_path_3/pp/mac/xgmii_rxc[4]} {network_path_3/pp/mac/xgmii_rxc[5]} {network_path_3/pp/mac/xgmii_rxc[6]} {network_path_3/pp/mac/xgmii_rxc[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 64 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {network_path_3/pp/mac/xgmii_rxd[0]} {network_path_3/pp/mac/xgmii_rxd[1]} {network_path_3/pp/mac/xgmii_rxd[2]} {network_path_3/pp/mac/xgmii_rxd[3]} {network_path_3/pp/mac/xgmii_rxd[4]} {network_path_3/pp/mac/xgmii_rxd[5]} {network_path_3/pp/mac/xgmii_rxd[6]} {network_path_3/pp/mac/xgmii_rxd[7]} {network_path_3/pp/mac/xgmii_rxd[8]} {network_path_3/pp/mac/xgmii_rxd[9]} {network_path_3/pp/mac/xgmii_rxd[10]} {network_path_3/pp/mac/xgmii_rxd[11]} {network_path_3/pp/mac/xgmii_rxd[12]} {network_path_3/pp/mac/xgmii_rxd[13]} {network_path_3/pp/mac/xgmii_rxd[14]} {network_path_3/pp/mac/xgmii_rxd[15]} {network_path_3/pp/mac/xgmii_rxd[16]} {network_path_3/pp/mac/xgmii_rxd[17]} {network_path_3/pp/mac/xgmii_rxd[18]} {network_path_3/pp/mac/xgmii_rxd[19]} {network_path_3/pp/mac/xgmii_rxd[20]} {network_path_3/pp/mac/xgmii_rxd[21]} {network_path_3/pp/mac/xgmii_rxd[22]} {network_path_3/pp/mac/xgmii_rxd[23]} {network_path_3/pp/mac/xgmii_rxd[24]} {network_path_3/pp/mac/xgmii_rxd[25]} {network_path_3/pp/mac/xgmii_rxd[26]} {network_path_3/pp/mac/xgmii_rxd[27]} {network_path_3/pp/mac/xgmii_rxd[28]} {network_path_3/pp/mac/xgmii_rxd[29]} {network_path_3/pp/mac/xgmii_rxd[30]} {network_path_3/pp/mac/xgmii_rxd[31]} {network_path_3/pp/mac/xgmii_rxd[32]} {network_path_3/pp/mac/xgmii_rxd[33]} {network_path_3/pp/mac/xgmii_rxd[34]} {network_path_3/pp/mac/xgmii_rxd[35]} {network_path_3/pp/mac/xgmii_rxd[36]} {network_path_3/pp/mac/xgmii_rxd[37]} {network_path_3/pp/mac/xgmii_rxd[38]} {network_path_3/pp/mac/xgmii_rxd[39]} {network_path_3/pp/mac/xgmii_rxd[40]} {network_path_3/pp/mac/xgmii_rxd[41]} {network_path_3/pp/mac/xgmii_rxd[42]} {network_path_3/pp/mac/xgmii_rxd[43]} {network_path_3/pp/mac/xgmii_rxd[44]} {network_path_3/pp/mac/xgmii_rxd[45]} {network_path_3/pp/mac/xgmii_rxd[46]} {network_path_3/pp/mac/xgmii_rxd[47]} {network_path_3/pp/mac/xgmii_rxd[48]} {network_path_3/pp/mac/xgmii_rxd[49]} {network_path_3/pp/mac/xgmii_rxd[50]} {network_path_3/pp/mac/xgmii_rxd[51]} {network_path_3/pp/mac/xgmii_rxd[52]} {network_path_3/pp/mac/xgmii_rxd[53]} {network_path_3/pp/mac/xgmii_rxd[54]} {network_path_3/pp/mac/xgmii_rxd[55]} {network_path_3/pp/mac/xgmii_rxd[56]} {network_path_3/pp/mac/xgmii_rxd[57]} {network_path_3/pp/mac/xgmii_rxd[58]} {network_path_3/pp/mac/xgmii_rxd[59]} {network_path_3/pp/mac/xgmii_rxd[60]} {network_path_3/pp/mac/xgmii_rxd[61]} {network_path_3/pp/mac/xgmii_rxd[62]} {network_path_3/pp/mac/xgmii_rxd[63]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {network_path_3/pp/rx/rx_state[0]} {network_path_3/pp/rx/rx_state[1]} {network_path_3/pp/rx/rx_state[2]} {network_path_3/pp/rx/rx_state[3]} {network_path_3/pp/rx/rx_state[4]} {network_path_3/pp/rx/rx_state[5]} {network_path_3/pp/rx/rx_state[6]} {network_path_3/pp/rx/rx_state[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {network_path_3/pp/rx/rx_data_valid_reg[7][0]} {network_path_3/pp/rx/rx_data_valid_reg[7][1]} {network_path_3/pp/rx/rx_data_valid_reg[7][2]} {network_path_3/pp/rx/rx_data_valid_reg[7][3]} {network_path_3/pp/rx/rx_data_valid_reg[7][4]} {network_path_3/pp/rx/rx_data_valid_reg[7][5]} {network_path_3/pp/rx/rx_data_valid_reg[7][6]} {network_path_3/pp/rx/rx_data_valid_reg[7][7]}]]
create_debug_port u_ila_0 probe
set_property port_width 64 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {network_path_3/pp/rx/rx_data_reg[63][0]} {network_path_3/pp/rx/rx_data_reg[63][1]} {network_path_3/pp/rx/rx_data_reg[63][2]} {network_path_3/pp/rx/rx_data_reg[63][3]} {network_path_3/pp/rx/rx_data_reg[63][4]} {network_path_3/pp/rx/rx_data_reg[63][5]} {network_path_3/pp/rx/rx_data_reg[63][6]} {network_path_3/pp/rx/rx_data_reg[63][7]} {network_path_3/pp/rx/rx_data_reg[63][8]} {network_path_3/pp/rx/rx_data_reg[63][9]} {network_path_3/pp/rx/rx_data_reg[63][10]} {network_path_3/pp/rx/rx_data_reg[63][11]} {network_path_3/pp/rx/rx_data_reg[63][12]} {network_path_3/pp/rx/rx_data_reg[63][13]} {network_path_3/pp/rx/rx_data_reg[63][14]} {network_path_3/pp/rx/rx_data_reg[63][15]} {network_path_3/pp/rx/rx_data_reg[63][16]} {network_path_3/pp/rx/rx_data_reg[63][17]} {network_path_3/pp/rx/rx_data_reg[63][18]} {network_path_3/pp/rx/rx_data_reg[63][19]} {network_path_3/pp/rx/rx_data_reg[63][20]} {network_path_3/pp/rx/rx_data_reg[63][21]} {network_path_3/pp/rx/rx_data_reg[63][22]} {network_path_3/pp/rx/rx_data_reg[63][23]} {network_path_3/pp/rx/rx_data_reg[63][24]} {network_path_3/pp/rx/rx_data_reg[63][25]} {network_path_3/pp/rx/rx_data_reg[63][26]} {network_path_3/pp/rx/rx_data_reg[63][27]} {network_path_3/pp/rx/rx_data_reg[63][28]} {network_path_3/pp/rx/rx_data_reg[63][29]} {network_path_3/pp/rx/rx_data_reg[63][30]} {network_path_3/pp/rx/rx_data_reg[63][31]} {network_path_3/pp/rx/rx_data_reg[63][32]} {network_path_3/pp/rx/rx_data_reg[63][33]} {network_path_3/pp/rx/rx_data_reg[63][34]} {network_path_3/pp/rx/rx_data_reg[63][35]} {network_path_3/pp/rx/rx_data_reg[63][36]} {network_path_3/pp/rx/rx_data_reg[63][37]} {network_path_3/pp/rx/rx_data_reg[63][38]} {network_path_3/pp/rx/rx_data_reg[63][39]} {network_path_3/pp/rx/rx_data_reg[63][40]} {network_path_3/pp/rx/rx_data_reg[63][41]} {network_path_3/pp/rx/rx_data_reg[63][42]} {network_path_3/pp/rx/rx_data_reg[63][43]} {network_path_3/pp/rx/rx_data_reg[63][44]} {network_path_3/pp/rx/rx_data_reg[63][45]} {network_path_3/pp/rx/rx_data_reg[63][46]} {network_path_3/pp/rx/rx_data_reg[63][47]} {network_path_3/pp/rx/rx_data_reg[63][48]} {network_path_3/pp/rx/rx_data_reg[63][49]} {network_path_3/pp/rx/rx_data_reg[63][50]} {network_path_3/pp/rx/rx_data_reg[63][51]} {network_path_3/pp/rx/rx_data_reg[63][52]} {network_path_3/pp/rx/rx_data_reg[63][53]} {network_path_3/pp/rx/rx_data_reg[63][54]} {network_path_3/pp/rx/rx_data_reg[63][55]} {network_path_3/pp/rx/rx_data_reg[63][56]} {network_path_3/pp/rx/rx_data_reg[63][57]} {network_path_3/pp/rx/rx_data_reg[63][58]} {network_path_3/pp/rx/rx_data_reg[63][59]} {network_path_3/pp/rx/rx_data_reg[63][60]} {network_path_3/pp/rx/rx_data_reg[63][61]} {network_path_3/pp/rx/rx_data_reg[63][62]} {network_path_3/pp/rx/rx_data_reg[63][63]}]]
create_debug_port u_ila_0 probe
set_property port_width 3 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {network_path_3/pp/rx/old_status_reg[17][1]} {network_path_3/pp/rx/old_status_reg[17][5]} {network_path_3/pp/rx/old_status_reg[17][10]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list network_path_3/pp/rx/rx_mac_bad_frame]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list network_path_3/pp/rx/rx_mac_good_frame]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list network_path_3/pp/rx/rx_start]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk156]
