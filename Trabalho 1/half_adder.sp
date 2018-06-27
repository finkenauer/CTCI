* This file represents the description of an half adder.
* The SPICE list was generated by SwitchCraft.
*.options compat=PSPICE
.include NMOS_VTG.inc
.include PMOS_VTG.inc

* ------------------------------ *
* Voltage
* Vname n+ n- value
vgnd GND_ 0 
vcc vcc 0 dc 1

* ------------------------------ *
.param supply = 1 	* supply == vcc
.param sh_Wp = '0.1u*2*1.8'		* minimal size X nseries X lambda
.param sh_Wn = '0.1u*2'
.param ch_Wp = '0.1u*2*1.8'
.param ch_Wn = '0.1u*2'

.param length = '50n'

* ------------------------------ *
* source input
* Vname n+ n- pulse(v1 v2 td trise tfall pw per)
vin1 b 0 pulse (0 1 0 0.1n 0.1n 1n 2.2n)
vin2 a 0 pulse (0 1 0 0.1n 0.1n 2.1n 4.4n)

* ------------------------------ *
* subckt definition
* Mname d g s b tipo w l vtho

* output from half adder
.SUBCKT hadd_sum a b out vcc
*.PININFO a:I b:I out:O vcc:P 0:G
*.EQN out=((!a * b) + (a * !b));
MP1 out a pu_n1 vcc PMOS w='sh_Wp'	l='length'
MP2 out not_a pu_n3 vcc PMOS w='sh_Wp'	l='length'
MP3 pu_n1 not_b vcc vcc PMOS w='sh_Wp'	l='length'
MP4 pu_n3 b vcc vcc PMOS w='sh_Wp'	l='length'
MN5 out not_a pd_n1 0 NMOS w='sh_Wn'	l='length'
MN6 out a pd_n3 0 NMOS w='sh_Wn'	l='length'
MN7 pd_n1 not_b 0 0 NMOS w='sh_Wn'	l='length'
MN8 pd_n3 b 0 0 NMOS w='sh_Wn'	l='length'
MP_inv9 not_a a vcc vcc PMOS w='sh_Wp'	l='length'
MN_inv10 not_a a 0 0 NMOS w='sh_Wn'	l='length'
MP_inv11 not_b b vcc vcc PMOS w='sh_Wp'	l='length'
MN_inv12 not_b b 0 0 NMOS w='sh_Wn'	l='length'
.ENDS hadd_sum

* carry out from half adder
.SUBCKT hadd_carry a b c_out vcc
*.PININFO a:I b:I not_out:O vcc:P 0:G
*.EQN not_out=!(!a + (a * !b));
MP1 out a vcc vcc PMOS w='ch_Wp'	l='length'
MP2 out not_a pu_n3 vcc PMOS w='ch_Wp'	l='length'
MP3 pu_n3 b vcc vcc PMOS w='ch_Wp'	l='length'
MN4 out a pd_n1 0 NMOS w='ch_Wn'	l='length'
MN5 pd_n1 b 0 0 NMOS w='ch_Wn'	l='length'
MP_inv6 not_a a vcc vcc PMOS w='ch_Wp'	l='length'
MN_inv7 not_a a 0 0 NMOS w='ch_Wn'	l='length'
MP_inv8 c_out out vcc vcc PMOS w='ch_Wp'	l='length'
MN_inv9 c_out out 0 0 NMOS w='ch_Wn'	l='length'
.ENDS hadd_carry


* ------------------------------ *
* Circuit Description
X1 a b out vcc hadd_sum
X2 a b c_out vcc hadd_carry

* ------------------------------ *
* capacitor
* Cname  n+ n- value
C1 out 0 2.1fF

* ------------------------------ *
* transient analysis
* .tran step total
.tran 0.001n 10n

* ------------------------------ *
* plot outputs
.print v(a) v(b) v(out) v(c_out) 

.end
