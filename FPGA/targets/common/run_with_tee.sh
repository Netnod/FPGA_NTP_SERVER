#! /bin/bash
fn="$1"
shift
set -x
$@ 2>&1 | tee "$fn"
exit ${PIPESTATUS[0]}
