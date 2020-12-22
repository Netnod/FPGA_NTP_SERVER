set proj_name [ string trim "$env(PROJ_NAME)" ]

file delete -force -- "$proj_name.runs/synth_1/runme.log"

open_project $proj_name.xpr

reset_run synth_1
launch_runs synth_1
wait_on_run synth_1

set status [get_property STATUS [get_runs synth_1]]
puts $status

if { $status != "synth_design Complete!" } {
    exit 1
}
