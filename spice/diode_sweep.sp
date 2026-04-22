* Diode I-V Characteristic Sweep
* Forward and reverse bias sweep
.include spice_models/D_1N4148.mod

V1 anode 0 DC 0       ; Voltage source at anode (cathode tied to GND)
D1 anode 0 D1N4148    ; 1N4148 signal diode


* .model D1N4148 D(
* +  IS=2.52e-9
* +  N=1.752
* +  BV=100
* +  IBV=100e-6
* +  RS=0.568
* +  CJO=4e-12
* +  M=0.4
* +  TT=20e-9
* +  VJ=0.6
* )

.dc V1 -2 1 0.01      ; Sweep from -2V to +1V in 10mV steps




** Control part
.control
run

plot v(anode), 

.endc


.end