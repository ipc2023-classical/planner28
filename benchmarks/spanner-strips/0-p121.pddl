(define (problem prob)
 (:domain spanner)
 (:objects 
     bob - man
 spanner1 spanner2 spanner3 spanner4 spanner5 spanner6 spanner7 spanner8 spanner9 spanner10 spanner11 spanner12 spanner13 spanner14 spanner15 spanner16 spanner17 spanner18 - spanner
     nut1 nut2 nut3 nut4 nut5 nut6 nut7 nut8 nut9 nut10 nut11 nut12 nut13 nut14 nut15 nut16 nut17 - nut
     location1 location2 location3 location4 location5 location6 location7 location8 location9 location10 location11 location12 location13 location14 location15 - location
     shed gate - location
    )
 (:init 
    (at bob shed)
    (at spanner1 location11)
    (useable spanner1)
    (at spanner2 location11)
    (useable spanner2)
    (at spanner3 location5)
    (useable spanner3)
    (at spanner4 location4)
    (useable spanner4)
    (at spanner5 location4)
    (useable spanner5)
    (at spanner6 location8)
    (useable spanner6)
    (at spanner7 location11)
    (useable spanner7)
    (at spanner8 location1)
    (useable spanner8)
    (at spanner9 location15)
    (useable spanner9)
    (at spanner10 location10)
    (useable spanner10)
    (at spanner11 location5)
    (useable spanner11)
    (at spanner12 location1)
    (useable spanner12)
    (at spanner13 location10)
    (useable spanner13)
    (at spanner14 location2)
    (useable spanner14)
    (at spanner15 location13)
    (useable spanner15)
    (at spanner16 location14)
    (useable spanner16)
    (at spanner17 location2)
    (useable spanner17)
    (at spanner18 location4)
    (useable spanner18)
    (loose nut1)
    (at nut1 gate)
    (loose nut2)
    (at nut2 gate)
    (loose nut3)
    (at nut3 gate)
    (loose nut4)
    (at nut4 gate)
    (loose nut5)
    (at nut5 gate)
    (loose nut6)
    (at nut6 gate)
    (loose nut7)
    (at nut7 gate)
    (loose nut8)
    (at nut8 gate)
    (loose nut9)
    (at nut9 gate)
    (loose nut10)
    (at nut10 gate)
    (loose nut11)
    (at nut11 gate)
    (loose nut12)
    (at nut12 gate)
    (loose nut13)
    (at nut13 gate)
    (loose nut14)
    (at nut14 gate)
    (loose nut15)
    (at nut15 gate)
    (loose nut16)
    (at nut16 gate)
    (loose nut17)
    (at nut17 gate)
    (link shed location1)
    (link location15 gate)
    (link location1 location2)
    (link location2 location3)
    (link location3 location4)
    (link location4 location5)
    (link location5 location6)
    (link location6 location7)
    (link location7 location8)
    (link location8 location9)
    (link location9 location10)
    (link location10 location11)
    (link location11 location12)
    (link location12 location13)
    (link location13 location14)
    (link location14 location15)
)
 (:goal
  (and
   (tightened nut1)
   (tightened nut2)
   (tightened nut3)
   (tightened nut4)
   (tightened nut5)
   (tightened nut6)
   (tightened nut7)
   (tightened nut8)
   (tightened nut9)
   (tightened nut10)
   (tightened nut11)
   (tightened nut12)
   (tightened nut13)
   (tightened nut14)
   (tightened nut15)
   (tightened nut16)
   (tightened nut17)
)))
