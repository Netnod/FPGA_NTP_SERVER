#=======================================================================
# network_path_except.xdc
# -----------------------
#=======================================================================

set_multicycle_path -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_0/sync_*/data_reg_reg*}] 2
set_multicycle_path -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_1/sync_*/data_reg_reg*}] 2
set_multicycle_path -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_2/sync_*/data_reg_reg*}] 2
set_multicycle_path -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_3/sync_*/data_reg_reg*}] 2

set_multicycle_path -hold -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_0/sync_*/data_reg_reg*}] 1
set_multicycle_path -hold -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_1/sync_*/data_reg_reg*}] 1
set_multicycle_path -hold -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_2/sync_*/data_reg_reg*}] 1
set_multicycle_path -hold -from [get_cells * -hierarchical -filter {NAME =~ *network_path_axi_slave_3/sync_*/data_reg_reg*}] 1

#=======================================================================
# EOF network_path_except.xdc
#=======================================================================
