#! /bin/bash
cd "`dirname \"$0\"`"

set -x
set -e

vivado -mode batch -source clean.tcl
