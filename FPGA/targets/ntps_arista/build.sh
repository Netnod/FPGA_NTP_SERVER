#! /bin/bash
set -euxo pipefail

ARISTA_FDK_DIR=${ARISTA_FDK_DIR:-$(pwd)/../../../arista_fdk-2.0.0beta1}
echo "Building using Arista FDK in $ARISTA_FDK_DIR"

(cd ../../cores && ./download-and-unpack.sh || exit 1)
git clean -fdxq
/bin/time nice make ARISTA_FDK_DIR=$ARISTA_FDK_DIR BOARDSTD=lb2 2>&1 | tee log
if ! test -f ntps-3.0.0.swix; then
    echo "Build failed" 1>&2
    exit 1
fi
