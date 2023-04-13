#! /bin/bash

set -euo pipefail

SATISFICING_DATA=../experiments/ipc2023/data/03-sat-configs-eval/properties-hardest.json.xz

# OPTIMAL
./stonesoup.py --track opt ../experiments/ipc2023/data/01-opt-configs-no-cond-effs-eval/properties-hardest.json.xz 110 | tee stonesoup-opt-strips.txt
./stonesoup.py --track opt ../experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties-hardest.json.xz 120 | tee stonesoup-opt-cond-effs.txt
./greedy.py ../experiments/ipc2023/data/01-opt-configs-no-cond-effs-eval/properties-hardest.json.xz --track opt | tee greedy-opt-strips.txt
./greedy.py ../experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties-hardest.json.xz --track opt | tee greedy-opt-cond-effs.txt

# SATISFICING
./batch-stonesoup.sh ${SATISFICING_DATA} sat 1800 | tee batch-stonesoup-sat.txt
./stonesoup.py --track sat ${SATISFICING_DATA} 30 | tee stonesoup-sat.txt
./greedy.py ${SATISFICING_DATA} --track sat | tee greedy-sat.txt

# AGILE
./greedy.py ${SATISFICING_DATA} --track agl --portfolio-time 300 | tee greedy-agl.txt
