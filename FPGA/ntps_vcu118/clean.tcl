# Reset everyting as a peraration for checin into git

open_project ntps_vcu118.xpr
reset_run synth_1
reset_run impl_1

reset_target all [get_files "*.xci"]
