; Domain designed by Alfonso Gerevini and Alessandro Saetti
; This file has been automatically generated by the generator available from
; http://zeus.ing.unibs.it/ipc-5/generators/index.html
;
; Map of the Depots:                                                                                                                                                                    
; 0000=1111 2222=3333 4444 5555=6666 7777 8888 9999 AAAA=BBBB CCCC=DDDD EEEE FFFF=GGGG HHHH III                                                                     
; 000* *11  22 * 3*3  444* 5*5  66*  77 * 8*88 *99  *AAA *BB  CC*C *DDD E*E  FF*  GGG* HH*H III                                                                     
;                                                                                           *II                                                                     
;----------------------------------------------------------------------------------------------                                                                     
; 48: depot48 area
; 49: depot49 area
; 50: depot50 area
; 51: depot51 area
; 52: depot52 area
; 53: depot53 area
; 54: depot54 area
; 55: depot55 area
; 56: depot56 area
; 57: depot57 area
; 65: depot65 area
; 66: depot66 area
; 67: depot67 area
; 68: depot68 area
; 69: depot69 area
; 70: depot70 area
; 71: depot71 area
; 72: depot72 area
; 73: depot73 area
; *: Depot access point
; =: Transit area

(define (problem storage-1)
(:domain Storage-Propositional)
(:objects
	depot48-1-1 depot48-1-2 depot48-1-3 depot48-1-4 depot48-2-1 depot48-2-2 depot48-2-3 depot48-2-4 depot49-1-1 depot49-1-2 depot49-1-3 depot49-1-4 depot49-2-1 depot49-2-2 depot49-2-3 depot50-1-1 depot50-1-2 depot50-1-3 depot50-1-4 depot50-2-1 depot50-2-2 depot50-2-4 depot51-1-1 depot51-1-2 depot51-1-3 depot51-1-4 depot51-2-1 depot51-2-2 depot51-2-3 depot52-1-1 depot52-1-2 depot52-1-3 depot52-1-4 depot52-2-1 depot52-2-2 depot52-2-3 depot52-2-4 depot53-1-1 depot53-1-2 depot53-1-3 depot53-1-4 depot53-2-1 depot53-2-2 depot53-2-3 depot54-1-1 depot54-1-2 depot54-1-3 depot54-1-4 depot54-2-1 depot54-2-2 depot54-2-3 depot55-1-1 depot55-1-2 depot55-1-3 depot55-1-4 depot55-2-1 depot55-2-2 depot55-2-4 depot56-1-1 depot56-1-2 depot56-1-3 depot56-1-4 depot56-2-1 depot56-2-2 depot56-2-3 depot56-2-4 depot57-1-1 depot57-1-2 depot57-1-3 depot57-1-4 depot57-2-1 depot57-2-2 depot57-2-3 depot65-1-1 depot65-1-2 depot65-1-3 depot65-1-4 depot65-2-1 depot65-2-2 depot65-2-3 depot65-2-4 depot66-1-1 depot66-1-2 depot66-1-3 depot66-1-4 depot66-2-1 depot66-2-2 depot66-2-3 depot67-1-1 depot67-1-2 depot67-1-3 depot67-1-4 depot67-2-1 depot67-2-2 depot67-2-3 depot67-2-4 depot68-1-1 depot68-1-2 depot68-1-3 depot68-1-4 depot68-2-1 depot68-2-2 depot68-2-3 depot68-2-4 depot69-1-1 depot69-1-2 depot69-1-3 depot69-1-4 depot69-2-1 depot69-2-2 depot69-2-3 depot70-1-1 depot70-1-2 depot70-1-3 depot70-1-4 depot70-2-1 depot70-2-2 depot70-2-3 depot71-1-1 depot71-1-2 depot71-1-3 depot71-1-4 depot71-2-1 depot71-2-2 depot71-2-3 depot71-2-4 depot72-1-1 depot72-1-2 depot72-1-3 depot72-1-4 depot72-2-1 depot72-2-2 depot72-2-3 depot72-2-4 depot73-1-1 depot73-1-2 depot73-1-3 depot73-2-1 depot73-2-2 depot73-2-3 depot73-3-1 depot73-3-2 depot73-3-3 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 container-2-2 container-2-3 container-3-0 container-3-1 container-3-2 container-3-3 container-4-0 container-4-1 container-4-2 container-4-3 container-5-0 container-5-1 container-5-2 container-5-3 container-6-0 - storearea
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 hoist20 hoist21 hoist22 hoist23 hoist24 hoist25 hoist26 hoist27 hoist28 hoist29 hoist30 hoist31 hoist32 hoist33 hoist34 hoist35 hoist36 hoist37 hoist38 hoist39 hoist40 hoist41 hoist42 hoist43 hoist44 hoist45 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 - crate
	container0 container1 container2 container3 container4 container5 container6 - container
	depot48 depot49 depot50 depot51 depot52 depot53 depot54 depot55 depot56 depot57 depot65 depot66 depot67 depot68 depot69 depot70 depot71 depot72 depot73 - depot
	loadarea transit0 transit1 transit2 transit3 transit4 transit5 - transitarea)

(:init
	(connected depot48-1-1 depot48-2-1)
	(connected depot48-1-1 depot48-1-2)
	(connected depot48-1-2 depot48-2-2)
	(connected depot48-1-2 depot48-1-3)
	(connected depot48-1-2 depot48-1-1)
	(connected depot48-1-3 depot48-2-3)
	(connected depot48-1-3 depot48-1-4)
	(connected depot48-1-3 depot48-1-2)
	(connected depot48-1-4 depot48-2-4)
	(connected depot48-1-4 depot48-1-3)
	(connected depot48-2-1 depot48-1-1)
	(connected depot48-2-1 depot48-2-2)
	(connected depot48-2-2 depot48-1-2)
	(connected depot48-2-2 depot48-2-3)
	(connected depot48-2-2 depot48-2-1)
	(connected depot48-2-3 depot48-1-3)
	(connected depot48-2-3 depot48-2-4)
	(connected depot48-2-3 depot48-2-2)
	(connected depot48-2-4 depot48-1-4)
	(connected depot48-2-4 depot48-2-3)
	(connected depot49-1-1 depot49-2-1)
	(connected depot49-1-1 depot49-1-2)
	(connected depot49-1-2 depot49-2-2)
	(connected depot49-1-2 depot49-1-3)
	(connected depot49-1-2 depot49-1-1)
	(connected depot49-1-3 depot49-2-3)
	(connected depot49-1-3 depot49-1-4)
	(connected depot49-1-3 depot49-1-2)
	(connected depot49-1-4 depot49-1-3)
	(connected depot49-2-1 depot49-1-1)
	(connected depot49-2-1 depot49-2-2)
	(connected depot49-2-2 depot49-1-2)
	(connected depot49-2-2 depot49-2-3)
	(connected depot49-2-2 depot49-2-1)
	(connected depot49-2-3 depot49-1-3)
	(connected depot49-2-3 depot49-2-2)
	(connected depot50-1-1 depot50-2-1)
	(connected depot50-1-1 depot50-1-2)
	(connected depot50-1-2 depot50-2-2)
	(connected depot50-1-2 depot50-1-3)
	(connected depot50-1-2 depot50-1-1)
	(connected depot50-1-3 depot50-1-4)
	(connected depot50-1-3 depot50-1-2)
	(connected depot50-1-4 depot50-2-4)
	(connected depot50-1-4 depot50-1-3)
	(connected depot50-2-1 depot50-1-1)
	(connected depot50-2-1 depot50-2-2)
	(connected depot50-2-2 depot50-1-2)
	(connected depot50-2-2 depot50-2-1)
	(connected depot50-2-4 depot50-1-4)
	(connected depot51-1-1 depot51-2-1)
	(connected depot51-1-1 depot51-1-2)
	(connected depot51-1-2 depot51-2-2)
	(connected depot51-1-2 depot51-1-3)
	(connected depot51-1-2 depot51-1-1)
	(connected depot51-1-3 depot51-2-3)
	(connected depot51-1-3 depot51-1-4)
	(connected depot51-1-3 depot51-1-2)
	(connected depot51-1-4 depot51-1-3)
	(connected depot51-2-1 depot51-1-1)
	(connected depot51-2-1 depot51-2-2)
	(connected depot51-2-2 depot51-1-2)
	(connected depot51-2-2 depot51-2-3)
	(connected depot51-2-2 depot51-2-1)
	(connected depot51-2-3 depot51-1-3)
	(connected depot51-2-3 depot51-2-2)
	(connected depot52-1-1 depot52-2-1)
	(connected depot52-1-1 depot52-1-2)
	(connected depot52-1-2 depot52-2-2)
	(connected depot52-1-2 depot52-1-3)
	(connected depot52-1-2 depot52-1-1)
	(connected depot52-1-3 depot52-2-3)
	(connected depot52-1-3 depot52-1-4)
	(connected depot52-1-3 depot52-1-2)
	(connected depot52-1-4 depot52-2-4)
	(connected depot52-1-4 depot52-1-3)
	(connected depot52-2-1 depot52-1-1)
	(connected depot52-2-1 depot52-2-2)
	(connected depot52-2-2 depot52-1-2)
	(connected depot52-2-2 depot52-2-3)
	(connected depot52-2-2 depot52-2-1)
	(connected depot52-2-3 depot52-1-3)
	(connected depot52-2-3 depot52-2-4)
	(connected depot52-2-3 depot52-2-2)
	(connected depot52-2-4 depot52-1-4)
	(connected depot52-2-4 depot52-2-3)
	(connected depot53-1-1 depot53-2-1)
	(connected depot53-1-1 depot53-1-2)
	(connected depot53-1-2 depot53-2-2)
	(connected depot53-1-2 depot53-1-3)
	(connected depot53-1-2 depot53-1-1)
	(connected depot53-1-3 depot53-2-3)
	(connected depot53-1-3 depot53-1-4)
	(connected depot53-1-3 depot53-1-2)
	(connected depot53-1-4 depot53-1-3)
	(connected depot53-2-1 depot53-1-1)
	(connected depot53-2-1 depot53-2-2)
	(connected depot53-2-2 depot53-1-2)
	(connected depot53-2-2 depot53-2-3)
	(connected depot53-2-2 depot53-2-1)
	(connected depot53-2-3 depot53-1-3)
	(connected depot53-2-3 depot53-2-2)
	(connected depot54-1-1 depot54-2-1)
	(connected depot54-1-1 depot54-1-2)
	(connected depot54-1-2 depot54-2-2)
	(connected depot54-1-2 depot54-1-3)
	(connected depot54-1-2 depot54-1-1)
	(connected depot54-1-3 depot54-2-3)
	(connected depot54-1-3 depot54-1-4)
	(connected depot54-1-3 depot54-1-2)
	(connected depot54-1-4 depot54-1-3)
	(connected depot54-2-1 depot54-1-1)
	(connected depot54-2-1 depot54-2-2)
	(connected depot54-2-2 depot54-1-2)
	(connected depot54-2-2 depot54-2-3)
	(connected depot54-2-2 depot54-2-1)
	(connected depot54-2-3 depot54-1-3)
	(connected depot54-2-3 depot54-2-2)
	(connected depot55-1-1 depot55-2-1)
	(connected depot55-1-1 depot55-1-2)
	(connected depot55-1-2 depot55-2-2)
	(connected depot55-1-2 depot55-1-3)
	(connected depot55-1-2 depot55-1-1)
	(connected depot55-1-3 depot55-1-4)
	(connected depot55-1-3 depot55-1-2)
	(connected depot55-1-4 depot55-2-4)
	(connected depot55-1-4 depot55-1-3)
	(connected depot55-2-1 depot55-1-1)
	(connected depot55-2-1 depot55-2-2)
	(connected depot55-2-2 depot55-1-2)
	(connected depot55-2-2 depot55-2-1)
	(connected depot55-2-4 depot55-1-4)
	(connected depot56-1-1 depot56-2-1)
	(connected depot56-1-1 depot56-1-2)
	(connected depot56-1-2 depot56-2-2)
	(connected depot56-1-2 depot56-1-3)
	(connected depot56-1-2 depot56-1-1)
	(connected depot56-1-3 depot56-2-3)
	(connected depot56-1-3 depot56-1-4)
	(connected depot56-1-3 depot56-1-2)
	(connected depot56-1-4 depot56-2-4)
	(connected depot56-1-4 depot56-1-3)
	(connected depot56-2-1 depot56-1-1)
	(connected depot56-2-1 depot56-2-2)
	(connected depot56-2-2 depot56-1-2)
	(connected depot56-2-2 depot56-2-3)
	(connected depot56-2-2 depot56-2-1)
	(connected depot56-2-3 depot56-1-3)
	(connected depot56-2-3 depot56-2-4)
	(connected depot56-2-3 depot56-2-2)
	(connected depot56-2-4 depot56-1-4)
	(connected depot56-2-4 depot56-2-3)
	(connected depot57-1-1 depot57-2-1)
	(connected depot57-1-1 depot57-1-2)
	(connected depot57-1-2 depot57-2-2)
	(connected depot57-1-2 depot57-1-3)
	(connected depot57-1-2 depot57-1-1)
	(connected depot57-1-3 depot57-2-3)
	(connected depot57-1-3 depot57-1-4)
	(connected depot57-1-3 depot57-1-2)
	(connected depot57-1-4 depot57-1-3)
	(connected depot57-2-1 depot57-1-1)
	(connected depot57-2-1 depot57-2-2)
	(connected depot57-2-2 depot57-1-2)
	(connected depot57-2-2 depot57-2-3)
	(connected depot57-2-2 depot57-2-1)
	(connected depot57-2-3 depot57-1-3)
	(connected depot57-2-3 depot57-2-2)
	(connected depot65-1-1 depot65-2-1)
	(connected depot65-1-1 depot65-1-2)
	(connected depot65-1-2 depot65-2-2)
	(connected depot65-1-2 depot65-1-3)
	(connected depot65-1-2 depot65-1-1)
	(connected depot65-1-3 depot65-2-3)
	(connected depot65-1-3 depot65-1-4)
	(connected depot65-1-3 depot65-1-2)
	(connected depot65-1-4 depot65-2-4)
	(connected depot65-1-4 depot65-1-3)
	(connected depot65-2-1 depot65-1-1)
	(connected depot65-2-1 depot65-2-2)
	(connected depot65-2-2 depot65-1-2)
	(connected depot65-2-2 depot65-2-3)
	(connected depot65-2-2 depot65-2-1)
	(connected depot65-2-3 depot65-1-3)
	(connected depot65-2-3 depot65-2-4)
	(connected depot65-2-3 depot65-2-2)
	(connected depot65-2-4 depot65-1-4)
	(connected depot65-2-4 depot65-2-3)
	(connected depot66-1-1 depot66-2-1)
	(connected depot66-1-1 depot66-1-2)
	(connected depot66-1-2 depot66-2-2)
	(connected depot66-1-2 depot66-1-3)
	(connected depot66-1-2 depot66-1-1)
	(connected depot66-1-3 depot66-2-3)
	(connected depot66-1-3 depot66-1-4)
	(connected depot66-1-3 depot66-1-2)
	(connected depot66-1-4 depot66-1-3)
	(connected depot66-2-1 depot66-1-1)
	(connected depot66-2-1 depot66-2-2)
	(connected depot66-2-2 depot66-1-2)
	(connected depot66-2-2 depot66-2-3)
	(connected depot66-2-2 depot66-2-1)
	(connected depot66-2-3 depot66-1-3)
	(connected depot66-2-3 depot66-2-2)
	(connected depot67-1-1 depot67-2-1)
	(connected depot67-1-1 depot67-1-2)
	(connected depot67-1-2 depot67-2-2)
	(connected depot67-1-2 depot67-1-3)
	(connected depot67-1-2 depot67-1-1)
	(connected depot67-1-3 depot67-2-3)
	(connected depot67-1-3 depot67-1-4)
	(connected depot67-1-3 depot67-1-2)
	(connected depot67-1-4 depot67-2-4)
	(connected depot67-1-4 depot67-1-3)
	(connected depot67-2-1 depot67-1-1)
	(connected depot67-2-1 depot67-2-2)
	(connected depot67-2-2 depot67-1-2)
	(connected depot67-2-2 depot67-2-3)
	(connected depot67-2-2 depot67-2-1)
	(connected depot67-2-3 depot67-1-3)
	(connected depot67-2-3 depot67-2-4)
	(connected depot67-2-3 depot67-2-2)
	(connected depot67-2-4 depot67-1-4)
	(connected depot67-2-4 depot67-2-3)
	(connected depot68-1-1 depot68-2-1)
	(connected depot68-1-1 depot68-1-2)
	(connected depot68-1-2 depot68-2-2)
	(connected depot68-1-2 depot68-1-3)
	(connected depot68-1-2 depot68-1-1)
	(connected depot68-1-3 depot68-2-3)
	(connected depot68-1-3 depot68-1-4)
	(connected depot68-1-3 depot68-1-2)
	(connected depot68-1-4 depot68-2-4)
	(connected depot68-1-4 depot68-1-3)
	(connected depot68-2-1 depot68-1-1)
	(connected depot68-2-1 depot68-2-2)
	(connected depot68-2-2 depot68-1-2)
	(connected depot68-2-2 depot68-2-3)
	(connected depot68-2-2 depot68-2-1)
	(connected depot68-2-3 depot68-1-3)
	(connected depot68-2-3 depot68-2-4)
	(connected depot68-2-3 depot68-2-2)
	(connected depot68-2-4 depot68-1-4)
	(connected depot68-2-4 depot68-2-3)
	(connected depot69-1-1 depot69-2-1)
	(connected depot69-1-1 depot69-1-2)
	(connected depot69-1-2 depot69-2-2)
	(connected depot69-1-2 depot69-1-3)
	(connected depot69-1-2 depot69-1-1)
	(connected depot69-1-3 depot69-2-3)
	(connected depot69-1-3 depot69-1-4)
	(connected depot69-1-3 depot69-1-2)
	(connected depot69-1-4 depot69-1-3)
	(connected depot69-2-1 depot69-1-1)
	(connected depot69-2-1 depot69-2-2)
	(connected depot69-2-2 depot69-1-2)
	(connected depot69-2-2 depot69-2-3)
	(connected depot69-2-2 depot69-2-1)
	(connected depot69-2-3 depot69-1-3)
	(connected depot69-2-3 depot69-2-2)
	(connected depot70-1-1 depot70-2-1)
	(connected depot70-1-1 depot70-1-2)
	(connected depot70-1-2 depot70-2-2)
	(connected depot70-1-2 depot70-1-3)
	(connected depot70-1-2 depot70-1-1)
	(connected depot70-1-3 depot70-2-3)
	(connected depot70-1-3 depot70-1-4)
	(connected depot70-1-3 depot70-1-2)
	(connected depot70-1-4 depot70-1-3)
	(connected depot70-2-1 depot70-1-1)
	(connected depot70-2-1 depot70-2-2)
	(connected depot70-2-2 depot70-1-2)
	(connected depot70-2-2 depot70-2-3)
	(connected depot70-2-2 depot70-2-1)
	(connected depot70-2-3 depot70-1-3)
	(connected depot70-2-3 depot70-2-2)
	(connected depot71-1-1 depot71-2-1)
	(connected depot71-1-1 depot71-1-2)
	(connected depot71-1-2 depot71-2-2)
	(connected depot71-1-2 depot71-1-3)
	(connected depot71-1-2 depot71-1-1)
	(connected depot71-1-3 depot71-2-3)
	(connected depot71-1-3 depot71-1-4)
	(connected depot71-1-3 depot71-1-2)
	(connected depot71-1-4 depot71-2-4)
	(connected depot71-1-4 depot71-1-3)
	(connected depot71-2-1 depot71-1-1)
	(connected depot71-2-1 depot71-2-2)
	(connected depot71-2-2 depot71-1-2)
	(connected depot71-2-2 depot71-2-3)
	(connected depot71-2-2 depot71-2-1)
	(connected depot71-2-3 depot71-1-3)
	(connected depot71-2-3 depot71-2-4)
	(connected depot71-2-3 depot71-2-2)
	(connected depot71-2-4 depot71-1-4)
	(connected depot71-2-4 depot71-2-3)
	(connected depot72-1-1 depot72-2-1)
	(connected depot72-1-1 depot72-1-2)
	(connected depot72-1-2 depot72-2-2)
	(connected depot72-1-2 depot72-1-3)
	(connected depot72-1-2 depot72-1-1)
	(connected depot72-1-3 depot72-2-3)
	(connected depot72-1-3 depot72-1-4)
	(connected depot72-1-3 depot72-1-2)
	(connected depot72-1-4 depot72-2-4)
	(connected depot72-1-4 depot72-1-3)
	(connected depot72-2-1 depot72-1-1)
	(connected depot72-2-1 depot72-2-2)
	(connected depot72-2-2 depot72-1-2)
	(connected depot72-2-2 depot72-2-3)
	(connected depot72-2-2 depot72-2-1)
	(connected depot72-2-3 depot72-1-3)
	(connected depot72-2-3 depot72-2-4)
	(connected depot72-2-3 depot72-2-2)
	(connected depot72-2-4 depot72-1-4)
	(connected depot72-2-4 depot72-2-3)
	(connected depot73-1-1 depot73-2-1)
	(connected depot73-1-1 depot73-1-2)
	(connected depot73-1-2 depot73-2-2)
	(connected depot73-1-2 depot73-1-3)
	(connected depot73-1-2 depot73-1-1)
	(connected depot73-1-3 depot73-2-3)
	(connected depot73-1-3 depot73-1-2)
	(connected depot73-2-1 depot73-1-1)
	(connected depot73-2-1 depot73-3-1)
	(connected depot73-2-1 depot73-2-2)
	(connected depot73-2-2 depot73-1-2)
	(connected depot73-2-2 depot73-3-2)
	(connected depot73-2-2 depot73-2-3)
	(connected depot73-2-2 depot73-2-1)
	(connected depot73-2-3 depot73-1-3)
	(connected depot73-2-3 depot73-3-3)
	(connected depot73-2-3 depot73-2-2)
	(connected depot73-3-1 depot73-2-1)
	(connected depot73-3-1 depot73-3-2)
	(connected depot73-3-2 depot73-2-2)
	(connected depot73-3-2 depot73-3-3)
	(connected depot73-3-2 depot73-3-1)
	(connected depot73-3-3 depot73-2-3)
	(connected depot73-3-3 depot73-3-2)
	(connected transit0 depot48-1-4)
	(connected transit0 depot49-1-1)
	(connected transit1 depot50-1-4)
	(connected transit1 depot51-1-1)
	(connected transit2 depot53-1-4)
	(connected transit2 depot54-1-1)
	(connected transit3 depot65-1-4)
	(connected transit3 depot66-1-1)
	(connected transit4 depot67-1-4)
	(connected transit4 depot68-1-1)
	(connected transit5 depot70-1-4)
	(connected transit5 depot71-1-1)
	(in depot48-1-1 depot48)
	(in depot48-1-2 depot48)
	(in depot48-1-3 depot48)
	(in depot48-1-4 depot48)
	(in depot48-2-1 depot48)
	(in depot48-2-2 depot48)
	(in depot48-2-3 depot48)
	(in depot48-2-4 depot48)
	(in depot49-1-1 depot49)
	(in depot49-1-2 depot49)
	(in depot49-1-3 depot49)
	(in depot49-1-4 depot49)
	(in depot49-2-1 depot49)
	(in depot49-2-2 depot49)
	(in depot49-2-3 depot49)
	(in depot50-1-1 depot50)
	(in depot50-1-2 depot50)
	(in depot50-1-3 depot50)
	(in depot50-1-4 depot50)
	(in depot50-2-1 depot50)
	(in depot50-2-2 depot50)
	(in depot50-2-4 depot50)
	(in depot51-1-1 depot51)
	(in depot51-1-2 depot51)
	(in depot51-1-3 depot51)
	(in depot51-1-4 depot51)
	(in depot51-2-1 depot51)
	(in depot51-2-2 depot51)
	(in depot51-2-3 depot51)
	(in depot52-1-1 depot52)
	(in depot52-1-2 depot52)
	(in depot52-1-3 depot52)
	(in depot52-1-4 depot52)
	(in depot52-2-1 depot52)
	(in depot52-2-2 depot52)
	(in depot52-2-3 depot52)
	(in depot52-2-4 depot52)
	(in depot53-1-1 depot53)
	(in depot53-1-2 depot53)
	(in depot53-1-3 depot53)
	(in depot53-1-4 depot53)
	(in depot53-2-1 depot53)
	(in depot53-2-2 depot53)
	(in depot53-2-3 depot53)
	(in depot54-1-1 depot54)
	(in depot54-1-2 depot54)
	(in depot54-1-3 depot54)
	(in depot54-1-4 depot54)
	(in depot54-2-1 depot54)
	(in depot54-2-2 depot54)
	(in depot54-2-3 depot54)
	(in depot55-1-1 depot55)
	(in depot55-1-2 depot55)
	(in depot55-1-3 depot55)
	(in depot55-1-4 depot55)
	(in depot55-2-1 depot55)
	(in depot55-2-2 depot55)
	(in depot55-2-4 depot55)
	(in depot56-1-1 depot56)
	(in depot56-1-2 depot56)
	(in depot56-1-3 depot56)
	(in depot56-1-4 depot56)
	(in depot56-2-1 depot56)
	(in depot56-2-2 depot56)
	(in depot56-2-3 depot56)
	(in depot56-2-4 depot56)
	(in depot57-1-1 depot57)
	(in depot57-1-2 depot57)
	(in depot57-1-3 depot57)
	(in depot57-1-4 depot57)
	(in depot57-2-1 depot57)
	(in depot57-2-2 depot57)
	(in depot57-2-3 depot57)
	(in depot65-1-1 depot65)
	(in depot65-1-2 depot65)
	(in depot65-1-3 depot65)
	(in depot65-1-4 depot65)
	(in depot65-2-1 depot65)
	(in depot65-2-2 depot65)
	(in depot65-2-3 depot65)
	(in depot65-2-4 depot65)
	(in depot66-1-1 depot66)
	(in depot66-1-2 depot66)
	(in depot66-1-3 depot66)
	(in depot66-1-4 depot66)
	(in depot66-2-1 depot66)
	(in depot66-2-2 depot66)
	(in depot66-2-3 depot66)
	(in depot67-1-1 depot67)
	(in depot67-1-2 depot67)
	(in depot67-1-3 depot67)
	(in depot67-1-4 depot67)
	(in depot67-2-1 depot67)
	(in depot67-2-2 depot67)
	(in depot67-2-3 depot67)
	(in depot67-2-4 depot67)
	(in depot68-1-1 depot68)
	(in depot68-1-2 depot68)
	(in depot68-1-3 depot68)
	(in depot68-1-4 depot68)
	(in depot68-2-1 depot68)
	(in depot68-2-2 depot68)
	(in depot68-2-3 depot68)
	(in depot68-2-4 depot68)
	(in depot69-1-1 depot69)
	(in depot69-1-2 depot69)
	(in depot69-1-3 depot69)
	(in depot69-1-4 depot69)
	(in depot69-2-1 depot69)
	(in depot69-2-2 depot69)
	(in depot69-2-3 depot69)
	(in depot70-1-1 depot70)
	(in depot70-1-2 depot70)
	(in depot70-1-3 depot70)
	(in depot70-1-4 depot70)
	(in depot70-2-1 depot70)
	(in depot70-2-2 depot70)
	(in depot70-2-3 depot70)
	(in depot71-1-1 depot71)
	(in depot71-1-2 depot71)
	(in depot71-1-3 depot71)
	(in depot71-1-4 depot71)
	(in depot71-2-1 depot71)
	(in depot71-2-2 depot71)
	(in depot71-2-3 depot71)
	(in depot71-2-4 depot71)
	(in depot72-1-1 depot72)
	(in depot72-1-2 depot72)
	(in depot72-1-3 depot72)
	(in depot72-1-4 depot72)
	(in depot72-2-1 depot72)
	(in depot72-2-2 depot72)
	(in depot72-2-3 depot72)
	(in depot72-2-4 depot72)
	(in depot73-1-1 depot73)
	(in depot73-1-2 depot73)
	(in depot73-1-3 depot73)
	(in depot73-2-1 depot73)
	(in depot73-2-2 depot73)
	(in depot73-2-3 depot73)
	(in depot73-3-1 depot73)
	(in depot73-3-2 depot73)
	(in depot73-3-3 depot73)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(on crate10 container-2-2)
	(on crate11 container-2-3)
	(on crate12 container-3-0)
	(on crate13 container-3-1)
	(on crate14 container-3-2)
	(on crate15 container-3-3)
	(on crate16 container-4-0)
	(on crate17 container-4-1)
	(on crate18 container-4-2)
	(on crate19 container-4-3)
	(on crate20 container-5-0)
	(on crate21 container-5-1)
	(on crate22 container-5-2)
	(on crate23 container-5-3)
	(on crate24 container-6-0)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in crate10 container2)
	(in crate11 container2)
	(in crate12 container3)
	(in crate13 container3)
	(in crate14 container3)
	(in crate15 container3)
	(in crate16 container4)
	(in crate17 container4)
	(in crate18 container4)
	(in crate19 container4)
	(in crate20 container5)
	(in crate21 container5)
	(in crate22 container5)
	(in crate23 container5)
	(in crate24 container6)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(in container-2-2 container2)
	(in container-2-3 container2)
	(in container-3-0 container3)
	(in container-3-1 container3)
	(in container-3-2 container3)
	(in container-3-3 container3)
	(in container-4-0 container4)
	(in container-4-1 container4)
	(in container-4-2 container4)
	(in container-4-3 container4)
	(in container-5-0 container5)
	(in container-5-1 container5)
	(in container-5-2 container5)
	(in container-5-3 container5)
	(in container-6-0 container6)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)
	(connected loadarea container-2-2) 
	(connected container-2-2 loadarea)
	(connected loadarea container-2-3) 
	(connected container-2-3 loadarea)
	(connected loadarea container-3-0) 
	(connected container-3-0 loadarea)
	(connected loadarea container-3-1) 
	(connected container-3-1 loadarea)
	(connected loadarea container-3-2) 
	(connected container-3-2 loadarea)
	(connected loadarea container-3-3) 
	(connected container-3-3 loadarea)
	(connected loadarea container-4-0) 
	(connected container-4-0 loadarea)
	(connected loadarea container-4-1) 
	(connected container-4-1 loadarea)
	(connected loadarea container-4-2) 
	(connected container-4-2 loadarea)
	(connected loadarea container-4-3) 
	(connected container-4-3 loadarea)
	(connected loadarea container-5-0) 
	(connected container-5-0 loadarea)
	(connected loadarea container-5-1) 
	(connected container-5-1 loadarea)
	(connected loadarea container-5-2) 
	(connected container-5-2 loadarea)
	(connected loadarea container-5-3) 
	(connected container-5-3 loadarea)
	(connected loadarea container-6-0) 
	(connected container-6-0 loadarea)  
	(connected depot48-2-4 loadarea)
	(connected loadarea depot48-2-4)
	(connected depot49-2-1 loadarea)
	(connected loadarea depot49-2-1)
	(connected depot50-2-4 loadarea)
	(connected loadarea depot50-2-4)
	(connected depot51-2-2 loadarea)
	(connected loadarea depot51-2-2)
	(connected depot52-2-4 loadarea)
	(connected loadarea depot52-2-4)
	(connected depot53-2-2 loadarea)
	(connected loadarea depot53-2-2)
	(connected depot54-2-3 loadarea)
	(connected loadarea depot54-2-3)
	(connected depot55-2-4 loadarea)
	(connected loadarea depot55-2-4)
	(connected depot56-2-2 loadarea)
	(connected loadarea depot56-2-2)
	(connected depot57-2-1 loadarea)
	(connected loadarea depot57-2-1)
	(connected depot65-2-1 loadarea)
	(connected loadarea depot65-2-1)
	(connected depot66-2-1 loadarea)
	(connected loadarea depot66-2-1)
	(connected depot67-2-3 loadarea)
	(connected loadarea depot67-2-3)
	(connected depot68-2-1 loadarea)
	(connected loadarea depot68-2-1)
	(connected depot69-2-2 loadarea)
	(connected loadarea depot69-2-2)
	(connected depot70-2-3 loadarea)
	(connected loadarea depot70-2-3)
	(connected depot71-2-4 loadarea)
	(connected loadarea depot71-2-4)
	(connected depot72-2-3 loadarea)
	(connected loadarea depot72-2-3)
	(connected depot73-3-1 loadarea)
	(connected loadarea depot73-3-1)  
	(clear depot48-1-1)
	(clear depot48-1-2)
	(clear depot48-1-3)
	(clear depot48-2-4)
	(clear depot48-2-1)
	(clear depot48-2-2)
	(clear depot48-2-3)
	(clear depot49-1-4)
	(clear depot50-1-1)
	(clear depot50-1-2)
	(clear depot50-2-2)
	(clear depot50-1-4)
	(clear depot50-2-4)
	(clear depot51-1-1)
	(clear depot51-2-3)
	(clear depot51-1-3)
	(clear depot51-1-4)
	(clear depot51-2-1)
	(clear depot51-2-2)
	(clear depot52-1-1)
	(clear depot52-1-2)
	(clear depot52-1-3)
	(clear depot52-1-4)
	(clear depot52-2-3)
	(clear depot52-2-4)
	(clear depot53-1-1)
	(clear depot53-1-2)
	(clear depot53-1-3)
	(clear depot53-2-3)
	(clear depot53-2-1)
	(clear depot53-2-2)
	(clear depot54-1-1)
	(clear depot54-1-2)
	(clear depot54-1-3)
	(clear depot54-1-4)
	(clear depot54-2-3)
	(clear depot55-2-2)
	(clear depot56-1-1)
	(clear depot56-1-2)
	(clear depot56-1-3)
	(clear depot56-2-4)
	(clear depot56-2-1)
	(clear depot56-2-2)
	(clear depot56-2-3)
	(clear depot57-2-2)
	(clear depot57-2-1)
	(clear depot57-1-3)
	(clear depot65-1-1)
	(clear depot65-1-2)
	(clear depot65-1-3)
	(clear depot65-2-4)
	(clear depot65-2-1)
	(clear depot65-2-2)
	(clear depot65-2-3)
	(clear depot66-2-3)
	(clear depot66-1-2)
	(clear depot66-1-3)
	(clear depot66-1-4)
	(clear depot66-2-1)
	(clear depot66-2-2)
	(clear depot67-1-1)
	(clear depot67-2-3)
	(clear depot67-1-3)
	(clear depot67-1-4)
	(clear depot67-2-1)
	(clear depot67-2-2)
	(clear depot68-2-3)
	(clear depot68-1-2)
	(clear depot68-1-3)
	(clear depot68-2-4)
	(clear depot68-2-1)
	(clear depot68-2-2)
	(clear depot69-1-1)
	(clear depot69-2-2)
	(clear depot69-1-3)
	(clear depot69-1-4)
	(clear depot69-2-1)
	(clear depot70-2-2)
	(clear depot70-1-2)
	(clear depot71-1-1)
	(clear depot71-2-4)
	(clear depot71-1-3)
	(clear depot71-1-4)
	(clear depot71-2-1)
	(clear depot71-2-2)
	(clear depot71-2-3)
	(clear depot72-1-1)
	(clear depot72-1-2)
	(clear depot72-2-3)
	(clear depot72-2-4)
	(clear depot72-2-2)
	(clear depot73-3-2)
	(clear depot73-1-2)
	(clear depot73-1-3)
	(clear depot73-3-3)
	(clear depot73-3-1)
	(clear depot73-2-3)  
	(at hoist0 depot48-1-4)
	(available hoist0)
	(at hoist1 depot49-1-3)
	(available hoist1)
	(at hoist2 depot49-2-1)
	(available hoist2)
	(at hoist3 depot49-2-2)
	(available hoist3)
	(at hoist4 depot49-1-1)
	(available hoist4)
	(at hoist5 depot49-1-2)
	(available hoist5)
	(at hoist6 depot49-2-3)
	(available hoist6)
	(at hoist7 depot50-2-1)
	(available hoist7)
	(at hoist8 depot50-1-3)
	(available hoist8)
	(at hoist9 depot51-1-2)
	(available hoist9)
	(at hoist10 depot52-2-2)
	(available hoist10)
	(at hoist11 depot52-2-1)
	(available hoist11)
	(at hoist12 depot53-1-4)
	(available hoist12)
	(at hoist13 depot54-2-1)
	(available hoist13)
	(at hoist14 depot54-2-2)
	(available hoist14)
	(at hoist15 depot55-1-1)
	(available hoist15)
	(at hoist16 depot55-1-3)
	(available hoist16)
	(at hoist17 depot55-1-4)
	(available hoist17)
	(at hoist18 depot55-2-4)
	(available hoist18)
	(at hoist19 depot55-1-2)
	(available hoist19)
	(at hoist20 depot55-2-1)
	(available hoist20)
	(at hoist21 depot56-1-4)
	(available hoist21)
	(at hoist22 depot57-1-4)
	(available hoist22)
	(at hoist23 depot57-2-3)
	(available hoist23)
	(at hoist24 depot57-1-2)
	(available hoist24)
	(at hoist25 depot57-1-1)
	(available hoist25)
	(at hoist26 depot65-1-4)
	(available hoist26)
	(at hoist27 depot66-1-1)
	(available hoist27)
	(at hoist28 depot67-1-2)
	(available hoist28)
	(at hoist29 depot67-2-4)
	(available hoist29)
	(at hoist30 depot68-1-4)
	(available hoist30)
	(at hoist31 depot68-1-1)
	(available hoist31)
	(at hoist32 depot69-2-3)
	(available hoist32)
	(at hoist33 depot69-1-2)
	(available hoist33)
	(at hoist34 depot70-1-4)
	(available hoist34)
	(at hoist35 depot70-1-3)
	(available hoist35)
	(at hoist36 depot70-2-3)
	(available hoist36)
	(at hoist37 depot70-2-1)
	(available hoist37)
	(at hoist38 depot70-1-1)
	(available hoist38)
	(at hoist39 depot71-1-2)
	(available hoist39)
	(at hoist40 depot72-1-4)
	(available hoist40)
	(at hoist41 depot72-1-3)
	(available hoist41)
	(at hoist42 depot72-2-1)
	(available hoist42)
	(at hoist43 depot73-2-1)
	(available hoist43)
	(at hoist44 depot73-1-1)
	(available hoist44)
	(at hoist45 depot73-2-2)
	(available hoist45))

(:goal (and
	(in crate0 depot48)
	(in crate1 depot48)
	(in crate2 depot48)
	(in crate3 depot48)
	(in crate4 depot49)
	(in crate5 depot49)
	(in crate6 depot49)
	(in crate7 depot49)
	(in crate8 depot50)
	(in crate9 depot51)
	(in crate10 depot51)
	(in crate11 depot52)
	(in crate12 depot53)
	(in crate13 depot54)
	(in crate14 depot54)
	(in crate15 depot54)
	(in crate16 depot55)
	(in crate17 depot56)
	(in crate18 depot57)
	(in crate19 depot57)
	(in crate20 depot65)
	(in crate21 depot65)
	(in crate22 depot66)
	(in crate23 depot66)
	(in crate24 depot66)))
)
