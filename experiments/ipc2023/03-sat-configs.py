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
print("Both:", sorted(domains_with_axioms & domains_with_cond_effs))

for expname in [
    "2023-03-01-A-sat-fdss2018",
    "2023-03-01-B-sat-fdss2014",
    "2023-03-01-C-sat-new-configs",
    "2023-03-01-D-sat-fdss-1-2",
]:
    project.fetch_algorithms(exp, expname, filters=[project.strip_properties])

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-full"
)

exp.add_report(project.Hardest30Report(), outfile="properties-hardest.json", name="keep-only-30-hardest-tasks")
#exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))
#project.add_absolute_report(exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest")

exp.run_steps()
