.include spice_models/NPN_idealNPN.mod

V1 anode 0 DC 9
Q1 anode 1 2 idealNPN

R1 1 0 10k
R2 2 0 4.7k

V2 1 0 DC 0
.dc V2 0 5 0.01      ; Sweep from -1V to +9V in 0.01V steps




** Control part
.control
run

plot v(anode), v(1), v(2)

.endc


.end

