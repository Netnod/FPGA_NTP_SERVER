#=======================================================================
# rosc_comb_loop.xdc
# ------------------
# Property to allow combinational loops used by rosc instances.
#=======================================================================

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets * -hierarchical -filter {NAME =~ */rosc/core/oscillators[0].rosc_array/dout_new*}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets * -hierarchical -filter {NAME =~ */rosc/core/oscillators[*].rosc_array/dout_reg*}]
