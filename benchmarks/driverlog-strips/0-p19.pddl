(define (problem DLOG-1-1-22)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	package16 - obj
	package17 - obj
	package18 - obj
	package19 - obj
	package20 - obj
	package21 - obj
	package22 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	s12 - location
	s13 - location
	s14 - location
	s15 - location
	s16 - location
	s17 - location
	s18 - location
	s19 - location
	s20 - location
	s21 - location
	s22 - location
	s23 - location
	s24 - location
	s25 - location
	p0-1 - location
	p0-5 - location
	p0-18 - location
	p1-4 - location
	p1-15 - location
	p1-21 - location
	p2-0 - location
	p2-19 - location
	p3-6 - location
	p4-7 - location
	p4-9 - location
	p4-16 - location
	p4-18 - location
	p4-22 - location
	p5-9 - location
	p5-10 - location
	p6-0 - location
	p7-0 - location
	p7-9 - location
	p7-14 - location
	p10-17 - location
	p11-24 - location
	p12-13 - location
	p12-23 - location
	p13-5 - location
	p13-10 - location
	p14-3 - location
	p14-15 - location
	p14-17 - location
	p14-25 - location
	p16-2 - location
	p16-18 - location
	p16-20 - location
	p17-2 - location
	p17-11 - location
	p17-16 - location
	p17-23 - location
	p18-2 - location
	p18-8 - location
	p18-13 - location
	p19-3 - location
	p19-8 - location
	p19-12 - location
	p19-18 - location
	p20-9 - location
	p21-3 - location
	p23-6 - location
	p24-0 - location
	p24-2 - location
	p24-9 - location
	p24-19 - location
	)
	(:init
	(at driver1 s18)
	(at truck1 s4)
	(empty truck1)
	(at package1 s17)
	(at package2 s25)
	(at package3 s6)
	(at package4 s15)
	(at package5 s6)
	(at package6 s24)
	(at package7 s4)
	(at package8 s16)
	(at package9 s10)
	(at package10 s2)
	(at package11 s13)
	(at package12 s0)
	(at package13 s21)
	(at package14 s19)
	(at package15 s8)
	(at package16 s22)
	(at package17 s11)
	(at package18 s15)
	(at package19 s25)
	(at package20 s0)
	(at package21 s3)
	(at package22 s0)
	(path s0 p0-1)
	(path p0-1 s0)
	(path s1 p0-1)
	(path p0-1 s1)
	(path s0 p0-5)
	(path p0-5 s0)
	(path s5 p0-5)
	(path p0-5 s5)
	(path s0 p0-18)
	(path p0-18 s0)
	(path s18 p0-18)
	(path p0-18 s18)
	(path s1 p1-4)
	(path p1-4 s1)
	(path s4 p1-4)
	(path p1-4 s4)
	(path s1 p1-15)
	(path p1-15 s1)
	(path s15 p1-15)
	(path p1-15 s15)
	(path s1 p1-21)
	(path p1-21 s1)
	(path s21 p1-21)
	(path p1-21 s21)
	(path s2 p2-0)
	(path p2-0 s2)
	(path s0 p2-0)
	(path p2-0 s0)
	(path s2 p2-19)
	(path p2-19 s2)
	(path s19 p2-19)
	(path p2-19 s19)
	(path s3 p3-6)
	(path p3-6 s3)
	(path s6 p3-6)
	(path p3-6 s6)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(path s4 p4-9)
	(path p4-9 s4)
	(path s9 p4-9)
	(path p4-9 s9)
	(path s4 p4-16)
	(path p4-16 s4)
	(path s16 p4-16)
	(path p4-16 s16)
	(path s4 p4-18)
	(path p4-18 s4)
	(path s18 p4-18)
	(path p4-18 s18)
	(path s4 p4-22)
	(path p4-22 s4)
	(path s22 p4-22)
	(path p4-22 s22)
	(path s5 p5-9)
	(path p5-9 s5)
	(path s9 p5-9)
	(path p5-9 s9)
	(path s5 p5-10)
	(path p5-10 s5)
	(path s10 p5-10)
	(path p5-10 s10)
	(path s6 p6-0)
	(path p6-0 s6)
	(path s0 p6-0)
	(path p6-0 s0)
	(path s7 p7-0)
	(path p7-0 s7)
	(path s0 p7-0)
	(path p7-0 s0)
	(path s7 p7-9)
	(path p7-9 s7)
	(path s9 p7-9)
	(path p7-9 s9)
	(path s7 p7-14)
	(path p7-14 s7)
	(path s14 p7-14)
	(path p7-14 s14)
	(path s10 p10-17)
	(path p10-17 s10)
	(path s17 p10-17)
	(path p10-17 s17)
	(path s11 p11-24)
	(path p11-24 s11)
	(path s24 p11-24)
	(path p11-24 s24)
	(path s12 p12-13)
	(path p12-13 s12)
	(path s13 p12-13)
	(path p12-13 s13)
	(path s12 p12-23)
	(path p12-23 s12)
	(path s23 p12-23)
	(path p12-23 s23)
	(path s13 p13-5)
	(path p13-5 s13)
	(path s5 p13-5)
	(path p13-5 s5)
	(path s13 p13-10)
	(path p13-10 s13)
	(path s10 p13-10)
	(path p13-10 s10)
	(path s14 p14-3)
	(path p14-3 s14)
	(path s3 p14-3)
	(path p14-3 s3)
	(path s14 p14-15)
	(path p14-15 s14)
	(path s15 p14-15)
	(path p14-15 s15)
	(path s14 p14-17)
	(path p14-17 s14)
	(path s17 p14-17)
	(path p14-17 s17)
	(path s14 p14-25)
	(path p14-25 s14)
	(path s25 p14-25)
	(path p14-25 s25)
	(path s16 p16-2)
	(path p16-2 s16)
	(path s2 p16-2)
	(path p16-2 s2)
	(path s16 p16-18)
	(path p16-18 s16)
	(path s18 p16-18)
	(path p16-18 s18)
	(path s16 p16-20)
	(path p16-20 s16)
	(path s20 p16-20)
	(path p16-20 s20)
	(path s17 p17-2)
	(path p17-2 s17)
	(path s2 p17-2)
	(path p17-2 s2)
	(path s17 p17-11)
	(path p17-11 s17)
	(path s11 p17-11)
	(path p17-11 s11)
	(path s17 p17-16)
	(path p17-16 s17)
	(path s16 p17-16)
	(path p17-16 s16)
	(path s17 p17-23)
	(path p17-23 s17)
	(path s23 p17-23)
	(path p17-23 s23)
	(path s18 p18-2)
	(path p18-2 s18)
	(path s2 p18-2)
	(path p18-2 s2)
	(path s18 p18-8)
	(path p18-8 s18)
	(path s8 p18-8)
	(path p18-8 s8)
	(path s18 p18-13)
	(path p18-13 s18)
	(path s13 p18-13)
	(path p18-13 s13)
	(path s19 p19-3)
	(path p19-3 s19)
	(path s3 p19-3)
	(path p19-3 s3)
	(path s19 p19-8)
	(path p19-8 s19)
	(path s8 p19-8)
	(path p19-8 s8)
	(path s19 p19-12)
	(path p19-12 s19)
	(path s12 p19-12)
	(path p19-12 s12)
	(path s19 p19-18)
	(path p19-18 s19)
	(path s18 p19-18)
	(path p19-18 s18)
	(path s20 p20-9)
	(path p20-9 s20)
	(path s9 p20-9)
	(path p20-9 s9)
	(path s21 p21-3)
	(path p21-3 s21)
	(path s3 p21-3)
	(path p21-3 s3)
	(path s23 p23-6)
	(path p23-6 s23)
	(path s6 p23-6)
	(path p23-6 s6)
	(path s24 p24-0)
	(path p24-0 s24)
	(path s0 p24-0)
	(path p24-0 s0)
	(path s24 p24-2)
	(path p24-2 s24)
	(path s2 p24-2)
	(path p24-2 s2)
	(path s24 p24-9)
	(path p24-9 s24)
	(path s9 p24-9)
	(path p24-9 s9)
	(path s24 p24-19)
	(path p24-19 s24)
	(path s19 p24-19)
	(path p24-19 s19)
	(link s0 s4)
	(link s4 s0)
	(link s0 s12)
	(link s12 s0)
	(link s0 s19)
	(link s19 s0)
	(link s0 s23)
	(link s23 s0)
	(link s1 s5)
	(link s5 s1)
	(link s1 s6)
	(link s6 s1)
	(link s1 s7)
	(link s7 s1)
	(link s1 s19)
	(link s19 s1)
	(link s2 s3)
	(link s3 s2)
	(link s2 s17)
	(link s17 s2)
	(link s2 s22)
	(link s22 s2)
	(link s3 s20)
	(link s20 s3)
	(link s3 s24)
	(link s24 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s3)
	(link s3 s4)
	(link s4 s6)
	(link s6 s4)
	(link s4 s7)
	(link s7 s4)
	(link s4 s12)
	(link s12 s4)
	(link s4 s16)
	(link s16 s4)
	(link s4 s18)
	(link s18 s4)
	(link s4 s20)
	(link s20 s4)
	(link s4 s23)
	(link s23 s4)
	(link s5 s0)
	(link s0 s5)
	(link s5 s4)
	(link s4 s5)
	(link s5 s7)
	(link s7 s5)
	(link s5 s9)
	(link s9 s5)
	(link s5 s12)
	(link s12 s5)
	(link s5 s16)
	(link s16 s5)
	(link s6 s0)
	(link s0 s6)
	(link s6 s13)
	(link s13 s6)
	(link s7 s0)
	(link s0 s7)
	(link s7 s2)
	(link s2 s7)
	(link s7 s6)
	(link s6 s7)
	(link s7 s14)
	(link s14 s7)
	(link s7 s19)
	(link s19 s7)
	(link s8 s3)
	(link s3 s8)
	(link s8 s5)
	(link s5 s8)
	(link s8 s6)
	(link s6 s8)
	(link s9 s0)
	(link s0 s9)
	(link s9 s8)
	(link s8 s9)
	(link s9 s12)
	(link s12 s9)
	(link s9 s15)
	(link s15 s9)
	(link s9 s17)
	(link s17 s9)
	(link s9 s21)
	(link s21 s9)
	(link s10 s8)
	(link s8 s10)
	(link s10 s9)
	(link s9 s10)
	(link s10 s11)
	(link s11 s10)
	(link s10 s17)
	(link s17 s10)
	(link s10 s21)
	(link s21 s10)
	(link s10 s22)
	(link s22 s10)
	(link s10 s24)
	(link s24 s10)
	(link s11 s9)
	(link s9 s11)
	(link s11 s22)
	(link s22 s11)
	(link s11 s25)
	(link s25 s11)
	(link s12 s3)
	(link s3 s12)
	(link s12 s24)
	(link s24 s12)
	(link s13 s3)
	(link s3 s13)
	(link s13 s14)
	(link s14 s13)
	(link s13 s24)
	(link s24 s13)
	(link s14 s3)
	(link s3 s14)
	(link s14 s4)
	(link s4 s14)
	(link s14 s5)
	(link s5 s14)
	(link s14 s15)
	(link s15 s14)
	(link s14 s16)
	(link s16 s14)
	(link s15 s7)
	(link s7 s15)
	(link s17 s3)
	(link s3 s17)
	(link s17 s18)
	(link s18 s17)
	(link s17 s21)
	(link s21 s17)
	(link s17 s23)
	(link s23 s17)
	(link s18 s2)
	(link s2 s18)
	(link s18 s8)
	(link s8 s18)
	(link s18 s9)
	(link s9 s18)
	(link s18 s14)
	(link s14 s18)
	(link s18 s23)
	(link s23 s18)
	(link s19 s10)
	(link s10 s19)
	(link s19 s15)
	(link s15 s19)
	(link s19 s20)
	(link s20 s19)
	(link s19 s24)
	(link s24 s19)
	(link s20 s24)
	(link s24 s20)
	(link s21 s2)
	(link s2 s21)
	(link s21 s3)
	(link s3 s21)
	(link s21 s4)
	(link s4 s21)
	(link s21 s15)
	(link s15 s21)
	(link s21 s22)
	(link s22 s21)
	(link s22 s13)
	(link s13 s22)
	(link s22 s16)
	(link s16 s22)
	(link s22 s20)
	(link s20 s22)
	(link s22 s24)
	(link s24 s22)
	(link s23 s1)
	(link s1 s23)
	(link s24 s2)
	(link s2 s24)
	(link s24 s8)
	(link s8 s24)
	(link s24 s21)
	(link s21 s24)
	(link s25 s12)
	(link s12 s25)
	(link s25 s17)
	(link s17 s25)
)
	(:goal (and
	(at driver1 s17)
	(at truck1 s2)
	(at package1 s19)
	(at package2 s24)
	(at package3 s6)
	(at package4 s23)
	(at package5 s9)
	(at package6 s12)
	(at package7 s5)
	(at package8 s9)
	(at package10 s6)
	(at package11 s23)
	(at package12 s23)
	(at package13 s3)
	(at package14 s19)
	(at package15 s25)
	(at package16 s24)
	(at package17 s2)
	(at package18 s19)
	(at package19 s4)
	(at package20 s7)
	(at package21 s20)
	(at package22 s20)
	))


)