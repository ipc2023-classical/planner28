

(define (problem BW-rand-19)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b18)
(on b3 b12)
(on b4 b8)
(on b5 b17)
(on b6 b2)
(on-table b7)
(on b8 b15)
(on b9 b14)
(on b10 b4)
(on b11 b13)
(on-table b12)
(on b13 b10)
(on b14 b11)
(on b15 b6)
(on b16 b1)
(on b17 b3)
(on-table b18)
(on b19 b7)
(clear b9)
(clear b16)
(clear b19)
)
(:goal
(and
(on b1 b19)
(on b2 b14)
(on b3 b12)
(on b4 b16)
(on b6 b1)
(on b7 b6)
(on b9 b13)
(on b10 b15)
(on b11 b7)
(on b12 b2)
(on b14 b9)
(on b15 b8)
(on b16 b18)
(on b17 b3)
(on b18 b5)
(on b19 b17))
)
)

