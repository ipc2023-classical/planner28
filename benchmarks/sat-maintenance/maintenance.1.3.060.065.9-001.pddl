(define (problem maintenance-scheduling-1-3-60-65-9-1)
 (:domain maintenance-scheduling-domain)
 (:objects d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 d52 d53 d54 d55 d56 d57 d58 d59 d60 d61 - day
   FRA BER HAM - airport
   ap1 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap20 ap21 ap22 ap23 ap24 ap25 ap26 ap27 ap28 ap29 ap30 ap31 ap32 ap33 ap34 ap35 ap36 ap37 ap38 ap39 ap40 ap41 ap42 ap43 ap44 ap45 ap46 ap47 ap48 ap49 ap50 ap51 ap52 ap53 ap54 ap55 ap56 ap57 ap58 ap59 ap60 ap61 ap62 ap63 ap64 ap65 - plane)
 (:init
  (today d1)  (today d2)  (today d3)  (today d4)  (today d5)  (today d6)  (today d7)  (today d8)  (today d9)  (today d10)  (today d11)  (today d12)  (today d13)  (today d14)  (today d15)  (today d16)  (today d17)  (today d18)  (today d19)  (today d20)  (today d21)  (today d22)  (today d23)  (today d24)  (today d25)  (today d26)  (today d27)  (today d28)  (today d29)  (today d30)  (today d31)  (today d32)  (today d33)  (today d34)  (today d35)  (today d36)  (today d37)  (today d38)  (today d39)  (today d40)  (today d41)  (today d42)  (today d43)  (today d44)  (today d45)  (today d46)  (today d47)  (today d48)  (today d49)  (today d50)  (today d51)  (today d52)  (today d53)  (today d54)  (today d55)  (today d56)  (today d57)  (today d58)  (today d59)  (today d60)  (at ap1 d2 FRA)
  (at ap1 d32 FRA)
  (at ap1 d44 FRA)
  (at ap1 d15 BER)
  (at ap1 d17 BER)
  (at ap1 d20 BER)
  (at ap1 d2 HAM)
  (at ap1 d14 HAM)
  (at ap1 d53 HAM)
  (at ap2 d5 FRA)
  (at ap2 d21 FRA)
  (at ap2 d38 FRA)
  (at ap2 d15 BER)
  (at ap2 d18 BER)
  (at ap2 d18 BER)
  (at ap2 d51 BER)
  (at ap2 d52 BER)
  (at ap2 d15 HAM)
  (at ap3 d15 FRA)
  (at ap3 d25 FRA)
  (at ap3 d60 FRA)
  (at ap3 d24 BER)
  (at ap3 d34 BER)
  (at ap3 d2 HAM)
  (at ap3 d33 HAM)
  (at ap3 d40 HAM)
  (at ap3 d50 HAM)
  (at ap4 d21 FRA)
  (at ap4 d32 FRA)
  (at ap4 d57 FRA)
  (at ap4 d2 BER)
  (at ap4 d8 BER)
  (at ap4 d2 HAM)
  (at ap4 d34 HAM)
  (at ap4 d52 HAM)
  (at ap4 d53 HAM)
  (at ap5 d6 FRA)
  (at ap5 d55 FRA)
  (at ap5 d57 FRA)
  (at ap5 d58 FRA)
  (at ap5 d5 BER)
  (at ap5 d40 BER)
  (at ap5 d47 BER)
  (at ap5 d50 BER)
  (at ap5 d9 HAM)
  (at ap6 d10 FRA)
  (at ap6 d30 FRA)
  (at ap6 d59 FRA)
  (at ap6 d60 FRA)
  (at ap6 d40 BER)
  (at ap6 d9 HAM)
  (at ap6 d9 HAM)
  (at ap6 d18 HAM)
  (at ap6 d59 HAM)
  (at ap7 d39 FRA)
  (at ap7 d4 BER)
  (at ap7 d21 BER)
  (at ap7 d29 BER)
  (at ap7 d44 BER)
  (at ap7 d47 BER)
  (at ap7 d59 BER)
  (at ap7 d2 HAM)
  (at ap7 d27 HAM)
  (at ap8 d9 FRA)
  (at ap8 d52 FRA)
  (at ap8 d58 FRA)
  (at ap8 d14 BER)
  (at ap8 d33 BER)
  (at ap8 d45 BER)
  (at ap8 d54 BER)
  (at ap8 d60 BER)
  (at ap8 d12 HAM)
  (at ap9 d11 FRA)
  (at ap9 d46 FRA)
  (at ap9 d51 FRA)
  (at ap9 d60 FRA)
  (at ap9 d24 BER)
  (at ap9 d25 BER)
  (at ap9 d28 BER)
  (at ap9 d44 BER)
  (at ap9 d47 BER)
  (at ap10 d5 FRA)
  (at ap10 d8 FRA)
  (at ap10 d37 FRA)
  (at ap10 d46 FRA)
  (at ap10 d11 BER)
  (at ap10 d33 BER)
  (at ap10 d45 BER)
  (at ap10 d15 HAM)
  (at ap10 d27 HAM)
  (at ap11 d26 FRA)
  (at ap11 d41 FRA)
  (at ap11 d41 FRA)
  (at ap11 d1 BER)
  (at ap11 d24 BER)
  (at ap11 d26 BER)
  (at ap11 d27 BER)
  (at ap11 d5 HAM)
  (at ap11 d6 HAM)
  (at ap12 d23 FRA)
  (at ap12 d56 FRA)
  (at ap12 d58 FRA)
  (at ap12 d20 BER)
  (at ap12 d39 BER)
  (at ap12 d49 BER)
  (at ap12 d60 BER)
  (at ap12 d22 HAM)
  (at ap12 d30 HAM)
  (at ap13 d7 BER)
  (at ap13 d21 BER)
  (at ap13 d25 BER)
  (at ap13 d27 BER)
  (at ap13 d35 BER)
  (at ap13 d45 BER)
  (at ap13 d2 HAM)
  (at ap13 d52 HAM)
  (at ap13 d59 HAM)
  (at ap14 d14 FRA)
  (at ap14 d20 FRA)
  (at ap14 d29 FRA)
  (at ap14 d15 BER)
  (at ap14 d18 BER)
  (at ap14 d17 HAM)
  (at ap14 d22 HAM)
  (at ap14 d23 HAM)
  (at ap14 d60 HAM)
  (at ap15 d54 FRA)
  (at ap15 d9 BER)
  (at ap15 d12 BER)
  (at ap15 d13 BER)
  (at ap15 d54 BER)
  (at ap15 d57 BER)
  (at ap15 d1 HAM)
  (at ap15 d36 HAM)
  (at ap15 d59 HAM)
  (at ap16 d35 FRA)
  (at ap16 d22 BER)
  (at ap16 d33 BER)
  (at ap16 d40 BER)
  (at ap16 d49 BER)
  (at ap16 d57 BER)
  (at ap16 d8 HAM)
  (at ap16 d18 HAM)
  (at ap16 d55 HAM)
  (at ap17 d17 FRA)
  (at ap17 d57 FRA)
  (at ap17 d4 BER)
  (at ap17 d9 BER)
  (at ap17 d13 HAM)
  (at ap17 d23 HAM)
  (at ap17 d25 HAM)
  (at ap17 d44 HAM)
  (at ap17 d59 HAM)
  (at ap18 d38 FRA)
  (at ap18 d40 FRA)
  (at ap18 d53 FRA)
  (at ap18 d56 FRA)
  (at ap18 d60 FRA)
  (at ap18 d26 BER)
  (at ap18 d29 HAM)
  (at ap18 d32 HAM)
  (at ap18 d42 HAM)
  (at ap19 d20 FRA)
  (at ap19 d21 FRA)
  (at ap19 d23 FRA)
  (at ap19 d3 BER)
  (at ap19 d6 BER)
  (at ap19 d15 BER)
  (at ap19 d1 HAM)
  (at ap19 d26 HAM)
  (at ap19 d56 HAM)
  (at ap20 d13 FRA)
  (at ap20 d15 FRA)
  (at ap20 d23 FRA)
  (at ap20 d42 FRA)
  (at ap20 d3 BER)
  (at ap20 d12 BER)
  (at ap20 d16 BER)
  (at ap20 d59 BER)
  (at ap20 d33 HAM)
  (at ap21 d2 FRA)
  (at ap21 d29 FRA)
  (at ap21 d34 FRA)
  (at ap21 d45 FRA)
  (at ap21 d16 BER)
  (at ap21 d56 BER)
  (at ap21 d21 HAM)
  (at ap21 d22 HAM)
  (at ap21 d40 HAM)
  (at ap22 d40 FRA)
  (at ap22 d57 FRA)
  (at ap22 d23 BER)
  (at ap22 d24 BER)
  (at ap22 d45 BER)
  (at ap22 d49 BER)
  (at ap22 d4 HAM)
  (at ap22 d5 HAM)
  (at ap22 d59 HAM)
  (at ap23 d11 FRA)
  (at ap23 d23 FRA)
  (at ap23 d51 FRA)
  (at ap23 d58 FRA)
  (at ap23 d36 BER)
  (at ap23 d43 BER)
  (at ap23 d60 BER)
  (at ap23 d20 HAM)
  (at ap23 d31 HAM)
  (at ap24 d23 FRA)
  (at ap24 d30 FRA)
  (at ap24 d52 FRA)
  (at ap24 d14 BER)
  (at ap24 d14 BER)
  (at ap24 d24 BER)
  (at ap24 d40 BER)
  (at ap24 d29 HAM)
  (at ap24 d57 HAM)
  (at ap25 d23 FRA)
  (at ap25 d47 FRA)
  (at ap25 d13 BER)
  (at ap25 d23 BER)
  (at ap25 d30 BER)
  (at ap25 d33 BER)
  (at ap25 d16 HAM)
  (at ap25 d20 HAM)
  (at ap25 d47 HAM)
  (at ap26 d24 BER)
  (at ap26 d27 BER)
  (at ap26 d59 BER)
  (at ap26 d4 HAM)
  (at ap26 d11 HAM)
  (at ap26 d17 HAM)
  (at ap26 d18 HAM)
  (at ap26 d43 HAM)
  (at ap26 d48 HAM)
  (at ap27 d54 FRA)
  (at ap27 d12 BER)
  (at ap27 d14 BER)
  (at ap27 d16 BER)
  (at ap27 d20 BER)
  (at ap27 d23 BER)
  (at ap27 d19 HAM)
  (at ap27 d21 HAM)
  (at ap27 d31 HAM)
  (at ap28 d3 FRA)
  (at ap28 d23 FRA)
  (at ap28 d41 FRA)
  (at ap28 d48 FRA)
  (at ap28 d55 FRA)
  (at ap28 d59 FRA)
  (at ap28 d38 BER)
  (at ap28 d56 BER)
  (at ap28 d7 HAM)
  (at ap29 d2 FRA)
  (at ap29 d39 FRA)
  (at ap29 d18 BER)
  (at ap29 d18 BER)
  (at ap29 d5 HAM)
  (at ap29 d8 HAM)
  (at ap29 d24 HAM)
  (at ap29 d38 HAM)
  (at ap29 d58 HAM)
  (at ap30 d3 FRA)
  (at ap30 d20 FRA)
  (at ap30 d45 FRA)
  (at ap30 d52 FRA)
  (at ap30 d24 BER)
  (at ap30 d56 BER)
  (at ap30 d32 HAM)
  (at ap30 d42 HAM)
  (at ap30 d57 HAM)
  (at ap31 d8 FRA)
  (at ap31 d26 FRA)
  (at ap31 d46 FRA)
  (at ap31 d5 BER)
  (at ap31 d19 BER)
  (at ap31 d36 BER)
  (at ap31 d60 BER)
  (at ap31 d10 HAM)
  (at ap31 d49 HAM)
  (at ap32 d5 FRA)
  (at ap32 d27 FRA)
  (at ap32 d42 FRA)
  (at ap32 d58 FRA)
  (at ap32 d26 BER)
  (at ap32 d32 BER)
  (at ap32 d18 HAM)
  (at ap32 d29 HAM)
  (at ap32 d44 HAM)
  (at ap33 d4 FRA)
  (at ap33 d30 FRA)
  (at ap33 d35 FRA)
  (at ap33 d60 FRA)
  (at ap33 d10 BER)
  (at ap33 d41 BER)
  (at ap33 d15 HAM)
  (at ap33 d29 HAM)
  (at ap33 d46 HAM)
  (at ap34 d30 FRA)
  (at ap34 d60 FRA)
  (at ap34 d16 BER)
  (at ap34 d40 BER)
  (at ap34 d55 BER)
  (at ap34 d59 BER)
  (at ap34 d44 HAM)
  (at ap34 d46 HAM)
  (at ap34 d47 HAM)
  (at ap35 d14 FRA)
  (at ap35 d17 FRA)
  (at ap35 d15 BER)
  (at ap35 d36 BER)
  (at ap35 d53 BER)
  (at ap35 d24 HAM)
  (at ap35 d27 HAM)
  (at ap35 d27 HAM)
  (at ap35 d28 HAM)
  (at ap36 d17 FRA)
  (at ap36 d38 FRA)
  (at ap36 d44 FRA)
  (at ap36 d51 BER)
  (at ap36 d19 HAM)
  (at ap36 d21 HAM)
  (at ap36 d45 HAM)
  (at ap36 d45 HAM)
  (at ap36 d53 HAM)
  (at ap37 d12 FRA)
  (at ap37 d14 FRA)
  (at ap37 d18 FRA)
  (at ap37 d41 FRA)
  (at ap37 d52 BER)
  (at ap37 d54 BER)
  (at ap37 d10 HAM)
  (at ap37 d40 HAM)
  (at ap37 d41 HAM)
  (at ap38 d14 BER)
  (at ap38 d50 BER)
  (at ap38 d51 BER)
  (at ap38 d55 BER)
  (at ap38 d59 BER)
  (at ap38 d18 HAM)
  (at ap38 d26 HAM)
  (at ap38 d32 HAM)
  (at ap38 d57 HAM)
  (at ap39 d6 FRA)
  (at ap39 d11 FRA)
  (at ap39 d32 FRA)
  (at ap39 d18 BER)
  (at ap39 d33 BER)
  (at ap39 d41 BER)
  (at ap39 d15 HAM)
  (at ap39 d22 HAM)
  (at ap39 d48 HAM)
  (at ap40 d60 FRA)
  (at ap40 d15 BER)
  (at ap40 d16 BER)
  (at ap40 d24 BER)
  (at ap40 d58 BER)
  (at ap40 d28 HAM)
  (at ap40 d55 HAM)
  (at ap40 d55 HAM)
  (at ap40 d55 HAM)
  (at ap41 d1 FRA)
  (at ap41 d22 FRA)
  (at ap41 d28 FRA)
  (at ap41 d47 FRA)
  (at ap41 d53 BER)
  (at ap41 d24 HAM)
  (at ap41 d39 HAM)
  (at ap41 d48 HAM)
  (at ap41 d51 HAM)
  (at ap42 d22 FRA)
  (at ap42 d36 FRA)
  (at ap42 d55 FRA)
  (at ap42 d7 BER)
  (at ap42 d14 BER)
  (at ap42 d24 BER)
  (at ap42 d14 HAM)
  (at ap42 d27 HAM)
  (at ap42 d40 HAM)
  (at ap43 d23 FRA)
  (at ap43 d33 FRA)
  (at ap43 d52 FRA)
  (at ap43 d58 FRA)
  (at ap43 d18 HAM)
  (at ap43 d21 HAM)
  (at ap43 d34 HAM)
  (at ap43 d37 HAM)
  (at ap43 d42 HAM)
  (at ap44 d8 FRA)
  (at ap44 d26 FRA)
  (at ap44 d28 FRA)
  (at ap44 d46 FRA)
  (at ap44 d26 BER)
  (at ap44 d58 BER)
  (at ap44 d60 BER)
  (at ap44 d3 HAM)
  (at ap44 d31 HAM)
  (at ap45 d5 FRA)
  (at ap45 d38 FRA)
  (at ap45 d49 FRA)
  (at ap45 d1 BER)
  (at ap45 d28 BER)
  (at ap45 d39 BER)
  (at ap45 d50 BER)
  (at ap45 d54 BER)
  (at ap45 d22 HAM)
  (at ap46 d40 FRA)
  (at ap46 d44 FRA)
  (at ap46 d45 FRA)
  (at ap46 d59 FRA)
  (at ap46 d1 BER)
  (at ap46 d51 BER)
  (at ap46 d20 HAM)
  (at ap46 d36 HAM)
  (at ap46 d45 HAM)
  (at ap47 d23 FRA)
  (at ap47 d38 FRA)
  (at ap47 d48 FRA)
  (at ap47 d1 BER)
  (at ap47 d23 BER)
  (at ap47 d54 BER)
  (at ap47 d55 BER)
  (at ap47 d11 HAM)
  (at ap47 d22 HAM)
  (at ap48 d12 FRA)
  (at ap48 d30 FRA)
  (at ap48 d33 FRA)
  (at ap48 d56 FRA)
  (at ap48 d58 FRA)
  (at ap48 d1 BER)
  (at ap48 d12 BER)
  (at ap48 d35 BER)
  (at ap48 d32 HAM)
  (at ap49 d4 FRA)
  (at ap49 d7 FRA)
  (at ap49 d13 FRA)
  (at ap49 d60 FRA)
  (at ap49 d26 BER)
  (at ap49 d40 BER)
  (at ap49 d47 BER)
  (at ap49 d24 HAM)
  (at ap49 d32 HAM)
  (at ap50 d38 FRA)
  (at ap50 d50 FRA)
  (at ap50 d5 BER)
  (at ap50 d36 BER)
  (at ap50 d38 BER)
  (at ap50 d12 HAM)
  (at ap50 d17 HAM)
  (at ap50 d37 HAM)
  (at ap50 d46 HAM)
  (at ap51 d27 FRA)
  (at ap51 d20 BER)
  (at ap51 d29 BER)
  (at ap51 d34 BER)
  (at ap51 d41 BER)
  (at ap51 d43 BER)
  (at ap51 d49 BER)
  (at ap51 d34 HAM)
  (at ap51 d37 HAM)
  (at ap52 d15 FRA)
  (at ap52 d37 FRA)
  (at ap52 d60 FRA)
  (at ap52 d19 BER)
  (at ap52 d27 BER)
  (at ap52 d30 HAM)
  (at ap52 d31 HAM)
  (at ap52 d34 HAM)
  (at ap52 d36 HAM)
  (at ap53 d32 FRA)
  (at ap53 d49 FRA)
  (at ap53 d13 BER)
  (at ap53 d16 BER)
  (at ap53 d22 BER)
  (at ap53 d43 BER)
  (at ap53 d24 HAM)
  (at ap53 d40 HAM)
  (at ap53 d57 HAM)
  (at ap54 d2 FRA)
  (at ap54 d14 FRA)
  (at ap54 d31 FRA)
  (at ap54 d32 FRA)
  (at ap54 d56 FRA)
  (at ap54 d2 BER)
  (at ap54 d58 BER)
  (at ap54 d1 HAM)
  (at ap54 d11 HAM)
  (at ap55 d9 FRA)
  (at ap55 d33 FRA)
  (at ap55 d47 FRA)
  (at ap55 d60 FRA)
  (at ap55 d28 BER)
  (at ap55 d33 BER)
  (at ap55 d33 HAM)
  (at ap55 d37 HAM)
  (at ap55 d59 HAM)
  (at ap56 d4 FRA)
  (at ap56 d12 FRA)
  (at ap56 d9 BER)
  (at ap56 d12 BER)
  (at ap56 d24 BER)
  (at ap56 d30 HAM)
  (at ap56 d35 HAM)
  (at ap56 d55 HAM)
  (at ap56 d60 HAM)
  (at ap57 d58 FRA)
  (at ap57 d37 BER)
  (at ap57 d7 HAM)
  (at ap57 d11 HAM)
  (at ap57 d17 HAM)
  (at ap57 d18 HAM)
  (at ap57 d37 HAM)
  (at ap57 d54 HAM)
  (at ap57 d54 HAM)
  (at ap58 d12 FRA)
  (at ap58 d29 FRA)
  (at ap58 d30 FRA)
  (at ap58 d35 FRA)
  (at ap58 d45 FRA)
  (at ap58 d49 FRA)
  (at ap58 d22 BER)
  (at ap58 d34 BER)
  (at ap58 d57 HAM)
  (at ap59 d40 FRA)
  (at ap59 d10 BER)
  (at ap59 d15 BER)
  (at ap59 d28 BER)
  (at ap59 d1 HAM)
  (at ap59 d3 HAM)
  (at ap59 d22 HAM)
  (at ap59 d39 HAM)
  (at ap59 d44 HAM)
  (at ap60 d3 FRA)
  (at ap60 d2 BER)
  (at ap60 d26 BER)
  (at ap60 d35 BER)
  (at ap60 d41 BER)
  (at ap60 d51 BER)
  (at ap60 d56 BER)
  (at ap60 d1 HAM)
  (at ap60 d19 HAM)
  (at ap61 d11 FRA)
  (at ap61 d15 FRA)
  (at ap61 d51 FRA)
  (at ap61 d3 BER)
  (at ap61 d16 BER)
  (at ap61 d23 BER)
  (at ap61 d51 BER)
  (at ap61 d35 HAM)
  (at ap61 d44 HAM)
  (at ap62 d16 FRA)
  (at ap62 d4 BER)
  (at ap62 d4 BER)
  (at ap62 d7 BER)
  (at ap62 d36 BER)
  (at ap62 d38 BER)
  (at ap62 d56 BER)
  (at ap62 d57 BER)
  (at ap62 d58 HAM)
  (at ap63 d6 FRA)
  (at ap63 d12 FRA)
  (at ap63 d38 FRA)
  (at ap63 d51 FRA)
  (at ap63 d52 FRA)
  (at ap63 d57 FRA)
  (at ap63 d31 BER)
  (at ap63 d23 HAM)
  (at ap63 d27 HAM)
  (at ap64 d23 FRA)
  (at ap64 d24 FRA)
  (at ap64 d38 FRA)
  (at ap64 d54 FRA)
  (at ap64 d18 BER)
  (at ap64 d48 BER)
  (at ap64 d4 HAM)
  (at ap64 d12 HAM)
  (at ap64 d41 HAM)
  (at ap65 d24 FRA)
  (at ap65 d25 FRA)
  (at ap65 d3 BER)
  (at ap65 d18 BER)
  (at ap65 d6 HAM)
  (at ap65 d13 HAM)
  (at ap65 d20 HAM)
  (at ap65 d27 HAM)
  (at ap65 d51 HAM)
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