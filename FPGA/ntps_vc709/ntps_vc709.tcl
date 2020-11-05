#*****************************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# ntps_vc709.tcl: Tcl script for re-creating project 'ntps_vc709'
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "ntps_vc709"

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "ntps_vc709.tcl"

# Help information for this script
proc print_help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--project_name <name>\] Create project with the specified name. Default"
  puts "                       name is the name of the project from where this"
  puts "                       script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir"   { incr i; set origin_dir [lindex $::argv $i] }
      "--project_name" { incr i; set _xil_proj_name_ [lindex $::argv $i] }
      "--help"         { print_help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/"]"

# Create project
create_project -force ${_xil_proj_name_} . -part xc7vx690tffg1761-2

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "board_part" -value "xilinx.com:vc709:part0:1.8" -objects $obj
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "platform.board_id" -value "vc709" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "webtalk.activehdl_export_sim" -value "58" -objects $obj
set_property -name "webtalk.ies_export_sim" -value "58" -objects $obj
set_property -name "webtalk.modelsim_export_sim" -value "58" -objects $obj
set_property -name "webtalk.questa_export_sim" -value "58" -objects $obj
set_property -name "webtalk.riviera_export_sim" -value "58" -objects $obj
set_property -name "webtalk.vcs_export_sim" -value "58" -objects $obj
set_property -name "webtalk.xsim_export_sim" -value "58" -objects $obj
set_property -name "webtalk.xsim_launch_sim" -value "1" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_FIFO XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${origin_dir}/../cores/aes-siv/src/rtl/aes_siv_core.v"] \
 [file normalize "${origin_dir}/../cores/aes/src/rtl/aes_core.v"] \
 [file normalize "${origin_dir}/../cores/aes/src/rtl/aes_encipher_block.v"] \
 [file normalize "${origin_dir}/../cores/aes/src/rtl/aes_key_mem.v"] \
 [file normalize "${origin_dir}/../cores/aes/src/rtl/aes_sbox.v"] \
 [file normalize "${origin_dir}/../cores/cmac/src/rtl/cmac_core.v"] \
 [file normalize "${origin_dir}/../cores/md5/src/rtl/md5_core.v"] \
 [file normalize "${origin_dir}/../cores/sha1/src/rtl/sha1_core.v"] \
 [file normalize "${origin_dir}/../cores/sha1/src/rtl/sha1_w_mem.v"] \
 [file normalize "${origin_dir}/../cores/siphash/src/rtl/siphash_core.v"] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control_program.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/kcpsm6.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/kcpsm6.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control_program.v" ] \
 [file normalize "${origin_dir}/../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/vc709_power_monitor.v" ] \
 [file normalize "${origin_dir}/../network_path/GMAC/hdl/oc_mac.v"] \
 [file normalize "${origin_dir}/../network_path/GMAC/hdl/rx_control.v"] \
 [file normalize "${origin_dir}/../network_path/GMAC/hdl/rx_enqueue.v"] \
 [file normalize "${origin_dir}/../network_path/GMAC/hdl/tx_control.v"] \
 [file normalize "${origin_dir}/../network_path/GMAC/hdl/tx_dequeue.v"] \
 [file normalize "${origin_dir}/../network_path/api_extension/src/rtl/api_extension.v"] \
 [file normalize "${origin_dir}/../network_path/hdl/network_path.v"] \
 [file normalize "${origin_dir}/../network_path/hdl/network_path_axi_slave.v"] \
 [file normalize "${origin_dir}/../network_path/hdl/network_path_shared.v"] \
 [file normalize "${origin_dir}/../network_path/keymem/src/rtl/ntp_auth_keymem.v"] \
 [file normalize "${origin_dir}/../network_path/keymem/src/rtl/nts_keymem.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/memory/bram.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/memory/bram_dp2w.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/memory/bram_dpge.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/memory/memory_ctrl.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/misc/counter64.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_dispatcher.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_dispatcher_mux.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/ctrl_gre.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/icmp.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/ntp_auth.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_api.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_engine.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_parser_ctrl.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_rx_buffer.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_timestamp.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_tx_buffer.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_engine/nts_verify_secure.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_extractor.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_extractor_mux.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_extractor_tx.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/nts_top.v"] \
 [file normalize "${origin_dir}/../network_path/nts/src/rtl/preprocessor.v"] \
 [file normalize "${origin_dir}/../network_path/nts_noncegen/src/rtl/nts_noncegen.v"] \
 [file normalize "${origin_dir}/../network_path/packet_proc/hdl/pp_api.v"] \
 [file normalize "${origin_dir}/../network_path/packet_proc/hdl/pp_mac_top.v"] \
 [file normalize "${origin_dir}/../network_path/packet_proc/hdl/pp_top.v"] \
 [file normalize "${origin_dir}/../network_path/rosc_entropy/src/rtl/rosc.v"] \
 [file normalize "${origin_dir}/../network_path/rosc_entropy/src/rtl/rosc_entropy.v"] \
 [file normalize "${origin_dir}/../network_path/rosc_entropy/src/rtl/rosc_entropy_core.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/ntp_clock.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/ntp_clock_axi_slave.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/ntp_clock_select.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/ntp_clock_top.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/ntp_counters.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/pll_sync.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/pps_gen.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/pps_test.v"] \
 [file normalize "${origin_dir}/../ntp_clock/hdl/time_sel_sync.v"] \
 [file normalize "${origin_dir}/hdl/clk50_gen.v" ] \
 [file normalize "${origin_dir}/hdl/ntps_clocks.v" ] \
 [file normalize "${origin_dir}/hdl/ntps_interfaces.v" ] \
 [file normalize "${origin_dir}/hdl/ntps_phys.v" ] \
 [file normalize "${origin_dir}/hdl/ntps_top.v" ] \
 [file normalize "${origin_dir}/hdl/pcie_axi.v" ] \
 [file normalize "${origin_dir}/pvtmon/pvtmon_axi_slave.v"] \
 [file normalize "${origin_dir}/pvtmon/pvtmon_top.v"] \
 [file normalize "${origin_dir}/xilinx_ip/network_path/ten_gig_eth_pcs_pma_ip/ten_gig_eth_pcs_pma_ip.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/network_path/ten_gig_eth_pcs_pma_ip_shared_logic/ten_gig_eth_pcs_pma_ip_shared_logic_in_core.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/ntp_clock/ntp_clock_ds_buf/ntp_clock_ds_buf.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/ntp_clock/ntp_clock_pll/ntp_clock_pll.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/ntp_clock/ntps_top_clk_wiz_0_1/ntps_top_clk_wiz_0_1.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_auto_ds_0/ntps_top_auto_ds_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_auto_pc_0/ntps_top_auto_pc_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_rst_axi_pcie3_0_250M_0/ntps_top_rst_axi_pcie3_0_250M_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_util_ds_buf_0_3/ntps_top_util_ds_buf_0_3.xci" ] \
 [file normalize "${origin_dir}/xilinx_ip/top/ntps_top_xbar_0/ntps_top_xbar_0.xci" ] \
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
# None

