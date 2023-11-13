v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 110 -1210 1510 -810 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=3
divy=1
subdivy=1
unity=1
x1=0
x2=1e-06
divx=10
subdivx=1
node="
bridge_clk
rst_n
bridge_dati
bridge_load
bridge_dato
adc_conv_finished
adc_conv_finished_osr
conv_finish
cfg1,cfg1_15,cfg1_14,cfg1_13,cfg1_12,cfg1_11,cfg1_10,cfg1_9,cfg1_8,cfg1_7,cfg1_6,cfg1_5,cfg1_4,cfg1_3,cfg1_2,cfg1_1,cfg1_0
cfg2,cfg2_15,cfg2_14,cfg2_13,cfg2_12,cfg2_11,cfg2_10,cfg2_9,cfg2_8,cfg2_7,cfg2_6,cfg2_5,cfg2_4,cfg2_3,cfg2_2,cfg2_1,cfg2_0
res,res_15,res_14,res_13,res_12,res_11,res_10,res_9,res_8,res_7,res_6,res_5,res_4,res_3,res_2,res_1,res_0
"
color="6 8 9 9 9 9 9 9 9 9 9"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
T {Important hints:
-) Usage of Xyce: Simulation-> "Configure simulator and..." -> Xyce parallel batch 
   -> Run following command in terminal (better) or insert here: mpirun -np 12 --oversubscribe Xyce "$N"
-) Remove diodes from Netlists (no diode models in Xyce available)
-) Use Xyce solver KLU
-) If duplicate .subckt due to SC lib definitions e.g., rename them don't remove them since port order is different!} 130 -1430 0 0 0.4 0.4 {}
N 340 -340 340 -330 {
lab=VDD}
N 680 -290 680 -280 {
lab=GND}
N 680 -240 680 -230 {
lab=bridge_dati}
N 680 -360 680 -350 {
lab=bridge_load}
N 340 -270 340 -250 {
lab=GND}
N 770 -600 800 -600 {
lab=rst_n}
N 770 -580 800 -580 {
lab=bridge_clk}
N 770 -560 800 -560 {
lab=bridge_load}
N 770 -540 800 -540 {
lab=bridge_dati}
N 770 -520 800 -520 {
lab=adc_conv_finished}
N 1100 -640 1130 -640 {
lab=bridge_dato}
N 1100 -620 1130 -620 {
lab=tie0}
N 1100 -560 1130 -560 {bus=true
lab=cfg1_[15..0]}
N 1100 -540 1130 -540 {bus=true
lab=cfg2_[15..0]}
N 760 -640 800 -640 {
lab=VDD}
N 760 -620 800 -620 {
lab=GND}
N 1100 -600 1130 -600 {
lab=tie1}
N 1100 -580 1130 -580 {
lab=conv_finish}
N 1130 -640 1240 -640 {
lab=bridge_dato}
N 1130 -620 1250 -620 {
lab=tie0}
N 1130 -600 1250 -600 {
lab=tie1}
N 1130 -580 1240 -580 {
lab=conv_finish}
N 680 -360 720 -360 {
lab=bridge_load}
N 680 -170 680 -160 {
lab=GND}
N 680 -240 720 -240 {
lab=bridge_dati}
N 960 -300 960 -290 {
lab=GND}
N 960 -370 960 -360 {
lab=adc_conv_finished_osr}
N 960 -370 1000 -370 {
lab=adc_conv_finished_osr}
N 960 -170 960 -160 {
lab=GND}
N 960 -240 960 -230 {
lab=adc_conv_finished}
N 960 -240 1000 -240 {
lab=adc_conv_finished}
N 770 -500 800 -500 {
lab=adc_conv_finished_osr}
N 1130 -560 1220 -560 {
lab=cfg1_[15..0]
bus=true}
N 1130 -540 1200 -540 {
lab=cfg2_[15..0]
bus=true}
N 770 -480 800 -480 {bus=true
lab=res_[15..0]}
N 1310 -300 1310 -280 {
lab=VDD
bus=true}
N 1260 -280 1310 -280 {
lab=VDD
bus=true}
N 1260 -300 1260 -280 {
lab=VDD
bus=true}
N 1260 -370 1260 -360 {
lab=res_[15..0]
bus=true}
N 1260 -370 1300 -370 {
lab=res_[15..0]
bus=true}
N 260 -260 340 -260 {
lab=GND}
N 260 -200 260 -180 {
lab=0}
N 480 -170 480 -160 {
lab=GND}
N 480 -240 480 -230 {
lab=bridge_clk}
N 480 -240 520 -240 {
lab=bridge_clk}
N 480 -370 520 -370 {
lab=rst_n}
N 480 -310 480 -300 {
lab=GND}
C {devices/title.sym} 170 -40 0 0 {name=l9 author="Patrick Fath"}
C {devices/vdd.sym} 340 -340 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 340 -250 0 0 {name=l1 lab=GND}
C {devices/code.sym} 400 -640 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 680 -160 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 720 -240 0 1 {name=l29 sig_type=std_logic lab=bridge_dati}
C {devices/lab_wire.sym} 720 -360 0 1 {name=l4 sig_type=std_logic lab=bridge_load}
C {devices/simulator_commands.sym} 260 -640 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.include /foss/designs/sky130_adc_202311/xschem/adc_bridge_sim.spice

