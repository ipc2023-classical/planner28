#! /usr/bin/env python

from pathlib import Path

from lab.experiment import Experiment

import project


DIR = Path(__file__).resolve().parent
REPO = project.get_repo_base()
BENCHMARKS_DIR = REPO / "benchmarks"
assert BENCHMARKS_DIR.exists(), BENCHMARKS_DIR
ATTRIBUTES = [
    "error",
    "run_dir",
    "coverage",
    "cost",
    "memory",
    "total_time",
]

exp = Experiment()
exp.add_step("remove-combined-properties", project.remove_properties, Path(exp.eval_dir))

def ignore_duplicate_tasks(run):
    # Duplicate tasks have been removed, so we check whether the file still exists.
    problem_file = BENCHMARKS_DIR / run["domain"] / run["problem"]
    return problem_file.exists()

def ignore_fsc_tasks(run):
    if "fsc-" in run["domain"]:
        return False
    return run

def append_por(run):
    run["algorithm"] += "-por"
    run["id"][0] += "-por"
    return run

def strip_properties(run):
    stripped_run = {}
    for attribute in ["id", "domain", "problem", "algorithm", "component_options", "cost", "coverage", "memory", "run_dir", "total_time"]:
        if attribute in run:
            stripped_run[attribute] = run[attribute]
    return stripped_run

project.fetch_algorithms(exp, "2023-02-15-A-opt-configs-no-cond-effs", filters=[strip_properties, ignore_duplicate_tasks, ignore_fsc_tasks])
project.fetch_algorithms(exp, "2023-02-24-D-opt-configs-no-cond-effs", filters=[strip_properties, ignore_duplicate_tasks, ignore_fsc_tasks, append_por])

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-full"
)

exp.add_report(project.Hardest30Report(), outfile="properties", name="keep-only-hardest-tasks-in-properties")
exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest"
)

exp.run_steps()
