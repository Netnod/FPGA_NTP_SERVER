set BIT_FILE [lindex $argv 0]
puts "Programming bitstream file: $BIT_FILE"

open_hw_manager
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/*]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/*]
open_hw_target
# set_property PROBES.FILE {debug_nets.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE $BIT_FILE [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
disconnect_hw_server
