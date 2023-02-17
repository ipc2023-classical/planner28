#! /usr/bin/env python

import os
from pathlib import Path
import shutil

from downward import suites
from downward.cached_revision import CachedFastDownwardRevision
from downward.experiment import (
    _DownwardAlgorithm,
    _get_solver_resource_name,
    FastDownwardRun,
)
from lab.experiment import Experiment, get_default_data_dir

import project


REPO = project.get_repo_base()
BENCHMARKS_DIR = os.environ["DOWNWARD_BENCHMARKS"]
SCP_LOGIN = "infai"
REMOTE_REPOS_DIR = "/infai/myuser/repos"
#SUITE = ["depot:p01.pddl", "grid:prob01.pddl", "gripper:prob01.pddl"]
SUITE = ["miconic:s1-0.pddl"]
try:
    REVISION_CACHE = Path(os.environ["DOWNWARD_REVISION_CACHE"])
except KeyError:
    REVISION_CACHE = Path(get_default_data_dir()) / "revision-cache"
if project.REMOTE:
    ENV = project.BaselSlurmEnvironment(email="my.name@myhost.ch", memory_per_cpu="9G")
    SUITE = project.SUITE_STRIPS
else:
    ENV = project.LocalEnvironment(processes=2)

CONFIGS = [
    ("bjolp", ["--search", "let(lmc, lmcount(lm_merged([lm_rhw(), lm_hm(m=1)]), admissible=true), astar(lmc,lazy_evaluator=lmc))"]),
    ("blind", ["--search", "astar(blind())"]),
    ("cartesian-cegar-landmarks-goals-10s", ["--search", "astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=10))"]),
    ("cartesian-cegar-landmarks-goals-60s", ["--search", "astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=60))"]),
    ("cartesian-cegar-landmarks-goals-300s", ["--search", "astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=300))"]),
    ("cartesian-cegar-landmarks-goals-1M", ["--search", "astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=1M, max_time=infinity))"]),
    ("cartesian-cegar-landmarks-1M", ["--search", "astar(cegar(subtasks=[landmarks(order=random)], max_states=infinity, max_transitions=1M, max_time=infinity))"]),
    ("cartesian-cegar-goals-1M", ["--search", "astar(cegar(subtasks=[goals(order=random)], max_states=infinity, max_transitions=1M, max_time=infinity))"]),
    ("h2", ["--search", "astar(hm(m=2))"]),
    ("hmax", ["--search", "astar(hmax())"]),
    # PDB heuristics
    ("can-cegar-10s", ["--search", "astar(cpdbs(multiple_cegar(max_pdb_size=1000000,max_collection_size=10000000,pattern_generation_max_time=infinity,total_max_time=10,stagnation_limit=2,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,use_wildcard_plans=true)))"]),
    ("can-cegar-60s", ["--search", "astar(cpdbs(multiple_cegar(max_pdb_size=1000000,max_collection_size=10000000,pattern_generation_max_time=infinity,total_max_time=60,stagnation_limit=12,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,use_wildcard_plans=true)))"]),
    ("can-cegar-300s", ["--search", "astar(cpdbs(multiple_cegar(max_pdb_size=1000000,max_collection_size=10000000,pattern_generation_max_time=infinity,total_max_time=300,stagnation_limit=20,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,use_wildcard_plans=true)))"]),
    ("ipdb-10s", ["--search", "astar(ipdb(max_time=10))"]),
    ("ipdb-60s", ["--search", "astar(ipdb(max_time=60))"]),
    ("ipdb-300s", ["--search", "astar(ipdb(max_time=300))"]),
    ("can-sys1", ["--search", "astar(cpdbs(patterns=systematic(1)))"]),
    ("can-sys2", ["--search", "astar(cpdbs(patterns=systematic(2)))"]),
    ("can-sys3", ["--search", "astar(cpdbs(patterns=systematic(3)))"]),
    ("lmcut", ["--search", "astar(lmcut())"]),
    # M&S heuristics
    ("mas-ssc-dfp-10s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=10))"]),
    ("mas-ssc-sbmiasm-10s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=10))"]),
    ("mas-ssc-dfp-60s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60))"]),
    ("mas-ssc-sbmiasm-60s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60))"]),
    ("mas-ssc-dfp-300s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300))"]),
    ("mas-ssc-sbmiasm-300s", ["--search", "astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300))"]),
    # Operator-counting heuristics
    ("pho-sys1", ["--search", "astar(operatorcounting([pho_constraints(patterns=systematic(1))]))"]),
    ("pho-sys2", ["--search", "astar(operatorcounting([pho_constraints(patterns=systematic(2))]))"]),
    ("pho-sys3", ["--search", "astar(operatorcounting([pho_constraints(patterns=systematic(3))]))"]),
    ("hplus-relaxed", ["--search", "astar(operatorcounting([delete_relaxation_constraints(use_time_vars=false, use_integer_vars=false)]))"]),
    ("hplus", ["--search", "astar(operatorcounting([delete_relaxation_constraints(use_time_vars=true, use_integer_vars=true)]))"]),
    ("seq", ["--search", "astar(operatorcounting([state_equation_constraints()]))"]),
    ("seq-lmcut", ["--search", "astar(operatorcounting([state_equation_constraints(), lmcut_constraints()]))"]),
    ("seq-lmcut-hplus-relaxed", ["--search", "astar(operatorcounting([state_equation_constraints(), lmcut_constraints(), delete_relaxation_constraints(use_time_vars=false, use_integer_vars=false)]))"]),
    # Potential heuristics
    ("potential-initial-state", ["--search", "astar(initial_state_potential())"]),
    ("potential-all-states", ["--search", "astar(all_states_potential())"]),
    ("potential-diverse", ["--search", "astar(diverse_potentials())"]),

]
BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    "--validate",
    # Higher time limits probably don't make sense since we're building sequential portfolios.
    # Maybe go higher for the cond-eff experiment, though, since there are fewer configurations.
    "--overall-time-limit", "10m",
    # Same memory limit as in competition.
    "--overall-memory-limit", "8G",
]
# Pairs of revision identifier and revision nick.
REVS = [
    ("2deb3d9f2", ""),
]
ATTRIBUTES = [
    "error",
    "run_dir",
    "search_start_time",
    "search_start_memory",
    "score_total_time",
    "total_time",
    "coverage",
    "expansions",
    "expansions_until_last_jump",
    "memory",
]

