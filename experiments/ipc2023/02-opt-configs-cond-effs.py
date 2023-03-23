#! /usr/bin/env python

import csv
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

domains_with_axioms = set()
domains_with_cond_effs = set()
with open("domain_properties.csv") as f:
    reader = csv.reader(f)
    next(reader)  # Skip header
    for row in reader:
        domain, axioms, cond_effs = row
        assert axioms in {"True", "False"}
        assert cond_effs in {"True", "False"}
        if axioms == "True":
            domains_with_axioms.add(domain)
        if cond_effs == "True":
            domains_with_cond_effs.add(domain)
print("Axioms:", sorted(domains_with_axioms))
print("Conditional effects:", sorted(domains_with_cond_effs))
print("Conditional effects and no axioms:", sorted(domains_with_cond_effs - domains_with_axioms))
print("Both:", sorted(domains_with_axioms & domains_with_cond_effs))

def ignore_inadmissible_runs(run):
    # Only blind() supports axioms admissibly, so we ignore all tasks with axioms here.
    return run["algorithm"] not in {"h2", "hplus", "hplus-relaxed"} and run["domain"] not in domains_with_axioms

project.fetch_algorithms(exp, "2023-02-15-B-opt-configs-cond-effs", filters=[project.strip_properties, ignore_inadmissible_runs])

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-full"
)

exp.add_report(project.Hardest30Report(), outfile="properties", name="keep-only-hardest-tasks-in-properties")
exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest"
)

exp.run_steps()
