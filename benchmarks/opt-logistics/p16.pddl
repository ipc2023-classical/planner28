


(define (problem logistics-c3-s6-p14-a8)
(:domain logistics-strips)
(:objects a0 a1 a2 a3 a4 a5 a6 a7 
          c0 c1 c2 
          t0 t1 t2 
          l0-0 l0-1 l0-2 l0-3 l0-4 l0-5 l1-0 l1-1 l1-2 l1-3 l1-4 l1-5 l2-0 l2-1 l2-2 l2-3 l2-4 l2-5 
          p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 
)
(:init
    (AIRPLANE a0)
    (AIRPLANE a1)
    (AIRPLANE a2)
    (AIRPLANE a3)
    (AIRPLANE a4)
    (AIRPLANE a5)
    (AIRPLANE a6)
    (AIRPLANE a7)
    (CITY c0)
    (CITY c1)
    (CITY c2)
    (TRUCK t0)
    (TRUCK t1)
    (TRUCK t2)
    (LOCATION l0-0)
    (in-city  l0-0 c0)
    (LOCATION l0-1)
    (in-city  l0-1 c0)
    (LOCATION l0-2)
    (in-city  l0-2 c0)
    (LOCATION l0-3)
    (in-city  l0-3 c0)
    (LOCATION l0-4)
    (in-city  l0-4 c0)
    (LOCATION l0-5)
    (in-city  l0-5 c0)
    (LOCATION l1-0)
    (in-city  l1-0 c1)
    (LOCATION l1-1)
    (in-city  l1-1 c1)
    (LOCATION l1-2)
    (in-city  l1-2 c1)
    (LOCATION l1-3)
    (in-city  l1-3 c1)
    (LOCATION l1-4)
    (in-city  l1-4 c1)
    (LOCATION l1-5)
    (in-city  l1-5 c1)
    (LOCATION l2-0)
    (in-city  l2-0 c2)
    (LOCATION l2-1)
    (in-city  l2-1 c2)
    (LOCATION l2-2)
    (in-city  l2-2 c2)
    (LOCATION l2-3)
    (in-city  l2-3 c2)
    (LOCATION l2-4)
    (in-city  l2-4 c2)
    (LOCATION l2-5)
    (in-city  l2-5 c2)
    (AIRPORT l0-0)
    (AIRPORT l1-0)
    (AIRPORT l2-0)
    (OBJ p0)
    (OBJ p1)
    (OBJ p2)
    (OBJ p3)
    (OBJ p4)
    (OBJ p5)
    (OBJ p6)
    (OBJ p7)
    (OBJ p8)
    (OBJ p9)
    (OBJ p10)
    (OBJ p11)
    (OBJ p12)
    (OBJ p13)
    (at t0 l0-0)
    (at t1 l1-4)
    (at t2 l2-4)
    (at p0 l0-1)
    (at p1 l1-2)
    (at p2 l0-2)
    (at p3 l2-0)
    (at p4 l2-0)
    (at p5 l2-1)
    (at p6 l2-1)
    (at p7 l1-1)
    (at p8 l2-2)
    (at p9 l2-0)
    (at p10 l0-2)
    (at p11 l1-5)
    (at p12 l2-1)
    (at p13 l2-5)
    (at a0 l0-0)
    (at a1 l1-0)
    (at a2 l0-0)
    (at a3 l0-0)
    (at a4 l0-0)
    (at a5 l1-0)
    (at a6 l2-0)
    (at a7 l0-0)
)
(:goal
    (and
        (at p0 l1-1)
        (at p1 l0-4)
        (at p2 l0-2)
        (at p3 l2-3)
        (at p4 l1-1)
        (at p5 l0-1)
        (at p6 l2-3)
        (at p7 l0-4)
        (at p8 l0-5)
        (at p9 l2-2)
        (at p10 l1-5)
        (at p11 l1-0)
        (at p12 l1-5)
        (at p13 l2-1)
    )
)
)


