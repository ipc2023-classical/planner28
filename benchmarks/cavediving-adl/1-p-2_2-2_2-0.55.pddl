;; Cave Diving ADL
;; Authors: Nathan Robinson,
;;          Christian Muise, and
;;          Charles Gretton

(define (problem cave-diving-adl-2:2-2:2-0.55)
  (:domain cave-diving-adl)
  (:objects
    l0 l1 l2 l3 - location
    d0 d1 d2 d3 - diver
    t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 dummy - tank
    zero one two three four - quantity
  )

  (:init
    (available d0)
    (available d1)
    (available d2)
    (available d3)
    (capacity d0 four)
    (capacity d1 four)
    (capacity d2 four)
    (capacity d3 four)
    (in-storage t0)
    (next-tank t0 t1)
    (next-tank t1 t2)
    (next-tank t2 t3)
    (next-tank t3 t4)
    (next-tank t4 t5)
    (next-tank t5 t6)
    (next-tank t6 t7)
    (next-tank t7 t8)
    (next-tank t8 t9)
    (next-tank t9 t10)
    (next-tank t10 t11)
    (next-tank t11 t12)
    (next-tank t12 t13)
    (next-tank t13 t14)
    (next-tank t14 dummy)
    (cave-entrance l0)
    (connected l0 l1)
    (connected l1 l0)
    (connected l1 l2)
    (connected l2 l1)
    (connected l1 l3)
    (connected l3 l1)
    (next-quantity zero one)
    (next-quantity one two)
    (next-quantity two three)
    (next-quantity three four)
    (precludes d2 d0)
    (precludes d2 d3)
    (precludes d1 d3)
    (= (hiring-cost d2) 10)
    (= (hiring-cost d1) 39)
    (= (hiring-cost d0) 67)
    (= (hiring-cost d3) 67)
    (= (other-cost ) 1)
    (= (total-cost) 0)
  )

  (:goal
    (and
      (have-photo l3)
      (have-photo l2)
      (decompressing d2)
      (decompressing d1)
      (decompressing d0)
      (decompressing d3)
    )
  )

  (:metric minimize (total-cost))

)
