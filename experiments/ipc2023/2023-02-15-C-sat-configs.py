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
    SUITE = project.SUITE_ALL
else:
    ENV = project.LocalEnvironment(processes=2)


def get_configs_from_portfolio(portfolio_nick, portfolio_path):
    configs = project.get_portfolio_attributes(portfolio_path)["CONFIGS"]
    return [
        (f"{portfolio_nick}-{index:02d}", project.prepare_config(config))
        for index, (_, config) in enumerate(configs, start=1)
    ]

CONFIGS = (
    get_configs_from_portfolio("fdss-2014", REPO / "driver" / "portfolios" / "seq_sat_fdss_2014.py") +
    get_configs_from_portfolio("fdss-2018", REPO / "driver" / "portfolios" / "seq_sat_fdss_2018.py") +
    [
    # Epsilon greedy
    ## Single evaluator
    ("eager_hff-epsilon-greedy", ["--search",
          "let(hff, ff(transform=adapt_costs(one)),"
          "eager(alt([epsilon_greedy(hff)]),"
          "cost_type=one,reopen_closed=false, verbosity=silent))"]),
    ("eager_hcea-epsilon-greedy", ["--search",
          "let(hcea, cea(transform=adapt_costs(one)),"
          "eager(alt([epsilon_greedy(hcea)]),"
          "cost_type=one,reopen_closed=false, verbosity=silent))"]),
    ("eager_hcg-epsilon-greedy", ["--search",
          "let(hcg, cg(transform=adapt_costs(one)),"
          "eager(alt([epsilon_greedy(hcg)]),"
          "cost_type=one,reopen_closed=false, verbosity=silent))"]),
    ("lazy_hff-epsilon-greedy", ["--search",
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hff)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))"]),
    ("lazy_hcea-epsilon-greedy", ["--search",
          "let(hcea, cea(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hcea)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))"]),
    ("lazy_hcg-epsilon-greedy", ["--search",
          "let(hcg, cg(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hcg)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))"]),

    ## Evaluators combined with landmarks with reasonable orders
    ("lazy_hff-epsilon-greedy_hlm-with-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hff),single(hlm)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff_hlm-epsilon_greedy-with-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),epsilon_greedy(hlm)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff-epsilon-greedy_hlm_pref_ops-with-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()), pref=true, transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),"
          "preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff_hlm-epsilon-greedy_pref_ops-with-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()), pref=true, transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),"
          "preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),

    ## Evaluators combined with landmarks without reasonable orders
    ("lazy_hff-epsilon-greedy_hlm-no-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hff),single(hlm)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff_hlm-epsilon_greedy-no-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),epsilon_greedy(hlm)]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff-epsilon-greedy_hlm_pref_ops-no-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),"
          "preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders", ["--search",
          "let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),"
          "preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),

    # Pareto open-list
    ("lazy_pareto-hff-hlm", ["--search",
          "let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hlm), pareto([hlm, hff])]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_pareto-hff-hcg", ["--search",
          "let(hcg, cg(transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hcg), pareto([hcg, hff])]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_pareto-hff-hcea", ["--search",
          "let(hcea, cea(transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hcea), pareto([hcea, hff])]),"
          "cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ("lazy_pareto-hff-hlm_pref_ops", ["--search",
          "let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),"
          "let(hff, ff(transform=adapt_costs(one)),"
          "lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),"
          "preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))"]),
    ]
)


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
