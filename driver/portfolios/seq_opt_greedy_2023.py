SAS_FILE = "output.sas"
OPTIMAL = True

"""
Coverage: 1309
Runtime: 1786s
Score: 1309.0
"""
CONFIGS_STRIPS = [
    # potential-all-states-por
    (1, ['--search', 'astar(all_states_potential(), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # bjolp-por
    (51, ['--search', 'let(lmc, lmcount(lm_merged([lm_rhw(), lm_hm(m=1)]), admissible=true), astar(lmc,lazy_evaluator=lmc,pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2)))']),
    # cartesian-cegar-goals-1M
    (10, ['--search', 'astar(cegar(subtasks=[goals(order=random)], max_states=infinity, max_transitions=1M, max_time=infinity))']),
    # mas-ssc-dfp-300s-por
    (1, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # can-sys3
    (123, ['--search', 'astar(cpdbs(patterns=systematic(3)))']),
    # potential-all-states
    (2, ['--search', 'astar(all_states_potential())']),
    # seq-lmcut-por
    (43, ['--search', 'astar(operatorcounting([state_equation_constraints(), lmcut_constraints()]), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # ipdb-60s
    (4, ['--search', 'astar(ipdb(max_time=60))']),
    # potential-initial-state
    (49, ['--search', 'astar(initial_state_potential())']),
    # ipdb-10s
    (66, ['--search', 'astar(ipdb(max_time=10))']),
    # lmcut-por
    (2, ['--search', 'astar(lmcut(), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # mas-ssc-sbmiasm-10s-por
    (5, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=10), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # hmax
    (39, ['--search', 'astar(hmax())']),
    # mas-ssc-dfp-10s-por
    (2, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=10), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # can-cegar-10s-por
    (73, ['--search', 'astar(cpdbs(multiple_cegar(max_pdb_size=1000000,max_collection_size=10000000,pattern_generation_max_time=infinity,total_max_time=10,stagnation_limit=2,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,use_wildcard_plans=true)), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # mas-ssc-dfp-60s
    (8, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60))']),
    # seq-lmcut-hplus-relaxed-por
    (27, ['--search', 'astar(operatorcounting([state_equation_constraints(), lmcut_constraints(), delete_relaxation_constraints(use_time_vars=false, use_integer_vars=false)]), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # bjolp
    (21, ['--search', 'let(lmc, lmcount(lm_merged([lm_rhw(), lm_hm(m=1)]), admissible=true), astar(lmc,lazy_evaluator=lmc))']),
    # mas-ssc-sbmiasm-300s-por
    (7, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # ipdb-60s-por
    (174, ['--search', 'astar(ipdb(max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # mas-ssc-sbmiasm-60s-por
    (82, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # lmcut
    (11, ['--search', 'astar(lmcut())']),
    # seq-lmcut
    (105, ['--search', 'astar(operatorcounting([state_equation_constraints(), lmcut_constraints()]))']),
    # mas-ssc-dfp-60s-por
    (12, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # cartesian-cegar-landmarks-goals-10s
    (24, ['--search', 'astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=10))']),
    # ipdb-300s
    (565, ['--search', 'astar(ipdb(max_time=300))']),
    # potential-diverse-por
    (206, ['--search', 'astar(diverse_potentials(), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # cartesian-cegar-landmarks-goals-60s-por
    (73, ['--search', 'astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
]

"""
Coverage: 227
Runtime: 1720s
Score: 227.0
"""
CONFIGS_COND_EFFS = [
    # blind
    (7, ['--search', 'astar(blind())']),
    # mas-ssc-dfp-10s
    (1, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=10))']),
    # hmax
    (656, ['--search', 'astar(hmax())']),
    # mas-ssc-dfp-60s
    (571, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60))']),
    # mas-ssc-dfp-300s
    (139, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300))']),
    # mas-ssc-sbmiasm-300s
    (346, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300))']),
]

CONFIGS_AXIOMS = [
    (1800, ['--search', 'astar(blind())']),
]


def get_pddl_features(task):
    has_axioms = False
    has_conditional_effects = False
    with open(task) as f:
        in_op = False
        for line in f:
            line = line.strip()
            if line == "begin_rule":
                has_axioms = True

            if line == "begin_operator":
                in_op = True
            elif line == "end_operator":
                in_op = False
            elif in_op:
                parts = line.split()
                if len(parts) >= 6 and all(p.lstrip('-').isdigit() for p in parts):
                    has_conditional_effects = True
    return has_axioms, has_conditional_effects


HAS_AXIOMS, HAS_CONDITIONAL_EFFECTS = get_pddl_features(SAS_FILE)

print(f"Task has axioms: {HAS_AXIOMS}")
print(f"Task has conditional effects: {HAS_CONDITIONAL_EFFECTS}")

if HAS_AXIOMS:
    CONFIGS = CONFIGS_AXIOMS
elif HAS_CONDITIONAL_EFFECTS:
    CONFIGS = CONFIGS_COND_EFFS
else:
    CONFIGS = CONFIGS_STRIPS
