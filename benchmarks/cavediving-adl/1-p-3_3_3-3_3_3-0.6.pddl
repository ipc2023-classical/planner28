;; Cave Diving ADL
;; Authors: Nathan Robinson,
;;          Christian Muise, and
;;          Charles Gretton

(define (problem cave-diving-adl-3:3:3-3:3:3-0.6)
  (:domain cave-diving-adl)
  (:objects
    l0 l1 l2 l3 l4 l5 l6 l7 - location
    d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 - diver
    t0 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 - tank
    t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 - tank
    t40 t41 t42 t43 t44 t45 t46 dummy - tank
    zero one two three four - quantity
  )

  (:init
    (available d0)
    (available d1)
    (available d2)
    (available d3)
    (available d4)
    (available d5)
    (available d6)
    (available d7)
    (available d8)
    (available d9)
    (available d10)
    (available d11)
    (capacity d0 four)
    (capacity d1 four)
    (capacity d2 four)
    (capacity d3 four)
    (capacity d4 four)
    (capacity d5 four)
    (capacity d6 four)
    (capacity d7 four)
    (capacity d8 four)
    (capacity d9 four)
    (capacity d10 four)
    (capacity d11 four)
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
    (next-tank t14 t15)
    (next-tank t15 t16)
    (next-tank t16 t17)
    (next-tank t17 t18)
    (next-tank t18 t19)
    (next-tank t19 t20)
    (next-tank t20 t21)
    (next-tank t21 t22)
    (next-tank t22 t23)
    (next-tank t23 t24)
    (next-tank t24 t25)
    (next-tank t25 t26)
    (next-tank t26 t27)
    (next-tank t27 t28)
    (next-tank t28 t29)
    (next-tank t29 t30)
    (next-tank t30 t31)
    (next-tank t31 t32)
    (next-tank t32 t33)
    (next-tank t33 t34)
    (next-tank t34 t35)
    (next-tank t35 t36)
    (next-tank t36 t37)
    (next-tank t37 t38)
    (next-tank t38 t39)
    (next-tank t39 t40)
    (next-tank t40 t41)
    (next-tank t41 t42)
    (next-tank t42 t43)
    (next-tank t43 t44)
    (next-tank t44 t45)
    (next-tank t45 t46)
    (next-tank t46 dummy)
    (cave-entrance l0)
    (connected l0 l1)
    (connected l1 l0)
    (connected l1 l2)
    (connected l2 l1)
    (connected l2 l3)
    (connected l3 l2)
    (connected l2 l4)
    (connected l4 l2)
    (connected l0 l5)
    (connected l5 l0)
    (connected l5 l6)
    (connected l6 l5)
    (connected l6 l7)
    (connected l7 l6)
    (next-quantity zero one)
    (next-quantity one two)
    (next-quantity two three)
    (next-quantity three four)
    (precludes d6 d10)
    (precludes d6 d4)
    (precludes d6 d8)
    (precludes d6 d9)
    (precludes d6 d5)
    (precludes d1 d4)
    (precludes d1 d11)
    (precludes d1 d0)
    (precludes d1 d2)
    (precludes d1 d8)
    (precludes d1 d9)
    (precludes d1 d3)
    (precludes d1 d7)
    (precludes d10 d4)
    (precludes d10 d2)
    (precludes d10 d8)
    (precludes d10 d9)
    (precludes d10 d7)
    (precludes d4 d2)
    (precludes d4 d8)
    (precludes d4 d9)
    (precludes d4 d7)
    (precludes d11 d7)
    (precludes d0 d2)
    (precludes d0 d8)
    (precludes d0 d3)
    (precludes d0 d7)
    (precludes d0 d5)
    (precludes d2 d8)
    (precludes d2 d9)
    (precludes d2 d3)
    (precludes d2 d7)
    (precludes d2 d5)
    (precludes d8 d3)
    (precludes d8 d5)
    (precludes d9 d7)
    (precludes d7 d5)
    (= (hiring-cost d6) 24)
    (= (hiring-cost d1) 10)
    (= (hiring-cost d10) 25)
    (= (hiring-cost d4) 40)
    (= (hiring-cost d11) 74)
    (= (hiring-cost d0) 27)
    (= (hiring-cost d2) 25)
    (= (hiring-cost d8) 51)
    (= (hiring-cost d9) 68)
    (= (hiring-cost d3) 91)
    (= (hiring-cost d7) 72)
    (= (hiring-cost d5) 84)
    (= (other-cost ) 1)
    (= (total-cost) 0)
  )

  (:goal
    (and
      (have-photo l4)
      (have-photo l3)
      (have-photo l7)
      (decompressing d6)
      (decompressing d1)
      (decompressing d10)
      (decompressing d4)
      (decompressing d11)
      (decompressing d0)
      (decompressing d2)
      (decompressing d8)
      (decompressing d9)
      (decompressing d3)
      (decompressing d7)
      (decompressing d5)
    )
  )

  (:metric minimize (total-cost))

)