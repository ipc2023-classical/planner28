"""
This is the "Fast Downward Greedy 2023" sequential portfolio that
participated in the IPC 2023 satisficing track.
"""

OPTIMAL = False

"""
Configs: 104
Unique configs: 72
Min time limit: 1
Max time limit: 392

Coverage: 2206
Runtime: 1800s
Score: 2083.88
"""
CONFIGS = [
    # fdss-2018-01
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-2-05
    (1, ['--search', 'let(h, add(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-1-04
    (1, ['--search', 'let(h, ff(transform=adapt_costs(one)),lazy_wastar([h],w=3,preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff_hlm-epsilon-greedy_pref_ops-no-reasonable-orders
    (2, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),epsilon_greedy(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (1, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2018-31
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-01
    (4, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-04
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-02
    (4, ['--search', 'let(h, ff(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-1-11
    (1, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-03
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=false,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-27
    (1, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-01
    (15, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true),type_based([hff,g()])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=false,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-32
    (1, ['--search', 'let(hblind, blind(),let(hff, ff(transform=adapt_costs(one)),eager(alt([single(sum([g(),weight(hblind,2)])),single(sum([g(),weight(hff,2)]))],boost=4480),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2-05
    (2, ['--search', 'let(h, add(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-18
    (12, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2018-39
    (1, ['--search', 'let(lmg, lm_exhaust(only_causal_landmarks=false),let(hgoalcount, goalcount(transform=adapt_costs(plusone)),let(hlm, lmcount(lmg,admissible=false),let(hff, ff(),let(hblind, blind(),eager(alt([tiebreaking([sum([weight(g(),8),weight(hblind,9)]),hblind]),tiebreaking([sum([weight(g(),8),weight(hlm,9)]),hlm]),tiebreaking([sum([weight(g(),8),weight(hff,9)]),hff]),tiebreaking([sum([weight(g(),8),weight(hgoalcount,9)]),hgoalcount])],boost=2005),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent))))))']),
    # fdss-2014-11
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hff,hlm],w=3,preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-05
    (1, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hcea,hlm],preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm_pref_ops-no-reasonable-orders
    (39, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-29
    (2, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-21
    (3, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),eager_greedy([hcea],preferred=[hcea],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-02
    (4, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=true,use_orders=false),let(hlm, lmcount(lmg,admissible=true,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=0),preferred=[hlm],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent))))']),
    # fdss-1-08
    (3, ['--search', 'let(h, cea(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-28
    (1, ['--search', 'let(hblind, blind(),let(hadd, add(),let(hcg, cg(transform=adapt_costs(one)),let(hhmax, hmax(),eager(alt([tiebreaking([sum([g(),weight(hblind,7)]),hblind]),tiebreaking([sum([g(),weight(hhmax,7)]),hhmax]),tiebreaking([sum([g(),weight(hadd,7)]),hadd]),tiebreaking([sum([g(),weight(hcg,7)]),hcg])],boost=2142),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-33
    (1, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=1000),preferred=[hlm,hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-40
    (3, ['--search', 'let(lmg, lm_zg(use_orders=false),let(hlm, lmcount(lmg,admissible=true,pref=false),eager(single(sum([g(),weight(hlm,3)])),preferred=[],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-20
    (1, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager(alt([single(sum([g(),weight(hcg,3)])),single(sum([g(),weight(hcg,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-14
    (4, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([g(),weight(hff,10)])),single(sum([g(),weight(hff,10)]),pref_only=true),single(sum([g(),weight(hgoalcount,10)])),single(sum([g(),weight(hgoalcount,10)]),pref_only=true)],boost=2000),preferred=[hff,hgoalcount],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-17
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy_wastar([hff],w=3,preferred=[hff],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-29
    (8, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-05
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-03
    (82, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=false,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-10
    (1, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff_hlm-epsilon_greedy-no-reasonable-orders
    (1, ['--search', 'let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),epsilon_greedy(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-1-05
    (5, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),eager_greedy([hff,hcg],preferred=[hff,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-13
    (3, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hcg,hlm],preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-04
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (18, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-31
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_pareto-hff-hlm_pref_ops
    (2, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2014-06
    (14, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),eager_greedy([hadd,hff],preferred=[hadd,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-27
    (2, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2014-02
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-36
    (1, ['--search', 'let(lmg, lm_exhaust(only_causal_landmarks=false),let(hff, ff(transform=adapt_costs(plusone)),let(hhmax, hmax(),let(hblind, blind(),let(hlm, lmcount(lmg,admissible=true,pref=false,transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(sum([g(),weight(hblind,3)])),single(sum([g(),weight(hblind,3)]),pref_only=true),single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true),single(sum([g(),weight(hhmax,3)])),single(sum([g(),weight(hhmax,3)]),pref_only=true)],boost=3052),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-09
    (5, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([g(),weight(hff,10)])),single(sum([g(),weight(hff,10)]),pref_only=true)],boost=2000),preferred=[hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-13
    (18, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hcg,hlm],preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (35, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2018-29
    (30, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # lazy_hcg-epsilon-greedy
    (2, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hcg)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent))']),
    # lazy_hff-epsilon-greedy
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent))']),
    # fdss-2018-35
    (11, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lmg,admissible=true),lazy(alt([single(hlm),single(hlm,pref_only=true),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-24
    (6, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-33
    (24, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=false,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),let(hff, ff(),lazy(alt([type_based([g()]),single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true)],boost=1000),preferred=[hlm,hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))']),
    # fdss-2018-39
    (3, ['--search', 'let(lmg, lm_exhaust(only_causal_landmarks=false),let(hgoalcount, goalcount(transform=adapt_costs(plusone)),let(hlm, lmcount(lmg,admissible=false),let(hff, ff(),let(hblind, blind(),eager(alt([tiebreaking([sum([weight(g(),8),weight(hblind,9)]),hblind]),tiebreaking([sum([weight(g(),8),weight(hlm,9)]),hlm]),tiebreaking([sum([weight(g(),8),weight(hff,9)]),hff]),tiebreaking([sum([weight(g(),8),weight(hgoalcount,9)]),hgoalcount])],boost=2005),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent))))))']),
    # lazy_pareto-hff-hlm_pref_ops
    (159, ['--search', 'let(hlm, lmcount(lm_rhw(), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true), pareto([hlm, hff])],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2014-01
    (5, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-17
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager(alt([single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2-08
    (8, ['--search', 'let(h, add(transform=adapt_costs(one)),lazy_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-16
    (14, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=false,use_orders=true),let(hlm, lmcount(lmg,admissible=false,transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),let(hblind, blind(),lazy(alt([type_based([g()]),single(sum([g(),weight(hblind,2)])),single(sum([g(),weight(hblind,2)]),pref_only=true),single(sum([g(),weight(hlm,2)])),single(sum([g(),weight(hlm,2)]),pref_only=true),single(sum([g(),weight(hff,2)])),single(sum([g(),weight(hff,2)]),pref_only=true)],boost=4419),preferred=[hlm],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))))']),
    # lazy_pareto-hff-hcg
    (3, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hcg), pareto([hcg, hff])]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-37
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(plusone)),lazy(alt([tiebreaking([sum([g(),hff]),hff]),tiebreaking([sum([g(),hff]),hff],pref_only=true)],boost=432),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-1-01
    (3, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hff,hcg],preferred=[hff,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-16
    (19, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy_wastar([hcg,hff],w=3,preferred=[hcg,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm_pref_ops-with-reasonable-orders
    (1, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-18
    (165, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([type_based([g()]),single(hcg),single(hcg,pref_only=true)],boost=0),preferred=[hcg],reopen_closed=true,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # eager_hcg-epsilon-greedy
    (2, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),eager(alt([epsilon_greedy(hcg)]),cost_type=one,reopen_closed=false, bound=BOUND, verbosity=silent))']),
    # fdss-2014-04
    (13, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hff,hlm],preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-03
    (40, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),lazy_greedy([hcea,hcg],preferred=[hcea,hcg],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-08
    (1, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hadd),single(hadd,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-12
    (1, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hcea,hlm],w=3,preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-03
    (1, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # lazy_hff-epsilon-greedy_hlm-no-reasonable-orders
    (6, ['--search', 'let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hlm)]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-39
    (9, ['--search', 'let(lmg, lm_exhaust(only_causal_landmarks=false),let(hgoalcount, goalcount(transform=adapt_costs(plusone)),let(hlm, lmcount(lmg,admissible=false),let(hff, ff(),let(hblind, blind(),eager(alt([tiebreaking([sum([weight(g(),8),weight(hblind,9)]),hblind]),tiebreaking([sum([weight(g(),8),weight(hlm,9)]),hlm]),tiebreaking([sum([weight(g(),8),weight(hff,9)]),hff]),tiebreaking([sum([weight(g(),8),weight(hgoalcount,9)]),hgoalcount])],boost=2005),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent))))))']),
    # fdss-1-04
    (24, ['--search', 'let(h, ff(transform=adapt_costs(one)),lazy_wastar([h],w=3,preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-08
    (93, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hadd, add(transform=adapt_costs(one)),lazy_greedy([hadd,hff],preferred=[hadd,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-31
    (9, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true)],boost=5000),preferred=[hff],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-10
    (45, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hadd,hlm],w=3,preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-25
    (10, ['--search', 'let(hcg, cg(transform=adapt_costs(plusone)),lazy(alt([single(sum([g(),weight(hcg,10)])),single(sum([g(),weight(hcg,10)]),pref_only=true)],boost=0),preferred=[hcg],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent))']),
    # fdss-2014-18
    (17, ['--search', 'let(hadd, add(transform=adapt_costs(one)),eager(alt([single(sum([g(), weight(hadd, 3)])),single(sum([g(), weight(hadd,3)]),pref_only=true)]),preferred=[hadd],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-32
    (7, ['--search', 'let(hblind, blind(),let(hff, ff(transform=adapt_costs(one)),eager(alt([single(sum([g(),weight(hblind,2)])),single(sum([g(),weight(hff,2)]))],boost=4480),preferred=[],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-1-11
    (23, ['--search', 'let(h, cea(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # lazy_hff-epsilon-greedy_hlm_pref_ops-with-reasonable-orders
    (392, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()), pref=true, transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([epsilon_greedy(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-07
    (21, ['--search', 'let(hcea, cea(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy_greedy([hcea,hlm],preferred=[hcea,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-06
    (6, ['--search', 'let(h, ff(transform=adapt_costs(one)),eager_greedy([h],preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-24
    (11, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-41
    (1, ['--search', 'let(lmg, lm_hm(conjunctive_landmarks=true,use_orders=false,m=1),let(hlm, lmcount(lmg,admissible=true),eager(single(sum([g(),weight(hlm,5)])),preferred=[],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-19
    (8, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcea, cea(transform=adapt_costs(one)),eager(alt([single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hcea,3)])),single(sum([g(),weight(hcea,3)]),pref_only=true)]),preferred=[hff,hcea],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-27
    (10, ['--search', 'let(lmg, lm_reasonable_orders_hps(lm_rhw(only_causal_landmarks=true,disjunctive_landmarks=true,use_orders=true)),let(hblind, blind(),let(hadd, add(),let(hlm, lmcount(lmg,admissible=false,pref=true,transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hlm,3)])),single(sum([weight(g(),2),weight(hlm,3)]),pref_only=true),single(sum([weight(g(),2),weight(hadd,3)])),single(sum([weight(g(),2),weight(hadd,3)]),pref_only=true)],boost=2474),preferred=[hadd],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))))))']),
    # fdss-2018-09
    (42, ['--search', 'let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(sum([g(),weight(hff,10)])),single(sum([g(),weight(hff,10)]),pref_only=true)],boost=2000),preferred=[hff],reopen_closed=false,cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2018-29
    (90, ['--search', 'let(hadd, add(transform=adapt_costs(plusone)),let(hff, ff(),lazy(alt([tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff]),tiebreaking([sum([weight(g(),4),weight(hff,5)]),hff],pref_only=true),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd]),tiebreaking([sum([weight(g(),4),weight(hadd,5)]),hadd],pref_only=true)],boost=2537),preferred=[hff,hadd],reopen_closed=true,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-19
    (4, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(sum([g(),weight(hcg,3)])),single(sum([g(),weight(hcg,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-05
    (5, ['--search', 'let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hff,pref_only=true),single(hlm),single(hlm,pref_only=true)],boost=1000),preferred=[hff,hlm],cost_type=one,reopen_closed=false,randomize_successors=true,preferred_successors_first=true,bound=BOUND, verbosity=silent)))']),
    # lazy_pareto-hff-hlm
    (16, ['--search', 'let(hlm, lmcount(lm_rhw(),transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(one)),lazy(alt([single(hff),single(hlm), pareto([hlm, hff])]),cost_type=one,reopen_closed=false,randomize_successors=true, bound=BOUND, verbosity=silent)))']),
    # fdss-2018-15
    (2, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),eager(alt([type_based([g()]),single(sum([g(),weight(hff,3)])),single(sum([g(),weight(hff,3)]),pref_only=true),single(sum([g(),weight(hlm,3)])),single(sum([g(),weight(hlm,3)]),pref_only=true)]),preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-11
    (80, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hff,hlm],w=3,preferred=[hff,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-40
    (6, ['--search', 'let(lmg, lm_zg(use_orders=false),let(hlm, lmcount(lmg,admissible=true,pref=false),eager(single(sum([g(),weight(hlm,3)])),preferred=[],reopen_closed=true,cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-11
    (1, ['--search', 'let(lmg, lm_rhw(only_causal_landmarks=false,disjunctive_landmarks=true,use_orders=true),let(hcea, cea(transform=adapt_costs(plusone)),let(hlm, lmcount(lmg,admissible=true,transform=adapt_costs(plusone)),let(hff, ff(transform=adapt_costs(plusone)),lazy(alt([single(hlm),single(hlm,pref_only=true),single(hff),single(hff,pref_only=true),single(hcea),single(hcea,pref_only=true)],boost=0),preferred=[hlm,hcea],reopen_closed=false,cost_type=plusone,bound=BOUND, verbosity=silent)))))']),
    # fdss-2018-08
    (14, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one)),lazy(alt([type_based([g()]),single(hadd),single(hadd,pref_only=true),single(hlm),single(hlm,pref_only=true)]),preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2014-03
    (4, ['--search', 'let(hadd, add(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),eager_greedy([hadd,hlm],preferred=[hadd,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-1-10
    (1, ['--search', 'let(h, add(transform=adapt_costs(one)),lazy_wastar([h],w=3,preferred=[h],cost_type=one,bound=BOUND, verbosity=silent))']),
    # fdss-2014-07
    (1, ['--search', 'let(hff, ff(transform=adapt_costs(one)),let(hcg, cg(transform=adapt_costs(one)),eager_greedy([hcg,hff],preferred=[hcg,hff],cost_type=one,bound=BOUND, verbosity=silent)))']),
    # fdss-2018-23
    (1, ['--search', 'let(hgoalcount, goalcount(transform=adapt_costs(one)),let(hff, ff(transform=adapt_costs(plusone)),let(hblind, blind(),let(hcg, cg(),lazy(alt([type_based([g()]),single(sum([weight(g(),2),weight(hblind,3)])),single(sum([weight(g(),2),weight(hblind,3)]),pref_only=true),single(sum([weight(g(),2),weight(hff,3)])),single(sum([weight(g(),2),weight(hff,3)]),pref_only=true),single(sum([weight(g(),2),weight(hcg,3)])),single(sum([weight(g(),2),weight(hcg,3)]),pref_only=true),single(sum([weight(g(),2),weight(hgoalcount,3)])),single(sum([weight(g(),2),weight(hgoalcount,3)]),pref_only=true)],boost=3662),preferred=[hff],reopen_closed=true,bound=BOUND, verbosity=silent)))))']),
    # fdss-2014-22
    (3, ['--search', 'let(hcg, cg(transform=adapt_costs(one)),let(hlm, lmcount(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(plusone)),lazy_wastar([hcg,hlm],w=3,preferred=[hcg,hlm],cost_type=one,bound=BOUND, verbosity=silent)))']),
]
