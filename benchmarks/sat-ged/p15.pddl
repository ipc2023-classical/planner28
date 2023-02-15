;; original sequence 1: (1 16 26 17 20 2 21 13 6 9 15 28 34 10 7 35 18 14 32 27 36 4 12 23 25 31 5 22 30 29 19 11 24 3 33 8)
;; original sequence 2: (1 17 2 12 -19 -9 -21 -8 -7 33 -32 -11 -10 28 -4 -25 -24 -13 -34 -14 -26 -16 -36 -35 -29 -20 -18 3 23 15 30 27 22 6 31 5)
;; simplified sequence 1: (1 38 17 20 2 21 13 6 9 15 28 34 10 7 35 18 14 32 27 36 4 12 23 25 37 22 30 29 19 11 24 3 33 8)
;; simplified sequence 2: (1 17 2 12 -19 -9 -21 -8 -7 33 -32 -11 -10 28 -4 -25 -24 -13 -34 -14 -38 -36 -35 -29 -20 -18 3 23 15 30 27 22 6 37)
;; common subsequences: (((31 5) . 37) ((16 26) . 38))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((NORMAL COX1) (NORMAL SUB2) (NORMAL D) (NORMAL G) (NORMAL COX2) (NORMAL H) (NORMAL RRNL) (NORMAL NAD3) (NORMAL NAD5) (NORMAL A) (NORMAL P) (NORMAL V) (NORMAL NAD6) (NORMAL NAD4L) (NORMAL W) (NORMAL E) (NORMAL RRNS) (NORMAL S2) (NORMAL N) (NORMAL Y) (NORMAL NAD1) (NORMAL ATP6) (NORMAL K) (NORMAL L2) (NORMAL SUB1) (NORMAL I) (NORMAL R) (NORMAL Q) (NORMAL F) (NORMAL COB) (NORMAL L1) (NORMAL COX3) (NORMAL T) (NORMAL NAD4))
;; sequence 2 (names): ((NORMAL COX1) (NORMAL D) (NORMAL COX2) (NORMAL ATP6) (INVERTED F) (INVERTED NAD5) (INVERTED H) (INVERTED NAD4) (INVERTED NAD4L) (NORMAL T) (INVERTED S2) (INVERTED COB) (INVERTED NAD6) (NORMAL P) (INVERTED NAD1) (INVERTED L2) (INVERTED L1) (INVERTED RRNL) (INVERTED V) (INVERTED RRNS) (INVERTED SUB2) (INVERTED Y) (INVERTED W) (INVERTED Q) (INVERTED G) (INVERTED E) (NORMAL COX3) (NORMAL K) (NORMAL A) (NORMAL R) (NORMAL N) (NORMAL I) (NORMAL NAD3) (NORMAL SUB1))

(DEFINE (PROBLEM ASCARIS-SUUM-TO-KATHARINA-TUNICATA)
        (:DOMAIN GENOME-EDIT-DISTANCE)
        (:OBJECTS SUB2 SUB1 Y W V T S2 R Q P N L2 L1 K I H G F E D A
            RRNS RRNL ATP6 COB NAD6 NAD5 NAD4 NAD4L NAD3 NAD1 COX3 COX2
            COX1)
        (:INIT (NORMAL COX1) (NORMAL SUB2) (NORMAL D) (NORMAL G)
               (NORMAL COX2) (NORMAL H) (NORMAL RRNL) (NORMAL NAD3)
               (NORMAL NAD5) (NORMAL A) (NORMAL P) (NORMAL V)
               (NORMAL NAD6) (NORMAL NAD4L) (NORMAL W) (NORMAL E)
               (NORMAL RRNS) (NORMAL S2) (NORMAL N) (NORMAL Y)
               (NORMAL NAD1) (NORMAL ATP6) (NORMAL K) (NORMAL L2)
               (NORMAL SUB1) (NORMAL I) (NORMAL R) (NORMAL Q)
               (NORMAL F) (NORMAL COB) (NORMAL L1) (NORMAL COX3)
               (NORMAL T) (NORMAL NAD4) (PRESENT COX1) (PRESENT SUB2)
               (PRESENT D) (PRESENT G) (PRESENT COX2) (PRESENT H)
               (PRESENT RRNL) (PRESENT NAD3) (PRESENT NAD5) (PRESENT A)
               (PRESENT P) (PRESENT V) (PRESENT NAD6) (PRESENT NAD4L)
               (PRESENT W) (PRESENT E) (PRESENT RRNS) (PRESENT S2)
               (PRESENT N) (PRESENT Y) (PRESENT NAD1) (PRESENT ATP6)
               (PRESENT K) (PRESENT L2) (PRESENT SUB1) (PRESENT I)
               (PRESENT R) (PRESENT Q) (PRESENT F) (PRESENT COB)
               (PRESENT L1) (PRESENT COX3) (PRESENT T) (PRESENT NAD4)
               (CW NAD4 COX1) (CW T NAD4) (CW COX3 T) (CW L1 COX3)
               (CW COB L1) (CW F COB) (CW Q F) (CW R Q) (CW I R)
               (CW SUB1 I) (CW L2 SUB1) (CW K L2) (CW ATP6 K)
               (CW NAD1 ATP6) (CW Y NAD1) (CW N Y) (CW S2 N)
               (CW RRNS S2) (CW E RRNS) (CW W E) (CW NAD4L W)
               (CW NAD6 NAD4L) (CW V NAD6) (CW P V) (CW A P)
               (CW NAD5 A) (CW NAD3 NAD5) (CW RRNL NAD3) (CW H RRNL)
               (CW COX2 H) (CW G COX2) (CW D G) (CW SUB2 D)
               (CW COX1 SUB2) (IDLE) (= (TOTAL-COST) 0))
        (:GOAL (AND (NORMAL COX1) (NORMAL D) (NORMAL COX2)
                    (NORMAL ATP6) (INVERTED F) (INVERTED NAD5)
                    (INVERTED H) (INVERTED NAD4) (INVERTED NAD4L)
                    (NORMAL T) (INVERTED S2) (INVERTED COB)
                    (INVERTED NAD6) (NORMAL P) (INVERTED NAD1)
                    (INVERTED L2) (INVERTED L1) (INVERTED RRNL)
                    (INVERTED V) (INVERTED RRNS) (INVERTED SUB2)
                    (INVERTED Y) (INVERTED W) (INVERTED Q) (INVERTED G)
                    (INVERTED E) (NORMAL COX3) (NORMAL K) (NORMAL A)
                    (NORMAL R) (NORMAL N) (NORMAL I) (NORMAL NAD3)
                    (NORMAL SUB1) (CW SUB1 COX1) (CW NAD3 SUB1)
                    (CW I NAD3) (CW N I) (CW R N) (CW A R) (CW K A)
                    (CW COX3 K) (CW E COX3) (CW G E) (CW Q G) (CW W Q)
                    (CW Y W) (CW SUB2 Y) (CW RRNS SUB2) (CW V RRNS)
                    (CW RRNL V) (CW L1 RRNL) (CW L2 L1) (CW NAD1 L2)
                    (CW P NAD1) (CW NAD6 P) (CW COB NAD6) (CW S2 COB)
                    (CW T S2) (CW NAD4L T) (CW NAD4 NAD4L) (CW H NAD4)
                    (CW NAD5 H) (CW F NAD5) (CW ATP6 F) (CW COX2 ATP6)
                    (CW D COX2) (CW COX1 D)))
        (:METRIC MINIMIZE (TOTAL-COST)))