exp = Experiment(environment=ENV)
for rev, rev_nick in REVS:
    cached_rev = CachedFastDownwardRevision(REPO, rev, BUILD_OPTIONS)
    cached_rev.cache(REVISION_CACHE)
    cache_path = REVISION_CACHE / cached_rev.name
    dest_path = Path(f"code-{cached_rev.name}")
    exp.add_resource("", cache_path, dest_path)
    # Overwrite the script to set an environment variable.
    exp.add_resource(
        _get_solver_resource_name(cached_rev),
        cache_path / "fast-downward.py",
        dest_path / "fast-downward.py",
    )
    for config_nick, config in CONFIGS:
        algo_name = f"{rev_nick}:{config_nick}" if rev_nick else config_nick

        for task in suites.build_suite(BENCHMARKS_DIR, SUITE):
            algo = _DownwardAlgorithm(
                algo_name,
                cached_rev,
                DRIVER_OPTIONS,
                config,
            )
            run = FastDownwardRun(exp, algo, task)
            exp.add_run(run)

exp.add_parser(project.FastDownwardExperiment.EXITCODE_PARSER)
exp.add_parser(project.FastDownwardExperiment.TRANSLATOR_PARSER)
exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "parser.py")
exp.add_parser(project.FastDownwardExperiment.PLANNER_PARSER)

exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")

if not project.REMOTE:
    exp.add_step("remove-eval-dir", shutil.rmtree, exp.eval_dir, ignore_errors=True)
    project.add_scp_step(exp, SCP_LOGIN, REMOTE_REPOS_DIR)

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
    filter=[project.group_domains],
)

exp.run_steps()
