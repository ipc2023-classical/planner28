#! /usr/bin/env python

import logging
import os
import re

from lab.parser import Parser


def has_axioms(content, props):
    if not os.path.exists("output.sas"):
        return
    with open("output.sas", "r") as f:
        content = f.read()
    props["has_axioms"] = content.find("begin_rule")> -1


def has_conditional_effects(content, props):
    if not os.path.exists("output.sas"):
        return
    with open("output.sas", "r") as f:
        content = f.read()
    operators = re.findall(r"begin_operator(.*?)end_operator", content, re.DOTALL)
    props["op"] = len(operators)
    for operator in operators:
        lines = operator.strip().splitlines()
        idx_nb_prevail_conditions = 1
        nb_prevail_conditions = int(lines[idx_nb_prevail_conditions])
        assert nb_prevail_conditions >= 0

        idx_nb_effects = idx_nb_prevail_conditions + nb_prevail_conditions + 1
        nb_effects = int(lines[idx_nb_effects])
        assert nb_effects > 0

        for no_effect in range(nb_effects):
            effect_line = lines[idx_nb_effects + no_effect + 1]
            effect = [int(e) for e in effect_line.split()]
            assert len(effect) >= 4, effect_line
            assert (len(effect) - 4) % 2 == 0, effect_line
            if effect[0] > 0:
                props["has_conditional_effects"] = True
                return
    props["has_conditional_effects"] = False


def main():
    parser = Parser()
    parser.add_function(has_axioms)
    parser.add_function(has_conditional_effects)
    parser.parse()


if __name__ == "__main__":
    main()
