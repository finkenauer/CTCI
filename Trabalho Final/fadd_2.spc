********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Mon Jul 30 11:53:25 2018
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:
* TDB File Name:		C:\Users\Finkenauer\Desktop\back_to_black\ctci-final\flip-flop_D.tdb
* Command File:		C:\Users\Finkenauer\Desktop\back_to_black\ctci-final\ams035.ext
* Cell Name:			fadd_2
* Write Flat:			NO
********************************************************************************
.include ami_035u.mod

V0 GRD 0 DC 0V
V1 VDD+ 0 DC 3.3V


Vin0 C0 gnd pulse (0 3.3 0n 0.1n 0.1n 5n 10.2n)
Vin1 B0 gnd pulse (0 3.3 0n 0.1n 0.1n 10n 20.2n)
Vin2 A0 gnd pulse (0 3.3 0n 0.1n 0.1n 20.1n 40.4n)
Vin3 A1 gnd pulse (0 3.3 0n 0.1n 0.1n 5n 10.2n)
Vin4 B1 gnd pulse (0 3.3 0n 0.1n 0.1n 10n 20.2n)
*Vin5 A1 gnd pulse (0 3.3 0n 0.1n 0.1n 20.1n 40.4n)


****************************************

M1 !C0 C0 GRD 1 CMOSN l=3e-007 w=1e-006  $ (13.9 18.5 14.2 19.5)
M2 GRD !C0 2 1 CMOSN l=3e-007 w=3e-006  $ (15.65 18.5 15.95 21.5)
M3 3 A0 GRD 1 CMOSN l=3e-007 w=3e-006  $ (17.35 18.5 17.65 21.5)
M4 4 C0 3 1 CMOSN l=3e-007 w=3e-006  $ (18.75 18.5 19.05 21.5)
M5 5 C0 4 1 CMOSN l=3e-007 w=3e-006  $ (20.55 18.5 20.85 21.5)
M6 6 !C0 5 1 CMOSN l=3e-007 w=3e-006  $ (21.5 18.5 21.8 21.5)
M7 GRD B0 6 1 CMOSN l=3e-007 w=3e-006  $ (22.95 18.5 23.25 21.5)
M8 C1 4 GRD 1 CMOSN l=3e-007 w=1e-006  $ (25.4 18.5 25.7 19.5)
M9 7 C0 GRD 1 CMOSN l=3e-007 w=2e-006  $ (28.3 18.5 28.6 20.5)
M10 o1 B0 7 1 CMOSN l=3e-007 w=2e-006  $ (29.2 18.5 29.5 20.5)
M11 8 !B0 o1 1 CMOSN l=3e-007 w=2e-006  $ (31.9 18.5 32.2 20.5)
M12 GRD !C0 8 1 CMOSN l=3e-007 w=2e-006  $ (33.3 18.5 33.6 20.5)
M13 !B0 B0 GRD 1 CMOSN l=3e-007 w=1e-006  $ (35.7 18.5 36 19.5)
M14 !o1 o1 GRD 1 CMOSN l=3e-007 w=1e-006  $ (38.55 18.5 38.85 19.5)
M15 9 o1 GRD 1 CMOSN l=3e-007 w=2e-006  $ (41.3 18.5 41.6 20.5)
M16 S0 A0 9 1 CMOSN l=3e-007 w=2e-006  $ (42.2 18.5 42.5 20.5)
M17 10 !A0 S0 1 CMOSN l=3e-007 w=2e-006  $ (44.9 18.5 45.2 20.5)
M18 GRD !o1 10 1 CMOSN l=3e-007 w=2e-006  $ (46.3 18.5 46.6 20.5)
M19 !A0 A0 GRD 1 CMOSN l=3e-007 w=1e-006  $ (48.75 18.5 49.05 19.5)
M20 !C1 C1 GRD 1 CMOSN l=3e-007 w=1e-006  $ (53.1 18.5 53.4 19.5)
M21 GRD !C1 11 1 CMOSN l=3e-007 w=3e-006  $ (54.85 18.5 55.15 21.5)
M22 12 A1 GRD 1 CMOSN l=3e-007 w=3e-006  $ (56.55 18.5 56.85 21.5)
M23 13 C1 12 1 CMOSN l=3e-007 w=3e-006  $ (57.95 18.5 58.25 21.5)
M24 14 C1 13 1 CMOSN l=3e-007 w=3e-006  $ (59.75 18.5 60.05 21.5)
M25 15 !C1 14 1 CMOSN l=3e-007 w=3e-006  $ (60.7 18.5 61 21.5)
M26 GRD B1 15 1 CMOSN l=3e-007 w=3e-006  $ (62.15 18.5 62.45 21.5)
M27 C2 13 GRD 1 CMOSN l=3e-007 w=1e-006  $ (64.6 18.5 64.9 19.5)
M28 16 C1 GRD 1 CMOSN l=3e-007 w=2e-006  $ (67.5 18.5 67.8 20.5)
M29 o2 B1 16 1 CMOSN l=3e-007 w=2e-006  $ (68.4 18.5 68.7 20.5)
M30 17 !B1 o2 1 CMOSN l=3e-007 w=2e-006  $ (71.1 18.5 71.4 20.5)
M31 GRD !C1 17 1 CMOSN l=3e-007 w=2e-006  $ (72.5 18.5 72.8 20.5)
M32 !B1 B1 GRD 1 CMOSN l=3e-007 w=1e-006  $ (74.9 18.5 75.2 19.5)
M33 !o2 o2 GRD 1 CMOSN l=3e-007 w=1e-006  $ (77.75 18.5 78.05 19.5)
M34 18 o2 GRD 1 CMOSN l=3e-007 w=2e-006  $ (80.5 18.5 80.8 20.5)
M35 S1 A1 18 1 CMOSN l=3e-007 w=2e-006  $ (81.4 18.5 81.7 20.5)
M36 19 !A1 S1 1 CMOSN l=3e-007 w=2e-006  $ (84.1 18.5 84.4 20.5)
M37 GRD !o2 19 1 CMOSN l=3e-007 w=2e-006  $ (85.5 18.5 85.8 20.5)
M38 !A1 A1 GRD 1 CMOSN l=3e-007 w=1e-006  $ (87.95 18.5 88.25 19.5)
M39 !C0 C0 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (13.9 28.85 14.2 30.85)
M40 VDD+ !C0 21 20 CMOSP l=3e-007 w=6e-006  $ (16.2 24.85 16.5 30.85)
M41 22 C0 VDD+ 20 CMOSP l=3e-007 w=6e-006  $ (17.35 24.85 17.65 30.85)
M42 4 A0 22 20 CMOSP l=3e-007 w=6e-006  $ (18.55 24.85 18.85 30.85)
M43 23 C0 4 20 CMOSP l=3e-007 w=6e-006  $ (20.55 24.85 20.85 30.85)
M44 24 !C0 23 20 CMOSP l=3e-007 w=6e-006  $ (21.5 24.85 21.8 30.85)
M45 VDD+ B0 24 20 CMOSP l=3e-007 w=6e-006  $ (22.95 24.85 23.25 30.85)
M46 C1 4 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (25.4 28.85 25.7 30.85)
M47 25 C0 VDD+ 20 CMOSP l=3e-007 w=4e-006  $ (28.3 26.85 28.6 30.85)
M48 o1 !B0 25 20 CMOSP l=3e-007 w=4e-006  $ (29.2 26.85 29.5 30.85)
M49 26 B0 o1 20 CMOSP l=3e-007 w=4e-006  $ (31.8 26.85 32.1 30.85)
M50 VDD+ !C0 26 20 CMOSP l=3e-007 w=4e-006  $ (33.3 26.85 33.6 30.85)
M51 !B0 B0 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (35.7 28.85 36 30.85)
M52 !o1 o1 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (38.55 28.85 38.85 30.85)
M53 27 o1 VDD+ 20 CMOSP l=3e-007 w=4e-006  $ (41.3 26.85 41.6 30.85)
M54 S0 !A0 27 20 CMOSP l=3e-007 w=4e-006  $ (42.2 26.85 42.5 30.85)
M55 28 A0 S0 20 CMOSP l=3e-007 w=4e-006  $ (44.8 26.85 45.1 30.85)
M56 VDD+ !o1 28 20 CMOSP l=3e-007 w=4e-006  $ (46.3 26.85 46.6 30.85)
M57 !A0 A0 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (48.75 28.85 49.05 30.85)
M58 !C1 C1 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (53.1 28.85 53.4 30.85)
M59 VDD+ !C1 29 20 CMOSP l=3e-007 w=6e-006  $ (55.4 24.85 55.7 30.85)
M60 30 C1 VDD+ 20 CMOSP l=3e-007 w=6e-006  $ (56.55 24.85 56.85 30.85)
M61 13 A1 30 20 CMOSP l=3e-007 w=6e-006  $ (57.75 24.85 58.05 30.85)
M62 31 C1 13 20 CMOSP l=3e-007 w=6e-006  $ (59.75 24.85 60.05 30.85)
M63 32 !C1 31 20 CMOSP l=3e-007 w=6e-006  $ (60.7 24.85 61 30.85)
M64 VDD+ B1 32 20 CMOSP l=3e-007 w=6e-006  $ (62.15 24.85 62.45 30.85)
M65 C2 13 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (64.6 28.85 64.9 30.85)
M66 33 C1 VDD+ 20 CMOSP l=3e-007 w=4e-006  $ (67.5 26.85 67.8 30.85)
M67 o2 !B1 33 20 CMOSP l=3e-007 w=4e-006  $ (68.4 26.85 68.7 30.85)
M68 34 B1 o2 20 CMOSP l=3e-007 w=4e-006  $ (71 26.85 71.3 30.85)
M69 VDD+ !C1 34 20 CMOSP l=3e-007 w=4e-006  $ (72.5 26.85 72.8 30.85)
M70 !B1 B1 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (74.9 28.85 75.2 30.85)
M71 !o2 o2 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (77.75 28.85 78.05 30.85)
M72 35 o2 VDD+ 20 CMOSP l=3e-007 w=4e-006  $ (80.5 26.85 80.8 30.85)
M73 S1 !A1 35 20 CMOSP l=3e-007 w=4e-006  $ (81.4 26.85 81.7 30.85)
M74 36 A1 S1 20 CMOSP l=3e-007 w=4e-006  $ (84 26.85 84.3 30.85)
M75 VDD+ !o2 36 20 CMOSP l=3e-007 w=4e-006  $ (85.5 26.85 85.8 30.85)
M76 !A1 A1 VDD+ 20 CMOSP l=3e-007 w=2e-006  $ (87.95 28.85 88.25 30.85)
* Top level device count
* M(NMOS)		38
* M(PMOS)		38
* Number of devices:	76
* Number of nodes:	57


.tran 0.0002ns 100ns
.print v(A0) V(B0) V(C0) V(A1) V(B1) V(C1) V(S0) V(S1) V(C2)