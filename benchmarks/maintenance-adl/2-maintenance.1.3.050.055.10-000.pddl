(define (problem maintenance-scheduling-1-3-50-55-10-0)
 (:domain maintenance-scheduling-domain)
 (:objects d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 - day
   FRA BER HAM - airport
   ap1 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap20 ap21 ap22 ap23 ap24 ap25 ap26 ap27 ap28 ap29 ap30 ap31 ap32 ap33 ap34 ap35 ap36 ap37 ap38 ap39 ap40 ap41 ap42 ap43 ap44 ap45 ap46 ap47 ap48 ap49 ap50 ap51 ap52 ap53 ap54 ap55 - plane)
 (:init
  (today d1)  (today d2)  (today d3)  (today d4)  (today d5)  (today d6)  (today d7)  (today d8)  (today d9)  (today d10)  (today d11)  (today d12)  (today d13)  (today d14)  (today d15)  (today d16)  (today d17)  (today d18)  (today d19)  (today d20)  (today d21)  (today d22)  (today d23)  (today d24)  (today d25)  (today d26)  (today d27)  (today d28)  (today d29)  (today d30)  (today d31)  (today d32)  (today d33)  (today d34)  (today d35)  (today d36)  (today d37)  (today d38)  (today d39)  (today d40)  (today d41)  (today d42)  (today d43)  (today d44)  (today d45)  (today d46)  (today d47)  (today d48)  (today d49)  (today d50)  (at ap1 d8 BER)
  (at ap1 d24 BER)
  (at ap1 d28 BER)
  (at ap1 d41 BER)
  (at ap1 d24 HAM)
  (at ap1 d31 HAM)
  (at ap1 d38 HAM)
  (at ap1 d41 HAM)
  (at ap1 d43 HAM)
  (at ap1 d45 HAM)
  (at ap2 d11 FRA)
  (at ap2 d11 FRA)
  (at ap2 d30 FRA)
  (at ap2 d50 FRA)
  (at ap2 d4 BER)
  (at ap2 d13 BER)
  (at ap2 d17 BER)
  (at ap2 d30 BER)
  (at ap2 d10 HAM)
  (at ap2 d48 HAM)
  (at ap3 d44 FRA)
  (at ap3 d9 BER)
  (at ap3 d29 BER)
  (at ap3 d31 BER)
  (at ap3 d45 BER)
  (at ap3 d2 HAM)
  (at ap3 d18 HAM)
  (at ap3 d19 HAM)
  (at ap3 d25 HAM)
  (at ap3 d36 HAM)
  (at ap4 d14 FRA)
  (at ap4 d28 FRA)
  (at ap4 d2 BER)
  (at ap4 d16 BER)
  (at ap4 d23 BER)
  (at ap4 d29 BER)
  (at ap4 d36 BER)
  (at ap4 d49 BER)
  (at ap4 d26 HAM)
  (at ap4 d50 HAM)
  (at ap5 d2 FRA)
  (at ap5 d17 FRA)
  (at ap5 d39 FRA)
  (at ap5 d6 BER)
  (at ap5 d16 BER)
  (at ap5 d30 BER)
  (at ap5 d3 HAM)
  (at ap5 d6 HAM)
  (at ap5 d18 HAM)
  (at ap5 d39 HAM)
  (at ap6 d2 FRA)
  (at ap6 d28 FRA)
  (at ap6 d45 FRA)
  (at ap6 d46 FRA)
  (at ap6 d43 BER)
  (at ap6 d10 HAM)
  (at ap6 d19 HAM)
  (at ap6 d22 HAM)
  (at ap6 d36 HAM)
  (at ap6 d38 HAM)
  (at ap7 d7 FRA)
  (at ap7 d18 FRA)
  (at ap7 d46 FRA)
  (at ap7 d11 BER)
  (at ap7 d14 BER)
  (at ap7 d33 BER)
  (at ap7 d43 BER)
  (at ap7 d45 BER)
  (at ap7 d46 BER)
  (at ap7 d22 HAM)
  (at ap8 d6 FRA)
  (at ap8 d39 FRA)
  (at ap8 d41 FRA)
  (at ap8 d46 FRA)
  (at ap8 d23 BER)
  (at ap8 d36 BER)
  (at ap8 d41 BER)
  (at ap8 d5 HAM)
  (at ap8 d17 HAM)
  (at ap8 d40 HAM)
  (at ap9 d1 FRA)
  (at ap9 d14 FRA)
  (at ap9 d24 FRA)
  (at ap9 d27 FRA)
  (at ap9 d17 BER)
  (at ap9 d39 BER)
  (at ap9 d45 BER)
  (at ap9 d14 HAM)
  (at ap9 d21 HAM)
  (at ap9 d24 HAM)
  (at ap10 d23 FRA)
  (at ap10 d30 FRA)
  (at ap10 d36 FRA)
  (at ap10 d48 FRA)
  (at ap10 d24 BER)
  (at ap10 d36 BER)
  (at ap10 d47 BER)
  (at ap10 d26 HAM)
  (at ap10 d43 HAM)
  (at ap10 d45 HAM)
  (at ap11 d12 FRA)
  (at ap11 d13 FRA)
  (at ap11 d43 FRA)
  (at ap11 d4 BER)
  (at ap11 d9 BER)
  (at ap11 d20 BER)
  (at ap11 d45 BER)
  (at ap11 d19 HAM)
  (at ap11 d26 HAM)
  (at ap11 d42 HAM)
  (at ap12 d6 FRA)
  (at ap12 d8 FRA)
  (at ap12 d25 FRA)
  (at ap12 d46 FRA)
  (at ap12 d7 BER)
  (at ap12 d18 BER)
  (at ap12 d45 BER)
  (at ap12 d23 HAM)
  (at ap12 d36 HAM)
  (at ap12 d44 HAM)
  (at ap13 d2 FRA)
  (at ap13 d6 FRA)
  (at ap13 d50 FRA)
  (at ap13 d14 BER)
  (at ap13 d27 BER)
  (at ap13 d31 BER)
  (at ap13 d32 BER)
  (at ap13 d4 HAM)
  (at ap13 d9 HAM)
  (at ap13 d45 HAM)
  (at ap14 d1 FRA)
  (at ap14 d10 FRA)
  (at ap14 d15 FRA)
  (at ap14 d18 FRA)
  (at ap14 d38 FRA)
  (at ap14 d49 FRA)
  (at ap14 d5 BER)
  (at ap14 d20 BER)
  (at ap14 d30 BER)
  (at ap14 d1 HAM)
  (at ap15 d5 FRA)
  (at ap15 d6 FRA)
  (at ap15 d48 FRA)
  (at ap15 d49 FRA)
  (at ap15 d4 BER)
  (at ap15 d10 BER)
  (at ap15 d5 HAM)
  (at ap15 d24 HAM)
  (at ap15 d27 HAM)
  (at ap15 d29 HAM)
  (at ap16 d1 FRA)
  (at ap16 d6 FRA)
  (at ap16 d21 FRA)
  (at ap16 d29 FRA)
  (at ap16 d29 FRA)
  (at ap16 d4 BER)
  (at ap16 d8 BER)
  (at ap16 d8 HAM)
  (at ap16 d17 HAM)
  (at ap16 d31 HAM)
  (at ap17 d9 FRA)
  (at ap17 d16 FRA)
  (at ap17 d20 FRA)
  (at ap17 d40 FRA)
  (at ap17 d21 BER)
  (at ap17 d28 BER)
  (at ap17 d5 HAM)
  (at ap17 d32 HAM)
  (at ap17 d34 HAM)
  (at ap17 d34 HAM)
  (at ap18 d6 FRA)
  (at ap18 d8 FRA)
  (at ap18 d36 FRA)
  (at ap18 d1 BER)
  (at ap18 d5 BER)
  (at ap18 d30 BER)
  (at ap18 d31 BER)
  (at ap18 d8 HAM)
  (at ap18 d14 HAM)
  (at ap18 d44 HAM)
  (at ap19 d14 FRA)
  (at ap19 d20 FRA)
  (at ap19 d24 FRA)
  (at ap19 d25 FRA)
  (at ap19 d46 FRA)
  (at ap19 d9 BER)
  (at ap19 d18 BER)
  (at ap19 d49 BER)
  (at ap19 d7 HAM)
  (at ap19 d48 HAM)
  (at ap20 d1 FRA)
  (at ap20 d1 BER)
  (at ap20 d1 BER)
  (at ap20 d24 BER)
  (at ap20 d31 BER)
  (at ap20 d31 BER)
  (at ap20 d33 BER)
  (at ap20 d48 BER)
  (at ap20 d4 HAM)
  (at ap20 d34 HAM)
  (at ap21 d27 FRA)
  (at ap21 d1 BER)
  (at ap21 d11 BER)
  (at ap21 d31 BER)
  (at ap21 d34 BER)
  (at ap21 d41 BER)
  (at ap21 d50 BER)
  (at ap21 d30 HAM)
  (at ap21 d47 HAM)
  (at ap21 d50 HAM)
  (at ap22 d2 FRA)
  (at ap22 d6 FRA)
  (at ap22 d47 FRA)
  (at ap22 d49 FRA)
  (at ap22 d50 FRA)
  (at ap22 d15 HAM)
  (at ap22 d19 HAM)
  (at ap22 d21 HAM)
  (at ap22 d41 HAM)
  (at ap22 d45 HAM)
  (at ap23 d9 FRA)
  (at ap23 d13 FRA)
  (at ap23 d25 FRA)
  (at ap23 d41 FRA)
  (at ap23 d8 BER)
  (at ap23 d4 HAM)
  (at ap23 d4 HAM)
  (at ap23 d11 HAM)
  (at ap23 d11 HAM)
  (at ap23 d39 HAM)
  (at ap24 d8 FRA)
  (at ap24 d22 FRA)
  (at ap24 d42 FRA)
  (at ap24 d50 FRA)
  (at ap24 d16 BER)
  (at ap24 d21 BER)
  (at ap24 d11 HAM)
  (at ap24 d15 HAM)
  (at ap24 d46 HAM)
  (at ap24 d49 HAM)
  (at ap25 d21 FRA)
  (at ap25 d49 FRA)
  (at ap25 d3 BER)
  (at ap25 d6 BER)
  (at ap25 d40 BER)
  (at ap25 d49 BER)
  (at ap25 d4 HAM)
  (at ap25 d5 HAM)
  (at ap25 d17 HAM)
  (at ap25 d31 HAM)
  (at ap26 d9 FRA)
  (at ap26 d12 FRA)
  (at ap26 d29 FRA)
  (at ap26 d21 BER)
  (at ap26 d28 BER)
  (at ap26 d28 BER)
  (at ap26 d42 BER)
  (at ap26 d45 BER)
  (at ap26 d12 HAM)
  (at ap26 d12 HAM)
  (at ap27 d4 FRA)
  (at ap27 d6 FRA)
  (at ap27 d7 BER)
  (at ap27 d9 BER)
  (at ap27 d11 BER)
  (at ap27 d48 BER)
  (at ap27 d25 HAM)
  (at ap27 d32 HAM)
  (at ap27 d43 HAM)
  (at ap27 d46 HAM)
  (at ap28 d16 FRA)
  (at ap28 d18 FRA)
  (at ap28 d32 FRA)
  (at ap28 d35 FRA)
  (at ap28 d26 BER)
  (at ap28 d27 BER)
  (at ap28 d27 BER)
  (at ap28 d42 BER)
  (at ap28 d18 HAM)
  (at ap28 d37 HAM)
  (at ap29 d18 FRA)
  (at ap29 d26 FRA)
  (at ap29 d19 BER)
  (at ap29 d19 BER)
  (at ap29 d35 BER)
  (at ap29 d41 BER)
  (at ap29 d11 HAM)
  (at ap29 d12 HAM)
  (at ap29 d29 HAM)
  (at ap29 d35 HAM)
  (at ap30 d11 FRA)
  (at ap30 d12 FRA)
  (at ap30 d36 FRA)
  (at ap30 d38 FRA)
  (at ap30 d46 FRA)
  (at ap30 d49 FRA)
  (at ap30 d15 BER)
  (at ap30 d38 BER)
  (at ap30 d16 HAM)
  (at ap30 d41 HAM)
  (at ap31 d1 FRA)
  (at ap31 d30 FRA)
  (at ap31 d48 FRA)
  (at ap31 d21 BER)
  (at ap31 d30 BER)
  (at ap31 d44 BER)
  (at ap31 d9 HAM)
  (at ap31 d26 HAM)
  (at ap31 d44 HAM)
  (at ap31 d47 HAM)
  (at ap32 d10 FRA)
  (at ap32 d35 FRA)
  (at ap32 d36 FRA)
  (at ap32 d46 FRA)
  (at ap32 d20 BER)
  (at ap32 d37 BER)
  (at ap32 d48 BER)
  (at ap32 d13 HAM)
  (at ap32 d20 HAM)
  (at ap32 d40 HAM)
  (at ap33 d5 FRA)
  (at ap33 d4 BER)
  (at ap33 d12 BER)
  (at ap33 d22 BER)
  (at ap33 d25 BER)
  (at ap33 d30 BER)
  (at ap33 d7 HAM)
  (at ap33 d20 HAM)
  (at ap33 d42 HAM)
  (at ap33 d49 HAM)
  (at ap34 d30 FRA)
  (at ap34 d48 FRA)
  (at ap34 d18 BER)
  (at ap34 d33 BER)
  (at ap34 d40 BER)
  (at ap34 d4 HAM)
  (at ap34 d5 HAM)
  (at ap34 d13 HAM)
  (at ap34 d17 HAM)
  (at ap34 d40 HAM)
  (at ap35 d17 FRA)
  (at ap35 d22 FRA)
  (at ap35 d6 BER)
  (at ap35 d33 BER)
  (at ap35 d45 BER)
  (at ap35 d4 HAM)
  (at ap35 d8 HAM)
  (at ap35 d12 HAM)
  (at ap35 d42 HAM)
  (at ap35 d44 HAM)
  (at ap36 d6 FRA)
  (at ap36 d37 FRA)
  (at ap36 d44 FRA)
  (at ap36 d1 BER)
  (at ap36 d3 BER)
  (at ap36 d36 BER)
  (at ap36 d50 BER)
  (at ap36 d21 HAM)
  (at ap36 d24 HAM)
  (at ap36 d40 HAM)
  (at ap37 d8 FRA)
  (at ap37 d29 FRA)
  (at ap37 d12 BER)
  (at ap37 d50 BER)
  (at ap37 d11 HAM)
  (at ap37 d27 HAM)
  (at ap37 d37 HAM)
  (at ap37 d40 HAM)
  (at ap37 d42 HAM)
  (at ap37 d43 HAM)
  (at ap38 d35 FRA)
  (at ap38 d12 BER)
  (at ap38 d12 BER)
  (at ap38 d27 BER)
  (at ap38 d38 BER)
  (at ap38 d41 BER)
  (at ap38 d42 BER)
  (at ap38 d15 HAM)
  (at ap38 d16 HAM)
  (at ap38 d30 HAM)
  (at ap39 d20 FRA)
  (at ap39 d33 FRA)
  (at ap39 d37 FRA)
  (at ap39 d48 FRA)
  (at ap39 d5 BER)
  (at ap39 d41 BER)
  (at ap39 d10 HAM)
  (at ap39 d13 HAM)
  (at ap39 d28 HAM)
  (at ap39 d50 HAM)
  (at ap40 d29 FRA)
  (at ap40 d45 FRA)
  (at ap40 d46 FRA)
  (at ap40 d24 BER)
  (at ap40 d49 BER)
  (at ap40 d1 HAM)
  (at ap40 d8 HAM)
  (at ap40 d20 HAM)
  (at ap40 d32 HAM)
  (at ap40 d46 HAM)
  (at ap41 d1 FRA)
  (at ap41 d4 FRA)
  (at ap41 d14 FRA)
  (at ap41 d36 FRA)
  (at ap41 d40 FRA)
  (at ap41 d3 BER)
  (at ap41 d13 BER)
  (at ap41 d14 BER)
  (at ap41 d15 HAM)
  (at ap41 d26 HAM)
  (at ap42 d1 FRA)
  (at ap42 d4 FRA)
  (at ap42 d29 FRA)
  (at ap42 d30 FRA)
  (at ap42 d42 FRA)
  (at ap42 d2 BER)
  (at ap42 d17 BER)
  (at ap42 d21 BER)
  (at ap42 d47 HAM)
  (at ap42 d49 HAM)
  (at ap43 d14 FRA)
  (at ap43 d20 FRA)
  (at ap43 d21 FRA)
  (at ap43 d45 FRA)
  (at ap43 d47 FRA)
  (at ap43 d11 BER)
  (at ap43 d39 BER)
  (at ap43 d30 HAM)
  (at ap43 d31 HAM)
  (at ap43 d44 HAM)
  (at ap44 d8 FRA)
  (at ap44 d25 FRA)
  (at ap44 d31 FRA)
  (at ap44 d44 FRA)
  (at ap44 d49 FRA)
  (at ap44 d10 BER)
  (at ap44 d21 BER)
  (at ap44 d50 BER)
  (at ap44 d3 HAM)
  (at ap44 d46 HAM)
  (at ap45 d2 FRA)
  (at ap45 d38 FRA)
  (at ap45 d41 FRA)
  (at ap45 d44 FRA)
  (at ap45 d26 BER)
  (at ap45 d36 BER)
  (at ap45 d38 BER)
  (at ap45 d2 HAM)
  (at ap45 d34 HAM)
  (at ap45 d49 HAM)
  (at ap46 d11 FRA)
  (at ap46 d14 FRA)
  (at ap46 d20 FRA)
  (at ap46 d13 BER)
  (at ap46 d17 BER)
  (at ap46 d43 BER)
  (at ap46 d11 HAM)
  (at ap46 d24 HAM)
  (at ap46 d29 HAM)
  (at ap46 d41 HAM)
  (at ap47 d27 FRA)
  (at ap47 d29 FRA)
  (at ap47 d45 FRA)
  (at ap47 d45 FRA)
  (at ap47 d3 BER)
  (at ap47 d15 BER)
  (at ap47 d20 BER)
  (at ap47 d22 BER)
  (at ap47 d37 BER)
  (at ap47 d7 HAM)
  (at ap48 d39 FRA)
  (at ap48 d5 BER)
  (at ap48 d12 BER)
  (at ap48 d39 BER)
  (at ap48 d4 HAM)
  (at ap48 d10 HAM)
  (at ap48 d14 HAM)
  (at ap48 d25 HAM)
  (at ap48 d30 HAM)
  (at ap48 d32 HAM)
  (at ap49 d31 FRA)
  (at ap49 d18 BER)
  (at ap49 d28 BER)
  (at ap49 d34 BER)
  (at ap49 d37 BER)
  (at ap49 d40 BER)
  (at ap49 d2 HAM)
  (at ap49 d11 HAM)
  (at ap49 d17 HAM)
  (at ap49 d32 HAM)
  (at ap50 d38 FRA)
  (at ap50 d40 FRA)
  (at ap50 d2 BER)
  (at ap50 d13 BER)
  (at ap50 d23 BER)
  (at ap50 d36 BER)
  (at ap50 d37 BER)
  (at ap50 d41 BER)
  (at ap50 d13 HAM)
  (at ap50 d49 HAM)
  (at ap51 d1 FRA)
  (at ap51 d22 FRA)
  (at ap51 d29 FRA)
  (at ap51 d33 FRA)
  (at ap51 d5 BER)
  (at ap51 d34 BER)
  (at ap51 d45 BER)
  (at ap51 d4 HAM)
  (at ap51 d28 HAM)
  (at ap51 d33 HAM)
  (at ap52 d1 FRA)
  (at ap52 d3 FRA)
  (at ap52 d19 FRA)
  (at ap52 d50 FRA)
  (at ap52 d21 BER)
  (at ap52 d21 BER)
  (at ap52 d50 BER)
  (at ap52 d19 HAM)
  (at ap52 d22 HAM)
  (at ap52 d45 HAM)
  (at ap53 d2 FRA)
  (at ap53 d12 FRA)
  (at ap53 d41 FRA)
  (at ap53 d41 FRA)
  (at ap53 d49 FRA)
  (at ap53 d16 BER)
  (at ap53 d21 BER)
  (at ap53 d36 BER)
  (at ap53 d1 HAM)
  (at ap53 d29 HAM)
  (at ap54 d1 FRA)
  (at ap54 d25 FRA)
  (at ap54 d26 FRA)
  (at ap54 d45 FRA)
  (at ap54 d20 BER)
  (at ap54 d20 BER)
  (at ap54 d20 HAM)
  (at ap54 d23 HAM)
  (at ap54 d43 HAM)
  (at ap54 d44 HAM)
  (at ap55 d20 FRA)
  (at ap55 d23 FRA)
  (at ap55 d23 FRA)
  (at ap55 d26 FRA)
  (at ap55 d50 FRA)
  (at ap55 d40 BER)
  (at ap55 d44 BER)
  (at ap55 d13 HAM)
  (at ap55 d17 HAM)
  (at ap55 d24 HAM)
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
  ))
  )
