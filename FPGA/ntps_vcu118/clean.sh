#! /bin/bash
cd "`dirname \"$0\"`"

set -x
set -e

vivado -mode batch -source clean.tcl

sed -ri 's/^(<Project\s*.*)\s+Path="[^"]*"/\1/' ntps_vcu118.xpr 
