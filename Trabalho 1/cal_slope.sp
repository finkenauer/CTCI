* This file represents the calculus of slope.
*.options compat=PSPICE
.include NMOS_VTG.inc
.include PMOS_VTG.inc

* ------------------------------ *
* Voltage
* Vname n+ n- value
vgnd 	GND_ 0 
vcc 	vcc 0 dc 1

* ------------------------------ *
.param supply = 1 	* supply == vcc
.param InvWp = 0.18u
.param InvWn = 0.1u
.param length = '50n'

* ------------------------------ *
* source input
* Vname n+ n- pulse(v1 v2 td trise tfall pw per)
vin1 in 0 pulse (0 1 0 0.00000001n 0.00000001n 1n 2.00000002n)

* subckt definition
* Mname d g s b tipo w l vtho
* ------------------------------ *
* inverter
.SUBCKT inv in out vcc
M1 vcc in out vcc PMOS w = 'InvWp' l ='length'
M2 0 in out 0 NMOS w = 'InvWn' l ='length'
.ends inv

* ------------------------------ *
* Circuit Description
X1 in w1 vcc inv
X2 w1 out vcc inv

* Cname  n+ n- value
*C1 out 0 1.85fF

* ------------------------------ *
* transient analysis
* .tran step total
.tran 0.00001n 2.5n

* ------------------------------ *
* measures:
* measure propagation delay
.measure tran trise_out		* rise time
+ trig v(out) val='0.1*supply' rise=1
+ targ v(out) val='0.9*supply' rise=1

.measure tran tfall_out		* rise time
+ trig v(out) val='0.9*supply' fall=1
+ targ v(out) val='0.1*supply' fall=1

.measure tran tpd param='(trise_out+tfall_out)/2'	* average prop delay (ps)

* ------------------------------ *
* plot outputs
.print v(in) v(out)

.end
