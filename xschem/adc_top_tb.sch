v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 40 -1120 880 -1120 {}
L 4 880 -1120 880 -540 {}
L 4 40 -540 880 -540 {}
L 4 40 -1120 40 -540 {}
L 4 60 -500 640 -500 {}
L 4 640 -500 640 -120 {}
L 4 40 -120 640 -120 {}
L 4 40 -500 40 -120 {}
L 4 40 -500 60 -500 {}
L 4 600 -1140 880 -1140 {}
L 4 600 -1400 600 -1140 {}
L 4 880 -1400 880 -1140 {}
L 4 600 -1400 880 -1400 {}
B 2 1740 -1400 3410 -990 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.57471e-08
x2=2.07012e-06
divx=5
subdivx=1
node="
clk_vcm
x1.vcm/vcm"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1740 -980 3410 -580 {flags=graph
y1=0.6
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.57471e-08
x2=2.07012e-06
divx=5
subdivx=1
node="x1.ctop_pmatrix_analog
x1.ctop_nmatrix_analog
conv_finished"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1740 -520 3410 -50 {flags=graph
y1=0
y2=2
ypos1=-0.062618
ypos2=2.36231
divy=5
subdivy=1
unity=1
x1=1.57471e-08
x2=2.07012e-06
divx=5
subdivx=1
node="
X1.XCGEN.CLKGEN.CLK_DIG_OUT
X1.XCGEN.CLKGEN.CLK_COMP_OUT
X1.DECISION_FINISH_COMP_N
X1.CORE.CNB.COMPARATOR_IN
X1.XCGEN.EDGEDETECT.ENA_IN
start_conv
rst_n
conv_finished
conv_finished_osr
result,result_15,result_14,result_13,result_12,result_11,result_10,result_9,result_8,result_7,result_6,result_5,result_4,result_3,result_2,result_1,result_0"
color="6 8 9 9 9 9 9 9 9 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
T {DELAY1} 170 -1060 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 180 -870 0 0 0.4 0.4 {}
T {DELAY2} 490 -1060 0 0 0.4 0.4 {}
T {DELAY3} 180 -790 0 0 0.4 0.4 {}
T {DELAY4} 500 -790 0 0 0.4 0.4 {}
T {
160ns  80ns  40ns  20ns  10ns  5ns} 510 -600 0 0 0.4 0.4 {}
T {DELAY SETTINGS OF SELF-CLOCKED LOOP} 50 -1120 0 0 0.7 0.7 {}
T {Averaging Config} 60 -490 0 0 0.4 0.4 {}
T {default: 1 sample
001: 3 samples
010: 7 samples
011: 15 samples
100: 31 samples} 80 -260 0 0 0.4 0.4 {}
T {OSR Config} 400 -490 0 0 0.4 0.4 {}
T {default: 1 sample
001: 4 samples
010: 16 samples
011: 64 samples
100: 256 samples} 430 -260 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 500 -870 0 0 0.4 0.4 {}
T {
80ns  40ns  20ns  10ns  5ns} 190 -600 0 0 0.4 0.4 {}
T {row/col
0=sequential
1=symmetrical} 710 -1360 0 0 0.4 0.4 {}
T {Important hints:
-) Simulation only possible with Xyce: Simulation-> "Configure simulator and..." -> Xyce parallel batch 
   -> Run following command in terminal (better) or insert here: mpirun -np 12 --oversubscribe Xyce "$N"
