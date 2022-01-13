# We really want combinational loops for the rosc oscillators.
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets ntps_interfaces_0/network_path_inst_*/rosc/core/oscillators[*].rosc_array/dout_new*]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets ntps_interfaces_0/network_path_inst_*/rosc/core/oscillators[*].rosc_array/dout_reg*]
