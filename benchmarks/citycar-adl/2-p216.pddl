(define (problem citycar-4-4-3)
(:domain citycar)
(:objects  
junction0-0 junction0-1 junction0-2 junction0-3 
junction1-0 junction1-1 junction1-2 junction1-3 
junction2-0 junction2-1 junction2-2 junction2-3 
junction3-0 junction3-1 junction3-2 junction3-3 - junction
car0 car1 car2 - car
garage0 garage1 garage2 garage3 garage4 - garage
road0 road1 road2 road3 road4 road5 - road
)
(:init
(same_line junction0-0 junction0-1)
(same_line junction0-1 junction0-0)
(same_line junction0-1 junction0-2)
(same_line junction0-2 junction0-1)
(same_line junction0-2 junction0-3)
(same_line junction0-3 junction0-2)
(same_line junction1-0 junction1-1)
(same_line junction1-1 junction1-0)
(same_line junction1-1 junction1-2)
(same_line junction1-2 junction1-1)
(same_line junction1-2 junction1-3)
(same_line junction1-3 junction1-2)
(same_line junction2-0 junction2-1)
(same_line junction2-1 junction2-0)
(same_line junction2-1 junction2-2)
(same_line junction2-2 junction2-1)
(same_line junction2-2 junction2-3)
(same_line junction2-3 junction2-2)
(same_line junction3-0 junction3-1)
(same_line junction3-1 junction3-0)
(same_line junction3-1 junction3-2)
(same_line junction3-2 junction3-1)
(same_line junction3-2 junction3-3)
(same_line junction3-3 junction3-2)
(same_line junction0-0 junction1-0)
(same_line junction1-0 junction0-0)
(same_line junction1-0 junction2-0)
(same_line junction2-0 junction1-0)
(same_line junction2-0 junction3-0)
(same_line junction3-0 junction2-0)
(same_line junction0-1 junction1-1)
(same_line junction1-1 junction0-1)
(same_line junction1-1 junction2-1)
(same_line junction2-1 junction1-1)
(same_line junction2-1 junction3-1)
(same_line junction3-1 junction2-1)
(same_line junction0-2 junction1-2)
(same_line junction1-2 junction0-2)
(same_line junction1-2 junction2-2)
(same_line junction2-2 junction1-2)
(same_line junction2-2 junction3-2)
(same_line junction3-2 junction2-2)
(same_line junction0-3 junction1-3)
(same_line junction1-3 junction0-3)
(same_line junction1-3 junction2-3)
(same_line junction2-3 junction1-3)
(same_line junction2-3 junction3-3)
(same_line junction3-3 junction2-3)
(diagonal junction0-0 junction1-1)
(diagonal junction1-1 junction0-0)
(diagonal junction0-1 junction1-0)
(diagonal junction1-0 junction0-1)
(diagonal junction0-1 junction1-2)
(diagonal junction1-2 junction0-1)
(diagonal junction0-2 junction1-1)
(diagonal junction1-1 junction0-2)
(diagonal junction0-2 junction1-3)
(diagonal junction1-3 junction0-2)
(diagonal junction0-3 junction1-2)
(diagonal junction1-2 junction0-3)
(diagonal junction1-0 junction2-1)
(diagonal junction2-1 junction1-0)
(diagonal junction1-1 junction2-0)
(diagonal junction2-0 junction1-1)
(diagonal junction1-1 junction2-2)
(diagonal junction2-2 junction1-1)
(diagonal junction1-2 junction2-1)
(diagonal junction2-1 junction1-2)
(diagonal junction1-2 junction2-3)
(diagonal junction2-3 junction1-2)
(diagonal junction1-3 junction2-2)
(diagonal junction2-2 junction1-3)
(diagonal junction2-0 junction3-1)
(diagonal junction3-1 junction2-0)
(diagonal junction2-1 junction3-0)
(diagonal junction3-0 junction2-1)
(diagonal junction2-1 junction3-2)
(diagonal junction3-2 junction2-1)
(diagonal junction2-2 junction3-1)
(diagonal junction3-1 junction2-2)
(diagonal junction2-2 junction3-3)
(diagonal junction3-3 junction2-2)
(diagonal junction2-3 junction3-2)
(diagonal junction3-2 junction2-3)
(clear junction0-0)
(clear junction0-1)
(clear junction0-2)
(clear junction0-3)
(clear junction1-0)
(clear junction1-1)
(clear junction1-2)
(clear junction1-3)
(clear junction2-0)
(clear junction2-1)
(clear junction2-2)
(clear junction2-3)
(clear junction3-0)
(clear junction3-1)
(clear junction3-2)
(clear junction3-3)
(at_garage garage0 junction0-2)
(at_garage garage1 junction0-0)
(at_garage garage2 junction0-2)
(at_garage garage3 junction0-0)
(at_garage garage4 junction0-0)
(starting car0 garage3)
(starting car1 garage3)
(starting car2 garage2)
(= (total-cost) 0)
)
(:goal
(and
(arrived car0 junction3-3)
(arrived car1 junction3-0)
(arrived car2 junction3-2)
)
)
(:metric minimize (total-cost))
)
