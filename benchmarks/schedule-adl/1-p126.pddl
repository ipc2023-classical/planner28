


(define (problem schedule-p9-s1-c2-w3-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
    P4
    P5
    P6
    P7
    P8
 - part
    CIRCULAR
 - ashape
    BLUE
    YELLOW
 - colour
    ONE
    TWO
    THREE
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
(CAN-ORIENT DRILL-PRESS FRONT)
(CAN-ORIENT PUNCH FRONT)
(CAN-ORIENT DRILL-PRESS BACK)
(CAN-ORIENT PUNCH BACK)
(HAS-BIT DRILL-PRESS ONE)
(HAS-BIT PUNCH ONE)
(HAS-BIT DRILL-PRESS TWO)
(HAS-BIT PUNCH TWO)
(HAS-BIT DRILL-PRESS THREE)
(HAS-BIT PUNCH THREE)
(SHAPE P0 CYLINDRICAL)
(SURFACE-CONDITION P0 POLISHED)
(HAS-HOLE P0 THREE FRONT)
(TEMPERATURE P0 COLD)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 POLISHED)
(TEMPERATURE P1 COLD)
(SHAPE P2 CYLINDRICAL)
(SURFACE-CONDITION P2 SMOOTH)
(HAS-HOLE P2 TWO BACK)
(TEMPERATURE P2 COLD)
(SHAPE P3 CIRCULAR)
(SURFACE-CONDITION P3 POLISHED)
(PAINTED P3 YELLOW)
(TEMPERATURE P3 COLD)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 ROUGH)
(PAINTED P4 YELLOW)
(HAS-HOLE P4 THREE BACK)
(TEMPERATURE P4 COLD)
(SHAPE P5 CIRCULAR)
(SURFACE-CONDITION P5 POLISHED)
(PAINTED P5 YELLOW)
(TEMPERATURE P5 COLD)
(SHAPE P6 CIRCULAR)
(SURFACE-CONDITION P6 ROUGH)
(PAINTED P6 YELLOW)
(TEMPERATURE P6 COLD)
(SHAPE P7 CYLINDRICAL)
(SURFACE-CONDITION P7 POLISHED)
(PAINTED P7 BLUE)
(HAS-HOLE P7 THREE FRONT)
(TEMPERATURE P7 COLD)
(SHAPE P8 CYLINDRICAL)
(SURFACE-CONDITION P8 SMOOTH)
(PAINTED P8 BLUE)
(TEMPERATURE P8 COLD)
)
(:goal
(and
(SURFACE-CONDITION P0 POLISHED)
(HAS-HOLE P0 THREE BACK)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 POLISHED)
(PAINTED P1 BLUE)
(SHAPE P2 CYLINDRICAL)
(SURFACE-CONDITION P2 POLISHED)
(HAS-HOLE P2 THREE BACK)
(SURFACE-CONDITION P3 POLISHED)
(PAINTED P3 YELLOW)
(HAS-HOLE P3 ONE BACK)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 SMOOTH)
(PAINTED P5 YELLOW)
(SURFACE-CONDITION P6 ROUGH)
(HAS-HOLE P6 ONE BACK)
(PAINTED P7 BLUE)
(SURFACE-CONDITION P8 POLISHED)
)
)
)

