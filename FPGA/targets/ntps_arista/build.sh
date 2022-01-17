#! /bin/bash
set -x
set -e
(cd ../../cores && ./download-and-unpack.sh || exit 1)
git clean -fdxq
/bin/time nice make BOARDSTD=lb2 2>&1 | tee log
if ! test -f ntps-3.0.0.x86_64.rpm; then
    echo "Build failed" 1>&2
    exit 1
fi
