#! /bin/bash
cd "`dirname \"$0\"`"

do_project=true
do_build=true

usage() {
    echo "Usage: $0 [--no-project] [--no-build]"
}

while [ $# -ge 1 ]
do
    case "$1" in
	--no-project)
	    do_project=false
	    ;;
	--no-build)
	    do_build=false
	    ;;
	-*)
	    usage 1>&1
	    exit 1
	    ;;
	*)
	    break
	    ;;
    esac
    shift
done

set -x
set -e

LANG=en_US.UTF-8
unset `env | grep LC | cut -d'=' -f1 `

(
cd ../cores
./download-and-unpack.sh
)

rm -f ntps_top.bit ntps_top.mcs -f ntps_top.prm
find ntps_vcu118.runs -name "*.log" | xargs rm -f --

if $do_project; then
    time vivado -mode batch -source ntps_vcu118.tcl || exit 1
fi

if $do_build; then
    time vivado -mode batch -source build.tcl || exit 1

    # Verify that all programming files exist
    [ -f ntps_top.bit ] || exit 1
#    [ -f ntps_top.mcs ] || exit 1
#    [ -f ntps_top.prm ] || exit 1
fi
