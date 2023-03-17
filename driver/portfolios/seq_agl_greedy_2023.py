"""
This is the "Fast Downward Greedy 2023" sequential portfolio that
participated in the IPC 2023 agile track.
"""

OPTIMAL = False

"""
Configs: 77
Unique configs: 47
Min time limit: 1
Max time limit: 193

Coverage: 2200
Runtime: 1789s
Score: 1494.19
"""

CONFIGS = [
    # fdss-2018-01
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-2-08
    (1, ['--search', 'let(h, add(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders
    (2, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
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
    # lazy_hff-epsilon-greedy_hlm_pref_ops-no-reasonable-orders
    (8, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # fdss-2018-18
    (8, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2014-17
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager(alt([single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-27
    (1, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-01
    (22, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-31
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2-05
    (2, ['--search', 'let(h, add(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders
    (44, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # fdss-2018-29
    (2, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (6, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-33
    (1, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=1000),preferred=[hlm,hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-1-11
    (4, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-18
    (14, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2018-29
    (8, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-03
    (82, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=false,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-03
    (1, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-05
    (1, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hcea,hlm],preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff_hlm-epsilon_greedy-with-reasonable-orders
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),epsilon_greedy(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # fdss-2014-01
    (5, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (24, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-10
    (7, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (79, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-1-07
    (16, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),eager_greedy([hff,hadd],preferred=[hff,hadd],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-35
    (11, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lmg,admissible=true),lazy(alt([single(hlm),single(hlm,pref_only=true),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # lazy_pareto-hff-hlm_pref_ops
    (2, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # lazy_hcg-epsilon-greedy
    (2, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hcg)]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))']),
    # lazy_hff-epsilon-greedy
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff)]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))']),
    # fdss-2018-27
    (2, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-31
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-02
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-40
    (4, ['--search', 'let(lmg, lm_zg(use_orders=false),let(hlm, lmcount(lmg,admissible=true,pref=false),eager(single(sum([g(),weight(hlm,3)])),preferred=[],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-02
    (4, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=true,use_orders=false),let(hlm, lmcount(lmg,admissible=true,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=0),preferred=[hlm],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-09
    (8, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([g(),weight(hff,10)])),single(sum([g(),weight(hff,10)]),pref_only=true)],boost=2000),preferred=[hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-1-01
    (7, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hff,hcg],preferred=[hff,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-29
    (27, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2-08
    (72, ['--search', 'let(h, add(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_pareto-hff-hcg
    (3, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hcg), pareto([hcg, hff])]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # lazy_pareto-hff-hlm_pref_ops
    (187, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # fdss-2018-24
    (4, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-15
    (4, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (46, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-16
    (18, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=false,use_orders=true),let(hlm, lmcount(lmg,admissible=false,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),let(hblind, blind(),lazy(alt([type_based([g()]),single(sum([g(),weight(hblind,2)])),single(sum([g(),weight(hblind,2)]),pref_only=true),single(sum([g(),weight(hlm,2)])),single(sum([g(),weight(hlm,2)]),pref_only=true),single(sum([g(),weight(hff,2)])),single(sum([g(),weight(hff,2)]),pref_only=true)],boost=4419),preferred=[hlm],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))))']),
    # fdss-2014-09
    (27, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),lazy_greedy([hadd,hcg],preferred=[hadd,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm-with-reasonable-orders
    (6, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent)))']),
    # fdss-2-07
    (6, ['--search', 'let(h, cg(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-16
    (19, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy_wastar([hcg,hff],w=3,preferred=[hcg,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (193, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2014-19
    (8, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcea, cea(transform=adapt_costs(one)),eager(alt([single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hcea,3)])),single(sum([g(),weight(hcea,3)]),pref_only=true)]),preferred=[hff,hcea],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-10
    (25, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-31
    (9, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-02
    (18, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=true,use_orders=false),let(hlm, lmcount(lmg,admissible=true,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=0),preferred=[hlm],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
    # fdss-2014-10
    (62, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hadd,hlm],w=3,preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-11
    (19, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-27
    (10, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-29
    (90, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-05
    (20, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hcea,hlm],preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-08
    (121, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),lazy_greedy([hadd,hff],preferred=[hadd,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-08
    (14, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hadd),single(hadd,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-34
    (14, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=true,use_orders=true,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([tiebreaking([sum([g(),weight(hlm,10)]),hlm]),tiebreaking([sum([g(),weight(hlm,10)]),hlm],pref_only=true),tiebreaking([sum([g(),weight(hff,10)]),hff]),tiebreaking([sum([g(),weight(hff,10)]),hff],pref_only=true)],boost=200),preferred=[hlm],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
    # fdss-2014-01
    (16, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (95, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-12
    (17, ['--search', 'let(h, add(transform=adapt_costs(one)),eager(single(sum([g(),weight(h,3)])),preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-35
    (79, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lmg,admissible=true),lazy(alt([single(hlm),single(hlm,pref_only=true),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-23
    (20, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([type_based([g()]),single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-33
    (21, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=1000),preferred=[hlm,hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2014-12
    (40, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hcea,hlm],w=3,preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy
    (23, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff)]),cost_type=one,reopen_closed=false,randomize_successors=true, verbosity=silent))']),
    # fdss-2018-39
    (29, ['--search', 'let(lmg, lm_exhaust(only_causal_landmarks=false),let(hgoalcount, goalcount(transform=adapt_costs(plusone)),let(hlm, lmcount(lmg,admissible=false),let(hff, ff(),let(hblind, blind(),eager(alt([tiebreaking([sum([weight(g(),8),weight(hblind,9)]),hblind]),tiebreaking([sum([weight(g(),8),weight(hlm,9)]),hlm]),tiebreaking([sum([weight(g(),8),weight(hff,9)]),hff]),tiebreaking([sum([weight(g(),8),weight(hgoalcount,9)]),hgoalcount])],boost=2005),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-34
    (30, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=true,use_orders=true,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([tiebreaking([sum([g(),weight(hlm,10)]),hlm]),tiebreaking([sum([g(),weight(hlm,10)]),hlm],pref_only=true),tiebreaking([sum([g(),weight(hff,10)]),hff]),tiebreaking([sum([g(),weight(hff,10)]),hff],pref_only=true)],boost=200),preferred=[hlm],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
]


