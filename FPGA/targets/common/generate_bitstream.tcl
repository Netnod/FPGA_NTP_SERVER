set proj_name [ string trim "$env(PROJ_NAME)" ]

set bit_fn "$proj_name.bit"
puts "Generate bitstream \"$bit_fn\""

open_project $proj_name.xpr
open_run impl_1
write_bitstream -force "$bit_fn"

puts "Generate bitstream sucessful"
