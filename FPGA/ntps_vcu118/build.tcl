open_project ntps_vcu118.xpr

update_compile_order -fileset sources_1

# Synthesize project
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1

puts [get_property STATUS [get_runs synth_1]]

if { [get_property STATUS [get_runs synth_1]] != "synth_design Complete!" } {
    exit 1
}

# Implement project
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1

puts [get_property STATUS [get_runs impl_1]]

if { [get_property STATUS [get_runs impl_1]] != "write_bitstream Complete!" } {
    exit 1
}

# Copy .bit file to current directory
file copy -force ntps_vcu118.runs/impl_1/ntps_top.bit ntps_top.bit

# Convert .bit file to .mcs and .prm file needed for programming
# This is disabled until we figure out the format for programming flash on VCU118
# write_cfgmem -force -format MCS -size 128 -interface BPIx16 -loadbit "up 0x00000000 ntps_top.bit" ntps_top.mcs
