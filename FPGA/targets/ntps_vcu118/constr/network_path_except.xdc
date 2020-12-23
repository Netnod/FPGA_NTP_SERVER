#=======================================================================
# network_path_except.xdc
# -----------------------
#=======================================================================

# set_multicycle_path -from [get_cells * -hierarchical -filter {NAME =~ */network_path_axi_slave_*/sync_*/data_reg_reg*}] 2

# set_multicycle_path -hold -from [get_cells * -hierarchical -filter {NAME =~ */network_path_axi_slave_*/sync_*/data_reg_reg*}] 1

# set_false_path -from [get_cells * -hierarchical -filter {NAME =~ */network_path_axi_slave_*/sync_*/data_reg_reg*}]

#=======================================================================
# EOF network_path_except.xdc
#=======================================================================
