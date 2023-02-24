#! /bin/bash
set -x
set -e
(cd ../../cores && ./download-and-unpack.sh || exit 1)
rm -rf build
git clean -fdxq xilinx_ip
mkdir -p build/neorv32
cp -r ../../cores/neorv32/rtl build/neorv32
find build/neorv32 -type f | xargs sed -i 's/neorv32\./work./g'
/bin/time nice make BOARDSTD=lb2 2>&1 | tee log
if ! test -f ntps-3.0.0.x86_64.rpm; then
    echo "Build failed" 1>&2
    exit 1
fi
