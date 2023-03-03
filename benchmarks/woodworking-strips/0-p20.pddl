; woodworking task with 11 parts and 150% wood
; Machines:
;   1 highspeed-saw
;   1 glazer
;   1 grinder
;   1 immersion-varnisher
;   1 planer
;   1 saw
;   1 spray-varnisher

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    highspeed-saw0 - highspeed-saw
    glazer0 - glazer
    grinder0 - grinder
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    saw0 - saw
    spray-varnisher0 - spray-varnisher
    black green mauve blue red white - acolour
    pine cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 - part
    b0 b1 b2 b3 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (empty highspeed-saw0)
    (has-colour glazer0 white)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer0 natural)
    (has-colour glazer0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 blue)
    (unused p0)
    (goalsize p0 medium)
    (= (spray-varnish-cost p0) 10)
    (= (glaze-cost p0) 15)
    (= (grind-cost p0) 30)
    (= (plane-cost p0) 20)
    (available p1)
    (treatment p1 varnished)
    (surface-condition p1 verysmooth)
    (wood p1 oak)
    (colour p1 red)
    (goalsize p1 large)
    (= (spray-varnish-cost p1) 15)
    (= (glaze-cost p1) 20)
    (= (grind-cost p1) 45)
    (= (plane-cost p1) 30)
    (unused p2)
    (goalsize p2 small)
    (= (spray-varnish-cost p2) 5)
    (= (glaze-cost p2) 10)
    (= (grind-cost p2) 15)
    (= (plane-cost p2) 10)
    (unused p3)
    (goalsize p3 small)
    (= (spray-varnish-cost p3) 5)
    (= (glaze-cost p3) 10)
    (= (grind-cost p3) 15)
    (= (plane-cost p3) 10)
    (available p4)
    (treatment p4 colourfragments)
    (surface-condition p4 verysmooth)
    (wood p4 oak)
    (colour p4 natural)
    (goalsize p4 medium)
    (= (spray-varnish-cost p4) 10)
    (= (glaze-cost p4) 15)
    (= (grind-cost p4) 30)
    (= (plane-cost p4) 20)
    (available p5)
    (treatment p5 glazed)
    (surface-condition p5 rough)
    (wood p5 pine)
    (colour p5 natural)
    (goalsize p5 large)
    (= (spray-varnish-cost p5) 15)
    (= (glaze-cost p5) 20)
    (= (grind-cost p5) 45)
    (= (plane-cost p5) 30)
    (available p6)
    (treatment p6 glazed)
    (surface-condition p6 rough)
    (wood p6 oak)
    (colour p6 red)
    (goalsize p6 medium)
    (= (spray-varnish-cost p6) 10)
    (= (glaze-cost p6) 15)
    (= (grind-cost p6) 30)
    (= (plane-cost p6) 20)
    (unused p7)
    (goalsize p7 small)
    (= (spray-varnish-cost p7) 5)
    (= (glaze-cost p7) 10)
    (= (grind-cost p7) 15)
    (= (plane-cost p7) 10)
    (unused p8)
    (goalsize p8 large)
    (= (spray-varnish-cost p8) 15)
    (= (glaze-cost p8) 20)
    (= (grind-cost p8) 45)
    (= (plane-cost p8) 30)
    (unused p9)
    (goalsize p9 large)
    (= (spray-varnish-cost p9) 15)
    (= (glaze-cost p9) 20)
    (= (grind-cost p9) 45)
    (= (plane-cost p9) 30)
    (unused p10)
    (goalsize p10 medium)
    (= (spray-varnish-cost p10) 10)
    (= (glaze-cost p10) 15)
    (= (grind-cost p10) 30)
    (= (plane-cost p10) 20)
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s1)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 pine)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s1)
    (wood b3 pine)
    (surface-condition b3 rough)
    (available b3)
  )
  (:goal
    (and
    (available p0)
    (wood p0 cherry)
    (treatment p0 glazed)
    (colour p0 mauve)
    (surface-condition p0 smooth)
    (available p1)
    (wood p1 oak)
    (surface-condition p1 smooth)
    (available p2)
    (wood p2 pine)
    (treatment p2 glazed)
    (colour p2 red)
    (available p3)
    (wood p3 cherry)
    (colour p3 natural)
    (available p4)
    (treatment p4 glazed)
    (surface-condition p4 verysmooth)
    (available p5)
    (treatment p5 glazed)
    (colour p5 black)
    (surface-condition p5 verysmooth)
    (available p6)
    (wood p6 oak)
    (treatment p6 varnished)
    (colour p6 black)
    (surface-condition p6 verysmooth)
    (available p7)
    (wood p7 cherry)
    (treatment p7 glazed)
    (colour p7 white)
    (surface-condition p7 verysmooth)
    (available p8)
    (treatment p8 glazed)
    (colour p8 white)
    (available p9)
    (treatment p9 varnished)
    (surface-condition p9 smooth)
    (available p10)
    (colour p10 blue)
    (surface-condition p10 smooth)
    )
  )
  (:metric minimize (total-cost))
)