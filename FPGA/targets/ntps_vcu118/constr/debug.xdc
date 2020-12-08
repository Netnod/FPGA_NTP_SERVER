#=======================================================================
# debug.xdc
# ----------
# Constraints for Xilinx debug interface.
# Not currently used. A few constraints are kept as examples.
# (Note that the paths are not correct.)
#=======================================================================

#set_property MARK_DEBUG true [get_nets {network_path_3/pp/mac/xgmii_rxd[*]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/pp/mac/xgmii_rxc[*]}]

#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[0]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[1]}]
#set_property MARK_DEBUG true [get_nets {network_path_3/tss/time_a_sync_reg[2]}]

#=======================================================================
# EOF debug.xdc
#=======================================================================
