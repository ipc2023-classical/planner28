


(define (problem schedule-p4-s2-c1-w1-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
 - colour
    ONE
 - width
    FRONT
    BACK
 - anorient
)
(:init
(HAS-PAINT IMMERSION-PAINTER BLUE)
(HAS-PAINT SPRAY-PAINTER BLUE)
(CAN-ORIENT DRILL-PRESS FRONT)
(CAN-ORIENT PUNCH FRONT)
(CAN-ORIENT DRILL-PRESS BACK)
(CAN-ORIENT PUNCH BACK)
(HAS-BIT DRILL-PRESS ONE)
(HAS-BIT PUNCH ONE)
(SHAPE P0 CIRCULAR)
(SURFACE-CONDITION P0 SMOOTH)
(TEMPERATURE P0 COLD)
(SHAPE P1 CIRCULAR)
(SURFACE-CONDITION P1 POLISHED)
(TEMPERATURE P1 COLD)
(SHAPE P2 CIRCULAR)
(SURFACE-CONDITION P2 POLISHED)
(PAINTED P2 BLUE)
(TEMPERATURE P2 COLD)
(SHAPE P3 CIRCULAR)
(SURFACE-CONDITION P3 SMOOTH)
(TEMPERATURE P3 COLD)
)
(:goal
(and
(SHAPE P0 CYLINDRICAL)
(SHAPE P1 CYLINDRICAL)
(HAS-HOLE P1 ONE FRONT)
(SHAPE P2 CYLINDRICAL)
(SURFACE-CONDITION P2 ROUGH)
(HAS-HOLE P2 ONE BACK)
(SURFACE-CONDITION P3 POLISHED)
(HAS-HOLE P3 ONE FRONT)
)
)
)