-) Remove diodes from Netlists (no diode models in Xyce available)
-) Use Xyce solver KLU
-) Ensure reltol < 1e-4, otherwise ADC comparator gets stucked
-) If duplicate .subckt due to SC lib definitions e.g., rename them don't remove them since port order is different!
-) Replace Capmatrix subckt of ADC with PEX netlist of capmatrix} 30 -1630 0 0 0.4 0.4 {}
N 1090 -310 1090 -300 {
lab=VDD}
N 1470 -970 1530 -970 {
lab=result_[15..0]  bus=true}
N 1470 -1010 1530 -1010 {
lab=conv_finished}
N 1320 -1050 1320 -1040 {
lab=VDD}
N 1320 -860 1320 -850 {
lab=GND}
N 1140 -970 1170 -970 {
lab=rst_n}
N 1000 -840 1000 -830 {
lab=vmid}
N 1000 -770 1000 -760 {
lab=GND}
N 940 -890 940 -870 {
lab=vmid}
N 940 -870 1060 -870 {
lab=vmid}
N 1060 -890 1060 -870 {
lab=vmid}
N 1000 -870 1000 -840 {
lab=vmid}
N 940 -970 940 -950 {
lab=inp}
N 1060 -990 1060 -950 {
lab=inn}
N 940 -1010 940 -970 {
lab=inp}
N 1140 -930 1170 -930 {
lab=start_conv}
N 1140 -950 1170 -950 {
lab=clk_vcm}
N 1090 -240 1090 -220 {
lab=GND}
N 1470 -990 1530 -990 {
lab=conv_finished_osr}
N 720 -480 760 -480 {
lab=start_conv}
N 720 -360 760 -360 {
lab=rst_n}
N 720 -180 720 -170 {
lab=GND}
N 720 -300 720 -290 {
lab=GND}
N 720 -420 720 -410 {
lab=GND}
N 720 -250 720 -240 {
lab=clk_vcm}
N 720 -250 760 -250 {
lab=clk_vcm}
N 940 -1010 1170 -1010 {
lab=inp}
N 1060 -990 1170 -990 {
lab=inn}
N 1020 -230 1090 -230 {
lab=GND}
N 620 -1220 620 -1200 {
lab=GND}
N 620 -1210 680 -1210 {
lab=GND}
N 680 -1220 680 -1210 {
lab=GND}
N 620 -1290 620 -1280 {
lab=row_mode}
N 680 -1290 680 -1280 {
lab=col_mode}
N 1130 -770 1170 -770 {
lab=dlyctrl4_[5..0],nc[1..0],col_mode,row_mode,osr_mode[2..0],avg_mode[2..0]}
N 1150 -800 1170 -800 {
lab=en_dly_contr,dlyctrl3_[4..0],dlyctrl2_[4..0],dlyctrl1_[4..0]}
N 810 -1260 810 -1240 {bus=true
lab=nc[1..0]}
N 810 -1180 810 -1170 {
lab=GND}
N 1020 -170 1020 -145 {
lab=0}
N 85 -310 85 -290 {
lab=GND}
N 85 -300 145 -300 {
lab=GND}
N 145 -310 145 -300 {
lab=GND}
N 85 -380 85 -370 {
lab=avg_mode2}
N 145 -380 145 -370 {
lab=avg_mode1}
N 205 -380 205 -370 {
lab=avg_mode0}
N 145 -300 205 -300 {
lab=GND}
N 205 -310 205 -300 {
lab=GND}
N 435 -310 435 -290 {
lab=GND}
N 435 -300 495 -300 {
lab=GND}
N 495 -310 495 -300 {
lab=GND}
N 435 -380 435 -370 {
lab=osr_mode2}
N 495 -380 495 -370 {
lab=osr_mode1}
N 555 -380 555 -370 {
lab=osr_mode0}
N 495 -300 555 -300 {
lab=GND}
N 555 -310 555 -300 {
lab=GND}
N 190 -890 190 -870 {
lab=GND}
N 190 -880 250 -880 {
lab=GND}
N 250 -890 250 -880 {
lab=GND}
N 190 -960 190 -950 {
lab=dlyctrl1_4}
N 250 -960 250 -950 {
lab=dlyctrl1_3}
N 310 -880 370 -880 {
lab=GND}
N 370 -890 370 -880 {
lab=GND}
N 310 -960 310 -950 {
lab=dlyctrl1_2}
N 370 -960 370 -950 {
lab=dlyctrl1_1}
N 430 -890 430 -880 {
lab=GND}
N 430 -960 430 -950 {
lab=dlyctrl1_0}
N 250 -880 310 -880 {
lab=GND}
N 310 -890 310 -880 {
lab=GND}
N 370 -880 430 -880 {
lab=GND}
N 510 -890 510 -870 {
lab=GND}
N 510 -880 570 -880 {
lab=GND}
N 570 -890 570 -880 {
lab=GND}
N 510 -960 510 -950 {
lab=dlyctrl2_4}
N 570 -960 570 -950 {
lab=dlyctrl2_3}
N 630 -880 690 -880 {
lab=GND}
N 690 -890 690 -880 {
lab=GND}
N 630 -960 630 -950 {
lab=dlyctrl2_2}
N 690 -960 690 -950 {
lab=dlyctrl2_1}
N 750 -890 750 -880 {
lab=GND}
N 750 -960 750 -950 {
lab=dlyctrl2_0}
N 570 -880 630 -880 {
lab=GND}
N 630 -890 630 -880 {
lab=GND}
N 690 -880 750 -880 {
lab=GND}
N 80 -960 80 -950 {
lab=en_dly_contr}
N 80 -890 80 -880 {
lab=GND}
N 80 -880 190 -880 {
lab=GND}
N 185 -630 185 -610 {
lab=GND}
N 185 -620 245 -620 {
lab=GND}
N 245 -630 245 -620 {
lab=GND}
N 185 -700 185 -690 {
lab=dlyctrl3_4}
N 245 -700 245 -690 {
lab=dlyctrl3_3}
N 305 -620 365 -620 {
lab=GND}
N 365 -630 365 -620 {
lab=GND}
N 305 -700 305 -690 {
lab=dlyctrl3_2}
N 365 -700 365 -690 {
lab=dlyctrl3_1}
N 425 -630 425 -620 {
lab=GND}
N 425 -700 425 -690 {
lab=dlyctrl3_0}
N 245 -620 305 -620 {
lab=GND}
N 305 -630 305 -620 {
lab=GND}
N 365 -620 425 -620 {
lab=GND}
N 505 -630 505 -610 {
lab=GND}
N 505 -620 565 -620 {
lab=GND}
N 565 -630 565 -620 {
lab=GND}
N 505 -700 505 -690 {
lab=dlyctrl4_5}
N 565 -700 565 -690 {
lab=dlyctrl4_4}
N 625 -620 685 -620 {
lab=GND}
N 685 -630 685 -620 {
lab=GND}
N 625 -700 625 -690 {
lab=dlyctrl4_3}
N 685 -700 685 -690 {
lab=dlyctrl4_2}
N 745 -630 745 -620 {
lab=GND}
N 745 -700 745 -690 {
lab=dlyctrl4_1}
N 565 -620 625 -620 {
lab=GND}
N 625 -630 625 -620 {
lab=GND}
N 685 -620 745 -620 {
lab=GND}
N 805 -630 805 -620 {
lab=GND}
N 805 -700 805 -690 {
lab=dlyctrl4_0}
N 745 -620 805 -620 {
lab=GND}
N 1130 -910 1130 -770 {
lab=dlyctrl4_[5..0],nc[1..0],col_mode,row_mode,osr_mode[2..0],avg_mode[2..0]}
N 1130 -910 1170 -910 {
lab=dlyctrl4_[5..0],nc[1..0],col_mode,row_mode,osr_mode[2..0],avg_mode[2..0]}
N 1150 -890 1150 -800 {
lab=en_dly_contr,dlyctrl3_[4..0],dlyctrl2_[4..0],dlyctrl1_[4..0]}
N 1150 -890 1170 -890 {
lab=en_dly_contr,dlyctrl3_[4..0],dlyctrl2_[4..0],dlyctrl1_[4..0]}
C {devices/title.sym} 170 -40 0 0 {name=l43 author="Patrick Fath"}
C {devices/vsource.sym} 1090 -270 0 0 {name=V_VDD value="pwl 0 0 \{boot\} 1.8"}
C {devices/vdd.sym} 1090 -310 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1090 -220 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 1320 -1050 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 1320 -850 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1530 -970 0 1 {name=l35 sig_type=std_logic lab=result_[15..0]}
C {devices/vsource.sym} 1000 -800 0 0 {name=V_MID value="pwl 0 0 \{boot\} 0.9"}
C {devices/gnd.sym} 1000 -760 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1000 -840 0 0 {name=l31 sig_type=std_logic lab=vmid}
C {devices/noconn.sym} 1530 -970 0 1 {name=l1[0..15]}
C {devices/noconn.sym} 1530 -1010 0 1 {name=l2}
C {devices/vsource.sym} 940 -920 0 0 {name=V_IN_DIF1 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/vsource.sym} 1060 -920 2 1 {name=V_IN_DIF2 value="pwl 0 0 \{boot\} \{vdiff/2\}"}
C {devices/lab_wire.sym} 1530 -1010 0 1 {name=l3 sig_type=std_logic lab=conv_finished}
C {devices/lab_wire.sym} 940 -970 0 1 {name=l3 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 1060 -970 0 0 {name=l3 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 1140 -970 0 0 {name=l3 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 1140 -930 0 0 {name=l3 sig_type=std_logic lab=start_conv}
C {devices/lab_wire.sym} 1140 -950 0 0 {name=l3 sig_type=std_logic lab=clk_vcm}
C {devices/lab_wire.sym} 1170 -770 0 1 {name=l30 sig_type=std_logic lab=dlyctrl4_[5..0],nc[1..0],col_mode,row_mode,osr_mode[2..0],avg_mode[2..0]}
C {devices/lab_wire.sym} 1170 -800 0 1 {name=l36 sig_type=std_logic lab=en_dly_contr,dlyctrl3_[4..0],dlyctrl2_[4..0],dlyctrl1_[4..0]}
C {devices/launcher.sym} 1480 -270 0 0 {name=h2 
descr="Load/unload
TRAN waveforms" 
tclcommand="
xschem raw_read $netlist_dir/adc_top_tb.raw tran
"
}
C {devices/noconn.sym} 1530 -990 0 1 {name=l28}
C {devices/lab_wire.sym} 1530 -990 0 1 {name=l29 sig_type=std_logic lab=conv_finished_osr}
C {devices/vsource.sym} 720 -210 0 0 {name=V_VCM value="0 pulse(0 1.8 \{0.5/fclk\} 1n 1n \{0.5/fclk\} \{1/fclk\})"}
C {devices/gnd.sym} 720 -170 0 0 {name=l37 lab=GND}
C {devices/vsource.sym} 720 -330 0 0 {name=V1 value="pwl 0 0 400n 0 401n 1.8"}
C {devices/vsource.sym} 720 -450 0 0 {name=V31 value="pwl 0 0 410n 0 411n 1.8 600n 1.8 601n 0"}
C {devices/gnd.sym} 720 -410 0 0 {name=l38 lab=GND}
C {devices/gnd.sym} 720 -290 0 0 {name=l39 lab=GND}
C {devices/lab_wire.sym} 760 -480 0 1 {name=l40 sig_type=std_logic lab=start_conv}
C {devices/lab_wire.sym} 760 -360 0 1 {name=l41 sig_type=std_logic lab=rst_n}
C {devices/lab_wire.sym} 760 -250 0 1 {name=l42 sig_type=std_logic lab=clk_vcm}
C {devices/vsource.sym} 620 -1250 0 0 {name=V33 value="pwl 0 0 \{boot\} \{rowmode\}"}
C {devices/gnd.sym} 620 -1200 0 0 {name=l49 lab=GND}
C {devices/vsource.sym} 680 -1250 0 0 {name=V34 value="pwl 0 0 \{boot\} \{colmode\}"}
C {devices/lab_wire.sym} 620 -1290 1 0 {name=l50 sig_type=std_logic lab=row_mode}
C {devices/lab_wire.sym} 680 -1290 1 0 {name=l51 sig_type=std_logic lab=col_mode}
C {devices/code.sym} 320 -1270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/simulator_commands.sym} 40 -1270 0 0 {name=COMMANDS
simulator=xyce
only_toplevel=false 
value="
* xyce commands
.include /foss/designs/sky130_adc_202311/xschem/adc_top_sim.spice

****************
* Misc
****************
.param fclk=32768
.param vdiff=200m
.param boot=100n

****************
* Delay Config
****************
.param dlyctrl = 1.8

* delay 1-3
.param bit0 = 0
.param bit1 = 1.8
.param bit2 = 0
.param bit3 = 0
.param bit4 = 0

* edgedetect pulse
.param ed_bit0 = 0
.param ed_bit1 = 0
.param ed_bit2 = 1.8
.param ed_bit3 = 1.8
.param ed_bit4 = 0
.param ed_bit5 = 0

****************
* Averaging Config
****************
.param avg0 = 0
.param avg1 = 0
.param avg2 = 0

****************
* OSR Config
****************
.param osr0 = 0
.param osr1 = 0
.param osr2 = 0

****************
* Row Column
* sequential or symmetric
****************
.param rowmode = 0
.param colmode = 0

****************
* XYCE Simulation Control
****************

.options timeint reltol=0.0001
.options linsol type=klu
.options device gmin=1e-11
.ic v(x1:vcm/vcm)=0.9
.tran 1n 2u uic
*.tran 1n 100n uic

.print tran format=raw file=adc_top_tb.raw       v(x1:ctop_pmatrix_analog) v(x1:ctop_nmatrix_analog) v(x1:vcm/vcm) V(X1:XCGEN:EDGEDETECT.ENA_IN) V(X1:CORE.CNB.ENABLE_LOOP_OUT) V(X1:XCGEN:CLKGEN.ENABLE_LOOP_IN) V(X1:DECISION_FINISH_COMP_N) V(X1:CORE.CNB.COMPARATOR_IN) v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) V(X1:XCGEN:CLKGEN.CLK_DIG_OUT) V(X1:XCGEN:CLKGEN.CLK_COMP_OUT) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr) 
*.print tran format=std file=adc_top_tb.ascii       v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)
*.print tran format=csv file=adc_top_tb.csv          v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)
*.print tran format=gnuplot file=adc_top_tb.gnu.dat  v(VDD) v(rst_n) v(start_conv) v(clk_vcm) v(inp) v(inn) v(conv_finished) v(conv_finished_osr) v(result*) v(dlyctrl*) v(avg_mode*) v(osr_mode*) v(en_dly_contr)


