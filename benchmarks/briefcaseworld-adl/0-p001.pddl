


(define (problem briefcase-o1)
(:domain briefcase)
(:objects l0 l1 - location
          o0 - portable)
(:init
(at o0 l1)
(is-at l0)
)
(:goal
(and
(at o0 l1)
(is-at l0)
)
)
)


