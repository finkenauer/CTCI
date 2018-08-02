* This file represents the calculus of fan-out 4.
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
X1 in out vcc inv

* Fan-out 4
XF1 out f1 vcc inv
XF2 out f2 vcc inv
XF3 out f3 vcc inv
XF4 out f4 vcc inv

* defining the capacitance of fan-out 4
XC in cfout vcc inv
* Cname  n+ n- value

C1 cfout 0 1.85fF

* change the capacitance til convergence is achieved (trise_out most similar possible with trise_cfout)
* C1 = 1.85:
*  trise_out       =   20.2546p      
*  trise_cfout     =   20.2664p      
*  tfall_out       =   23.9117p      
*  tfall_cfout     =   23.9716p  

* ------------------------------ *
* transient analysis
* .tran step total
.tran 0.001n 20n * SWEEP cfout 0.5 3 0.5

* ------------------------------ *
* measures:
* measure propagation delay
.measure tran trise_out		* rise time
+ trig v(out) val='0.1*supply' rise=1
+ targ v(out) val='0.9*supply' rise=1

.measure tran trise_cfout	* rise time
+ trig v(cfout) val='0.1*supply' rise=1
+ targ v(cfout) val='0.9*supply' rise=1

.measure tran tfall_out		* fall time
+ trig v(out) val='0.9*supply' fall=1
+ targ v(out) val='0.1*supply' fall=1

.measure tran tfall_cfout	* fall time
+ trig v(cfout) val='0.9*supply' fall=1
+ targ v(cfout) val='0.1*supply' fall=1

* ------------------------------ *
* plot outputs
.print v(in) v(out) v(cfout)

.end