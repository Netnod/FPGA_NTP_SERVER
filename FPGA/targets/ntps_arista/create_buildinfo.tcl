set build_time [clock seconds]
set t [split [version -short] .]
set build_info [ expr ([lindex $t 0] << 8) | [lindex $t 1] ]
set t [exec git describe --always --abbrev=0 --match "NOT A TAG" --dirty]
if {[string first -dirty $t] != -1} {
    set build_info [expr $build_info | (1<<24)]
}
set git_hash [string range $t 0 7]

set f [ open "build/buildinfo.v" "w" ]
puts $f "module buildinfo("
puts $f "    output wire [31:0] build_time,"
puts $f "    output wire [31:0] build_info,"
puts $f "    output wire [31:0] git_hash);"
puts $f "    assign build_time = $build_time;"
puts $f "    assign build_info = 32'h[format %08x $build_info];"
puts $f "    assign git_hash = 32'h$git_hash;"
puts $f "endmodule"
close $f