# Set 'sources_1' fileset file properties for local files
set file "ten_gig_eth_pcs_pma_ip/ten_gig_eth_pcs_pma_ip.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ten_gig_eth_pcs_pma_ip_shared_logic/ten_gig_eth_pcs_pma_ip_shared_logic_in_core.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntp_clock_pll/ntp_clock_pll.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_xbar_0/ntps_top_xbar_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_auto_pc_0/ntps_top_auto_pc_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_auto_ds_0/ntps_top_auto_ds_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_rst_axi_pcie3_0_250M_0/ntps_top_rst_axi_pcie3_0_250M_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_clk_wiz_0_1/ntps_top_clk_wiz_0_1.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntp_clock_ds_buf/ntp_clock_ds_buf.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_util_ds_buf_0_3/ntps_top_util_ds_buf_0_3.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "generate_synth_checkpoint" -value "0" -objects $file_obj
}
set_property -name "registered_with_manager" -value "1" -objects $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "ntps_top" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/clock_control.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/clock_control.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/clock_cross.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/clock_cross.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/clock_groups.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/clock_groups.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/debug.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/debug.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/misc.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/misc.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/network_path_except.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/network_path_except.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/ntp_io_loc.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/ntp_io_loc.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/ntps_top_constr.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/ntps_top_constr.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constr/v7_xt_xgemac_xphy.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "constr/v7_xt_xgemac_xphy.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "ntps_top" -objects $obj
set_property -name "top_lib" -value "xil_defaultlib" -objects $obj

# Set 'utils_1' fileset object
set obj [get_filesets utils_1]
# Empty (no sources present)

