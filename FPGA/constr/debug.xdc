#set_property MARK_DEBUG true [get_nets {network_path_3/pp/mac/xgmii_rxd[*]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/pp/mac/xgmii_rxc[*]}]

#set_property MARK_DEBUG true [get_nets {network_path_3/pp/rx/rx_data[*]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/pp/rx/rx_data_valid[*]}]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/rx_good_frame]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/rx_bad_frame]
#set_property MARK_DEBUG true [get_nets {network_path_3/pp/rx/rx_state[*]}]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/rx_start]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/sts_ipv4_ntp_pass]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/sts_ipv4_ntp_drop]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/rx/sts_bad_mac_drop]

#set_property MARK_DEBUG true [get_nets {network_path_3/pp/tx/tx_state[*]}]
#set_property MARK_DEBUG true [get_nets network_path_3/pp/tx/tx_start]

#set_property MARK_DEBUG true [get_nets network_path_3/pp/status[*]]
#set_property MARK_DEBUG true [get_nets network_path_3/network_path_axi_slave_inst/xphy_status_axi[*]]

#set_property MARK_DEBUG true [get_nets network_path_3/ten_gig_eth_pcs_pma_inst/mdio_tri]
#set_property MARK_DEBUG true [get_nets network_path_3/ten_gig_eth_pcs_pma_inst/mdio_out]
#set_property MARK_DEBUG true [get_nets network_path_3/ten_gig_eth_pcs_pma_inst/mdio_in]
#set_property MARK_DEBUG true [get_nets network_path_3/ten_gig_eth_pcs_pma_inst/mdc]

#set_property MARK_DEBUG true [get_nets {network_path_3/tss/sel_sync_reg[0]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/sel_sync_reg[1]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[0]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[1]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[2]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/ntp_time_a_sync[*]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/network_path_axi_slave_inst/pp_status[*]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/network_path_axi_slave_inst/pp_status_axi[*]}]


