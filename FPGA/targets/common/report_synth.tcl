set proj_name [ string trim "$env(PROJ_NAME)" ]

open_project $proj_name.xpr

open_run synth_1

# report_control_sets
# report_config_timing

# Already in fpga_utilization_synth.rpt, but with different results
# report_utilization

# report_datasheet

# Takes about 1m 30s to run.  Could be pretty useful I think
# report_design_analysis

# report_disable_timing

# Does nothing in synthesis?
report_drc -file synth_drc.rpt

# Interesting, but lots of critical warnings
report_cdc -file synth_cdc.rpt

# Useful and pretty quick
report_carry_chains -max_chains 10 -file synth_carry_chains.rpt

# Lots of exceptions regarding "invalid endpoint"
report_exceptions -file synth_exceptions.rpt

# Useful
report_high_fanout_nets -file synth_high_fanout_nets.rpt

# Verbose but could be useful
# report_io

# Useful
report_clocks -file synth_clocks.rpt

# Useful
report_clock_networks -file synth_clock_networks.rpt

# Verbose but useful
report_clock_utilization -file synth_clock_utilization.rpt

# Verbose but useful
report_clock_interaction -file synth_clock_interaction.rpt

# Useful I'd say but lots of warnings
report_qor_assessment -file synth_qor_assessment.rpt

# Nothing right now
report_qor_suggestions -file synth_qor_suggestions.rpt

# Useful I'd say but lots of warnings
report_methodology -file methodology.rpt

# Useful, but a bit verbose
report_ram_utilization -file synth_ram_utilization.rpt

# Quick
report_route_status -file synth_route_status.rpt

# Quick
report_synchronizer_mtbf -file synth_synchronizer_mtbf.rpt

# Verbose, false errors
report_timing_summary -file synth_timing_summary.rpt

# Verbose, only one net, false errors
# report_timing -file synth_timing.rpt

# Nothing right now
report_waivers -file synth_waivers.rpt

# Verbose, probably useful
# report_pulse_width

# Could be very interesting
report_pipeline_analysis -file synth_pipeline_analysis.rpt
