


(define (problem schedule-p7-s2-c3-w1-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
    P4
    P5
    P6
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
    YELLOW
    RED
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
(HAS-PAINT IMMERSION-PAINTER YELLOW)
(HAS-PAINT SPRAY-PAINTER YELLOW)
(HAS-PAINT IMMERSION-PAINTER RED)
(HAS-PAINT SPRAY-PAINTER RED)
(CAN-ORIENT DRILL-PRESS FRONT)
(CAN-ORIENT PUNCH FRONT)
(CAN-ORIENT DRILL-PRESS BACK)
(CAN-ORIENT PUNCH BACK)
(HAS-BIT DRILL-PRESS ONE)
(HAS-BIT PUNCH ONE)
(SHAPE P0 CIRCULAR)
(SURFACE-CONDITION P0 ROUGH)
(HAS-HOLE P0 ONE FRONT)
(TEMPERATURE P0 COLD)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 POLISHED)
(HAS-HOLE P1 ONE BACK)
(TEMPERATURE P1 COLD)
(SHAPE P2 CIRCULAR)
(SURFACE-CONDITION P2 ROUGH)
(HAS-HOLE P2 ONE FRONT)
(TEMPERATURE P2 COLD)
(SHAPE P3 CIRCULAR)
(SURFACE-CONDITION P3 ROUGH)
(TEMPERATURE P3 COLD)
(SHAPE P4 OBLONG)
(SURFACE-CONDITION P4 POLISHED)
(TEMPERATURE P4 COLD)
(SHAPE P5 CIRCULAR)
(SURFACE-CONDITION P5 ROUGH)
(HAS-HOLE P5 ONE FRONT)
(TEMPERATURE P5 COLD)
(SHAPE P6 CYLINDRICAL)
(SURFACE-CONDITION P6 ROUGH)
(HAS-HOLE P6 ONE FRONT)
(TEMPERATURE P6 COLD)
)
(:goal
(and
(SHAPE P0 CYLINDRICAL)
(SURFACE-CONDITION P0 POLISHED)
(PAINTED P0 BLUE)
(HAS-HOLE P0 ONE BACK)
(SHAPE P1 CYLINDRICAL)
(SHAPE P3 CYLINDRICAL)
(PAINTED P3 BLUE)
(HAS-HOLE P3 ONE FRONT)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 POLISHED)
(PAINTED P4 RED)
(SHAPE P5 CYLINDRICAL)
(SURFACE-CONDITION P5 POLISHED)
(HAS-HOLE P5 ONE BACK)
(SHAPE P6 CYLINDRICAL)
(SURFACE-CONDITION P6 POLISHED)
(PAINTED P6 RED)
(HAS-HOLE P6 ONE FRONT)
)
)
)


