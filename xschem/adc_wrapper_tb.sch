v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -240 -1680 1430 -1270 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.338e-08
x2=13u
divx=10
subdivx=1
node="
clk_vcm
x1.xadc0.vcm/vcm"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -240 -1260 1430 -860 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.69658e-07
x2=13u
divx=10
subdivx=1
node="
x1.xadc0.ctop_pmatrix_analog
x1.xadc0.ctop_nmatrix_analog
conv_finished"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1510 -1170 3180 -700 {flags=graph
y1=0
y2=2
ypos1=-0.062618
ypos2=2.36231
divy=5
subdivy=1
unity=1
x1=-2.69658e-07
x2=13u
divx=10
subdivx=1
node="
X1.xadc0.XCGEN.CLKGEN.CLK_DIG_OUT
X1.xadc0.XCGEN.CLKGEN.CLK_COMP_OUT
X1.xadc0.DECISION_FINISH_COMP_N
X1.xadc0.CORE.CNB.COMPARATOR_IN
X1.xadc0.XCGEN.EDGEDETECT.ENA_IN
start_conv
rst_n
X1._CONV_FINISH_OUT
X1._CONV_FINISH_OSR_OUT
X1._RES,X1._RES[15],X1._RES[14],X1._RES[13],X1._RES[12],X1._RES[11],X1._RES[10],X1._RES[9],X1._RES[8],X1._RES[7],X1._RES[6],X1._RES[5],X1._RES[4],X1._RES[3],X1._RES[2],X1._RES[1],X1._RES[0]"
color="6 8 9 9 9 9 9 9 9 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
B 2 1510 -680 3180 -210 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.69658e-07
x2=13u
divx=10
subdivx=1
node="
bridge_clk
rst_n
bridge_dati
bridge_load
bridge_dato
conv_finish
X1._CFG1,X1._CFG1[15],X1._CFG1[14],X1._CFG1[13],X1._CFG1[12],X1._CFG1[11],X1._CFG1[10],X1._CFG1[9],X1._CFG1[8],X1._CFG1[7],X1._CFG1[6],X1._CFG1[5],X1._CFG1[4],X1._CFG1[3],X1._CFG1[2],X1._CFG1[1],X1._CFG1[0]
X1._CFG2,X1._CFG2[15],X1._CFG2[14],X1._CFG2[13],X1._CFG2[12],X1._CFG2[11],X1._CFG2[10],X1._CFG2[9],X1._CFG2[8],X1._CFG2[7],X1._CFG2[6],X1._CFG2[5],X1._CFG2[4],X1._CFG2[3],X1._CFG2[2],X1._CFG2[1],X1._CFG2[0]
X1._RES,X1._RES[15],X1._RES[14],X1._RES[13],X1._RES[12],X1._RES[11],X1._RES[10],X1._RES[9],X1._RES[8],X1._RES[7],X1._RES[6],X1._RES[5],X1._RES[4],X1._RES[3],X1._RES[2],X1._RES[1],X1._RES[0]
"
color="6 8 9 9 9 9 9 9 9"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
T {Important hints:
-) Simulation only possible with Xyce: Simulation-> "Configure simulator and..." -> Xyce parallel batch 
   -> Run following command in terminal (better) or insert here: mpirun -np 12 --oversubscribe Xyce "$N"
