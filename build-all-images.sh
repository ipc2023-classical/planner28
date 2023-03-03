#! /bin/bash

set -euo pipefail

cd $(dirname "$0")

OUTDIR=images/
mkdir -p ${OUTDIR}

for name in fdss-2023-opt fd-greedy-opt ; do
    ./build-image.sh Apptainer.${name} ${OUTDIR}/${name}.img
done

echo "Finished building images"
