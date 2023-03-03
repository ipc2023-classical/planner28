#! /bin/bash

set -euo pipefail

./stonesoup.py --track opt ~/projects/Downward/ipc-2023/fdss/experiments/ipc2023/data/01-opt-configs-no-cond-effs-eval/properties.xz 110 | tee stonesoup-opt-strips.txt
./stonesoup.py --track opt ~/projects/Downward/ipc-2023/fdss/experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties.xz 120 | tee stonesoup-opt-cond-effs.txt

./greedy.py ../experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties.xz --track opt | tee greedy-opt-strips.txt
./greedy.py ../experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties.xz --track opt | tee greedy-opt-cond-effs.txt
