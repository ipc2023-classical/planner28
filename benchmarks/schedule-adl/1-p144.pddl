


(define (problem schedule-p9-s2-c4-w3-o2)
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
    OBLONG
 - ashape
    BLUE
    YELLOW
    RED
    BLACK
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
(HAS-PAINT IMMERSION-PAINTER RED)
(HAS-PAINT SPRAY-PAINTER RED)
(HAS-PAINT IMMERSION-PAINTER BLACK)
(HAS-PAINT SPRAY-PAINTER BLACK)
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
(SHAPE P0 CIRCULAR)
(SURFACE-CONDITION P0 SMOOTH)
(HAS-HOLE P0 THREE BACK)
(TEMPERATURE P0 COLD)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 SMOOTH)
(PAINTED P1 BLUE)
(HAS-HOLE P1 ONE BACK)
(TEMPERATURE P1 COLD)
(SHAPE P2 CIRCULAR)
(SURFACE-CONDITION P2 POLISHED)
(PAINTED P2 BLACK)
(HAS-HOLE P2 ONE FRONT)
(TEMPERATURE P2 COLD)
(SHAPE P3 CYLINDRICAL)
(SURFACE-CONDITION P3 ROUGH)
(HAS-HOLE P3 THREE BACK)
(TEMPERATURE P3 COLD)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 SMOOTH)
(PAINTED P4 RED)
(TEMPERATURE P4 COLD)
(SHAPE P5 CIRCULAR)
(SURFACE-CONDITION P5 SMOOTH)
(TEMPERATURE P5 COLD)
(SHAPE P6 OBLONG)
(SURFACE-CONDITION P6 ROUGH)
(HAS-HOLE P6 ONE BACK)
(TEMPERATURE P6 COLD)
(SHAPE P7 OBLONG)
(SURFACE-CONDITION P7 SMOOTH)
(HAS-HOLE P7 THREE BACK)
(TEMPERATURE P7 COLD)
(SHAPE P8 CIRCULAR)
(SURFACE-CONDITION P8 SMOOTH)
(PAINTED P8 BLUE)
(HAS-HOLE P8 TWO FRONT)
(TEMPERATURE P8 COLD)
)
(:goal
(and
(SHAPE P0 CYLINDRICAL)
(SURFACE-CONDITION P0 POLISHED)
(HAS-HOLE P0 THREE FRONT)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 ROUGH)
(HAS-HOLE P2 ONE FRONT)
(PAINTED P3 YELLOW)
(HAS-HOLE P3 THREE BACK)
(SHAPE P4 CYLINDRICAL)
(HAS-HOLE P4 TWO BACK)
(SHAPE P5 CYLINDRICAL)
(SURFACE-CONDITION P5 ROUGH)
(SURFACE-CONDITION P6 POLISHED)
(HAS-HOLE P6 ONE FRONT)
(PAINTED P7 YELLOW)
(SHAPE P8 CYLINDRICAL)
(PAINTED P8 BLACK)
)
)
)


