* This file represents the description of a 4 bit parallel adder
* The SPICE list was generated by SwitchCraft.
*.options compat=PSPICE
.include NMOS_VTG.inc
.include PMOS_VTG.inc

.include full_adder_1.sp
.include half_adder.sp

* ------------------------------ *
* Voltage
* Vname n+ n- value
vgnd GND_ 0 
vcc vcc 0 dc 1

* ------------------------------ *
.param supply = 1 	* supply == vcc
.param length = '50n'

* ------------------------------ *
* source input
* Vname n+ n- pulse(v1 v2 td trise tfall pw per)
* a = 0111
vin1 a0 pwl(0n 0 1n 0 1.017n 1)
vin2 a1 pwl(0n 0 1n 0 1.017n 1)
vin3 a2 pwl(0n 0 1n 0 1.017n 1)
vin4 a3 pwl(0n 1 1n 1 1.017n 0)
* b = 0100
vin5 b0 pwl(0n 1 1n 1 1.017n 0)
vin6 b1 pwl(0n 1 1n 1 1.017n 0)
vin7 b2 pwl(0n 0 1n 0 1.017n 1)
vin8 b3 pwl(0n 1 1n 1 1.017n 0)

* ------------------------------ *
* Circuit Description
* s0: half-adder
Xh0 a0 b0 s0 vcc hadd_sum
Xc0 a0 b0 c1 vcc hadd_carry

* s1: full-adder
Xs1 a1 b1 c1 s1 vcc fadd_sum
Xc1 a1 b1 c1 c2 vcc fadd_carry

* s2: full-adder
Xs2 a2 b2 c2 s2 vcc fadd_sum
Xc2 a2 b2 c2 c3 vcc fadd_carry

* s3: full-adder
Xs3 a3 b3 c3 s3 vcc fadd_sum
Xc3 a3 b3 c3 c4 vcc fadd_carry

* ------------------------------ *
* capacitor
* Cname  n+ n- value
C0 s0 0 2.1fF
C1 s1 0 2.1fF
C2 s2 0 2.1fF
C3 s3 0 2.1fF
CC c4 0 2.1fF

* ------------------------------ *
* transient analysis
* .tran step total
.tran 0.001n 10n

* ------------------------------ *
* plot outputs
.print v(s0) v(s1) v(s2) v(s3) 
*.print v(c1) v(c2) v(c3) v(c4)
.end
