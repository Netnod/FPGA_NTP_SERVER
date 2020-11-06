open_project ntps_vcu118.xpr

# Add build info
set t [split [version -short] .]
set build_info [ expr ([lindex $t 0] << 8) | [lindex $t 1] ]
set t [exec git describe --always --abbrev=0 --match "NOT A TAG" --dirty]
set git_hash [string range $t 0 7]
if {[string first -dirty $t] != -1} {
    set build_info [expr $build_info | (1<<24)]
}

puts "git_hash $git_hash"
puts "build_info $build_info"

set_property generic "GIT_HASH=32'h$git_hash BUILD_INFO=32'h[format %08x $build_info]" [current_fileset]
puts [get_property generic [current_fileset]]

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
# write_cfgmem -force -format MCS -size 128 -interface BPIx16 -loadbit "up 0x00000000 ntps_top.bit" ntps_top.mcs

puts "Success"
