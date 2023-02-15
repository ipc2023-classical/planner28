;; original sequence 1: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37 28 29 30 31 32 33 34 35 40 26 27 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 37 38 39 40 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (107 109 108 40 110 106)
;; simplified sequence 2: (107 -109 40 -108 -110 106)
;; common subsequences: (((-44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97) . 106) ((1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49) . 107) ((28 29 30 31 32 33 34 35) . 108) ((-39 -38 -37) . 109) ((26 27) . 110))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((NORMAL SUB2) (NORMAL SUB4) (NORMAL SUB3) (NORMAL G40) (NORMAL SUB5) (NORMAL SUB1))
;; sequence 2 (names): ((NORMAL SUB2) (INVERTED SUB4) (NORMAL G40) (INVERTED SUB3) (INVERTED SUB5) (NORMAL SUB1))

(DEFINE (PROBLEM ADENOPHORA-TO-TRACHELIUM)
        (:DOMAIN GENOME-EDIT-DISTANCE)
        (:OBJECTS SUB1 - GENE SUB5 - GENE SUB3 - GENE G40 - GENE SUB4 -
            GENE SUB2 - GENE P5 - POS P4 - POS P3 - POS P2 - POS P1 -
            POS P0 - POS)
        (:INIT (NORMAL SUB1) (AT SUB1 P5) (NORMAL SUB5) (AT SUB5 P4)
               (NORMAL G40) (AT G40 P3) (NORMAL SUB3) (AT SUB3 P2)
               (NORMAL SUB4) (AT SUB4 P1) (NORMAL SUB2) (AT SUB2 P0)
               (TRANSVERT-SHIFT P5 P5 P0 P5 P0)
               (TRANSVERT-SHIFT P5 P5 P0 P0 P5)
               (TRANSVERT-SHIFT P5 P5 P1 P5 P1)
               (TRANSVERT-SHIFT P5 P5 P1 P0 P5)
               (TRANSVERT-SHIFT P5 P5 P1 P1 P0)
               (TRANSVERT-SHIFT P5 P5 P2 P5 P2)
               (TRANSVERT-SHIFT P5 P5 P2 P0 P5)
               (TRANSVERT-SHIFT P5 P5 P2 P1 P0)
               (TRANSVERT-SHIFT P5 P5 P2 P2 P1)
               (TRANSVERT-SHIFT P5 P5 P3 P5 P3)
               (TRANSVERT-SHIFT P5 P5 P3 P0 P5)
               (TRANSVERT-SHIFT P5 P5 P3 P1 P0)
               (TRANSVERT-SHIFT P5 P5 P3 P2 P1)
               (TRANSVERT-SHIFT P5 P5 P3 P3 P2)
               (TRANSVERT-SHIFT P5 P0 P1 P5 P1)
               (TRANSVERT-SHIFT P5 P0 P1 P1 P5)
               (TRANSVERT-SHIFT P5 P0 P2 P0 P1)
               (TRANSVERT-SHIFT P5 P0 P2 P5 P2)
               (TRANSVERT-SHIFT P5 P0 P2 P1 P5)
               (TRANSVERT-SHIFT P5 P0 P2 P2 P0)
               (TRANSVERT-SHIFT P5 P0 P3 P0 P2)
               (TRANSVERT-SHIFT P5 P0 P3 P5 P3)
               (TRANSVERT-SHIFT P5 P0 P3 P1 P5)
               (TRANSVERT-SHIFT P5 P0 P3 P2 P0)
               (TRANSVERT-SHIFT P5 P0 P3 P3 P1)
               (TRANSVERT-SHIFT P5 P1 P2 P1 P0)
               (TRANSVERT-SHIFT P5 P1 P2 P0 P1)
               (TRANSVERT-SHIFT P5 P1 P2 P5 P2)
               (TRANSVERT-SHIFT P5 P1 P2 P2 P5)
               (TRANSVERT-SHIFT P5 P1 P3 P0 P2)
               (TRANSVERT-SHIFT P5 P1 P3 P5 P3)
               (TRANSVERT-SHIFT P5 P1 P3 P2 P5)
               (TRANSVERT-SHIFT P5 P1 P3 P3 P0)
               (TRANSVERT-SHIFT P5 P2 P3 P2 P0)
               (TRANSVERT-SHIFT P5 P2 P3 P0 P2)
               (TRANSVERT-SHIFT P5 P2 P3 P5 P3)
               (TRANSVERT-SHIFT P5 P2 P3 P3 P5)
               (TRANSVERT-SHIFT P4 P4 P5 P4 P5)
               (TRANSVERT-SHIFT P4 P4 P5 P5 P4)
               (TRANSVERT-SHIFT P4 P4 P0 P4 P0)
               (TRANSVERT-SHIFT P4 P4 P0 P5 P4)
               (TRANSVERT-SHIFT P4 P4 P0 P0 P5)
               (TRANSVERT-SHIFT P4 P4 P1 P4 P1)
               (TRANSVERT-SHIFT P4 P4 P1 P5 P4)
               (TRANSVERT-SHIFT P4 P4 P1 P0 P5)
               (TRANSVERT-SHIFT P4 P4 P1 P1 P0)
               (TRANSVERT-SHIFT P4 P4 P2 P4 P2)
               (TRANSVERT-SHIFT P4 P4 P2 P5 P4)
               (TRANSVERT-SHIFT P4 P4 P2 P0 P5)
               (TRANSVERT-SHIFT P4 P4 P2 P1 P0)
               (TRANSVERT-SHIFT P4 P4 P2 P2 P1)
               (TRANSVERT-SHIFT P4 P5 P0 P4 P0)
               (TRANSVERT-SHIFT P4 P5 P0 P0 P4)
               (TRANSVERT-SHIFT P4 P5 P1 P5 P0)
               (TRANSVERT-SHIFT P4 P5 P1 P4 P1)
               (TRANSVERT-SHIFT P4 P5 P1 P0 P4)
               (TRANSVERT-SHIFT P4 P5 P1 P1 P5)
               (TRANSVERT-SHIFT P4 P5 P2 P5 P1)
               (TRANSVERT-SHIFT P4 P5 P2 P4 P2)
               (TRANSVERT-SHIFT P4 P5 P2 P0 P4)
               (TRANSVERT-SHIFT P4 P5 P2 P1 P5)
               (TRANSVERT-SHIFT P4 P5 P2 P2 P0)
               (TRANSVERT-SHIFT P4 P0 P1 P0 P5)
               (TRANSVERT-SHIFT P4 P0 P1 P5 P0)
               (TRANSVERT-SHIFT P4 P0 P1 P4 P1)
               (TRANSVERT-SHIFT P4 P0 P1 P1 P4)
               (TRANSVERT-SHIFT P4 P0 P2 P5 P1)
               (TRANSVERT-SHIFT P4 P0 P2 P4 P2)
               (TRANSVERT-SHIFT P4 P0 P2 P1 P4)
               (TRANSVERT-SHIFT P4 P0 P2 P2 P5)
               (TRANSVERT-SHIFT P4 P1 P2 P1 P5)
               (TRANSVERT-SHIFT P4 P1 P2 P5 P1)
               (TRANSVERT-SHIFT P4 P1 P2 P4 P2)
               (TRANSVERT-SHIFT P4 P1 P2 P2 P4)
               (TRANSVERT-SHIFT P3 P3 P4 P3 P4)
               (TRANSVERT-SHIFT P3 P3 P4 P4 P3)
               (TRANSVERT-SHIFT P3 P3 P5 P3 P5)
               (TRANSVERT-SHIFT P3 P3 P5 P4 P3)
               (TRANSVERT-SHIFT P3 P3 P5 P5 P4)
               (TRANSVERT-SHIFT P3 P3 P0 P3 P0)
               (TRANSVERT-SHIFT P3 P3 P0 P4 P3)
               (TRANSVERT-SHIFT P3 P3 P0 P5 P4)
               (TRANSVERT-SHIFT P3 P3 P0 P0 P5)
               (TRANSVERT-SHIFT P3 P3 P1 P3 P1)
               (TRANSVERT-SHIFT P3 P3 P1 P4 P3)
               (TRANSVERT-SHIFT P3 P3 P1 P5 P4)
               (TRANSVERT-SHIFT P3 P3 P1 P0 P5)
               (TRANSVERT-SHIFT P3 P3 P1 P1 P0)
               (TRANSVERT-SHIFT P3 P4 P5 P3 P5)
               (TRANSVERT-SHIFT P3 P4 P5 P5 P3)
               (TRANSVERT-SHIFT P3 P4 P0 P4 P5)
               (TRANSVERT-SHIFT P3 P4 P0 P3 P0)
               (TRANSVERT-SHIFT P3 P4 P0 P5 P3)
               (TRANSVERT-SHIFT P3 P4 P0 P0 P4)
               (TRANSVERT-SHIFT P3 P4 P1 P4 P0)
               (TRANSVERT-SHIFT P3 P4 P1 P3 P1)
               (TRANSVERT-SHIFT P3 P4 P1 P5 P3)
               (TRANSVERT-SHIFT P3 P4 P1 P0 P4)
               (TRANSVERT-SHIFT P3 P4 P1 P1 P5)
               (TRANSVERT-SHIFT P3 P5 P0 P5 P4)
               (TRANSVERT-SHIFT P3 P5 P0 P4 P5)
               (TRANSVERT-SHIFT P3 P5 P0 P3 P0)
               (TRANSVERT-SHIFT P3 P5 P0 P0 P3)
               (TRANSVERT-SHIFT P3 P5 P1 P4 P0)
               (TRANSVERT-SHIFT P3 P5 P1 P3 P1)
               (TRANSVERT-SHIFT P3 P5 P1 P0 P3)
               (TRANSVERT-SHIFT P3 P5 P1 P1 P4)
               (TRANSVERT-SHIFT P3 P0 P1 P0 P4)
               (TRANSVERT-SHIFT P3 P0 P1 P4 P0)
               (TRANSVERT-SHIFT P3 P0 P1 P3 P1)
               (TRANSVERT-SHIFT P3 P0 P1 P1 P3)
               (TRANSVERT-SHIFT P2 P2 P3 P2 P3)
               (TRANSVERT-SHIFT P2 P2 P3 P3 P2)
               (TRANSVERT-SHIFT P2 P2 P4 P2 P4)
               (TRANSVERT-SHIFT P2 P2 P4 P3 P2)
               (TRANSVERT-SHIFT P2 P2 P4 P4 P3)
               (TRANSVERT-SHIFT P2 P2 P5 P2 P5)
               (TRANSVERT-SHIFT P2 P2 P5 P3 P2)
               (TRANSVERT-SHIFT P2 P2 P5 P4 P3)
               (TRANSVERT-SHIFT P2 P2 P5 P5 P4)
               (TRANSVERT-SHIFT P2 P2 P0 P2 P0)
               (TRANSVERT-SHIFT P2 P2 P0 P3 P2)
               (TRANSVERT-SHIFT P2 P2 P0 P4 P3)
               (TRANSVERT-SHIFT P2 P2 P0 P5 P4)
               (TRANSVERT-SHIFT P2 P2 P0 P0 P5)
               (TRANSVERT-SHIFT P2 P3 P4 P2 P4)
               (TRANSVERT-SHIFT P2 P3 P4 P4 P2)
               (TRANSVERT-SHIFT P2 P3 P5 P3 P4)
               (TRANSVERT-SHIFT P2 P3 P5 P2 P5)
               (TRANSVERT-SHIFT P2 P3 P5 P4 P2)
               (TRANSVERT-SHIFT P2 P3 P5 P5 P3)
               (TRANSVERT-SHIFT P2 P3 P0 P3 P5)
               (TRANSVERT-SHIFT P2 P3 P0 P2 P0)
               (TRANSVERT-SHIFT P2 P3 P0 P4 P2)
               (TRANSVERT-SHIFT P2 P3 P0 P5 P3)
               (TRANSVERT-SHIFT P2 P3 P0 P0 P4)
               (TRANSVERT-SHIFT P2 P4 P5 P4 P3)
               (TRANSVERT-SHIFT P2 P4 P5 P3 P4)
               (TRANSVERT-SHIFT P2 P4 P5 P2 P5)
               (TRANSVERT-SHIFT P2 P4 P5 P5 P2)
               (TRANSVERT-SHIFT P2 P4 P0 P3 P5)
               (TRANSVERT-SHIFT P2 P4 P0 P2 P0)
               (TRANSVERT-SHIFT P2 P4 P0 P5 P2)
               (TRANSVERT-SHIFT P2 P4 P0 P0 P3)
               (TRANSVERT-SHIFT P2 P5 P0 P5 P3)
               (TRANSVERT-SHIFT P2 P5 P0 P3 P5)
               (TRANSVERT-SHIFT P2 P5 P0 P2 P0)
               (TRANSVERT-SHIFT P2 P5 P0 P0 P2)
               (TRANSVERT-SHIFT P1 P1 P2 P1 P2)
               (TRANSVERT-SHIFT P1 P1 P2 P2 P1)
               (TRANSVERT-SHIFT P1 P1 P3 P1 P3)
               (TRANSVERT-SHIFT P1 P1 P3 P2 P1)
               (TRANSVERT-SHIFT P1 P1 P3 P3 P2)
               (TRANSVERT-SHIFT P1 P1 P4 P1 P4)
               (TRANSVERT-SHIFT P1 P1 P4 P2 P1)
               (TRANSVERT-SHIFT P1 P1 P4 P3 P2)
               (TRANSVERT-SHIFT P1 P1 P4 P4 P3)
               (TRANSVERT-SHIFT P1 P1 P5 P1 P5)
               (TRANSVERT-SHIFT P1 P1 P5 P2 P1)
               (TRANSVERT-SHIFT P1 P1 P5 P3 P2)
               (TRANSVERT-SHIFT P1 P1 P5 P4 P3)
               (TRANSVERT-SHIFT P1 P1 P5 P5 P4)
               (TRANSVERT-SHIFT P1 P2 P3 P1 P3)
               (TRANSVERT-SHIFT P1 P2 P3 P3 P1)
               (TRANSVERT-SHIFT P1 P2 P4 P2 P3)
               (TRANSVERT-SHIFT P1 P2 P4 P1 P4)
               (TRANSVERT-SHIFT P1 P2 P4 P3 P1)
               (TRANSVERT-SHIFT P1 P2 P4 P4 P2)
               (TRANSVERT-SHIFT P1 P2 P5 P2 P4)
               (TRANSVERT-SHIFT P1 P2 P5 P1 P5)
               (TRANSVERT-SHIFT P1 P2 P5 P3 P1)
               (TRANSVERT-SHIFT P1 P2 P5 P4 P2)
               (TRANSVERT-SHIFT P1 P2 P5 P5 P3)
               (TRANSVERT-SHIFT P1 P3 P4 P3 P2)
               (TRANSVERT-SHIFT P1 P3 P4 P2 P3)
               (TRANSVERT-SHIFT P1 P3 P4 P1 P4)
               (TRANSVERT-SHIFT P1 P3 P4 P4 P1)
               (TRANSVERT-SHIFT P1 P3 P5 P2 P4)
               (TRANSVERT-SHIFT P1 P3 P5 P1 P5)
               (TRANSVERT-SHIFT P1 P3 P5 P4 P1)
               (TRANSVERT-SHIFT P1 P3 P5 P5 P2)
               (TRANSVERT-SHIFT P1 P4 P5 P4 P2)
               (TRANSVERT-SHIFT P1 P4 P5 P2 P4)
               (TRANSVERT-SHIFT P1 P4 P5 P1 P5)
               (TRANSVERT-SHIFT P1 P4 P5 P5 P1)
               (TRANSVERT-SHIFT P0 P0 P1 P0 P1)
               (TRANSVERT-SHIFT P0 P0 P1 P1 P0)
               (TRANSVERT-SHIFT P0 P0 P2 P0 P2)
               (TRANSVERT-SHIFT P0 P0 P2 P1 P0)
               (TRANSVERT-SHIFT P0 P0 P2 P2 P1)
               (TRANSVERT-SHIFT P0 P0 P3 P0 P3)
               (TRANSVERT-SHIFT P0 P0 P3 P1 P0)
               (TRANSVERT-SHIFT P0 P0 P3 P2 P1)
               (TRANSVERT-SHIFT P0 P0 P3 P3 P2)
               (TRANSVERT-SHIFT P0 P0 P4 P0 P4)
               (TRANSVERT-SHIFT P0 P0 P4 P1 P0)
               (TRANSVERT-SHIFT P0 P0 P4 P2 P1)
               (TRANSVERT-SHIFT P0 P0 P4 P3 P2)
               (TRANSVERT-SHIFT P0 P0 P4 P4 P3)
               (TRANSVERT-SHIFT P0 P1 P2 P0 P2)
               (TRANSVERT-SHIFT P0 P1 P2 P2 P0)
               (TRANSVERT-SHIFT P0 P1 P3 P1 P2)
               (TRANSVERT-SHIFT P0 P1 P3 P0 P3)
               (TRANSVERT-SHIFT P0 P1 P3 P2 P0)
               (TRANSVERT-SHIFT P0 P1 P3 P3 P1)
               (TRANSVERT-SHIFT P0 P1 P4 P1 P3)
               (TRANSVERT-SHIFT P0 P1 P4 P0 P4)
               (TRANSVERT-SHIFT P0 P1 P4 P2 P0)
               (TRANSVERT-SHIFT P0 P1 P4 P3 P1)
               (TRANSVERT-SHIFT P0 P1 P4 P4 P2)
               (TRANSVERT-SHIFT P0 P2 P3 P2 P1)
               (TRANSVERT-SHIFT P0 P2 P3 P1 P2)
               (TRANSVERT-SHIFT P0 P2 P3 P0 P3)
               (TRANSVERT-SHIFT P0 P2 P3 P3 P0)
               (TRANSVERT-SHIFT P0 P2 P4 P1 P3)
               (TRANSVERT-SHIFT P0 P2 P4 P0 P4)
               (TRANSVERT-SHIFT P0 P2 P4 P3 P0)
               (TRANSVERT-SHIFT P0 P2 P4 P4 P1)
               (TRANSVERT-SHIFT P0 P3 P4 P3 P1)
               (TRANSVERT-SHIFT P0 P3 P4 P1 P3)
               (TRANSVERT-SHIFT P0 P3 P4 P0 P4)
               (TRANSVERT-SHIFT P0 P3 P4 P4 P0)
               (INVERT-SHIFT P5 P0 P5 P0) (INVERT-SHIFT P5 P0 P0 P5)
               (INVERT-SHIFT P5 P1 P5 P1) (INVERT-SHIFT P5 P1 P1 P5)
               (INVERT-SHIFT P5 P2 P5 P2) (INVERT-SHIFT P5 P2 P2 P5)
               (INVERT-SHIFT P5 P2 P0 P1) (INVERT-SHIFT P5 P2 P1 P0)
               (INVERT-SHIFT P5 P3 P5 P3) (INVERT-SHIFT P5 P3 P3 P5)
               (INVERT-SHIFT P5 P3 P0 P2) (INVERT-SHIFT P5 P3 P2 P0)
               (INVERT-SHIFT P5 P4 P5 P4) (INVERT-SHIFT P5 P4 P4 P5)
               (INVERT-SHIFT P5 P4 P0 P3) (INVERT-SHIFT P5 P4 P3 P0)
               (INVERT-SHIFT P5 P4 P1 P2) (INVERT-SHIFT P5 P4 P2 P1)
               (INVERT-SHIFT P4 P5 P4 P5) (INVERT-SHIFT P4 P5 P5 P4)
               (INVERT-SHIFT P4 P0 P4 P0) (INVERT-SHIFT P4 P0 P0 P4)
               (INVERT-SHIFT P4 P1 P4 P1) (INVERT-SHIFT P4 P1 P1 P4)
               (INVERT-SHIFT P4 P1 P5 P0) (INVERT-SHIFT P4 P1 P0 P5)
               (INVERT-SHIFT P4 P2 P4 P2) (INVERT-SHIFT P4 P2 P2 P4)
               (INVERT-SHIFT P4 P2 P5 P1) (INVERT-SHIFT P4 P2 P1 P5)
               (INVERT-SHIFT P4 P3 P4 P3) (INVERT-SHIFT P4 P3 P3 P4)
               (INVERT-SHIFT P4 P3 P5 P2) (INVERT-SHIFT P4 P3 P2 P5)
               (INVERT-SHIFT P4 P3 P0 P1) (INVERT-SHIFT P4 P3 P1 P0)
               (INVERT-SHIFT P3 P4 P3 P4) (INVERT-SHIFT P3 P4 P4 P3)
               (INVERT-SHIFT P3 P5 P3 P5) (INVERT-SHIFT P3 P5 P5 P3)
               (INVERT-SHIFT P3 P0 P3 P0) (INVERT-SHIFT P3 P0 P0 P3)
               (INVERT-SHIFT P3 P0 P4 P5) (INVERT-SHIFT P3 P0 P5 P4)
               (INVERT-SHIFT P3 P1 P3 P1) (INVERT-SHIFT P3 P1 P1 P3)
               (INVERT-SHIFT P3 P1 P4 P0) (INVERT-SHIFT P3 P1 P0 P4)
               (INVERT-SHIFT P3 P2 P3 P2) (INVERT-SHIFT P3 P2 P2 P3)
               (INVERT-SHIFT P3 P2 P4 P1) (INVERT-SHIFT P3 P2 P1 P4)
               (INVERT-SHIFT P3 P2 P5 P0) (INVERT-SHIFT P3 P2 P0 P5)
               (INVERT-SHIFT P2 P3 P2 P3) (INVERT-SHIFT P2 P3 P3 P2)
               (INVERT-SHIFT P2 P4 P2 P4) (INVERT-SHIFT P2 P4 P4 P2)
               (INVERT-SHIFT P2 P5 P2 P5) (INVERT-SHIFT P2 P5 P5 P2)
               (INVERT-SHIFT P2 P5 P3 P4) (INVERT-SHIFT P2 P5 P4 P3)
               (INVERT-SHIFT P2 P0 P2 P0) (INVERT-SHIFT P2 P0 P0 P2)
               (INVERT-SHIFT P2 P0 P3 P5) (INVERT-SHIFT P2 P0 P5 P3)
               (INVERT-SHIFT P2 P1 P2 P1) (INVERT-SHIFT P2 P1 P1 P2)
               (INVERT-SHIFT P2 P1 P3 P0) (INVERT-SHIFT P2 P1 P0 P3)
               (INVERT-SHIFT P2 P1 P4 P5) (INVERT-SHIFT P2 P1 P5 P4)
               (INVERT-SHIFT P1 P2 P1 P2) (INVERT-SHIFT P1 P2 P2 P1)
               (INVERT-SHIFT P1 P3 P1 P3) (INVERT-SHIFT P1 P3 P3 P1)
               (INVERT-SHIFT P1 P4 P1 P4) (INVERT-SHIFT P1 P4 P4 P1)
               (INVERT-SHIFT P1 P4 P2 P3) (INVERT-SHIFT P1 P4 P3 P2)
               (INVERT-SHIFT P1 P5 P1 P5) (INVERT-SHIFT P1 P5 P5 P1)
               (INVERT-SHIFT P1 P5 P2 P4) (INVERT-SHIFT P1 P5 P4 P2)
               (INVERT-SHIFT P1 P0 P1 P0) (INVERT-SHIFT P1 P0 P0 P1)
               (INVERT-SHIFT P1 P0 P2 P5) (INVERT-SHIFT P1 P0 P5 P2)
               (INVERT-SHIFT P1 P0 P3 P4) (INVERT-SHIFT P1 P0 P4 P3)
               (INVERT-SHIFT P0 P1 P0 P1) (INVERT-SHIFT P0 P1 P1 P0)
               (INVERT-SHIFT P0 P2 P0 P2) (INVERT-SHIFT P0 P2 P2 P0)
               (INVERT-SHIFT P0 P3 P0 P3) (INVERT-SHIFT P0 P3 P3 P0)
               (INVERT-SHIFT P0 P3 P1 P2) (INVERT-SHIFT P0 P3 P2 P1)
               (INVERT-SHIFT P0 P4 P0 P4) (INVERT-SHIFT P0 P4 P4 P0)
               (INVERT-SHIFT P0 P4 P1 P3) (INVERT-SHIFT P0 P4 P3 P1)
               (INVERT-SHIFT P0 P5 P0 P5) (INVERT-SHIFT P0 P5 P5 P0)
               (INVERT-SHIFT P0 P5 P1 P4) (INVERT-SHIFT P0 P5 P4 P1)
               (INVERT-SHIFT P0 P5 P2 P3) (INVERT-SHIFT P0 P5 P3 P2)
               (TRANSPOSE-SHIFT P5 P5 P0 P5 P0)
               (TRANSPOSE-SHIFT P5 P5 P0 P0 P5)
               (TRANSPOSE-SHIFT P5 P5 P1 P5 P1)
               (TRANSPOSE-SHIFT P5 P5 P1 P0 P5)
               (TRANSPOSE-SHIFT P5 P5 P1 P1 P0)
               (TRANSPOSE-SHIFT P5 P5 P2 P5 P2)
               (TRANSPOSE-SHIFT P5 P5 P2 P0 P5)
               (TRANSPOSE-SHIFT P5 P5 P2 P1 P0)
               (TRANSPOSE-SHIFT P5 P5 P2 P2 P1)
               (TRANSPOSE-SHIFT P5 P5 P3 P5 P3)
               (TRANSPOSE-SHIFT P5 P5 P3 P0 P5)
               (TRANSPOSE-SHIFT P5 P5 P3 P1 P0)
               (TRANSPOSE-SHIFT P5 P5 P3 P2 P1)
               (TRANSPOSE-SHIFT P5 P5 P3 P3 P2)
               (TRANSPOSE-SHIFT P5 P0 P1 P5 P0)
               (TRANSPOSE-SHIFT P5 P0 P1 P0 P1)
               (TRANSPOSE-SHIFT P5 P0 P1 P1 P5)
               (TRANSPOSE-SHIFT P5 P0 P2 P5 P1)
               (TRANSPOSE-SHIFT P5 P0 P2 P0 P2)
               (TRANSPOSE-SHIFT P5 P0 P2 P1 P5)
               (TRANSPOSE-SHIFT P5 P0 P2 P2 P0)
               (TRANSPOSE-SHIFT P5 P0 P3 P5 P2)
               (TRANSPOSE-SHIFT P5 P0 P3 P0 P3)
               (TRANSPOSE-SHIFT P5 P0 P3 P1 P5)
               (TRANSPOSE-SHIFT P5 P0 P3 P2 P0)
               (TRANSPOSE-SHIFT P5 P0 P3 P3 P1)
               (TRANSPOSE-SHIFT P5 P1 P2 P5 P0)
               (TRANSPOSE-SHIFT P5 P1 P2 P0 P1)
               (TRANSPOSE-SHIFT P5 P1 P2 P1 P2)
               (TRANSPOSE-SHIFT P5 P1 P2 P2 P5)
               (TRANSPOSE-SHIFT P5 P1 P3 P5 P1)
               (TRANSPOSE-SHIFT P5 P1 P3 P0 P2)
               (TRANSPOSE-SHIFT P5 P1 P3 P1 P3)
               (TRANSPOSE-SHIFT P5 P1 P3 P2 P5)
               (TRANSPOSE-SHIFT P5 P1 P3 P3 P0)
               (TRANSPOSE-SHIFT P5 P2 P3 P5 P0)
               (TRANSPOSE-SHIFT P5 P2 P3 P0 P1)
               (TRANSPOSE-SHIFT P5 P2 P3 P1 P2)
               (TRANSPOSE-SHIFT P5 P2 P3 P2 P3)
               (TRANSPOSE-SHIFT P5 P2 P3 P3 P5)
               (TRANSPOSE-SHIFT P4 P4 P5 P4 P5)
               (TRANSPOSE-SHIFT P4 P4 P5 P5 P4)
               (TRANSPOSE-SHIFT P4 P4 P0 P4 P0)
               (TRANSPOSE-SHIFT P4 P4 P0 P5 P4)
               (TRANSPOSE-SHIFT P4 P4 P0 P0 P5)
               (TRANSPOSE-SHIFT P4 P4 P1 P4 P1)
               (TRANSPOSE-SHIFT P4 P4 P1 P5 P4)
               (TRANSPOSE-SHIFT P4 P4 P1 P0 P5)
               (TRANSPOSE-SHIFT P4 P4 P1 P1 P0)
               (TRANSPOSE-SHIFT P4 P4 P2 P4 P2)
               (TRANSPOSE-SHIFT P4 P4 P2 P5 P4)
               (TRANSPOSE-SHIFT P4 P4 P2 P0 P5)
               (TRANSPOSE-SHIFT P4 P4 P2 P1 P0)
               (TRANSPOSE-SHIFT P4 P4 P2 P2 P1)
               (TRANSPOSE-SHIFT P4 P5 P0 P4 P5)
               (TRANSPOSE-SHIFT P4 P5 P0 P5 P0)
               (TRANSPOSE-SHIFT P4 P5 P0 P0 P4)
               (TRANSPOSE-SHIFT P4 P5 P1 P4 P0)
               (TRANSPOSE-SHIFT P4 P5 P1 P5 P1)
               (TRANSPOSE-SHIFT P4 P5 P1 P0 P4)
               (TRANSPOSE-SHIFT P4 P5 P1 P1 P5)
               (TRANSPOSE-SHIFT P4 P5 P2 P4 P1)
               (TRANSPOSE-SHIFT P4 P5 P2 P5 P2)
               (TRANSPOSE-SHIFT P4 P5 P2 P0 P4)
               (TRANSPOSE-SHIFT P4 P5 P2 P1 P5)
               (TRANSPOSE-SHIFT P4 P5 P2 P2 P0)
               (TRANSPOSE-SHIFT P4 P0 P1 P4 P5)
               (TRANSPOSE-SHIFT P4 P0 P1 P5 P0)
               (TRANSPOSE-SHIFT P4 P0 P1 P0 P1)
               (TRANSPOSE-SHIFT P4 P0 P1 P1 P4)
               (TRANSPOSE-SHIFT P4 P0 P2 P4 P0)
               (TRANSPOSE-SHIFT P4 P0 P2 P5 P1)
               (TRANSPOSE-SHIFT P4 P0 P2 P0 P2)
               (TRANSPOSE-SHIFT P4 P0 P2 P1 P4)
               (TRANSPOSE-SHIFT P4 P0 P2 P2 P5)
               (TRANSPOSE-SHIFT P4 P1 P2 P4 P5)
               (TRANSPOSE-SHIFT P4 P1 P2 P5 P0)
               (TRANSPOSE-SHIFT P4 P1 P2 P0 P1)
               (TRANSPOSE-SHIFT P4 P1 P2 P1 P2)
               (TRANSPOSE-SHIFT P4 P1 P2 P2 P4)
               (TRANSPOSE-SHIFT P3 P3 P4 P3 P4)
               (TRANSPOSE-SHIFT P3 P3 P4 P4 P3)
               (TRANSPOSE-SHIFT P3 P3 P5 P3 P5)
               (TRANSPOSE-SHIFT P3 P3 P5 P4 P3)
               (TRANSPOSE-SHIFT P3 P3 P5 P5 P4)
               (TRANSPOSE-SHIFT P3 P3 P0 P3 P0)
               (TRANSPOSE-SHIFT P3 P3 P0 P4 P3)
               (TRANSPOSE-SHIFT P3 P3 P0 P5 P4)
               (TRANSPOSE-SHIFT P3 P3 P0 P0 P5)
               (TRANSPOSE-SHIFT P3 P3 P1 P3 P1)
               (TRANSPOSE-SHIFT P3 P3 P1 P4 P3)
               (TRANSPOSE-SHIFT P3 P3 P1 P5 P4)
               (TRANSPOSE-SHIFT P3 P3 P1 P0 P5)
               (TRANSPOSE-SHIFT P3 P3 P1 P1 P0)
               (TRANSPOSE-SHIFT P3 P4 P5 P3 P4)
               (TRANSPOSE-SHIFT P3 P4 P5 P4 P5)
               (TRANSPOSE-SHIFT P3 P4 P5 P5 P3)
               (TRANSPOSE-SHIFT P3 P4 P0 P3 P5)
               (TRANSPOSE-SHIFT P3 P4 P0 P4 P0)
               (TRANSPOSE-SHIFT P3 P4 P0 P5 P3)
               (TRANSPOSE-SHIFT P3 P4 P0 P0 P4)
               (TRANSPOSE-SHIFT P3 P4 P1 P3 P0)
               (TRANSPOSE-SHIFT P3 P4 P1 P4 P1)
               (TRANSPOSE-SHIFT P3 P4 P1 P5 P3)
               (TRANSPOSE-SHIFT P3 P4 P1 P0 P4)
               (TRANSPOSE-SHIFT P3 P4 P1 P1 P5)
               (TRANSPOSE-SHIFT P3 P5 P0 P3 P4)
               (TRANSPOSE-SHIFT P3 P5 P0 P4 P5)
               (TRANSPOSE-SHIFT P3 P5 P0 P5 P0)
               (TRANSPOSE-SHIFT P3 P5 P0 P0 P3)
               (TRANSPOSE-SHIFT P3 P5 P1 P3 P5)
               (TRANSPOSE-SHIFT P3 P5 P1 P4 P0)
               (TRANSPOSE-SHIFT P3 P5 P1 P5 P1)
               (TRANSPOSE-SHIFT P3 P5 P1 P0 P3)
               (TRANSPOSE-SHIFT P3 P5 P1 P1 P4)
               (TRANSPOSE-SHIFT P3 P0 P1 P3 P4)
               (TRANSPOSE-SHIFT P3 P0 P1 P4 P5)
               (TRANSPOSE-SHIFT P3 P0 P1 P5 P0)
               (TRANSPOSE-SHIFT P3 P0 P1 P0 P1)
               (TRANSPOSE-SHIFT P3 P0 P1 P1 P3)
               (TRANSPOSE-SHIFT P2 P2 P3 P2 P3)
               (TRANSPOSE-SHIFT P2 P2 P3 P3 P2)
               (TRANSPOSE-SHIFT P2 P2 P4 P2 P4)
               (TRANSPOSE-SHIFT P2 P2 P4 P3 P2)
               (TRANSPOSE-SHIFT P2 P2 P4 P4 P3)
               (TRANSPOSE-SHIFT P2 P2 P5 P2 P5)
               (TRANSPOSE-SHIFT P2 P2 P5 P3 P2)
               (TRANSPOSE-SHIFT P2 P2 P5 P4 P3)
               (TRANSPOSE-SHIFT P2 P2 P5 P5 P4)
               (TRANSPOSE-SHIFT P2 P2 P0 P2 P0)
               (TRANSPOSE-SHIFT P2 P2 P0 P3 P2)
               (TRANSPOSE-SHIFT P2 P2 P0 P4 P3)
               (TRANSPOSE-SHIFT P2 P2 P0 P5 P4)
               (TRANSPOSE-SHIFT P2 P2 P0 P0 P5)
               (TRANSPOSE-SHIFT P2 P3 P4 P2 P3)
               (TRANSPOSE-SHIFT P2 P3 P4 P3 P4)
               (TRANSPOSE-SHIFT P2 P3 P4 P4 P2)
               (TRANSPOSE-SHIFT P2 P3 P5 P2 P4)
               (TRANSPOSE-SHIFT P2 P3 P5 P3 P5)
               (TRANSPOSE-SHIFT P2 P3 P5 P4 P2)
               (TRANSPOSE-SHIFT P2 P3 P5 P5 P3)
               (TRANSPOSE-SHIFT P2 P3 P0 P2 P5)
               (TRANSPOSE-SHIFT P2 P3 P0 P3 P0)
               (TRANSPOSE-SHIFT P2 P3 P0 P4 P2)
               (TRANSPOSE-SHIFT P2 P3 P0 P5 P3)
               (TRANSPOSE-SHIFT P2 P3 P0 P0 P4)
               (TRANSPOSE-SHIFT P2 P4 P5 P2 P3)
               (TRANSPOSE-SHIFT P2 P4 P5 P3 P4)
               (TRANSPOSE-SHIFT P2 P4 P5 P4 P5)
               (TRANSPOSE-SHIFT P2 P4 P5 P5 P2)
               (TRANSPOSE-SHIFT P2 P4 P0 P2 P4)
               (TRANSPOSE-SHIFT P2 P4 P0 P3 P5)
               (TRANSPOSE-SHIFT P2 P4 P0 P4 P0)
               (TRANSPOSE-SHIFT P2 P4 P0 P5 P2)
               (TRANSPOSE-SHIFT P2 P4 P0 P0 P3)
               (TRANSPOSE-SHIFT P2 P5 P0 P2 P3)
               (TRANSPOSE-SHIFT P2 P5 P0 P3 P4)
               (TRANSPOSE-SHIFT P2 P5 P0 P4 P5)
               (TRANSPOSE-SHIFT P2 P5 P0 P5 P0)
               (TRANSPOSE-SHIFT P2 P5 P0 P0 P2)
               (TRANSPOSE-SHIFT P1 P1 P2 P1 P2)
               (TRANSPOSE-SHIFT P1 P1 P2 P2 P1)
               (TRANSPOSE-SHIFT P1 P1 P3 P1 P3)
               (TRANSPOSE-SHIFT P1 P1 P3 P2 P1)
               (TRANSPOSE-SHIFT P1 P1 P3 P3 P2)
               (TRANSPOSE-SHIFT P1 P1 P4 P1 P4)
               (TRANSPOSE-SHIFT P1 P1 P4 P2 P1)
               (TRANSPOSE-SHIFT P1 P1 P4 P3 P2)
               (TRANSPOSE-SHIFT P1 P1 P4 P4 P3)
               (TRANSPOSE-SHIFT P1 P1 P5 P1 P5)
               (TRANSPOSE-SHIFT P1 P1 P5 P2 P1)
               (TRANSPOSE-SHIFT P1 P1 P5 P3 P2)
               (TRANSPOSE-SHIFT P1 P1 P5 P4 P3)
               (TRANSPOSE-SHIFT P1 P1 P5 P5 P4)
               (TRANSPOSE-SHIFT P1 P2 P3 P1 P2)
               (TRANSPOSE-SHIFT P1 P2 P3 P2 P3)
               (TRANSPOSE-SHIFT P1 P2 P3 P3 P1)
               (TRANSPOSE-SHIFT P1 P2 P4 P1 P3)
               (TRANSPOSE-SHIFT P1 P2 P4 P2 P4)
               (TRANSPOSE-SHIFT P1 P2 P4 P3 P1)
               (TRANSPOSE-SHIFT P1 P2 P4 P4 P2)
               (TRANSPOSE-SHIFT P1 P2 P5 P1 P4)
               (TRANSPOSE-SHIFT P1 P2 P5 P2 P5)
               (TRANSPOSE-SHIFT P1 P2 P5 P3 P1)
               (TRANSPOSE-SHIFT P1 P2 P5 P4 P2)
               (TRANSPOSE-SHIFT P1 P2 P5 P5 P3)
               (TRANSPOSE-SHIFT P1 P3 P4 P1 P2)
               (TRANSPOSE-SHIFT P1 P3 P4 P2 P3)
               (TRANSPOSE-SHIFT P1 P3 P4 P3 P4)
               (TRANSPOSE-SHIFT P1 P3 P4 P4 P1)
               (TRANSPOSE-SHIFT P1 P3 P5 P1 P3)
               (TRANSPOSE-SHIFT P1 P3 P5 P2 P4)
               (TRANSPOSE-SHIFT P1 P3 P5 P3 P5)
               (TRANSPOSE-SHIFT P1 P3 P5 P4 P1)
               (TRANSPOSE-SHIFT P1 P3 P5 P5 P2)
               (TRANSPOSE-SHIFT P1 P4 P5 P1 P2)
               (TRANSPOSE-SHIFT P1 P4 P5 P2 P3)
               (TRANSPOSE-SHIFT P1 P4 P5 P3 P4)
               (TRANSPOSE-SHIFT P1 P4 P5 P4 P5)
               (TRANSPOSE-SHIFT P1 P4 P5 P5 P1)
               (TRANSPOSE-SHIFT P0 P0 P1 P0 P1)
               (TRANSPOSE-SHIFT P0 P0 P1 P1 P0)
               (TRANSPOSE-SHIFT P0 P0 P2 P0 P2)
               (TRANSPOSE-SHIFT P0 P0 P2 P1 P0)
               (TRANSPOSE-SHIFT P0 P0 P2 P2 P1)
               (TRANSPOSE-SHIFT P0 P0 P3 P0 P3)
               (TRANSPOSE-SHIFT P0 P0 P3 P1 P0)
               (TRANSPOSE-SHIFT P0 P0 P3 P2 P1)
               (TRANSPOSE-SHIFT P0 P0 P3 P3 P2)
               (TRANSPOSE-SHIFT P0 P0 P4 P0 P4)
               (TRANSPOSE-SHIFT P0 P0 P4 P1 P0)
               (TRANSPOSE-SHIFT P0 P0 P4 P2 P1)
               (TRANSPOSE-SHIFT P0 P0 P4 P3 P2)
               (TRANSPOSE-SHIFT P0 P0 P4 P4 P3)
               (TRANSPOSE-SHIFT P0 P1 P2 P0 P1)
               (TRANSPOSE-SHIFT P0 P1 P2 P1 P2)
               (TRANSPOSE-SHIFT P0 P1 P2 P2 P0)
               (TRANSPOSE-SHIFT P0 P1 P3 P0 P2)
               (TRANSPOSE-SHIFT P0 P1 P3 P1 P3)
               (TRANSPOSE-SHIFT P0 P1 P3 P2 P0)
               (TRANSPOSE-SHIFT P0 P1 P3 P3 P1)
               (TRANSPOSE-SHIFT P0 P1 P4 P0 P3)
               (TRANSPOSE-SHIFT P0 P1 P4 P1 P4)
               (TRANSPOSE-SHIFT P0 P1 P4 P2 P0)
               (TRANSPOSE-SHIFT P0 P1 P4 P3 P1)
               (TRANSPOSE-SHIFT P0 P1 P4 P4 P2)
               (TRANSPOSE-SHIFT P0 P2 P3 P0 P1)
               (TRANSPOSE-SHIFT P0 P2 P3 P1 P2)
               (TRANSPOSE-SHIFT P0 P2 P3 P2 P3)
               (TRANSPOSE-SHIFT P0 P2 P3 P3 P0)
               (TRANSPOSE-SHIFT P0 P2 P4 P0 P2)
               (TRANSPOSE-SHIFT P0 P2 P4 P1 P3)
               (TRANSPOSE-SHIFT P0 P2 P4 P2 P4)
               (TRANSPOSE-SHIFT P0 P2 P4 P3 P0)
               (TRANSPOSE-SHIFT P0 P2 P4 P4 P1)
               (TRANSPOSE-SHIFT P0 P3 P4 P0 P1)
               (TRANSPOSE-SHIFT P0 P3 P4 P1 P2)
               (TRANSPOSE-SHIFT P0 P3 P4 P2 P3)
               (TRANSPOSE-SHIFT P0 P3 P4 P3 P4)
               (TRANSPOSE-SHIFT P0 P3 P4 P4 P0) (BETWEEN P5 P4 P4)
               (BETWEEN P5 P4 P3) (BETWEEN P5 P4 P2) (BETWEEN P5 P4 P1)
               (BETWEEN P5 P4 P0) (BETWEEN P5 P4 P5) (BETWEEN P5 P3 P3)
               (BETWEEN P5 P3 P2) (BETWEEN P5 P3 P1) (BETWEEN P5 P3 P0)
               (BETWEEN P5 P3 P5) (BETWEEN P5 P2 P2) (BETWEEN P5 P2 P1)
               (BETWEEN P5 P2 P0) (BETWEEN P5 P2 P5) (BETWEEN P5 P1 P1)
               (BETWEEN P5 P1 P0) (BETWEEN P5 P1 P5) (BETWEEN P5 P0 P0)
               (BETWEEN P5 P0 P5) (BETWEEN P5 P5 P5) (BETWEEN P4 P3 P3)
               (BETWEEN P4 P3 P2) (BETWEEN P4 P3 P1) (BETWEEN P4 P3 P0)
               (BETWEEN P4 P3 P5) (BETWEEN P4 P3 P4) (BETWEEN P4 P2 P2)
               (BETWEEN P4 P2 P1) (BETWEEN P4 P2 P0) (BETWEEN P4 P2 P5)
               (BETWEEN P4 P2 P4) (BETWEEN P4 P1 P1) (BETWEEN P4 P1 P0)
               (BETWEEN P4 P1 P5) (BETWEEN P4 P1 P4) (BETWEEN P4 P0 P0)
               (BETWEEN P4 P0 P5) (BETWEEN P4 P0 P4) (BETWEEN P4 P5 P5)
               (BETWEEN P4 P5 P4) (BETWEEN P4 P4 P4) (BETWEEN P3 P2 P2)
               (BETWEEN P3 P2 P1) (BETWEEN P3 P2 P0) (BETWEEN P3 P2 P5)
               (BETWEEN P3 P2 P4) (BETWEEN P3 P2 P3) (BETWEEN P3 P1 P1)
               (BETWEEN P3 P1 P0) (BETWEEN P3 P1 P5) (BETWEEN P3 P1 P4)
               (BETWEEN P3 P1 P3) (BETWEEN P3 P0 P0) (BETWEEN P3 P0 P5)
               (BETWEEN P3 P0 P4) (BETWEEN P3 P0 P3) (BETWEEN P3 P5 P5)
               (BETWEEN P3 P5 P4) (BETWEEN P3 P5 P3) (BETWEEN P3 P4 P4)
               (BETWEEN P3 P4 P3) (BETWEEN P3 P3 P3) (BETWEEN P2 P1 P1)
               (BETWEEN P2 P1 P0) (BETWEEN P2 P1 P5) (BETWEEN P2 P1 P4)
               (BETWEEN P2 P1 P3) (BETWEEN P2 P1 P2) (BETWEEN P2 P0 P0)
               (BETWEEN P2 P0 P5) (BETWEEN P2 P0 P4) (BETWEEN P2 P0 P3)
               (BETWEEN P2 P0 P2) (BETWEEN P2 P5 P5) (BETWEEN P2 P5 P4)
               (BETWEEN P2 P5 P3) (BETWEEN P2 P5 P2) (BETWEEN P2 P4 P4)
               (BETWEEN P2 P4 P3) (BETWEEN P2 P4 P2) (BETWEEN P2 P3 P3)
               (BETWEEN P2 P3 P2) (BETWEEN P2 P2 P2) (BETWEEN P1 P0 P0)
               (BETWEEN P1 P0 P5) (BETWEEN P1 P0 P4) (BETWEEN P1 P0 P3)
               (BETWEEN P1 P0 P2) (BETWEEN P1 P0 P1) (BETWEEN P1 P5 P5)
               (BETWEEN P1 P5 P4) (BETWEEN P1 P5 P3) (BETWEEN P1 P5 P2)
               (BETWEEN P1 P5 P1) (BETWEEN P1 P4 P4) (BETWEEN P1 P4 P3)
               (BETWEEN P1 P4 P2) (BETWEEN P1 P4 P1) (BETWEEN P1 P3 P3)
               (BETWEEN P1 P3 P2) (BETWEEN P1 P3 P1) (BETWEEN P1 P2 P2)
               (BETWEEN P1 P2 P1) (BETWEEN P1 P1 P1) (BETWEEN P0 P5 P5)
               (BETWEEN P0 P5 P4) (BETWEEN P0 P5 P3) (BETWEEN P0 P5 P2)
               (BETWEEN P0 P5 P1) (BETWEEN P0 P5 P0) (BETWEEN P0 P4 P4)
               (BETWEEN P0 P4 P3) (BETWEEN P0 P4 P2) (BETWEEN P0 P4 P1)
               (BETWEEN P0 P4 P0) (BETWEEN P0 P3 P3) (BETWEEN P0 P3 P2)
               (BETWEEN P0 P3 P1) (BETWEEN P0 P3 P0) (BETWEEN P0 P2 P2)
               (BETWEEN P0 P2 P1) (BETWEEN P0 P2 P0) (BETWEEN P0 P1 P1)
               (BETWEEN P0 P1 P0) (BETWEEN P0 P0 P0) (CW P5 P0)
               (CW P4 P5) (CW P3 P4) (CW P2 P3) (CW P1 P2) (CW P0 P1)
               (IDLE) (= (TOTAL-COST) 0))
        (:GOAL (AND (NORMAL SUB1) (AT SUB1 P5) (INVERTED SUB5)
                    (AT SUB5 P4) (INVERTED SUB3) (AT SUB3 P3)
                    (NORMAL G40) (AT G40 P2) (INVERTED SUB4)
                    (AT SUB4 P1) (NORMAL SUB2) (AT SUB2 P0)))
        (:METRIC MINIMIZE (TOTAL-COST)))