"

}
C {devices/simulator_commands.sym} 180 -1270 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include /foss/designs/sky130_adc_202311/xschem/adc_top_sim.spice

****************
* Misc
****************
.param fclk=32768
.param vdiff=200m
.param boot=1u

****************
* Delay Config
****************
.param dlyctrl = 1.8

* delay 1-3
.param bit0 = 0
.param bit1 = 1.8
.param bit2 = 0
.param bit3 = 0
.param bit4 = 0

* edgedetect pulse
.param ed_bit0 = 0
.param ed_bit1 = 0
.param ed_bit2 = 1.8
.param ed_bit3 = 1.8
.param ed_bit4 = 0
.param ed_bit5 = 0

****************
* Averaging Config
****************
.param avg0 = 0
.param avg1 = 0
.param avg2 = 0

****************
* OSR Config
****************
.param osr0 = 0
.param osr1 = 0
.param osr2 = 0


****************
* Row Column
* sequential or symmetric
****************
.param rowmode = 0
.param colmode = 0

.save all
.control
.option abstol=1.0e-10
.option gmin=1.0e-9
.option reltol=0.01
.option vntol=1.0e-4
.option rshunt=1.0e9

set num_threads=11
tran 10n 2u
plot inp inn rst_n start_conv conv_finished
plot start_conv x1.clk_dig x1.clk_comp 
plot x1.pctop x1.nctop x1.comparator_result
plot x1.pctop-x1.nctop

