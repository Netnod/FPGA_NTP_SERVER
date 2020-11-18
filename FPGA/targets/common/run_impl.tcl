set proj_name [ string trim "$env(PROJ_NAME)" ]

open_project $proj_name.xpr
reset_run impl_1
launch_runs impl_1
wait_on_run impl_1

puts "Implementation succesful"
