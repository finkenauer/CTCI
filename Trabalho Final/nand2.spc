********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Wed Jul 25 15:39:33 2018
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:
* TDB File Name:		C:\Users\Finkenauer\Desktop\ctci-final\flip-flop_D.tdb
* Command File:		C:\Users\Finkenauer\Desktop\ctci-final\ams035.ext
* Cell Name:			nand2
* Write Flat:			NO
********************************************************************************
.include ami_035u.mod

V0 GRD 0 DC 0V
V1 VDD+ 0 DC 3.3V

Vin1 A gnd pulse (0 3.3 0n 0.1n 0.1n 10n 20.2n)
Vin2 B gnd pulse (0 3.3 0n 0.1n 0.1n 20.1n 40.4n)
****************************************

M1 1 A GRD 2 CMOSN l=3e-007 w=2e-006  $ (42.45 21.8 42.75 23.8)
M2 Out B 1 2 CMOSN l=3e-007 w=2e-006  $ (43.65 21.8 43.95 23.8)
M3 Out A VDD+ 3 CMOSP l=3e-007 w=4e-006  $ (42.45 25.7 42.75 29.7)
M4 VDD+ B Out 3 CMOSP l=3e-007 w=4e-006  $ (43.65 25.7 43.95 29.7)
* Top level device count
* M(NMOS)		2
* M(PMOS)		2
* Number of devices:	4
* Number of nodes:	8


.tran 0.0002ns 100ns
.print v(A) v(B) V(out)