# Add build info
set buildtime [clock seconds]
set t [split [version -short] .]
set build_info [ expr ([lindex $t 0] << 8) | [lindex $t 1] ]
set t [exec git describe --always --abbrev=0 --match "NOT A TAG" --dirty]
set git_hash [string range $t 0 7]
if {[string first -dirty $t] != -1} {
    set build_info [expr $build_info | (1<<24)]
}

puts "buildtime $buildtime"
puts "git_hash $git_hash"
puts "build_info $build_info"

set_property verilog_define "BUILDTIME=$buildtime GIT_HASH=32'h$git_hash BUILD_INFO=32'h[format %08x $build_info]" [current_fileset]
puts [get_property verilog_define [current_fileset]]
