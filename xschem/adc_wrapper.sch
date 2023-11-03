v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Pin definition for adc_wrapper (to generate symbol).
SPICE netlists are included, adjust paths if necessry.} 390 -200 0 0 0.4 0.4 {}
C {devices/ipin.sym} 260 -760 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 260 -720 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 260 -680 0 0 {name=p3 lab=rst_n}
C {devices/ipin.sym} 260 -640 0 0 {name=p4 lab=clk}
C {devices/ipin.sym} 260 -600 0 0 {name=p5 lab=conv_start}
C {devices/opin.sym} 260 -560 0 0 {name=p6 lab=conv_finish}
C {devices/ipin.sym} 260 -520 0 0 {name=p7 lab=load}
C {devices/ipin.sym} 260 -480 0 0 {name=p8 lab=dati}
C {devices/opin.sym} 260 -440 0 0 {name=p9 lab=dato}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretk, IIC@JKU, 2023"}
C {devices/opin.sym} 260 -400 0 0 {name=p10 lab=tie0}
C {devices/opin.sym} 260 -360 0 0 {name=p11 lab=tie1}
C {devices/iopin.sym} 260 -320 0 0 {name=p12 lab=inp_ana}
C {devices/iopin.sym} 260 -280 0 0 {name=p13 lab=inn_ana}
C {devices/code_shown.sym} 660 -590 0 0 {name=netlist_adc_wrapper1 only_toplevel=false value=".include ../xschem/adc_wrapper.spice"}
C {devices/code_shown.sym} 660 -520 0 0 {name=netlist_adc_wrapper2 only_toplevel=false value=".include ../xschem/adc_top.spice"}
C {devices/code_shown.sym} 660 -440 0 0 {name=netlist_adc_wrapper3 only_toplevel=false value=".include ../xschem/adc_bridge.spice"}