let k = length(time) - 1

* Print the result vector at the end of tran
print result15[k] result14[k] result13[k] result12[k] result11[k] result10[k] result9[k] result8[k] result7[k] result6[k] result5[k] result4[k] result3[k] result2[k] result1[k] result0[k]
* Print the result diff-voltage at the end of tran
print ((result15[k]*2048+result14[k]*1024+result13[k]*512+result12[k]*256+result11[k]*128+result10[k]*64+result9[k]*32+result8[k]*16+result7[k]*8+result6[k]*4+result5[k]*2+result4[k]*1+result3[k]*0.5+result2[k]*0.25+result1[k]*0.125+result0[k]*0.0625)-2048*1.8)/2048

write adc_top_tb.raw

.endc
"}
C {/foss/designs/sky130_adc_202311/xschem/adc_top.sym} 1320 -950 0 0 {name=x1}
C {devices/vsource.sym} 810 -1210 0 0 {name=V_NC value=0}
C {devices/lab_pin.sym} 810 -1260 0 1 {name=l33 sig_type=std_logic lab=nc[1..0]}
C {devices/gnd.sym} 810 -1170 0 0 {name=l32 lab=GND}
C {devices/vsource.sym} 1020 -200 0 0 {name=V_SS_0 value=0}
C {devices/lab_wire.sym} 1020 -145 0 1 {name=l34 sig_type=std_logic lab=0}
C {devices/vsource.sym} 85 -340 0 0 {name=V2 value="pwl 0 0 \{boot\} \{avg2\}"}
C {devices/gnd.sym} 85 -290 0 0 {name=l44 lab=GND}
C {devices/vsource.sym} 145 -340 0 0 {name=V3 value="pwl 0 0 \{boot\} \{avg1\}"}
C {devices/lab_wire.sym} 85 -380 1 0 {name=l45 sig_type=std_logic lab=avg_mode2}
C {devices/lab_wire.sym} 145 -380 1 0 {name=l46 sig_type=std_logic lab=avg_mode1}
C {devices/vsource.sym} 205 -340 0 0 {name=V25 value="pwl 0 0 \{boot\} \{avg0\}"}
C {devices/lab_wire.sym} 205 -380 1 0 {name=l47 sig_type=std_logic lab=avg_mode0}
C {devices/vsource.sym} 435 -340 0 0 {name=V27 value="pwl 0 0 \{boot\} \{osr2\}"}
C {devices/gnd.sym} 435 -290 0 0 {name=l48 lab=GND}
C {devices/vsource.sym} 495 -340 0 0 {name=V28 value="pwl 0 0 \{boot\} \{osr1\}"}
C {devices/lab_wire.sym} 435 -380 1 0 {name=l52 sig_type=std_logic lab=osr_mode2}
C {devices/lab_wire.sym} 495 -380 1 0 {name=l53 sig_type=std_logic lab=osr_mode1}
C {devices/vsource.sym} 555 -340 0 0 {name=V29 value="pwl 0 0 \{boot\} \{osr0\}"}
C {devices/lab_wire.sym} 555 -380 1 0 {name=l54 sig_type=std_logic lab=osr_mode0}
C {devices/vsource.sym} 190 -920 0 0 {name=V4 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/gnd.sym} 190 -870 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 250 -920 0 0 {name=V5 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/lab_wire.sym} 190 -960 1 0 {name=l4 sig_type=std_logic lab=dlyctrl1_4}
C {devices/lab_wire.sym} 250 -960 1 0 {name=l5 sig_type=std_logic lab=dlyctrl1_3}
C {devices/vsource.sym} 310 -920 0 0 {name=V6 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 370 -920 0 0 {name=V7 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/lab_wire.sym} 310 -960 1 0 {name=l6 sig_type=std_logic lab=dlyctrl1_2}
C {devices/lab_wire.sym} 370 -960 1 0 {name=l8 sig_type=std_logic lab=dlyctrl1_1}
C {devices/vsource.sym} 430 -920 0 0 {name=V8 value="pwl 0 0 \{boot\} \{bit0\}"}
C {devices/lab_wire.sym} 430 -960 1 0 {name=l9 sig_type=std_logic lab=dlyctrl1_0}
C {devices/gnd.sym} 510 -870 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 510 -960 1 0 {name=l11 sig_type=std_logic lab=dlyctrl2_4}
C {devices/lab_wire.sym} 570 -960 1 0 {name=l12 sig_type=std_logic lab=dlyctrl2_3}
C {devices/lab_wire.sym} 630 -960 1 0 {name=l13 sig_type=std_logic lab=dlyctrl2_2}
C {devices/lab_wire.sym} 690 -960 1 0 {name=l14 sig_type=std_logic lab=dlyctrl2_1}
C {devices/lab_wire.sym} 750 -960 1 0 {name=l55 sig_type=std_logic lab=dlyctrl2_0}
C {devices/vsource.sym} 80 -920 0 0 {name=V26 value="pwl 0 0 \{boot\} \{dlyctrl\}"}
C {devices/lab_wire.sym} 80 -960 1 0 {name=l56 sig_type=std_logic lab=en_dly_contr}
C {devices/vsource.sym} 510 -920 0 0 {name=V9 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/vsource.sym} 570 -920 0 0 {name=V10 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/vsource.sym} 630 -920 0 0 {name=V11 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 690 -920 0 0 {name=V12 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/vsource.sym} 750 -920 0 0 {name=V13 value="pwl 0 0 \{boot\} \{bit0\}"}
C {devices/gnd.sym} 185 -610 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 185 -700 1 0 {name=l16 sig_type=std_logic lab=dlyctrl3_4}
C {devices/lab_wire.sym} 245 -700 1 0 {name=l17 sig_type=std_logic lab=dlyctrl3_3}
C {devices/lab_wire.sym} 305 -700 1 0 {name=l18 sig_type=std_logic lab=dlyctrl3_2}
C {devices/lab_wire.sym} 365 -700 1 0 {name=l19 sig_type=std_logic lab=dlyctrl3_1}
C {devices/lab_wire.sym} 425 -700 1 0 {name=l20 sig_type=std_logic lab=dlyctrl3_0}
C {devices/gnd.sym} 505 -610 0 0 {name=l21 lab=GND}
C {devices/lab_wire.sym} 505 -700 1 0 {name=l22 sig_type=std_logic lab=dlyctrl4_5}
C {devices/lab_wire.sym} 565 -700 1 0 {name=l23 sig_type=std_logic lab=dlyctrl4_4}
C {devices/lab_wire.sym} 625 -700 1 0 {name=l24 sig_type=std_logic lab=dlyctrl4_3}
C {devices/lab_wire.sym} 685 -700 1 0 {name=l25 sig_type=std_logic lab=dlyctrl4_2}
C {devices/lab_wire.sym} 745 -700 1 0 {name=l26 sig_type=std_logic lab=dlyctrl4_1}
C {devices/lab_wire.sym} 805 -700 1 0 {name=l27 sig_type=std_logic lab=dlyctrl4_0}
C {devices/vsource.sym} 505 -660 0 0 {name=V19 value="pwl 0 0 \{boot\} \{ed_bit5\}"}
C {devices/vsource.sym} 565 -660 0 0 {name=V20 value="pwl 0 0 \{boot\} \{ed_bit4\}"}
C {devices/vsource.sym} 625 -660 0 0 {name=V21 value="pwl 0 0 \{boot\} \{ed_bit3\}"}
C {devices/vsource.sym} 685 -660 0 0 {name=V22 value="pwl 0 0 \{boot\} \{ed_bit2\}"}
C {devices/vsource.sym} 745 -660 0 0 {name=V23 value="pwl 0 0 \{boot\} \{ed_bit1\}"}
C {devices/vsource.sym} 805 -660 0 0 {name=V24 value="pwl 0 0 \{boot\} \{ed_bit0\}"}
C {devices/vsource.sym} 185 -660 0 0 {name=V14 value="pwl 0 0 \{boot\} \{bit4\}"}
C {devices/vsource.sym} 245 -660 0 0 {name=V15 value="pwl 0 0 \{boot\} \{bit3\}"}
C {devices/vsource.sym} 305 -660 0 0 {name=V16 value="pwl 0 0 \{boot\} \{bit2\}"}
C {devices/vsource.sym} 365 -660 0 0 {name=V17 value="pwl 0 0 \{boot\} \{bit1\}"}
C {devices/vsource.sym} 425 -660 0 0 {name=V18 value="pwl 0 0 \{boot\} \{bit0\}"}
