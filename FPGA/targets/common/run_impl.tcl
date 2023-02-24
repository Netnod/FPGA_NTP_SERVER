set proj_name [ string trim "$env(PROJ_NAME)" ]

file delete -force -- "$proj_name.runs/impl_1/runme.log"

open_project $proj_name.xpr

reset_run impl_1
launch_runs impl_1 -jobs 8
wait_on_run impl_1

set status [get_property STATUS [get_runs impl_1]]
puts $status

if { $status != "route_design Complete!" &&
     $status != "route_design Complete, Failed Timing!"} {
    exit 1
}
