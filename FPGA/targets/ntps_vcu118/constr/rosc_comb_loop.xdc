#=======================================================================
# rosc_comb_loop.xdc
# ------------------
# Property to allow combinational loops used by rosc instances.
#=======================================================================

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_0/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_0/rosc/core/oscillators[*].rosc_array/dout_reg*]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_1/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_1/rosc/core/oscillators[*].rosc_array/dout_reg*]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_2/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_2/rosc/core/oscillators[*].rosc_array/dout_reg*]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_3/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_3/rosc/core/oscillators[*].rosc_array/dout_reg*]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_4/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets network_path_shared_4/rosc/core/oscillators[*].rosc_array/dout_reg*]
