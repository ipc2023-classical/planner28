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
BENCHMARKS_DIR = "./../../benchmarks/"
SCP_LOGIN = "infai"
REMOTE_REPOS_DIR = "/infai/myuser/repos"
SUITE = ["miconic-strips:0-p01.pddl"]
try:
    REVISION_CACHE = Path(os.environ["DOWNWARD_REVISION_CACHE"])
except KeyError:
    REVISION_CACHE = Path(get_default_data_dir()) / "revision-cache"
if project.REMOTE:
    ENV = project.BaselSlurmEnvironment(email="augusto.blaascorrea@unibas.ch", memory_per_cpu="9G", partition="infai_2")
    SUITE = project.SUITE_STRIPS_AND_ADL
else:
    ENV = project.LocalEnvironment(processes=2)


def get_configs_from_portfolio(portfolio_nick, portfolio_path):
    configs = project.get_portfolio_attributes(portfolio_path)["CONFIGS"]
    return [
        (f"{portfolio_nick}-{index:02d}", project.prepare_config(config))
        for index, (_, config) in enumerate(configs, start=1)
    ]

CONFIGS = (
    get_configs_from_portfolio("fdss-2018", REPO / "driver" / "portfolios" / "seq_sat_fdss_2018.py")
)


print("Number of configs BEFORE removing duplicates: %d" % len(CONFIGS))

set_of_commands = set()
unique_configs = []
for config in CONFIGS:
    # Command is originally a list, but list is not hashable
    command = tuple(config[1])
    if command not in set_of_commands:
        set_of_commands.add(command)
        unique_configs.append(config)

CONFIGS = unique_configs
print("Number of configs AFTER removing duplicates: %d" % len(CONFIGS))

BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    "--validate",
    # Higher time limits probably don't make sense since we're building sequential portfolios.
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
    #"search_start_time",
    #"search_start_memory",
    #"score_total_time",
    "total_time",
    "coverage",
    "expansions",
    #"memory",
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
#exp.add_parser(project.FastDownwardExperiment.TRANSLATOR_PARSER)
exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "parser.py")
#exp.add_parser(project.FastDownwardExperiment.PLANNER_PARSER)

exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")

if not project.REMOTE:
    exp.add_step("remove-eval-dir", shutil.rmtree, exp.eval_dir, ignore_errors=True)
    project.add_scp_step(exp, SCP_LOGIN, REMOTE_REPOS_DIR)

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
)

exp.run_steps()