-) Remove diodes from Netlists (no diode models in Xyce available)
-) Use Xyce solver KLU
-) Ensure reltol < 1e-4, otherwise ADC comparator gets stucked
-) If duplicate .subckt due to SC lib definitions e.g., rename them don't remove them since port order is different!
-) Replace Capmatrix subckt of ADC with PEX netlist of capmatrix} 1520 -1600 0 0 0.4 0.4 {}
N 640 -680 670 -680 {
lab=rst_n}
N 640 -660 670 -660 {
lab=bridge_clk}
N 640 -640 670 -640 {
lab=start_conv}
N 640 -620 670 -620 {
lab=bridge_load}
N 640 -600 670 -600 {
lab=bridge_dati}
N 970 -720 1000 -720 {
lab=conv_finish}
N 970 -700 1000 -700 {
lab=bridge_dato}
N 970 -640 1000 -640 {
lab=inp_ana}
N 970 -620 1000 -620 {
lab=inn_ana}
N 630 -720 670 -720 {
lab=VDD}
N 630 -700 670 -700 {
lab=GND}
N 970 -680 1000 -680 {
lab=tie0}
N 970 -660 1000 -660 {
lab=tie1}
N 1000 -720 1110 -720 {
lab=conv_finish}
N 1000 -700 1120 -700 {
lab=bridge_dato}
N 1000 -680 1120 -680 {
lab=tie0}
N 1000 -660 1110 -660 {
lab=tie1}
N 1110 -320 1110 -310 {
lab=VDD}
N 1110 -250 1110 -230 {
lab=GND}
N 1030 -240 1110 -240 {
lab=GND}
N 1030 -180 1030 -160 {
lab=0}
N 820 -270 820 -260 {
lab=vmid}
N 820 -200 820 -190 {
lab=GND}
N 760 -320 760 -300 {
lab=vmid}
N 760 -300 880 -300 {
lab=vmid}
N 880 -320 880 -300 {
lab=vmid}
N 820 -300 820 -270 {
lab=vmid}
N 760 -400 760 -380 {
lab=inp_ana}
N 880 -420 880 -380 {
lab=inn_ana}
N 160 -520 200 -520 {
lab=start_conv}
N 160 -460 160 -450 {
lab=GND}
N 360 -340 360 -330 {
lab=GND}
N 360 -280 360 -270 {
lab=bridge_dati}
N 360 -410 360 -400 {
lab=bridge_load}
N 360 -410 400 -410 {
lab=bridge_load}
N 360 -210 360 -200 {
lab=GND}
N 360 -280 400 -280 {
lab=bridge_dati}
N 160 -210 160 -200 {
lab=GND}
N 160 -280 160 -270 {
lab=bridge_clk}
N 160 -280 200 -280 {
lab=bridge_clk}
N 160 -410 200 -410 {
lab=rst_n}
N 160 -350 160 -340 {
lab=GND}
N 1110 -660 1110 -640 {
lab=tie1}
N 1120 -680 1180 -680 {
lab=tie0}
N 1180 -680 1180 -640 {
lab=tie0}
N 1250 -700 1250 -640 {
lab=bridge_dato}
N 1120 -700 1250 -700 {
lab=bridge_dato}
N 1110 -720 1320 -720 {
lab=conv_finish}
N 1320 -720 1320 -640 {
lab=conv_finish}
N 1080 -600 1080 -580 {
lab=GND}
N 1110 -600 1110 -580 {
lab=GND}
N 1140 -600 1140 -580 {
lab=GND}
N 1150 -600 1150 -580 {
lab=GND}
N 1180 -600 1180 -580 {
lab=GND}
N 1210 -600 1210 -580 {
lab=GND}
N 1220 -600 1220 -580 {
lab=GND}
N 1250 -600 1250 -580 {
lab=GND}
N 1280 -600 1280 -580 {
lab=GND}
N 1320 -600 1320 -580 {
lab=GND}
N 1290 -600 1290 -580 {
lab=GND}
N 1350 -600 1350 -580 {
lab=GND}
N 1080 -580 1350 -580 {
lab=GND}
N 1240 -580 1240 -540 {
lab=GND}
C {devices/title.sym} 170 -40 0 0 {name=l9 author="Patrick Fath"}
C {devices/code.sym} 380 -740 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/simulator_commands.sym} 230 -740 0 0 {name=COMMANDS
simulator=xyce
only_toplevel=false 
value="
* xyce commands
.include /foss/designs/sky130_adc_202311/xschem/adc_top_sim.spice
.include /foss/designs/sky130_adc_202311/xschem/adc_bridge_sim.spice
.include /foss/designs/sky130_adc_202311/xschem/adc_wrapper_sim.spice

****************
* Misc
****************
.param vdiff=200m
.param boot=100n


****************
* XYCE Simulation Control
****************

.options timeint reltol=0.0001
.options linsol type=klu
.options device gmin=1e-11
.ic v(x1:xadc0:vcm/vcm)=0.9
*.tran 1n 5u uic
*.tran 1n 2n uic
.tran 1n 13u uic

.print tran format=raw file=adc_wrapper_tb.raw         v(x1:xadc0:ctop_pmatrix_analog) v(x1:xadc0:ctop_nmatrix_analog) v(x1:xadc0:vcm/vcm) V(X1:xadc0:XCGEN:EDGEDETECT.ENA_IN) V(X1:xadc0:CORE.CNB.ENABLE_LOOP_OUT) V(X1:xadc0:XCGEN:CLKGEN.ENABLE_LOOP_IN)   V(X1:xadc0:DECISION_FINISH_COMP_N) V(X1:xadc0:CORE.CNB.COMPARATOR_IN)  V(X1:xadc0:XCGEN:CLKGEN.CLK_DIG_OUT) V(X1:xadc0:XCGEN:CLKGEN.CLK_COMP_OUT) v(VDD) v(rst_n) v(bridge_clk) v(start_conv) v(bridge_load) v(bridge_dati) v(inp_ana) v(inn_ana) v(conv_finish) v(tie0) v(tie1) v(bridge_dato) V(X1:_CONV_FINISH_OSR_OUT) V(X1:_CONV_FINISH_OUT) V(X1:_RES*) V(X1:_CFG1*) V(X1:_CFG2*) 
*.print tran format=std file=adc_wrapper_tb.ascii       v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)
*.print tran format=csv file=adc_wrapper_tb.csv          v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)
*.print tran format=gnuplot file=adc_wrapper_tb.gnu.dat  v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)


