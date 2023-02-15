(define (problem prob_agricola)
 (:domain agricola)
 (:objects 
num1 num2 num3 num4 num5 num6 num7 num8 num9 num10 num11 num12 num13 num14 num15 num16 - num 
stage1 stage2 stage3 stage4 - stage
round1 round2 round3 round4 round5 round6 round7 round8 round9 round10 - round 
worker1 worker2 worker3 worker4 worker5 - worker 
room1 room2 room3 room4 room5 - room 
)
 (:init 
    (NEXT_NUM num0 num1)
    (NEXT_NUM num1 num2)
    (NEXT_NUM num2 num3)
    (NEXT_NUM num3 num4)
    (NEXT_NUM num4 num5)
    (NEXT_NUM num5 num6)
    (NEXT_NUM num6 num7)
    (NEXT_NUM num7 num8)
    (NEXT_NUM num8 num9)
    (NEXT_NUM num9 num10)
    (NEXT_NUM num10 num11)
    (NEXT_NUM num11 num12)
    (NEXT_NUM num12 num13)
    (NEXT_NUM num13 num14)
    (NEXT_NUM num14 num15)
    (NEXT_NUM num15 num16)
    (NUM_SUBSTRACT num1 num1 num0)
    (NUM_SUBSTRACT num2 num1 num1)
    (NUM_SUBSTRACT num2 num2 num0)
    (NUM_SUBSTRACT num3 num1 num2)
    (NUM_SUBSTRACT num3 num2 num1)
    (NUM_SUBSTRACT num3 num3 num0)
    (NUM_SUBSTRACT num4 num1 num3)
    (NUM_SUBSTRACT num4 num2 num2)
    (NUM_SUBSTRACT num4 num3 num1)
    (NUM_SUBSTRACT num4 num4 num0)
    (NUM_SUBSTRACT num5 num1 num4)
    (NUM_SUBSTRACT num5 num2 num3)
    (NUM_SUBSTRACT num5 num3 num2)
    (NUM_SUBSTRACT num5 num4 num1)
    (NUM_SUBSTRACT num5 num5 num0)
    (NUM_SUBSTRACT num6 num1 num5)
    (NUM_SUBSTRACT num6 num2 num4)
    (NUM_SUBSTRACT num6 num3 num3)
    (NUM_SUBSTRACT num6 num4 num2)
    (NUM_SUBSTRACT num6 num5 num1)
    (NUM_SUBSTRACT num6 num6 num0)
    (NUM_SUBSTRACT num7 num1 num6)
    (NUM_SUBSTRACT num7 num2 num5)
    (NUM_SUBSTRACT num7 num3 num4)
    (NUM_SUBSTRACT num7 num4 num3)
    (NUM_SUBSTRACT num7 num5 num2)
    (NUM_SUBSTRACT num7 num6 num1)
    (NUM_SUBSTRACT num7 num7 num0)
    (NUM_SUBSTRACT num8 num1 num7)
    (NUM_SUBSTRACT num8 num2 num6)
    (NUM_SUBSTRACT num8 num3 num5)
    (NUM_SUBSTRACT num8 num4 num4)
    (NUM_SUBSTRACT num8 num5 num3)
    (NUM_SUBSTRACT num8 num6 num2)
    (NUM_SUBSTRACT num8 num7 num1)
    (NUM_SUBSTRACT num8 num8 num0)
    (NUM_SUBSTRACT num9 num1 num8)
    (NUM_SUBSTRACT num9 num2 num7)
    (NUM_SUBSTRACT num9 num3 num6)
    (NUM_SUBSTRACT num9 num4 num5)
    (NUM_SUBSTRACT num9 num5 num4)
    (NUM_SUBSTRACT num9 num6 num3)
    (NUM_SUBSTRACT num9 num7 num2)
    (NUM_SUBSTRACT num9 num8 num1)
    (NUM_SUBSTRACT num9 num9 num0)
    (NUM_SUBSTRACT num10 num1 num9)
    (NUM_SUBSTRACT num10 num2 num8)
    (NUM_SUBSTRACT num10 num3 num7)
    (NUM_SUBSTRACT num10 num4 num6)
    (NUM_SUBSTRACT num10 num5 num5)
    (NUM_SUBSTRACT num10 num6 num4)
    (NUM_SUBSTRACT num10 num7 num3)
    (NUM_SUBSTRACT num10 num8 num2)
    (NUM_SUBSTRACT num10 num9 num1)
    (NUM_SUBSTRACT num10 num10 num0)
    (NUM_SUBSTRACT num11 num1 num10)
    (NUM_SUBSTRACT num11 num2 num9)
    (NUM_SUBSTRACT num11 num3 num8)
    (NUM_SUBSTRACT num11 num4 num7)
    (NUM_SUBSTRACT num11 num5 num6)
    (NUM_SUBSTRACT num11 num6 num5)
    (NUM_SUBSTRACT num11 num7 num4)
    (NUM_SUBSTRACT num11 num8 num3)
    (NUM_SUBSTRACT num11 num9 num2)
    (NUM_SUBSTRACT num11 num10 num1)
    (NUM_SUBSTRACT num11 num11 num0)
    (NUM_SUBSTRACT num12 num1 num11)
    (NUM_SUBSTRACT num12 num2 num10)
    (NUM_SUBSTRACT num12 num3 num9)
    (NUM_SUBSTRACT num12 num4 num8)
    (NUM_SUBSTRACT num12 num5 num7)
    (NUM_SUBSTRACT num12 num6 num6)
    (NUM_SUBSTRACT num12 num7 num5)
    (NUM_SUBSTRACT num12 num8 num4)
    (NUM_SUBSTRACT num12 num9 num3)
    (NUM_SUBSTRACT num12 num10 num2)
    (NUM_SUBSTRACT num12 num11 num1)
    (NUM_SUBSTRACT num12 num12 num0)
    (NUM_SUBSTRACT num13 num1 num12)
    (NUM_SUBSTRACT num13 num2 num11)
    (NUM_SUBSTRACT num13 num3 num10)
    (NUM_SUBSTRACT num13 num4 num9)
    (NUM_SUBSTRACT num13 num5 num8)
    (NUM_SUBSTRACT num13 num6 num7)
    (NUM_SUBSTRACT num13 num7 num6)
    (NUM_SUBSTRACT num13 num8 num5)
    (NUM_SUBSTRACT num13 num9 num4)
    (NUM_SUBSTRACT num13 num10 num3)
    (NUM_SUBSTRACT num13 num11 num2)
    (NUM_SUBSTRACT num13 num12 num1)
    (NUM_SUBSTRACT num13 num13 num0)
    (NUM_SUBSTRACT num14 num1 num13)
    (NUM_SUBSTRACT num14 num2 num12)
    (NUM_SUBSTRACT num14 num3 num11)
    (NUM_SUBSTRACT num14 num4 num10)
    (NUM_SUBSTRACT num14 num5 num9)
    (NUM_SUBSTRACT num14 num6 num8)
    (NUM_SUBSTRACT num14 num7 num7)
    (NUM_SUBSTRACT num14 num8 num6)
    (NUM_SUBSTRACT num14 num9 num5)
    (NUM_SUBSTRACT num14 num10 num4)
    (NUM_SUBSTRACT num14 num11 num3)
    (NUM_SUBSTRACT num14 num12 num2)
    (NUM_SUBSTRACT num14 num13 num1)
    (NUM_SUBSTRACT num14 num14 num0)
    (NUM_SUBSTRACT num15 num1 num14)
    (NUM_SUBSTRACT num15 num2 num13)
    (NUM_SUBSTRACT num15 num3 num12)
    (NUM_SUBSTRACT num15 num4 num11)
    (NUM_SUBSTRACT num15 num5 num10)
    (NUM_SUBSTRACT num15 num6 num9)
    (NUM_SUBSTRACT num15 num7 num8)
    (NUM_SUBSTRACT num15 num8 num7)
    (NUM_SUBSTRACT num15 num9 num6)
    (NUM_SUBSTRACT num15 num10 num5)
    (NUM_SUBSTRACT num15 num11 num4)
    (NUM_SUBSTRACT num15 num12 num3)
    (NUM_SUBSTRACT num15 num13 num2)
    (NUM_SUBSTRACT num15 num14 num1)
    (NUM_SUBSTRACT num15 num15 num0)
    (NUM_SUBSTRACT num16 num1 num15)
    (NUM_SUBSTRACT num16 num2 num14)
    (NUM_SUBSTRACT num16 num3 num13)
    (NUM_SUBSTRACT num16 num4 num12)
    (NUM_SUBSTRACT num16 num5 num11)
    (NUM_SUBSTRACT num16 num6 num10)
    (NUM_SUBSTRACT num16 num7 num9)
    (NUM_SUBSTRACT num16 num8 num8)
    (NUM_SUBSTRACT num16 num9 num7)
    (NUM_SUBSTRACT num16 num10 num6)
    (NUM_SUBSTRACT num16 num11 num5)
    (NUM_SUBSTRACT num16 num12 num4)
    (NUM_SUBSTRACT num16 num13 num3)
    (NUM_SUBSTRACT num16 num14 num2)
    (NUM_SUBSTRACT num16 num15 num1)
    (NUM_SUBSTRACT num16 num16 num0)
    (NEXT2_NUM num0 num2)
    (NEXT2_NUM num1 num3)
    (NEXT2_NUM num2 num4)
    (NEXT2_NUM num3 num5)
    (NEXT2_NUM num4 num6)
    (NEXT2_NUM num5 num7)
    (NEXT2_NUM num6 num8)
    (NEXT2_NUM num7 num9)
    (NEXT2_NUM num8 num10)
    (NEXT2_NUM num9 num11)
    (NEXT2_NUM num10 num12)
    (NEXT2_NUM num11 num13)
    (NEXT2_NUM num12 num14)
    (NEXT2_NUM num13 num15)
    (NEXT2_NUM num14 num16)
    (NEXT_STAGE stage1 stage2)
    (NEXT_STAGE stage2 stage3)
    (NEXT_STAGE stage3 stage4)
    (NEXT_ROUND round1 round2)
    (NEXT_ROUND round2 round3)
    (NEXT_ROUND round3 round4)
    (NEXT_ROUND round4 round5)
    (NEXT_ROUND round5 round6)
    (NEXT_ROUND round6 round7)
    (NEXT_ROUND round7 round8)
    (NEXT_ROUND round8 round9)
    (NEXT_ROUND round9 round10)
    (NEXT_WORKER worker5 worker4)
    (NEXT_WORKER worker4 worker3)
    (NEXT_WORKER worker3 worker2)
    (NEXT_WORKER worker2 worker1)
    (NEXT_WORKER worker1 noworker)

    (category_round round1 tnormal)
    (category_round round2 tnormal)
    (category_round round3 tnormal)
    (category_round round4 tharvest)
    (category_round round5 tnormal)
    (category_round round6 tnormal)
    (category_round round7 tharvest)
    (category_round round8 tnormal)
    (category_round round9 tharvest)
    (category_round round10 tnormal)
    (open_action act_labor)
    (open_action act_wood)
    (open_action act_clay)
    (open_action act_reed)
    (open_action act_build)
    (open_action act_plow)
    (open_action act_grain)
    (open_action act_stone)
    (open_action act_family)
    (DRAWCARD_ROUND act_family round1)
    (DRAWCARD_ROUND act_sow round2)
    (DRAWCARD_ROUND act_fences round3)
    (DRAWCARD_ROUND act_sheep round4)
    (DRAWCARD_ROUND act_cattle round5)
    (DRAWCARD_ROUND act_improve round6)
    (DRAWCARD_ROUND act_carrot round7)
    (DRAWCARD_ROUND act_boar round8)
    (DRAWCARD_ROUND void round9)
    (DRAWCARD_ROUND void round10)
    (available_action act_labor)
    (available_action act_wood)
    (available_action act_clay)
    (available_action act_reed)
    (available_action act_build)
    (available_action act_plow)
    (available_action act_grain)
    (available_action act_stone)
    (available_action act_fences)
    (available_action act_sheep)
    (available_action act_sow)
    (available_action act_family)
    (available_action act_improve)
    (available_action act_carrot)
    (available_action act_boar)
    (available_action act_cattle)
    (FOOD_REQUIRED worker2 num4)
    (FOOD_REQUIRED worker2 num5)
    (FOOD_REQUIRED worker3 num6)
    (FOOD_REQUIRED worker3 num7)
    (FOOD_REQUIRED worker4 num8)
    (FOOD_REQUIRED worker4 num9)
    (FOOD_REQUIRED worker5 num10)
    (FOOD_REQUIRED worker5 num11)
    (current_worker  worker2)
    (max_worker  worker2)
    (current_round round1)
    (current_stage stage1)
    (harvest_phase stage1 harvest_init)
    (num_food num1)
    (SUPPLY_RESOURCE act_wood wood)
    (SUPPLY_RESOURCE act_clay clay)
    (SUPPLY_RESOURCE act_reed reed)
    (SUPPLY_RESOURCE act_stone stone)
    (built_rooms room1 worker1)
    (built_rooms room2 worker2)
    (space_rooms room3)
    (space_rooms room4)
    (space_rooms room5)
    (= (group_worker_cost worker2) 60)
    (= (group_worker_cost worker3) 30)
    (= (group_worker_cost worker4) 15)
    (= (group_worker_cost worker5) 6))
 (:goal (and 
    (harvest_phase stage3 harvest_end)))
 (:metric minimize (total-cost))
)
