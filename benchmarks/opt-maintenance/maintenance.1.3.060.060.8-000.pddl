(define (problem maintenance-scheduling-1-3-60-60-8-0)
 (:domain maintenance-scheduling-domain)
 (:objects d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 d52 d53 d54 d55 d56 d57 d58 d59 d60 d61 - day
   FRA BER HAM - airport
   ap1 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap20 ap21 ap22 ap23 ap24 ap25 ap26 ap27 ap28 ap29 ap30 ap31 ap32 ap33 ap34 ap35 ap36 ap37 ap38 ap39 ap40 ap41 ap42 ap43 ap44 ap45 ap46 ap47 ap48 ap49 ap50 ap51 ap52 ap53 ap54 ap55 ap56 ap57 ap58 ap59 ap60 - plane)
 (:init
  (today d1)  (today d2)  (today d3)  (today d4)  (today d5)  (today d6)  (today d7)  (today d8)  (today d9)  (today d10)  (today d11)  (today d12)  (today d13)  (today d14)  (today d15)  (today d16)  (today d17)  (today d18)  (today d19)  (today d20)  (today d21)  (today d22)  (today d23)  (today d24)  (today d25)  (today d26)  (today d27)  (today d28)  (today d29)  (today d30)  (today d31)  (today d32)  (today d33)  (today d34)  (today d35)  (today d36)  (today d37)  (today d38)  (today d39)  (today d40)  (today d41)  (today d42)  (today d43)  (today d44)  (today d45)  (today d46)  (today d47)  (today d48)  (today d49)  (today d50)  (today d51)  (today d52)  (today d53)  (today d54)  (today d55)  (today d56)  (today d57)  (today d58)  (today d59)  (today d60)  (at ap1 d8 BER)
  (at ap1 d24 BER)
  (at ap1 d1 HAM)
  (at ap1 d11 HAM)
  (at ap1 d13 HAM)
  (at ap1 d25 HAM)
  (at ap1 d28 HAM)
  (at ap1 d54 HAM)
  (at ap2 d40 FRA)
  (at ap2 d41 FRA)
  (at ap2 d4 BER)
  (at ap2 d8 BER)
  (at ap2 d41 BER)
  (at ap2 d57 BER)
  (at ap2 d10 HAM)
  (at ap2 d38 HAM)
  (at ap3 d14 FRA)
  (at ap3 d40 FRA)
  (at ap3 d51 FRA)
  (at ap3 d9 BER)
  (at ap3 d20 BER)
  (at ap3 d33 BER)
  (at ap3 d6 HAM)
  (at ap3 d8 HAM)
  (at ap4 d23 BER)
  (at ap4 d29 BER)
  (at ap4 d31 BER)
  (at ap4 d55 BER)
  (at ap4 d10 HAM)
  (at ap4 d25 HAM)
  (at ap4 d29 HAM)
  (at ap4 d42 HAM)
  (at ap5 d24 FRA)
  (at ap5 d58 FRA)
  (at ap5 d42 BER)
  (at ap5 d46 BER)
  (at ap5 d49 BER)
  (at ap5 d56 BER)
  (at ap5 d59 BER)
  (at ap5 d6 HAM)
  (at ap6 d52 FRA)
  (at ap6 d6 BER)
  (at ap6 d10 BER)
  (at ap6 d16 BER)
  (at ap6 d13 HAM)
  (at ap6 d18 HAM)
  (at ap6 d46 HAM)
  (at ap6 d49 HAM)
  (at ap7 d17 FRA)
  (at ap7 d22 FRA)
  (at ap7 d38 FRA)
  (at ap7 d39 FRA)
  (at ap7 d55 FRA)
  (at ap7 d12 HAM)
  (at ap7 d18 HAM)
  (at ap7 d30 HAM)
  (at ap8 d6 FRA)
  (at ap8 d56 FRA)
  (at ap8 d1 BER)
  (at ap8 d23 BER)
  (at ap8 d54 BER)
  (at ap8 d55 BER)
  (at ap8 d9 HAM)
  (at ap8 d16 HAM)
  (at ap9 d8 FRA)
  (at ap9 d39 FRA)
  (at ap9 d47 FRA)
  (at ap9 d51 FRA)
  (at ap9 d16 BER)
  (at ap9 d23 BER)
  (at ap9 d23 BER)
  (at ap9 d52 HAM)
  (at ap10 d16 FRA)
  (at ap10 d26 FRA)
  (at ap10 d21 BER)
  (at ap10 d33 BER)
  (at ap10 d36 BER)
  (at ap10 d17 HAM)
  (at ap10 d50 HAM)
  (at ap10 d55 HAM)
  (at ap11 d27 FRA)
  (at ap11 d44 FRA)
  (at ap11 d5 BER)
  (at ap11 d19 BER)
  (at ap11 d47 BER)
  (at ap11 d1 HAM)
  (at ap11 d4 HAM)
  (at ap11 d54 HAM)
  (at ap12 d33 FRA)
  (at ap12 d44 FRA)
  (at ap12 d48 FRA)
  (at ap12 d51 FRA)
  (at ap12 d17 BER)
  (at ap12 d26 BER)
  (at ap12 d44 BER)
  (at ap12 d45 HAM)
  (at ap13 d13 FRA)
  (at ap13 d40 FRA)
  (at ap13 d56 FRA)
  (at ap13 d25 BER)
  (at ap13 d23 HAM)
  (at ap13 d32 HAM)
  (at ap13 d39 HAM)
  (at ap13 d46 HAM)
  (at ap14 d2 FRA)
  (at ap14 d3 FRA)
  (at ap14 d36 FRA)
  (at ap14 d30 BER)
  (at ap14 d34 BER)
  (at ap14 d49 BER)
  (at ap14 d6 HAM)
  (at ap14 d56 HAM)
  (at ap15 d8 FRA)
  (at ap15 d35 FRA)
  (at ap15 d36 FRA)
  (at ap15 d15 BER)
  (at ap15 d28 BER)
  (at ap15 d37 BER)
  (at ap15 d14 HAM)
  (at ap15 d53 HAM)
  (at ap16 d10 FRA)
  (at ap16 d16 FRA)
  (at ap16 d52 FRA)
  (at ap16 d4 BER)
  (at ap16 d21 BER)
  (at ap16 d57 BER)
  (at ap16 d25 HAM)
  (at ap16 d49 HAM)
  (at ap17 d30 FRA)
  (at ap17 d58 FRA)
  (at ap17 d58 FRA)
  (at ap17 d35 BER)
  (at ap17 d50 BER)
  (at ap17 d52 BER)
  (at ap17 d60 BER)
  (at ap17 d4 HAM)
  (at ap18 d29 FRA)
  (at ap18 d35 FRA)
  (at ap18 d45 FRA)
  (at ap18 d49 FRA)
  (at ap18 d51 FRA)
  (at ap18 d17 HAM)
  (at ap18 d21 HAM)
  (at ap18 d45 HAM)
  (at ap19 d46 FRA)
  (at ap19 d48 FRA)
  (at ap19 d10 BER)
  (at ap19 d34 BER)
  (at ap19 d54 BER)
  (at ap19 d11 HAM)
  (at ap19 d39 HAM)
  (at ap19 d54 HAM)
  (at ap20 d1 FRA)
  (at ap20 d16 FRA)
  (at ap20 d39 FRA)
  (at ap20 d39 FRA)
  (at ap20 d51 FRA)
  (at ap20 d18 BER)
  (at ap20 d17 HAM)
  (at ap20 d18 HAM)
  (at ap21 d10 FRA)
  (at ap21 d19 FRA)
  (at ap21 d40 FRA)
  (at ap21 d41 BER)
  (at ap21 d58 BER)
  (at ap21 d14 HAM)
  (at ap21 d52 HAM)
  (at ap21 d54 HAM)
  (at ap22 d16 FRA)
  (at ap22 d56 FRA)
  (at ap22 d56 FRA)
  (at ap22 d1 BER)
  (at ap22 d21 BER)
  (at ap22 d8 HAM)
  (at ap22 d35 HAM)
  (at ap22 d54 HAM)
  (at ap23 d20 FRA)
  (at ap23 d24 FRA)
  (at ap23 d58 FRA)
  (at ap23 d10 BER)
  (at ap23 d38 BER)
  (at ap23 d55 BER)
  (at ap23 d28 HAM)
  (at ap23 d54 HAM)
  (at ap24 d16 FRA)
  (at ap24 d34 FRA)
  (at ap24 d45 FRA)
  (at ap24 d34 BER)
  (at ap24 d39 BER)
  (at ap24 d49 BER)
  (at ap24 d58 BER)
  (at ap24 d7 HAM)
  (at ap25 d31 FRA)
  (at ap25 d11 BER)
  (at ap25 d21 BER)
  (at ap25 d21 BER)
  (at ap25 d33 BER)
  (at ap25 d41 BER)
  (at ap25 d24 HAM)
  (at ap25 d34 HAM)
  (at ap26 d1 BER)
  (at ap26 d31 BER)
  (at ap26 d44 BER)
  (at ap26 d50 BER)
  (at ap26 d51 BER)
  (at ap26 d7 HAM)
  (at ap26 d10 HAM)
  (at ap26 d30 HAM)
  (at ap27 d37 FRA)
  (at ap27 d39 FRA)
  (at ap27 d52 FRA)
  (at ap27 d57 FRA)
  (at ap27 d31 BER)
  (at ap27 d21 HAM)
  (at ap27 d25 HAM)
  (at ap27 d25 HAM)
  (at ap28 d6 FRA)
  (at ap28 d25 FRA)
  (at ap28 d29 FRA)
  (at ap28 d30 FRA)
  (at ap28 d33 FRA)
  (at ap28 d21 HAM)
  (at ap28 d29 HAM)
  (at ap28 d59 HAM)
  (at ap29 d31 FRA)
  (at ap29 d48 FRA)
  (at ap29 d38 BER)
  (at ap29 d21 HAM)
  (at ap29 d24 HAM)
  (at ap29 d34 HAM)
  (at ap29 d51 HAM)
  (at ap29 d51 HAM)
  (at ap30 d12 FRA)
  (at ap30 d42 FRA)
  (at ap30 d60 FRA)
  (at ap30 d16 BER)
  (at ap30 d21 BER)
  (at ap30 d6 HAM)
  (at ap30 d9 HAM)
  (at ap30 d15 HAM)
  (at ap31 d1 FRA)
  (at ap31 d19 BER)
  (at ap31 d26 BER)
  (at ap31 d60 BER)
  (at ap31 d5 HAM)
  (at ap31 d14 HAM)
  (at ap31 d41 HAM)
  (at ap31 d47 HAM)
  (at ap32 d29 FRA)
  (at ap32 d39 FRA)
  (at ap32 d39 FRA)
  (at ap32 d42 FRA)
  (at ap32 d1 BER)
  (at ap32 d12 BER)
  (at ap32 d13 BER)
  (at ap32 d52 HAM)
  (at ap33 d8 BER)
  (at ap33 d27 BER)
  (at ap33 d35 BER)
  (at ap33 d48 BER)
  (at ap33 d23 HAM)
  (at ap33 d25 HAM)
  (at ap33 d32 HAM)
  (at ap33 d36 HAM)
  (at ap34 d2 FRA)
  (at ap34 d6 FRA)
  (at ap34 d44 FRA)
  (at ap34 d11 BER)
  (at ap34 d38 BER)
  (at ap34 d49 BER)
  (at ap34 d52 BER)
  (at ap34 d22 HAM)
  (at ap35 d5 FRA)
  (at ap35 d6 FRA)
  (at ap35 d48 FRA)
  (at ap35 d6 BER)
  (at ap35 d37 BER)
  (at ap35 d57 BER)
  (at ap35 d28 HAM)
  (at ap35 d37 HAM)
  (at ap36 d46 FRA)
  (at ap36 d48 FRA)
  (at ap36 d35 BER)
  (at ap36 d39 BER)
  (at ap36 d59 BER)
  (at ap36 d29 HAM)
  (at ap36 d31 HAM)
  (at ap36 d52 HAM)
  (at ap37 d9 FRA)
  (at ap37 d16 FRA)
  (at ap37 d32 FRA)
  (at ap37 d38 FRA)
  (at ap37 d1 BER)
  (at ap37 d25 BER)
  (at ap37 d41 HAM)
  (at ap37 d55 HAM)
  (at ap38 d20 FRA)
  (at ap38 d26 FRA)
  (at ap38 d28 FRA)
  (at ap38 d51 FRA)
  (at ap38 d10 BER)
  (at ap38 d18 BER)
  (at ap38 d34 BER)
  (at ap38 d16 HAM)
  (at ap39 d1 FRA)
  (at ap39 d51 BER)
  (at ap39 d57 BER)
  (at ap39 d60 BER)
  (at ap39 d6 HAM)
  (at ap39 d24 HAM)
  (at ap39 d27 HAM)
  (at ap39 d59 HAM)
  (at ap40 d6 FRA)
  (at ap40 d16 FRA)
  (at ap40 d20 FRA)
  (at ap40 d55 FRA)
  (at ap40 d48 BER)
  (at ap40 d10 HAM)
  (at ap40 d20 HAM)
  (at ap40 d33 HAM)
  (at ap41 d45 FRA)
  (at ap41 d4 BER)
  (at ap41 d22 BER)
  (at ap41 d45 BER)
  (at ap41 d60 BER)
  (at ap41 d12 HAM)
  (at ap41 d59 HAM)
  (at ap41 d60 HAM)
  (at ap42 d8 FRA)
  (at ap42 d13 BER)
  (at ap42 d30 BER)
  (at ap42 d38 BER)
  (at ap42 d42 BER)
  (at ap42 d7 HAM)
  (at ap42 d35 HAM)
  (at ap42 d44 HAM)
  (at ap43 d20 FRA)
  (at ap43 d47 FRA)
  (at ap43 d22 HAM)
  (at ap43 d23 HAM)
  (at ap43 d24 HAM)
  (at ap43 d37 HAM)
  (at ap43 d38 HAM)
  (at ap43 d40 HAM)
  (at ap44 d2 FRA)
  (at ap44 d33 BER)
  (at ap44 d33 BER)
  (at ap44 d55 BER)
  (at ap44 d56 BER)
  (at ap44 d11 HAM)
  (at ap44 d14 HAM)
  (at ap44 d32 HAM)
  (at ap45 d4 FRA)
  (at ap45 d26 FRA)
  (at ap45 d47 FRA)
  (at ap45 d20 BER)
  (at ap45 d36 BER)
  (at ap45 d51 BER)
  (at ap45 d4 HAM)
  (at ap45 d60 HAM)
  (at ap46 d18 FRA)
  (at ap46 d29 FRA)
  (at ap46 d12 BER)
  (at ap46 d20 BER)
  (at ap46 d17 HAM)
  (at ap46 d31 HAM)
  (at ap46 d53 HAM)
  (at ap46 d60 HAM)
  (at ap47 d5 FRA)
  (at ap47 d7 BER)
  (at ap47 d12 BER)
  (at ap47 d22 BER)
  (at ap47 d31 BER)
  (at ap47 d5 HAM)
  (at ap47 d37 HAM)
  (at ap47 d52 HAM)
  (at ap48 d28 FRA)
  (at ap48 d53 FRA)
  (at ap48 d15 BER)
  (at ap48 d18 BER)
  (at ap48 d42 BER)
  (at ap48 d3 HAM)
  (at ap48 d6 HAM)
  (at ap48 d40 HAM)
  (at ap49 d5 FRA)
  (at ap49 d20 FRA)
  (at ap49 d57 FRA)
  (at ap49 d11 BER)
  (at ap49 d49 BER)
  (at ap49 d20 HAM)
  (at ap49 d58 HAM)
  (at ap49 d60 HAM)
  (at ap50 d36 FRA)
  (at ap50 d49 FRA)
  (at ap50 d14 BER)
  (at ap50 d30 HAM)
  (at ap50 d31 HAM)
  (at ap50 d46 HAM)
  (at ap50 d52 HAM)
  (at ap50 d58 HAM)
  (at ap51 d1 FRA)
  (at ap51 d4 FRA)
  (at ap51 d10 FRA)
  (at ap51 d36 FRA)
  (at ap51 d4 BER)
  (at ap51 d23 BER)
  (at ap51 d36 HAM)
  (at ap51 d45 HAM)
  (at ap52 d4 FRA)
  (at ap52 d22 FRA)
  (at ap52 d31 FRA)
  (at ap52 d17 BER)
  (at ap52 d21 BER)
  (at ap52 d22 BER)
  (at ap52 d33 BER)
  (at ap52 d17 HAM)
  (at ap53 d14 FRA)
  (at ap53 d21 FRA)
  (at ap53 d29 FRA)
  (at ap53 d40 FRA)
  (at ap53 d50 FRA)
  (at ap53 d11 BER)
  (at ap53 d9 HAM)
  (at ap53 d20 HAM)
  (at ap54 d5 FRA)
  (at ap54 d14 FRA)
  (at ap54 d37 FRA)
  (at ap54 d44 FRA)
  (at ap54 d19 BER)
  (at ap54 d31 BER)
  (at ap54 d1 HAM)
  (at ap54 d14 HAM)
  (at ap55 d25 FRA)
  (at ap55 d38 FRA)
  (at ap55 d41 FRA)
  (at ap55 d59 FRA)
  (at ap55 d30 BER)
  (at ap55 d50 BER)
  (at ap55 d13 HAM)
  (at ap55 d26 HAM)
  (at ap56 d4 FRA)
  (at ap56 d12 FRA)
  (at ap56 d51 FRA)
  (at ap56 d58 FRA)
  (at ap56 d6 BER)
  (at ap56 d16 BER)
  (at ap56 d32 HAM)
  (at ap56 d44 HAM)
  (at ap57 d23 BER)
  (at ap57 d27 BER)
  (at ap57 d38 BER)
  (at ap57 d43 BER)
  (at ap57 d1 HAM)
  (at ap57 d21 HAM)
  (at ap57 d39 HAM)
  (at ap57 d59 HAM)
  (at ap58 d30 FRA)
  (at ap58 d34 FRA)
  (at ap58 d39 FRA)
  (at ap58 d51 FRA)
  (at ap58 d55 FRA)
  (at ap58 d27 BER)
  (at ap58 d37 HAM)
  (at ap58 d44 HAM)
  (at ap59 d5 FRA)
  (at ap59 d37 FRA)
  (at ap59 d12 BER)
  (at ap59 d13 BER)
  (at ap59 d15 BER)
  (at ap59 d20 BER)
  (at ap59 d24 HAM)
  (at ap59 d25 HAM)
  (at ap60 d49 FRA)
  (at ap60 d15 BER)
  (at ap60 d29 BER)
  (at ap60 d42 BER)
  (at ap60 d40 HAM)
  (at ap60 d42 HAM)
  (at ap60 d54 HAM)
  (at ap60 d60 HAM)
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
  ))
  )
