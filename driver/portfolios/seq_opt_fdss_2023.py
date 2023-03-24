SAS_FILE = "output.sas"
OPTIMAL = True

"""
Coverage: 1309
Granularity: 110s
Runtime: 1647s
Score: 1309.0
"""
CONFIGS_STRIPS = [
    # ipdb-60s-por
    (542, ['--search', 'astar(ipdb(max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # can-cegar-10s-por
    (93, ['--search', 'astar(cpdbs(multiple_cegar(max_pdb_size=1000000,max_collection_size=10000000,pattern_generation_max_time=infinity,total_max_time=10,stagnation_limit=2,blacklist_trigger_percentage=0.75,enable_blacklist_on_stagnation=true,use_wildcard_plans=true)), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # mas-ssc-sbmiasm-300s-por
    (213, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # bjolp
    (206, ['--search', 'let(lmc, lmcount(lm_merged([lm_rhw(), lm_hm(m=1)]), admissible=true), astar(lmc,lazy_evaluator=lmc))']),
    # seq-lmcut-por
    (105, ['--search', 'astar(operatorcounting([state_equation_constraints(), lmcut_constraints()]), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # potential-initial-state
    (83, ['--search', 'astar(initial_state_potential())']),
    # cartesian-cegar-landmarks-goals-60s-por
    (96, ['--search', 'astar(cegar(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=infinity, max_time=60), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # can-sys3
    (218, ['--search', 'astar(cpdbs(patterns=systematic(3)))']),
    # seq-lmcut-hplus-relaxed
    (91, ['--search', 'astar(operatorcounting([state_equation_constraints(), lmcut_constraints(), delete_relaxation_constraints(use_time_vars=false, use_integer_vars=false)]))']),
]

"""
Coverage: 229
Granularity: 120s
Runtime: 1712s
Score: 229.0
"""
CONFIGS_COND_EFFS = [
    # mas-ssc-dfp-60s
    (1137, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[goal_relevance(), dfp(), total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=60))']),
    # mas-ssc-sbmiasm-300s
    (346, ['--search', 'astar(merge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false), merge_strategy=merge_sccs(order_of_sccs=topological, merge_selector=score_based_filtering(scoring_functions=[sf_miasm(shrink_strategy=shrink_bisimulation(greedy=false),max_states=50000,threshold_before_merge=1),total_order(atomic_ts_order=reverse_level,product_ts_order=new_to_old,atomic_before_product=false)])), label_reduction=exact(before_shrinking=true, before_merging=false), max_states=50k, threshold_before_merge=1, main_loop_max_time=300))']),
    # hmax
    (229, ['--search', 'astar(hmax())']),
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
