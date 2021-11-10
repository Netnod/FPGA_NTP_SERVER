set proj_name [ string trim "$env(PROJ_NAME)" ]
set fpga_top [ string trim "$env(FPGA_TOP)" ]
set fpga_part [ string trim "$env(FPGA_PART)" ]
set fpga_board [ string trim "$env(FPGA_BOARD)" ]
set tcl_pre [ string trim "$env(TCL_PRE)" ]
set syn_files [ regexp -inline -all -- {\S+} "$env(SYN_FILES)" ]
set xdc_files [ regexp -inline -all -- {\S+} "$env(XDC_FILES)" ]
set xci_files [ regexp -inline -all -- {\S+} "$env(XCI_FILES)" ]
set tcl_files [ regexp -inline -all -- {\S+} "$env(TCL_FILES)" ]

puts "Creating project \"$proj_name\" for part \"$fpga_part\""
create_project -force -part "$fpga_part" "$proj_name"

set proj_dir [get_property directory [current_project] ]

if { $fpga_board != "" } {
    puts "Setting board_part to \"$fpga_board\""
    set_property -name "board_part" -value "$fpga_board" -objects [current_project]
}

set obj [get_runs synth_1]
# set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj

if { "$tcl_pre" != "" } {
    puts "Adding tcl.pre \"$tcl_pre\""
    add_files -fileset utils_1 "$tcl_pre"
    set_property -name "steps.synth_design.tcl.pre" -value "$proj_dir/$tcl_pre" -objects $obj
}

puts "Adding source files $syn_files"
add_files -fileset sources_1 $syn_files

if { [llength $xci_files] != 0 } {
    puts "Adding XCI files $xci_files"
    add_files -fileset sources_1 $xci_files
}

puts "Adding XDC files $xdc_files"
add_files -fileset constrs_1 $xdc_files

foreach fn $tcl_files {
    puts "source \"$fn\""
    source $fn
}

if { $fpga_top != "" } {
    puts "Setting top level to \"$fpga_top\""
    # switch to manual update order
    set_property source_mgmt_mode DisplayOnly [current_project]
    set obj [get_filesets sources_1]
    set_property -name "top" -value "$fpga_top" -objects $obj
    set obj [get_filesets sim_1]
    set_property -name "top" -value "$fpga_top" -objects $obj
}
