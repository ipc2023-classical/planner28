(define (problem freecell-f3-c8-s4-i8-016-116-216-316
)(:domain freecell)
(:objects 
          C0 CA C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 C13 C14 C15 C16
          H0 HA H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12 H13 H14 H15 H16
          S0 SA S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 S14 S15 S16
          D0 DA D2 D3 D4 D5 D6 D7 D8 D9 D10 D11 D12 D13 D14 D15 D16
 - card
          CELLN0 CELLN1 CELLN2 CELLN3 
 - cellnum
          COLN0 COLN1 COLN2 COLN3 COLN4 COLN5 COLN6 COLN7 COLN8 
 - colnum
          N0 N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12 N13 N14 N15 N16 
 - num
           C H S D
 - suit
)
(:init
(VALUE C0 N0)
(VALUE CA N1)
(VALUE C2 N2)
(VALUE C3 N3)
(VALUE C4 N4)
(VALUE C5 N5)
(VALUE C6 N6)
(VALUE C7 N7)
(VALUE C8 N8)
(VALUE C9 N9)
(VALUE C10 N10)
(VALUE C11 N11)
(VALUE C12 N12)
(VALUE C13 N13)
(VALUE C14 N14)
(VALUE C15 N15)
(VALUE C16 N16)
(VALUE H0 N0)
(VALUE HA N1)
(VALUE H2 N2)
(VALUE H3 N3)
(VALUE H4 N4)
(VALUE H5 N5)
(VALUE H6 N6)
(VALUE H7 N7)
(VALUE H8 N8)
(VALUE H9 N9)
(VALUE H10 N10)
(VALUE H11 N11)
(VALUE H12 N12)
(VALUE H13 N13)
(VALUE H14 N14)
(VALUE H15 N15)
(VALUE H16 N16)
(VALUE S0 N0)
(VALUE SA N1)
(VALUE S2 N2)
(VALUE S3 N3)
(VALUE S4 N4)
(VALUE S5 N5)
(VALUE S6 N6)
(VALUE S7 N7)
(VALUE S8 N8)
(VALUE S9 N9)
(VALUE S10 N10)
(VALUE S11 N11)
(VALUE S12 N12)
(VALUE S13 N13)
(VALUE S14 N14)
(VALUE S15 N15)
(VALUE S16 N16)
(VALUE D0 N0)
(VALUE DA N1)
(VALUE D2 N2)
(VALUE D3 N3)
(VALUE D4 N4)
(VALUE D5 N5)
(VALUE D6 N6)
(VALUE D7 N7)
(VALUE D8 N8)
(VALUE D9 N9)
(VALUE D10 N10)
(VALUE D11 N11)
(VALUE D12 N12)
(VALUE D13 N13)
(VALUE D14 N14)
(VALUE D15 N15)
(VALUE D16 N16)
(CELLSUCCESSOR CELLN1 CELLN0)
(CELLSUCCESSOR CELLN2 CELLN1)
(CELLSUCCESSOR CELLN3 CELLN2)
(COLSUCCESSOR COLN1 COLN0)
(COLSUCCESSOR COLN2 COLN1)
(COLSUCCESSOR COLN3 COLN2)
(COLSUCCESSOR COLN4 COLN3)
(COLSUCCESSOR COLN5 COLN4)
(COLSUCCESSOR COLN6 COLN5)
(COLSUCCESSOR COLN7 COLN6)
(COLSUCCESSOR COLN8 COLN7)
(SUCCESSOR N1 N0)
(SUCCESSOR N2 N1)
(SUCCESSOR N3 N2)
(SUCCESSOR N4 N3)
(SUCCESSOR N5 N4)
(SUCCESSOR N6 N5)
(SUCCESSOR N7 N6)
(SUCCESSOR N8 N7)
(SUCCESSOR N9 N8)
(SUCCESSOR N10 N9)
(SUCCESSOR N11 N10)
(SUCCESSOR N12 N11)
(SUCCESSOR N13 N12)
(SUCCESSOR N14 N13)
(SUCCESSOR N15 N14)
(SUCCESSOR N16 N15)
(HASSUIT C0 C)
(HASSUIT CA C)
(HASSUIT C2 C)
(HASSUIT C3 C)
(HASSUIT C4 C)
(HASSUIT C5 C)
(HASSUIT C6 C)
(HASSUIT C7 C)
(HASSUIT C8 C)
(HASSUIT C9 C)
(HASSUIT C10 C)
(HASSUIT C11 C)
(HASSUIT C12 C)
(HASSUIT C13 C)
(HASSUIT C14 C)
(HASSUIT C15 C)
(HASSUIT C16 C)
(HASSUIT H0 H)
(HASSUIT HA H)
(HASSUIT H2 H)
(HASSUIT H3 H)
(HASSUIT H4 H)
(HASSUIT H5 H)
(HASSUIT H6 H)
(HASSUIT H7 H)
(HASSUIT H8 H)
(HASSUIT H9 H)
(HASSUIT H10 H)
(HASSUIT H11 H)
(HASSUIT H12 H)
(HASSUIT H13 H)
(HASSUIT H14 H)
(HASSUIT H15 H)
(HASSUIT H16 H)
(HASSUIT S0 S)
(HASSUIT SA S)
(HASSUIT S2 S)
(HASSUIT S3 S)
(HASSUIT S4 S)
(HASSUIT S5 S)
(HASSUIT S6 S)
(HASSUIT S7 S)
(HASSUIT S8 S)
(HASSUIT S9 S)
(HASSUIT S10 S)
(HASSUIT S11 S)
(HASSUIT S12 S)
(HASSUIT S13 S)
(HASSUIT S14 S)
(HASSUIT S15 S)
(HASSUIT S16 S)
(HASSUIT D0 D)
(HASSUIT DA D)
(HASSUIT D2 D)
(HASSUIT D3 D)
(HASSUIT D4 D)
(HASSUIT D5 D)
(HASSUIT D6 D)
(HASSUIT D7 D)
(HASSUIT D8 D)
(HASSUIT D9 D)
(HASSUIT D10 D)
(HASSUIT D11 D)
(HASSUIT D12 D)
(HASSUIT D13 D)
(HASSUIT D14 D)
(HASSUIT D15 D)
(HASSUIT D16 D)
(CANSTACK C2 H3)
(CANSTACK C2 D3)
(CANSTACK C3 H4)
(CANSTACK C3 D4)
(CANSTACK C4 H5)
(CANSTACK C4 D5)
(CANSTACK C5 H6)
(CANSTACK C5 D6)
(CANSTACK C6 H7)
(CANSTACK C6 D7)
(CANSTACK C7 H8)
(CANSTACK C7 D8)
(CANSTACK C8 H9)
(CANSTACK C8 D9)
(CANSTACK C9 H10)
(CANSTACK C9 D10)
(CANSTACK C10 H11)
(CANSTACK C10 D11)
(CANSTACK C11 H12)
(CANSTACK C11 D12)
(CANSTACK C12 H13)
(CANSTACK C12 D13)
(CANSTACK C13 H14)
(CANSTACK C13 D14)
(CANSTACK C14 H15)
(CANSTACK C14 D15)
(CANSTACK C15 H16)
(CANSTACK C15 D16)
(CANSTACK H2 C3)
(CANSTACK H2 S3)
(CANSTACK H3 C4)
(CANSTACK H3 S4)
(CANSTACK H4 C5)
(CANSTACK H4 S5)
(CANSTACK H5 C6)
(CANSTACK H5 S6)
(CANSTACK H6 C7)
(CANSTACK H6 S7)
(CANSTACK H7 C8)
(CANSTACK H7 S8)
(CANSTACK H8 C9)
(CANSTACK H8 S9)
(CANSTACK H9 C10)
(CANSTACK H9 S10)
(CANSTACK H10 C11)
(CANSTACK H10 S11)
(CANSTACK H11 C12)
(CANSTACK H11 S12)
(CANSTACK H12 C13)
(CANSTACK H12 S13)
(CANSTACK H13 C14)
(CANSTACK H13 S14)
(CANSTACK H14 C15)
(CANSTACK H14 S15)
(CANSTACK H15 C16)
(CANSTACK H15 S16)
(CANSTACK S2 H3)
(CANSTACK S2 D3)
(CANSTACK S3 H4)
(CANSTACK S3 D4)
(CANSTACK S4 H5)
(CANSTACK S4 D5)
(CANSTACK S5 H6)
(CANSTACK S5 D6)
(CANSTACK S6 H7)
(CANSTACK S6 D7)
(CANSTACK S7 H8)
(CANSTACK S7 D8)
(CANSTACK S8 H9)
(CANSTACK S8 D9)
(CANSTACK S9 H10)
(CANSTACK S9 D10)
(CANSTACK S10 H11)
(CANSTACK S10 D11)
(CANSTACK S11 H12)
(CANSTACK S11 D12)
(CANSTACK S12 H13)
(CANSTACK S12 D13)
(CANSTACK S13 H14)
(CANSTACK S13 D14)
(CANSTACK S14 H15)
(CANSTACK S14 D15)
(CANSTACK S15 H16)
(CANSTACK S15 D16)
(CANSTACK D2 C3)
(CANSTACK D2 S3)
(CANSTACK D3 C4)
(CANSTACK D3 S4)
(CANSTACK D4 C5)
(CANSTACK D4 S5)
(CANSTACK D5 C6)
(CANSTACK D5 S6)
(CANSTACK D6 C7)
(CANSTACK D6 S7)
(CANSTACK D7 C8)
(CANSTACK D7 S8)
(CANSTACK D8 C9)
(CANSTACK D8 S9)
(CANSTACK D9 C10)
(CANSTACK D9 S10)
(CANSTACK D10 C11)
(CANSTACK D10 S11)
(CANSTACK D11 C12)
(CANSTACK D11 S12)
(CANSTACK D12 C13)
(CANSTACK D12 S13)
(CANSTACK D13 C14)
(CANSTACK D13 S14)
(CANSTACK D14 C15)
(CANSTACK D14 S15)
(CANSTACK D15 C16)
(CANSTACK D15 S16)
(HOME C0)
(HOME H0)
(HOME S0)
(HOME D0)
(CELLSPACE CELLN3)
(COLSPACE COLN0)

(BOTTOMCOL C12)
(ON C6 C12)
(ON D8 C6)
(ON D12 D8)
(ON D15 D12)
(ON H3 D15)
(ON S9 H3)
(ON H10 S9)
(CLEAR H10)

(BOTTOMCOL D7)
(ON S13 D7)
(ON D16 S13)
(ON H8 D16)
(ON D9 H8)
(ON C2 D9)
(ON H2 C2)
(ON D10 H2)
(ON S2 D10)
(ON H9 S2)
(ON D6 H9)
(ON C15 D6)
(ON C7 C15)
(CLEAR C7)

(BOTTOMCOL S7)
(ON C4 S7)
(ON H15 C4)
(ON D13 H15)
(ON C13 D13)
(ON S11 C13)
(ON H6 S11)
(ON S16 H6)
(CLEAR S16)

(BOTTOMCOL H11)
(ON S12 H11)
(ON S15 S12)
(ON S5 S15)
(ON CA S5)
(ON S4 CA)
(ON S10 S4)
(ON C3 S10)
(ON C16 C3)
(ON D11 C16)
(ON H16 D11)
(ON HA H16)
(CLEAR HA)

(BOTTOMCOL S3)
(ON D5 S3)
(ON C5 D5)
(ON S6 C5)
(ON DA S6)
(ON C9 DA)
(ON H7 C9)
(ON H4 H7)
(CLEAR H4)

(BOTTOMCOL H14)
(ON D4 H14)
(ON C11 D4)
(ON SA C11)
(ON S8 SA)
(CLEAR S8)

(BOTTOMCOL D14)
(ON S14 D14)
(ON C10 S14)
(ON C8 C10)
(ON H12 C8)
(ON H5 H12)
(CLEAR H5)

(BOTTOMCOL D2)
(ON H13 D2)
(ON D3 H13)
(ON C14 D3)
(CLEAR C14)
)
(:goal
(and
(HOME C16)
(HOME H16)
(HOME S16)
(HOME D16)
)
)
)
