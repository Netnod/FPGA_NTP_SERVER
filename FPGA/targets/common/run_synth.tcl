set proj_name [ string trim "$env(PROJ_NAME)" ]

open_project $proj_name.xpr
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1

puts "Synthesis successful"