.save all
.control
.option reltol=0.01
.option gmin=1.0e-10
.option rshunt=1.0e10
set num_threads=11
tran 5n 5.5u

write adc_bridge_tb.raw

.endc
"}
C {devices/lab_wire.sym} 770 -600 0 0 {name=l59 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 770 -580 0 0 {name=l61 sig_type=std_logic lab=bridge_clk}
C {devices/lab_wire.sym} 770 -560 0 0 {name=l65 sig_type=std_logic lab=bridge_load}
C {devices/lab_wire.sym} 770 -540 0 0 {name=l67 sig_type=std_logic lab=bridge_dati}
C {devices/lab_wire.sym} 1130 -580 0 1 {name=l70 sig_type=std_logic lab=conv_finish}
C {devices/lab_wire.sym} 1130 -640 0 1 {name=l72 sig_type=std_logic lab=bridge_dato}
C {devices/lab_wire.sym} 1130 -620 0 1 {name=l80 sig_type=std_logic lab=tie0}
C {devices/lab_wire.sym} 1130 -600 0 1 {name=l82 sig_type=std_logic lab=tie1}
C {devices/vdd.sym} 760 -640 3 0 {name=l21 lab=VDD}
C {devices/gnd.sym} 760 -620 1 0 {name=l22 lab=GND}
C {devices/vsource.sym} 680 -200 0 0 {name=V_DATI value="pwl 0 0 
+ 1600n 0 1601n 1.8 1800n 1.8 1801n 0
+ 2100n 0 2101n 1.8 2200n 1.8 2201n 0
+ 2600n 0 2601n 1.8 2700n 1.8 2701n 0
+ 3100n 0 3101n 1.8 3200n 1.8 3201n 0
+ 3500n 0 3501n 1.8 3700n 1.8 3701n 0"}
C {devices/vsource.sym} 680 -320 0 0 {name=V_BRIDGE_LOAD value="0 pulse(0 1.8 3700n 1n 1n 100n 4000n)"}
C {devices/vsource.sym} 340 -300 0 0 {name=V9 value=1.8}
C {devices/gnd.sym} 680 -280 0 0 {name=l8 lab=GND}
C {devices/launcher.sym} 610 -720 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/adc_bridge_tb.raw tran
"
}
C {devices/lab_wire.sym} 1000 -370 0 1 {name=l10 sig_type=std_logic lab=adc_conv_finished_osr}
C {devices/vsource.sym} 960 -330 0 0 {name=V_CONV_FINISH_OSR value="0 pulse(0 1.8 4000n 1n 1n 100n 4000n)"}
C {devices/gnd.sym} 960 -290 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 1000 -240 0 1 {name=l12 sig_type=std_logic lab=adc_conv_finished}
C {devices/vsource.sym} 960 -200 0 0 {name=V_CONV_FINISH value="0 pulse(0 1.8 3800n 1n 1n 100n 4000n)"}
C {devices/gnd.sym} 960 -160 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 770 -520 0 0 {name=l14 sig_type=std_logic lab=adc_conv_finished}
C {devices/lab_wire.sym} 770 -500 0 0 {name=l15 sig_type=std_logic lab=adc_conv_finished_osr}
C {devices/lab_wire.sym} 1130 -560 0 1 {name=l16 sig_type=std_logic lab=cfg1_[15..0]}
C {devices/lab_wire.sym} 1130 -540 0 1 {name=l17 sig_type=std_logic lab=cfg2_[15..0]}
C {/foss/designs/sky130_adc_202311/xschem/adc_bridge.sym} 950 -580 0 0 {name=x1}
C {devices/lab_wire.sym} 770 -480 0 0 {name=l24 sig_type=std_logic lab=res_[15..0]}
C {devices/res.sym} 1260 -330 0 0 {name=R1[15:0]
value=1
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1310 -300 0 0 {name=l18 lab=VDD}
C {devices/lab_wire.sym} 1300 -370 0 1 {name=l23 sig_type=std_logic lab=res_[15..0]}
C {devices/simulator_commands.sym} 120 -640 0 0 {name=COMMANDS
simulator=xyce
only_toplevel=false 
value="
* xyce commands
.include /foss/designs/sky130_adc_202311/xschem/adc_bridge_sim.spice




****************
* XYCE Simulation Control
****************

.options timeint reltol=0.01
.options linsol type=klu
.options device gmin=1e-10
.tran 10n 1u uic

.print tran format=raw file=adc_bridge_tb.raw v(rst_n) v(bridge_clk) v(bridge_load) v(bridge_dati) v(adc_conv_finished) v(adc_conv_finished_osr) v(bridge_dato) v(conv_finish) 
+ v(cfg1_15) v(cfg1_14) v(cfg1_13) v(cfg1_12) v(cfg1_11) v(cfg1_10) v(cfg1_9) v(cfg1_8) v(cfg1_7) v(cfg1_6) v(cfg1_5) v(cfg1_4) v(cfg1_3) v(cfg1_2) v(cfg1_1) v(cfg1_0)
+ v(cfg2_15) v(cfg2_14) v(cfg2_13) v(cfg2_12) v(cfg2_11) v(cfg2_10) v(cfg2_9) v(cfg2_8) v(cfg2_7) v(cfg2_6) v(cfg2_5) v(cfg2_4) v(cfg2_3) v(cfg2_2) v(cfg2_1) v(cfg2_0)
+ v(res_15) v(res_14) v(res_13) v(res_12) v(res_11) v(res_10) v(res_9) v(res_8) v(res_7) v(res_6) v(res_5) v(res_4) v(res_3) v(res_2) v(res_1) v(res_0)
.print tran format=std file=adc_bridge_tb.ascii v(rst_n) v(bridge_clk) v(bridge_load) v(bridge_dati) v(adc_conv_finished) v(adc_conv_finished_osr) v(bridge_dato) v(conv_finish) 
+ v(cfg1_15) v(cfg1_14) v(cfg1_13) v(cfg1_12) v(cfg1_11) v(cfg1_10) v(cfg1_9) v(cfg1_8) v(cfg1_7) v(cfg1_6) v(cfg1_5) v(cfg1_4) v(cfg1_3) v(cfg1_2) v(cfg1_1) v(cfg1_0)
+ v(cfg2_15) v(cfg2_14) v(cfg2_13) v(cfg2_12) v(cfg2_11) v(cfg2_10) v(cfg2_9) v(cfg2_8) v(cfg2_7) v(cfg2_6) v(cfg2_5) v(cfg2_4) v(cfg2_3) v(cfg2_2) v(cfg2_1) v(cfg2_0)
+ v(res_15) v(res_14) v(res_13) v(res_12) v(res_11) v(res_10) v(res_9) v(res_8) v(res_7) v(res_6) v(res_5) v(res_4) v(res_3) v(res_2) v(res_1) v(res_0)
.print tran format=csv file=adc_bridge_tb.csv v(rst_n) v(bridge_clk) v(bridge_load) v(bridge_dati) v(adc_conv_finished) v(adc_conv_finished_osr) v(bridge_dato) v(conv_finish) 
+ v(cfg1_15) v(cfg1_14) v(cfg1_13) v(cfg1_12) v(cfg1_11) v(cfg1_10) v(cfg1_9) v(cfg1_8) v(cfg1_7) v(cfg1_6) v(cfg1_5) v(cfg1_4) v(cfg1_3) v(cfg1_2) v(cfg1_1) v(cfg1_0)
+ v(cfg2_15) v(cfg2_14) v(cfg2_13) v(cfg2_12) v(cfg2_11) v(cfg2_10) v(cfg2_9) v(cfg2_8) v(cfg2_7) v(cfg2_6) v(cfg2_5) v(cfg2_4) v(cfg2_3) v(cfg2_2) v(cfg2_1) v(cfg2_0)
+ v(res_15) v(res_14) v(res_13) v(res_12) v(res_11) v(res_10) v(res_9) v(res_8) v(res_7) v(res_6) v(res_5) v(res_4) v(res_3) v(res_2) v(res_1) v(res_0)   
.print tran format=gnuplot file=adc_bridge_tb.gnu.dat v(rst_n) v(bridge_clk) v(bridge_load) v(bridge_dati) v(adc_conv_finished) v(adc_conv_finished_osr) v(bridge_dato) v(conv_finish)
+ v(cfg1_15) v(cfg1_14) v(cfg1_13) v(cfg1_12) v(cfg1_11) v(cfg1_10) v(cfg1_9) v(cfg1_8) v(cfg1_7) v(cfg1_6) v(cfg1_5) v(cfg1_4) v(cfg1_3) v(cfg1_2) v(cfg1_1) v(cfg1_0)
+ v(cfg2_15) v(cfg2_14) v(cfg2_13) v(cfg2_12) v(cfg2_11) v(cfg2_10) v(cfg2_9) v(cfg2_8) v(cfg2_7) v(cfg2_6) v(cfg2_5) v(cfg2_4) v(cfg2_3) v(cfg2_2) v(cfg2_1) v(cfg2_0)
+ v(res_15) v(res_14) v(res_13) v(res_12) v(res_11) v(res_10) v(res_9) v(res_8) v(res_7) v(res_6) v(res_5) v(res_4) v(res_3) v(res_2) v(res_1) v(res_0)

"
}
C {devices/vsource.sym} 260 -230 0 0 {name=V1 value=0}
C {devices/lab_wire.sym} 260 -180 0 1 {name=l25 sig_type=std_logic lab=0}
C {devices/gnd.sym} 480 -160 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 520 -240 0 1 {name=l3 sig_type=std_logic lab=bridge_clk}
C {devices/vsource.sym} 480 -200 0 0 {name=V_BRIDGE_CLK value="0 pulse(0 1.8 450n 1n 1n 50n 100n)"}
C {devices/vsource.sym} 480 -340 0 0 {name=V2 value="pwl 0 1.8 100n 1.8 101n 0 400n 0 401n 1.8"}
C {devices/gnd.sym} 480 -300 0 0 {name=l39 lab=GND}
C {devices/lab_wire.sym} 520 -370 0 1 {name=l41 sig_type=std_logic lab=rst_n}
C {devices/noconn.sym} 1240 -640 0 1 {name=l5}
C {devices/noconn.sym} 1250 -620 0 1 {name=l6}
C {devices/noconn.sym} 1250 -600 0 1 {name=l19}
C {devices/noconn.sym} 1240 -580 0 1 {name=l20}
C {devices/noconn.sym} 1220 -560 0 1 {name=l26[15..0]}
C {devices/noconn.sym} 1200 -540 0 1 {name=l27[15..0]}
