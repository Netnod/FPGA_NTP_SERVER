# Open project
open_project ntps/ntps.xpr

# Synthesize project
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1

# Implement project
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

# Copy .bit file to current directory
file copy -force ntps/ntps.runs/impl_1/ntps_top.bit ntps_top.bit

# Convert .bit file to .mcs and .prm file
write_cfgmem -force -format MCS -size 128 -interface BPIx16 -loadbit "up 0x00000000 ntps_top.bit" ntps_top.mcs