"
}
C {devices/lab_wire.sym} 640 -680 0 0 {name=l59 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 640 -660 0 0 {name=l61 sig_type=std_logic lab=bridge_clk}
C {devices/lab_wire.sym} 640 -620 0 0 {name=l65 sig_type=std_logic lab=bridge_load}
C {devices/lab_wire.sym} 640 -600 0 0 {name=l67 sig_type=std_logic lab=bridge_dati}
C {devices/lab_wire.sym} 640 -640 0 0 {name=l63 sig_type=std_logic lab=start_conv}
C {devices/lab_wire.sym} 1000 -720 0 1 {name=l70 sig_type=std_logic lab=conv_finish}
C {devices/lab_wire.sym} 1000 -700 0 1 {name=l72 sig_type=std_logic lab=bridge_dato}
C {devices/lab_wire.sym} 1000 -680 0 1 {name=l80 sig_type=std_logic lab=tie0}
C {devices/lab_wire.sym} 1000 -660 0 1 {name=l82 sig_type=std_logic lab=tie1}
C {devices/lab_wire.sym} 1000 -640 0 1 {name=l17 sig_type=std_logic lab=inp_ana}
C {devices/lab_wire.sym} 1000 -620 0 1 {name=l19 sig_type=std_logic lab=inn_ana}
C {devices/vdd.sym} 630 -720 3 0 {name=l21 lab=VDD}
C {devices/gnd.sym} 630 -700 1 0 {name=l22 lab=GND}
C {devices/launcher.sym} 1600 -1230 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/adc_wrapper_tb.raw tran
"
}
C {/foss/designs/sky130_adc_202311/xschem/adc_wrapper.sym} 820 -660 0 0 {name=x1}
C {devices/vdd.sym} 1110 -320 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1110 -230 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 1110 -280 0 0 {name=V_VDD value="pwl 0 0 \{boot\} 1.8"}
C {devices/vsource.sym} 1030 -210 0 0 {name=V_VSS value=0}
C {devices/lab_wire.sym} 1030 -160 0 1 {name=l25 sig_type=std_logic lab=0}
C {devices/vsource.sym} 820 -230 0 0 {name=V_MID value="pwl 0 0 \{boot\} 0.9"}
C {devices/gnd.sym} 820 -190 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 820 -270 0 0 {name=l15 sig_type=std_logic lab=vmid}
C {devices/vsource.sym} 760 -350 0 0 {name=V_IN_DIF1 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/vsource.sym} 880 -350 2 1 {name=V_IN_DIF2 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/lab_wire.sym} 760 -400 0 1 {name=l16 sig_type=std_logic lab=inp_ana}
C {devices/lab_wire.sym} 880 -400 0 0 {name=l18 sig_type=std_logic lab=inn_ana}
C {devices/vsource.sym} 160 -490 0 0 {name=V31 value="pwl 0 0 410n 0 411n 1.8 600n 1.8 601n 0 5500n 0 5501n 1.8 5800n 1.8 5801n 0"}
C {devices/gnd.sym} 160 -450 0 0 {name=l38 lab=GND}
C {devices/lab_wire.sym} 200 -520 0 1 {name=l40 sig_type=std_logic lab=start_conv}
C {devices/gnd.sym} 360 -200 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 400 -280 0 1 {name=l29 sig_type=std_logic lab=bridge_dati}
C {devices/lab_wire.sym} 400 -410 0 1 {name=l2 sig_type=std_logic lab=bridge_load}
C {devices/vsource.sym} 360 -240 0 0 {name=V_DATI value="pwl 0 0 
+ 1600n 0 1601n 1.8 1800n 1.8 1801n 0
+ 2100n 0 2101n 1.8 2200n 1.8 2201n 0
+ 2600n 0 2601n 1.8 2700n 1.8 2701n 0
+ 3100n 0 3101n 1.8 3200n 1.8 3201n 0
+ 3500n 0 3501n 1.8 3700n 1.8 3701n 0"}
C {devices/vsource.sym} 360 -370 0 0 {name=V_BRIDGE_LOAD value="0 pulse(0 1.8 3700n 1n 1n 100n 6300n)"}
C {devices/gnd.sym} 360 -330 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 160 -200 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 200 -280 0 1 {name=l11 sig_type=std_logic lab=bridge_clk}
C {devices/vsource.sym} 160 -240 0 0 {name=V_BRIDGE_CLK value="0 pulse(0 1.8 450n 1n 1n 50n 100n)"}
C {devices/vsource.sym} 160 -380 0 0 {name=V2 value="pwl 0 1.8 100n 1.8 101n 0 400n 0 401n 1.8"}
C {devices/gnd.sym} 160 -340 0 0 {name=l39 lab=GND}
C {devices/lab_wire.sym} 200 -410 0 1 {name=l41 sig_type=std_logic lab=rst_n}
C {sky130_fd_pr/nfet_01v8.sym} 1110 -620 1 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1180 -620 1 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1250 -620 1 0 {name=M3
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1320 -620 1 0 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 1240 -540 0 0 {name=l3 lab=GND}
