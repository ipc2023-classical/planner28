(define (problem MIT_P16) (:domain CHEMICAL)
(:objects
	C1 - CARBON
	C10 - CARBON
	C11 - CARBON
	C12 - CARBON
	C13 - CARBON
	C2 - CARBON
	C3 - CARBON
	C4 - CARBON
	C5 - CARBON
	C6 - CARBON
	C7 - CARBON
	C8 - CARBON
	C9 - CARBON
	H1 - HYDROGEN
	H12 - HYDROGEN
	H19 - HYDROGEN
	H2 - HYDROGEN
	H20 - HYDROGEN
	H21 - HYDROGEN
	H22 - HYDROGEN
	H23 - HYDROGEN
	H24 - HYDROGEN
	H3 - HYDROGEN
	H4 - HYDROGEN
	H5 - HYDROGEN
	H51 - HYDROGEN
	H6 - HYDROGEN
	O2 - OXYGEN
	O3 - OXYGEN
	O4 - OXYGEN
	O5 - OXYGEN
	O50 - OXYGEN
	O6 - OXYGEN
)
(:init
	(BOND C1 H1)
	(BOND H1 C1)
	(BOND C1 H2)
	(BOND H2 C1)
	(BOND C1 H3)
	(BOND H3 C1)
	(BOND C1 C2)
	(BOND C2 C1)
	(BOND C10 C9)
	(BOND C9 C10)
	(BOND C11 H20)
	(BOND H20 C11)
	(BOND C11 H21)
	(BOND H21 C11)
	(BOND C11 C2)
	(BOND C2 C11)
	(BOND C11 C12)
	(BOND C12 C11)
	(BOND C12 C13)
	(BOND C13 C12)
	(DOUBLEBOND C12 O6)
	(DOUBLEBOND O6 C12)
	(BOND C13 H22)
	(BOND H22 C13)
	(BOND C13 H23)
	(BOND H23 C13)
	(BOND C13 H24)
	(BOND H24 C13)
	(BOND C2 C7)
	(BOND C7 C2)
	(BOND C2 C3)
	(BOND C3 C2)
	(BOND C3 H4)
	(BOND H4 C3)
	(BOND C3 H5)
	(BOND H5 C3)
	(BOND C3 H6)
	(BOND H6 C3)
	(BOND C4 C5)
	(BOND C5 C4)
	(BOND C5 O2)
	(BOND O2 C5)
	(BOND C6 O2)
	(BOND O2 C6)
	(BOND C6 C7)
	(BOND C7 C6)
	(DOUBLEBOND C6 O3)
	(DOUBLEBOND O3 C6)
	(BOND C7 H19)
	(BOND H19 C7)
	(BOND C7 C8)
	(BOND C8 C7)
	(BOND C8 O5)
	(BOND O5 C8)
	(DOUBLEBOND C8 O4)
	(DOUBLEBOND O4 C8)
	(BOND C9 O5)
	(BOND O5 C9)
	(BOND H12 O50)
	(BOND O50 H12)
	(BOND H51 O50)
	(BOND O50 H51)
	(procnone)
(= (total-cost) 0)
)
(:goal (and (procnone) (DOUBLEBOND O4 C8)(DOUBLEBOND C8 O4)(BOND H19 C7)(BOND C7 H19)(BOND H51 C7)(BOND C7 H51)(BOND C8 C7)(BOND C7 C8)(BOND H6 C3)(BOND C3 H6)(BOND H5 C3)(BOND C3 H5)(BOND H4 C3)(BOND C3 H4)(BOND C3 C2)(BOND C2 C3)(BOND C7 C2)(BOND C2 C7)(BOND H24 C13)(BOND C13 H24)(BOND H23 C13)(BOND C13 H23)(BOND C8 C13)(BOND C13 C8)(DOUBLEBOND O6 C12)(DOUBLEBOND C12 O6)(BOND C13 C12)(BOND C12 C13)(BOND H21 C11)(BOND C11 H21)(BOND H20 C11)(BOND C11 H20)(BOND C12 C11)(BOND C11 C12)(BOND C2 C11)(BOND C11 C2)(BOND H3 C1)(BOND C1 H3)(BOND H2 C1)(BOND C1 H2)(BOND H1 C1)(BOND C1 H1)(BOND C2 C1)(BOND C1 C2)))
(:metric minimize (total-cost))

)