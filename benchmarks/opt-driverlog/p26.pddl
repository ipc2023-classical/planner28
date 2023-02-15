(define (problem DLOG-1-2-12)
	(:domain driverlog)
	(:objects
	driver1 - driver
	truck1 - truck
	truck2 - truck
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
	p0-2 - location
	p0-7 - location
	p0-10 - location
	p1-3 - location
	p1-8 - location
	p1-9 - location
	p2-6 - location
	p2-8 - location
	p4-6 - location
	p5-0 - location
	p5-8 - location
	p6-10 - location
	p8-4 - location
	p9-3 - location
	p9-10 - location
	p9-11 - location
	p9-12 - location
	p10-2 - location
	p10-3 - location
	p10-5 - location
	p10-8 - location
	p11-1 - location
	p11-3 - location
	p11-5 - location
	p11-7 - location
	p12-2 - location
	)
	(:init
	(at driver1 s6)
	(at truck1 s7)
	(empty truck1)
	(at truck2 s10)
	(empty truck2)
	(at package1 s1)
	(at package2 s3)
	(at package3 s10)
	(at package4 s4)
	(at package5 s9)
	(at package6 s9)
	(at package7 s6)
	(at package8 s11)
	(at package9 s1)
	(at package10 s3)
	(at package11 s1)
	(at package12 s2)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(path s0 p0-7)
	(path p0-7 s0)
	(path s7 p0-7)
	(path p0-7 s7)
	(path s0 p0-10)
	(path p0-10 s0)
	(path s10 p0-10)
	(path p0-10 s10)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(path s1 p1-8)
	(path p1-8 s1)
	(path s8 p1-8)
	(path p1-8 s8)
	(path s1 p1-9)
	(path p1-9 s1)
	(path s9 p1-9)
	(path p1-9 s9)
	(path s2 p2-6)
	(path p2-6 s2)
	(path s6 p2-6)
	(path p2-6 s6)
	(path s2 p2-8)
	(path p2-8 s2)
	(path s8 p2-8)
	(path p2-8 s8)
	(path s4 p4-6)
	(path p4-6 s4)
	(path s6 p4-6)
	(path p4-6 s6)
	(path s5 p5-0)
	(path p5-0 s5)
	(path s0 p5-0)
	(path p5-0 s0)
	(path s5 p5-8)
	(path p5-8 s5)
	(path s8 p5-8)
	(path p5-8 s8)
	(path s6 p6-10)
	(path p6-10 s6)
	(path s10 p6-10)
	(path p6-10 s10)
	(path s8 p8-4)
	(path p8-4 s8)
	(path s4 p8-4)
	(path p8-4 s4)
	(path s9 p9-3)
	(path p9-3 s9)
	(path s3 p9-3)
	(path p9-3 s3)
	(path s9 p9-10)
	(path p9-10 s9)
	(path s10 p9-10)
	(path p9-10 s10)
	(path s9 p9-11)
	(path p9-11 s9)
	(path s11 p9-11)
	(path p9-11 s11)
	(path s9 p9-12)
	(path p9-12 s9)
	(path s12 p9-12)
	(path p9-12 s12)
	(path s10 p10-2)
	(path p10-2 s10)
	(path s2 p10-2)
	(path p10-2 s2)
	(path s10 p10-3)
	(path p10-3 s10)
	(path s3 p10-3)
	(path p10-3 s3)
	(path s10 p10-5)
	(path p10-5 s10)
	(path s5 p10-5)
	(path p10-5 s5)
	(path s10 p10-8)
	(path p10-8 s10)
	(path s8 p10-8)
	(path p10-8 s8)
	(path s11 p11-1)
	(path p11-1 s11)
	(path s1 p11-1)
	(path p11-1 s1)
	(path s11 p11-3)
	(path p11-3 s11)
	(path s3 p11-3)
	(path p11-3 s3)
	(path s11 p11-5)
	(path p11-5 s11)
	(path s5 p11-5)
	(path p11-5 s5)
	(path s11 p11-7)
	(path p11-7 s11)
	(path s7 p11-7)
	(path p11-7 s7)
	(path s12 p12-2)
	(path p12-2 s12)
	(path s2 p12-2)
	(path p12-2 s2)
	(link s0 s4)
	(link s4 s0)
	(link s0 s10)
	(link s10 s0)
	(link s1 s2)
	(link s2 s1)
	(link s1 s6)
	(link s6 s1)
	(link s1 s10)
	(link s10 s1)
	(link s1 s12)
	(link s12 s1)
	(link s2 s0)
	(link s0 s2)
	(link s2 s7)
	(link s7 s2)
	(link s2 s8)
	(link s8 s2)
	(link s3 s0)
	(link s0 s3)
	(link s3 s2)
	(link s2 s3)
	(link s3 s9)
	(link s9 s3)
	(link s3 s11)
	(link s11 s3)
	(link s4 s1)
	(link s1 s4)
	(link s4 s2)
	(link s2 s4)
	(link s4 s7)
	(link s7 s4)
	(link s4 s11)
	(link s11 s4)
	(link s5 s0)
	(link s0 s5)
	(link s5 s1)
	(link s1 s5)
	(link s5 s2)
	(link s2 s5)
	(link s5 s4)
	(link s4 s5)
	(link s5 s6)
	(link s6 s5)
	(link s5 s11)
	(link s11 s5)
	(link s6 s2)
	(link s2 s6)
	(link s6 s10)
	(link s10 s6)
	(link s6 s11)
	(link s11 s6)
	(link s7 s0)
	(link s0 s7)
	(link s7 s8)
	(link s8 s7)
	(link s7 s11)
	(link s11 s7)
	(link s8 s1)
	(link s1 s8)
	(link s8 s10)
	(link s10 s8)
	(link s9 s0)
	(link s0 s9)
	(link s9 s6)
	(link s6 s9)
	(link s9 s12)
	(link s12 s9)
	(link s10 s3)
	(link s3 s10)
	(link s11 s0)
	(link s0 s11)
	(link s11 s9)
	(link s9 s11)
	(link s11 s12)
	(link s12 s11)
	(link s12 s3)
	(link s3 s12)
	(link s12 s6)
	(link s6 s12)
	(link s12 s8)
	(link s8 s12)
	(link s12 s10)
	(link s10 s12)
)
	(:goal (and
	(at truck2 s5)
	(at package1 s8)
	(at package2 s4)
	(at package3 s11)
	(at package4 s1)
	(at package5 s2)
	(at package6 s7)
	(at package7 s1)
	(at package8 s7)
	(at package9 s2)
	(at package10 s12)
	(at package11 s0)
	(at package12 s4)
	))


)
