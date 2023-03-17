"""
This is the "Fast Downward Greedy 2023" sequential portfolio that
participated in the IPC 2023 agile track.
"""

OPTIMAL = False

"""
Configs: 44
Unique configs: 36
Min time limit: 1
Max time limit: 64

Coverage: 1884
Runtime: 300s
Score: 1311.09
"""

TRACK = "agl"
CONFIGS = [
    # fdss-2018-01
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-2-08
    (1, ['--search', 'let(h, add(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders
    (2, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-08
    (1, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hadd),single(hadd,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2-05
    (1, ['--search', 'let(h, add(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-05
    (4, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (1, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-1-11
    (2, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-1-02
    (4, ['--search', 'let(h, ff(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-01
    (10, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-27
    (1, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-31
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders
    (19, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (12, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2014-17
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager(alt([single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2-05
    (2, ['--search', 'let(h, add(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-02
    (4, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=true,use_orders=false),let(hlm, lmcount(lmg,admissible=true,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=0),preferred=[hlm],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-29
    (2, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-05
    (2, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hcea,hlm],preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm_pref_ops-no-reasonable-orders
    (41, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-33
    (1, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=1000),preferred=[hlm,hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-1-11
    (4, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-01
    (2, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (8, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-29
    (8, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-03
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=false,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # lazy_hff_hlm-epsilon_greedy-with-reasonable-orders
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),epsilon_greedy(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (22, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_pareto-hff-hlm_pref_ops
    (64, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-10
    (7, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-07
    (16, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),eager_greedy([hff,hadd],preferred=[hff,hadd],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hcg-epsilon-greedy
    (2, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hcg)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent))']),
    # lazy_hff-epsilon-greedy
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent))']),
    # fdss-2018-27
    (2, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-1-08
    (2, ['--search', 'let(h, cea(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-02
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-40
    (4, ['--search', 'let(lmg, lm_zg(use_orders=false),let(hlm, lmcount(lmg,admissible=true,pref=false),eager(single(sum([g(),weight(hlm,3)])),preferred=[],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_pareto-hff-hcg
    (4, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hcg), pareto([hcg, hff])]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-1-01
    (7, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hff,hcg],preferred=[hff,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-35
    (11, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lmg,admissible=true),lazy(alt([single(hlm),single(hlm,pref_only=true),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-09
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([g(),weight(hff,10)])),single(sum([g(),weight(hff,10)]),pref_only=true)],boost=2000),preferred=[hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-24
    (4, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-15
    (4, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm-with-reasonable-orders
    (6, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
]