# Set 'utils_1' fileset properties
set obj [get_filesets utils_1]

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -part xc7vx690tffg1761-2 -flow {Vivado Synthesis 2019} -strategy "Vivado Synthesis Defaults" -report_strategy {No Reports} -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2019" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Synthesis Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'synth_1_synth_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0] "" ] } {
  create_report_config -report_name synth_1_synth_report_utilization_0 -report_type report_utilization:1.0 -steps synth_design -runs synth_1
}
set obj [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0]
if { $obj != "" } {

}
set obj [get_runs synth_1]
set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj
set_property -name "steps.synth_design.tcl.pre" -value "$proj_dir/pre_synth.tcl" -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -part xc7vx690tffg1761-2 -flow {Vivado Implementation 2019} -strategy "Vivado Implementation Defaults" -report_strategy {No Reports} -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2019" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Implementation Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'impl_1_init_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_init_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps init_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_opt_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_drc_0 -report_type report_drc:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_place_report_io_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0] "" ] } {
  create_report_config -report_name impl_1_place_report_io_0 -report_type report_io:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0] "" ] } {
  create_report_config -report_name impl_1_place_report_utilization_0 -report_type report_utilization:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_control_sets_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0] "" ] } {
  create_report_config -report_name impl_1_place_report_control_sets_0 -report_type report_control_sets:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0]
if { $obj != "" } {
set_property -name "options.verbose" -value "1" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_1' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_1 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_place_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_post_place_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_place_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_place_power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_route_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_route_report_drc_0 -report_type report_drc:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_methodology_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0] "" ] } {
  create_report_config -report_name impl_1_route_report_methodology_0 -report_type report_methodology:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_power_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0] "" ] } {
  create_report_config -report_name impl_1_route_report_power_0 -report_type report_power:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_route_status_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0] "" ] } {
  create_report_config -report_name impl_1_route_report_route_status_0 -report_type report_route_status:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_route_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0]
if { $obj != "" } {
set_property -name "options.max_paths" -value "10" -objects $obj

}
# Create 'impl_1_route_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_route_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_clock_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0] "" ] } {
  create_report_config -report_name impl_1_route_report_clock_utilization_0 -report_type report_clock_utilization:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_route_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0]
if { $obj != "" } {
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0]
if { $obj != "" } {
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
set obj [get_runs impl_1]
set_property -name "strategy" -value "Vivado Implementation Defaults" -objects $obj
set_property -name "steps.phys_opt_design.is_enabled" -value "1" -objects $obj
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:${_xil_proj_name_}"
# Create 'drc_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "drc_1" ] ] ""]} {
create_dashboard_gadget -name {drc_1} -type drc
}
set obj [get_dashboard_gadgets [ list "drc_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_drc_0" -objects $obj

# Create 'methodology_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "methodology_1" ] ] ""]} {
create_dashboard_gadget -name {methodology_1} -type methodology
}
set obj [get_dashboard_gadgets [ list "methodology_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_methodology_0" -objects $obj

# Create 'power_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "power_1" ] ] ""]} {
create_dashboard_gadget -name {power_1} -type power
}
set obj [get_dashboard_gadgets [ list "power_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_power_0" -objects $obj

# Create 'timing_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "timing_1" ] ] ""]} {
create_dashboard_gadget -name {timing_1} -type timing
}
set obj [get_dashboard_gadgets [ list "timing_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_timing_summary_0" -objects $obj

# Create 'utilization_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_1" ] ] ""]} {
create_dashboard_gadget -name {utilization_1} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_1" ] ]
set_property -name "reports" -value "synth_1#synth_1_synth_report_utilization_0" -objects $obj
set_property -name "run.step" -value "synth_design" -objects $obj
set_property -name "run.type" -value "synthesis" -objects $obj

# Create 'utilization_2' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_2" ] ] ""]} {
create_dashboard_gadget -name {utilization_2} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_2" ] ]
set_property -name "reports" -value "impl_1#impl_1_place_report_utilization_0" -objects $obj

move_dashboard_gadget -name {utilization_1} -row 0 -col 0
move_dashboard_gadget -name {power_1} -row 1 -col 0
move_dashboard_gadget -name {drc_1} -row 2 -col 0
move_dashboard_gadget -name {timing_1} -row 0 -col 1
move_dashboard_gadget -name {utilization_2} -row 1 -col 1
move_dashboard_gadget -name {methodology_1} -row 2 -col 1
