set proj_name [ string trim "$env(PROJ_NAME)" ]

open_project $proj_name.xpr

open_run impl_1

# Already in fpga_control_sets_placed.rpt
# report_control_sets

# report_config_timing

# Doesn't give very much
# report_datasheet

# Somewhat useful, huge, takes fairly long to produce
# report_design_analysis

# Verbose, don't know what to use it for
# report_disable_timing

# Already in fpga_drc_opted.rpt and fpga_drc_routed.rpt.  Empty
# report_drc

# Already in fpga_utilization_placed.rpt
# report_utilization

# Already in fpga_clock_utilization_routed.rpt
# report_clock_utilization

# Useful I think
report_cdc -file impl_cdc.rpt

# Could be useful
report_carry_chains -max_chains 10 -file impl_carry_chains.rpt

report_exceptions
report_high_fanout_nets -file impl_high_fanout_nets.rpt

# Already in fpga_io_placed.rpt
# report_io

# Already in fpga_methodology_drc_routed.rpx
report_methodology -file impl_methodology.rpt

# Already in fpga_power_routed.rpx
# report_power

# Useful
report_clocks -file impl_clocks.rpt

# Useful
report_clock_networks -file impl_clock_networks.rpt

# Useful
report_clock_interaction -file impl_clock_interaction.rpt

# Already in fpga_bus_skew_routed.rpt
# report_bus_skew

# Useful
report_qor_assessment -file impl_qor_assessment.rpt

# Useful
report_qor_suggestions -file impl_qor_suggestions.rpt

# Useful, a bit verbose
report_ram_utilization -file impl_ram_utilization.rpt

# Quick
report_route_status -file impl_route_status.rpt

# Quick, a bit verbose
report_synchronizer_mtbf -file ipl_synchronizer_mtbf.rpt

# Already in fpga_timing_summary_routed.pb
# report_timing_summary

# Quick, shows one net, not that useful
# report_timing

# Quick, no info for now
report_waivers -file impl_waivers.rpt

# Useful I think
report_pulse_width -file impl_pulse_width.rpt
