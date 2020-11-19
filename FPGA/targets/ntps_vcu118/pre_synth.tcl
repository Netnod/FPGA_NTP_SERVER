# Add build info
set build_time [clock seconds]
set t [split [version -short] .]
set build_info [ expr ([lindex $t 0] << 8) | [lindex $t 1] ]
set t [exec git describe --always --abbrev=0 --match "NOT A TAG" --dirty]
if {[string first -dirty $t] != -1} {
    set build_info [expr $build_info | (1<<24)]
}
set git_hash [string range $t 0 7]

set_property verilog_define "BUILD_TIME=$build_time BUILD_INFO=32'h[format %08x $build_info] GIT_HASH=32'h$git_hash" [current_fileset]
puts [get_property verilog_define [current_fileset]]
