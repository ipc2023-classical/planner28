(define (problem maintenance-scheduling-1-3-50-65-6-1)
 (:domain maintenance-scheduling-domain)
 (:objects d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 - day
   FRA BER HAM - airport
   ap1 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap20 ap21 ap22 ap23 ap24 ap25 ap26 ap27 ap28 ap29 ap30 ap31 ap32 ap33 ap34 ap35 ap36 ap37 ap38 ap39 ap40 ap41 ap42 ap43 ap44 ap45 ap46 ap47 ap48 ap49 ap50 ap51 ap52 ap53 ap54 ap55 ap56 ap57 ap58 ap59 ap60 ap61 ap62 ap63 ap64 ap65 - plane)
 (:init
  (today d1)  (today d2)  (today d3)  (today d4)  (today d5)  (today d6)  (today d7)  (today d8)  (today d9)  (today d10)  (today d11)  (today d12)  (today d13)  (today d14)  (today d15)  (today d16)  (today d17)  (today d18)  (today d19)  (today d20)  (today d21)  (today d22)  (today d23)  (today d24)  (today d25)  (today d26)  (today d27)  (today d28)  (today d29)  (today d30)  (today d31)  (today d32)  (today d33)  (today d34)  (today d35)  (today d36)  (today d37)  (today d38)  (today d39)  (today d40)  (today d41)  (today d42)  (today d43)  (today d44)  (today d45)  (today d46)  (today d47)  (today d48)  (today d49)  (today d50)  (at ap1 d45 FRA)
  (at ap1 d46 FRA)
  (at ap1 d49 BER)
  (at ap1 d1 HAM)
  (at ap1 d32 HAM)
  (at ap1 d46 HAM)
  (at ap2 d4 FRA)
  (at ap2 d29 FRA)
  (at ap2 d24 BER)
  (at ap2 d8 HAM)
  (at ap2 d20 HAM)
  (at ap2 d26 HAM)
  (at ap3 d1 FRA)
  (at ap3 d36 FRA)
  (at ap3 d40 FRA)
  (at ap3 d13 BER)
  (at ap3 d14 BER)
  (at ap3 d15 HAM)
  (at ap4 d1 FRA)
  (at ap4 d14 FRA)
  (at ap4 d42 FRA)
  (at ap4 d3 BER)
  (at ap4 d17 BER)
  (at ap4 d21 BER)
  (at ap5 d4 FRA)
  (at ap5 d29 FRA)
  (at ap5 d30 FRA)
  (at ap5 d2 BER)
  (at ap5 d47 HAM)
  (at ap5 d49 HAM)
  (at ap6 d14 FRA)
  (at ap6 d20 FRA)
  (at ap6 d21 FRA)
  (at ap6 d11 BER)
  (at ap6 d39 BER)
  (at ap6 d30 HAM)
  (at ap7 d44 FRA)
  (at ap7 d45 FRA)
  (at ap7 d47 FRA)
  (at ap7 d21 BER)
  (at ap7 d31 HAM)
  (at ap7 d44 HAM)
  (at ap8 d8 FRA)
  (at ap8 d25 FRA)
  (at ap8 d31 FRA)
  (at ap8 d49 FRA)
  (at ap8 d3 HAM)
  (at ap8 d46 HAM)
  (at ap9 d41 FRA)
  (at ap9 d44 FRA)
  (at ap9 d10 BER)
  (at ap9 d26 BER)
  (at ap9 d36 BER)
  (at ap9 d50 BER)
  (at ap10 d2 FRA)
  (at ap10 d38 FRA)
  (at ap10 d38 BER)
  (at ap10 d2 HAM)
  (at ap10 d34 HAM)
  (at ap10 d49 HAM)
  (at ap11 d13 BER)
  (at ap11 d17 BER)
  (at ap11 d43 BER)
  (at ap11 d11 HAM)
  (at ap11 d29 HAM)
  (at ap11 d41 HAM)
  (at ap12 d11 FRA)
  (at ap12 d14 FRA)
  (at ap12 d20 FRA)
  (at ap12 d29 FRA)
  (at ap12 d45 FRA)
  (at ap12 d24 HAM)
  (at ap13 d27 FRA)
  (at ap13 d45 FRA)
  (at ap13 d3 BER)
  (at ap13 d15 BER)
  (at ap13 d37 BER)
  (at ap13 d7 HAM)
  (at ap14 d5 BER)
  (at ap14 d20 BER)
  (at ap14 d22 BER)
  (at ap14 d14 HAM)
  (at ap14 d25 HAM)
  (at ap14 d32 HAM)
  (at ap15 d39 FRA)
  (at ap15 d12 BER)
  (at ap15 d39 BER)
  (at ap15 d4 HAM)
  (at ap15 d10 HAM)
  (at ap15 d30 HAM)
  (at ap16 d31 FRA)
  (at ap16 d18 BER)
  (at ap16 d34 BER)
  (at ap16 d37 BER)
  (at ap16 d40 BER)
  (at ap16 d2 HAM)
  (at ap17 d28 BER)
  (at ap17 d36 BER)
  (at ap17 d37 BER)
  (at ap17 d11 HAM)
  (at ap17 d17 HAM)
  (at ap17 d32 HAM)
  (at ap18 d38 FRA)
  (at ap18 d40 FRA)
  (at ap18 d23 BER)
  (at ap18 d41 BER)
  (at ap18 d13 HAM)
  (at ap18 d49 HAM)
  (at ap19 d1 FRA)
  (at ap19 d22 FRA)
  (at ap19 d29 FRA)
  (at ap19 d2 BER)
  (at ap19 d5 BER)
  (at ap19 d13 BER)
  (at ap20 d33 FRA)
  (at ap20 d34 BER)
  (at ap20 d45 BER)
  (at ap20 d4 HAM)
  (at ap20 d28 HAM)
  (at ap20 d33 HAM)
  (at ap21 d1 FRA)
  (at ap21 d50 FRA)
  (at ap21 d21 BER)
  (at ap21 d19 HAM)
  (at ap21 d22 HAM)
  (at ap21 d45 HAM)
  (at ap22 d3 FRA)
  (at ap22 d19 FRA)
  (at ap22 d41 FRA)
  (at ap22 d21 BER)
  (at ap22 d50 BER)
  (at ap22 d1 HAM)
  (at ap23 d12 FRA)
  (at ap23 d41 FRA)
  (at ap23 d49 FRA)
  (at ap23 d16 BER)
  (at ap23 d36 BER)
  (at ap23 d29 HAM)
  (at ap24 d2 FRA)
  (at ap24 d26 FRA)
  (at ap24 d20 BER)
  (at ap24 d21 BER)
  (at ap24 d20 HAM)
  (at ap24 d23 HAM)
  (at ap25 d1 FRA)
  (at ap25 d25 FRA)
  (at ap25 d45 FRA)
  (at ap25 d20 BER)
  (at ap25 d43 HAM)
  (at ap25 d44 HAM)
  (at ap26 d20 FRA)
  (at ap26 d23 FRA)
  (at ap26 d26 FRA)
  (at ap26 d50 FRA)
  (at ap26 d44 BER)
  (at ap26 d13 HAM)
  (at ap27 d23 FRA)
  (at ap27 d29 FRA)
  (at ap27 d40 BER)
  (at ap27 d44 BER)
  (at ap27 d17 HAM)
  (at ap27 d24 HAM)
  (at ap28 d13 FRA)
  (at ap28 d48 FRA)
  (at ap28 d6 BER)
  (at ap28 d21 BER)
  (at ap28 d22 BER)
  (at ap28 d40 HAM)
  (at ap29 d2 FRA)
  (at ap29 d13 FRA)
  (at ap29 d17 FRA)
  (at ap29 d8 HAM)
  (at ap29 d12 HAM)
  (at ap29 d37 HAM)
  (at ap30 d8 FRA)
  (at ap30 d41 FRA)
  (at ap30 d45 FRA)
  (at ap30 d46 FRA)
  (at ap30 d2 BER)
  (at ap30 d39 HAM)
  (at ap31 d35 BER)
  (at ap31 d37 BER)
  (at ap31 d13 HAM)
  (at ap31 d24 HAM)
  (at ap31 d26 HAM)
  (at ap31 d43 HAM)
  (at ap32 d13 FRA)
  (at ap32 d17 FRA)
  (at ap32 d23 FRA)
  (at ap32 d1 BER)
  (at ap32 d20 BER)
  (at ap32 d29 HAM)
  (at ap33 d2 FRA)
  (at ap33 d34 FRA)
  (at ap33 d49 FRA)
  (at ap33 d1 BER)
  (at ap33 d46 BER)
  (at ap33 d43 HAM)
  (at ap34 d32 FRA)
  (at ap34 d5 BER)
  (at ap34 d7 BER)
  (at ap34 d20 BER)
  (at ap34 d14 HAM)
  (at ap34 d22 HAM)
  (at ap35 d11 FRA)
  (at ap35 d15 BER)
  (at ap35 d38 BER)
  (at ap35 d42 BER)
  (at ap35 d48 BER)
  (at ap35 d25 HAM)
  (at ap36 d15 FRA)
  (at ap36 d28 FRA)
  (at ap36 d35 FRA)
  (at ap36 d50 FRA)
  (at ap36 d1 BER)
  (at ap36 d10 HAM)
  (at ap37 d35 FRA)
  (at ap37 d4 BER)
  (at ap37 d34 BER)
  (at ap37 d10 HAM)
  (at ap37 d13 HAM)
  (at ap37 d22 HAM)
  (at ap38 d21 FRA)
  (at ap38 d42 FRA)
  (at ap38 d47 FRA)
  (at ap38 d12 BER)
  (at ap38 d38 BER)
  (at ap38 d4 HAM)
  (at ap39 d25 FRA)
  (at ap39 d27 FRA)
  (at ap39 d46 FRA)
  (at ap39 d2 HAM)
  (at ap39 d23 HAM)
  (at ap39 d42 HAM)
  (at ap40 d18 FRA)
  (at ap40 d27 BER)
  (at ap40 d30 BER)
  (at ap40 d30 BER)
  (at ap40 d45 BER)
  (at ap40 d49 HAM)
  (at ap41 d30 FRA)
  (at ap41 d30 FRA)
  (at ap41 d50 FRA)
  (at ap41 d19 HAM)
  (at ap41 d39 HAM)
  (at ap41 d39 HAM)
  (at ap42 d19 FRA)
  (at ap42 d20 BER)
  (at ap42 d21 BER)
  (at ap42 d34 BER)
  (at ap42 d12 HAM)
  (at ap42 d38 HAM)
  (at ap43 d19 FRA)
  (at ap43 d14 BER)
  (at ap43 d19 BER)
  (at ap43 d29 BER)
  (at ap43 d47 BER)
  (at ap43 d7 HAM)
  (at ap44 d22 FRA)
  (at ap44 d28 FRA)
  (at ap44 d4 BER)
  (at ap44 d4 BER)
  (at ap44 d5 BER)
  (at ap44 d20 BER)
  (at ap45 d11 FRA)
  (at ap45 d16 FRA)
  (at ap45 d19 FRA)
  (at ap45 d21 FRA)
  (at ap45 d33 BER)
  (at ap45 d32 HAM)
  (at ap46 d30 FRA)
  (at ap46 d14 BER)
  (at ap46 d17 BER)
  (at ap46 d28 BER)
  (at ap46 d34 BER)
  (at ap46 d35 BER)
  (at ap47 d7 FRA)
  (at ap47 d18 FRA)
  (at ap47 d25 FRA)
  (at ap47 d15 BER)
  (at ap47 d37 HAM)
  (at ap47 d45 HAM)
  (at ap48 d6 FRA)
  (at ap48 d11 FRA)
  (at ap48 d36 FRA)
  (at ap48 d3 BER)
  (at ap48 d7 BER)
  (at ap48 d11 BER)
  (at ap49 d1 FRA)
  (at ap49 d1 BER)
  (at ap49 d4 BER)
  (at ap49 d36 BER)
  (at ap49 d35 HAM)
  (at ap49 d36 HAM)
  (at ap50 d3 FRA)
  (at ap50 d18 FRA)
  (at ap50 d29 BER)
  (at ap50 d29 BER)
  (at ap50 d50 BER)
  (at ap50 d40 HAM)
  (at ap51 d46 FRA)
  (at ap51 d7 BER)
  (at ap51 d15 BER)
  (at ap51 d20 BER)
  (at ap51 d27 BER)
  (at ap51 d22 HAM)
  (at ap52 d21 BER)
  (at ap52 d25 BER)
  (at ap52 d45 BER)
  (at ap52 d2 HAM)
  (at ap52 d9 HAM)
  (at ap52 d32 HAM)
  (at ap53 d9 FRA)
  (at ap53 d34 FRA)
  (at ap53 d50 FRA)
  (at ap53 d15 BER)
  (at ap53 d48 BER)
  (at ap53 d40 HAM)
  (at ap54 d39 BER)
  (at ap54 d44 BER)
  (at ap54 d13 HAM)
  (at ap54 d22 HAM)
  (at ap54 d37 HAM)
  (at ap54 d39 HAM)
  (at ap55 d14 FRA)
  (at ap55 d37 BER)
  (at ap55 d42 BER)
  (at ap55 d43 BER)
  (at ap55 d11 HAM)
  (at ap55 d26 HAM)
  (at ap56 d5 FRA)
  (at ap56 d29 BER)
  (at ap56 d30 BER)
  (at ap56 d33 BER)
  (at ap56 d38 HAM)
  (at ap56 d48 HAM)
  (at ap57 d47 FRA)
  (at ap57 d17 BER)
  (at ap57 d22 BER)
  (at ap57 d34 HAM)
  (at ap57 d35 HAM)
  (at ap57 d39 HAM)
  (at ap58 d37 FRA)
  (at ap58 d9 BER)
  (at ap58 d14 BER)
  (at ap58 d3 HAM)
  (at ap58 d13 HAM)
  (at ap58 d25 HAM)
  (at ap59 d13 FRA)
  (at ap59 d38 FRA)
  (at ap59 d46 FRA)
  (at ap59 d36 BER)
  (at ap59 d32 HAM)
  (at ap59 d32 HAM)
  (at ap60 d20 FRA)
  (at ap60 d40 FRA)
  (at ap60 d50 FRA)
  (at ap60 d23 BER)
  (at ap60 d9 HAM)
  (at ap60 d16 HAM)
  (at ap61 d3 FRA)
  (at ap61 d31 FRA)
  (at ap61 d26 BER)
  (at ap61 d45 BER)
  (at ap61 d31 HAM)
  (at ap61 d36 HAM)
  (at ap62 d32 FRA)
  (at ap62 d35 FRA)
  (at ap62 d43 FRA)
  (at ap62 d2 BER)
  (at ap62 d9 BER)
  (at ap62 d43 HAM)
  (at ap63 d23 FRA)
  (at ap63 d23 BER)
  (at ap63 d36 BER)
  (at ap63 d11 HAM)
  (at ap63 d30 HAM)
  (at ap63 d42 HAM)
  (at ap64 d14 FRA)
  (at ap64 d15 FRA)
  (at ap64 d29 FRA)
  (at ap64 d32 FRA)
  (at ap64 d6 BER)
  (at ap64 d6 BER)
  (at ap65 d17 FRA)
  (at ap65 d15 BER)
  (at ap65 d23 BER)
  (at ap65 d44 BER)
  (at ap65 d5 HAM)
  (at ap65 d19 HAM)
)
  (:goal (and
 (done ap1)
 (done ap2)
 (done ap3)
 (done ap4)
 (done ap5)
 (done ap6)
 (done ap7)
 (done ap8)
 (done ap9)
 (done ap10)
 (done ap11)
 (done ap12)
 (done ap13)
 (done ap14)
 (done ap15)
 (done ap16)
 (done ap17)
 (done ap18)
 (done ap19)
 (done ap20)
 (done ap21)
 (done ap22)
 (done ap23)
 (done ap24)
 (done ap25)
 (done ap26)
 (done ap27)
 (done ap28)
 (done ap29)
 (done ap30)
 (done ap31)
 (done ap32)
 (done ap33)
 (done ap34)
 (done ap35)
 (done ap36)
 (done ap37)
 (done ap38)
 (done ap39)
 (done ap40)
 (done ap41)
 (done ap42)
 (done ap43)
 (done ap44)
 (done ap45)
 (done ap46)
 (done ap47)
 (done ap48)
 (done ap49)
 (done ap50)
 (done ap51)
 (done ap52)
 (done ap53)
 (done ap54)
 (done ap55)
 (done ap56)
 (done ap57)
 (done ap58)
 (done ap59)
 (done ap60)
 (done ap61)
 (done ap62)
 (done ap63)
 (done ap64)
 (done ap65)
  ))
  )
