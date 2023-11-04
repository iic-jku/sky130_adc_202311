v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {gpio_analog[2] = io_in[9]
gpio_analog[3] = io_in[10]} 1130 -750 0 0 0.4 0.4 {}
T {SPDX-FileCopyrightText: 2023 Harald Pretl
Johannes Kepler University, Institute for Integrated Circuits
PDX-License-Identifier: Apache-2.0} 1330 -80 0 0 0.4 0.4 {}
N 860 -940 920 -940 {
lab=vccd1}
N 860 -920 920 -920 {
lab=vssd1}
N 860 -900 920 -900 {
lab=io_in[11]}
N 860 -880 920 -880 {
lab=io_in[13]}
N 860 -860 920 -860 {
lab=io_in[12]}
N 860 -840 920 -840 {
lab=io_in[8]}
N 860 -820 920 -820 {
lab=io_in[7]}
N 1220 -940 1280 -940 {
lab=io_out[5]}
N 1220 -920 1280 -920 {
lab=io_out[6]}
N 1220 -860 1280 -860 {
lab=gpio_analog[3]}
N 1220 -840 1280 -840 {
lab=io_analog[2]}
N 1220 -900 1500 -900 {
lab=#net1}
N 1500 -980 1500 -900 {
lab=#net1}
N 1220 -880 1500 -880 {
lab=#net2}
N 1500 -720 1500 -620 {
lab=#net2}
N 1500 -1080 1540 -1080 {
lab=#net1}
N 1600 -1080 1640 -1080 {
lab=io_oeb[5]}
N 1600 -980 1640 -980 {
lab=io_oeb[6]}
N 1500 -980 1540 -980 {
lab=#net1}
N 1500 -1080 1500 -980 {
lab=#net1}
N 1600 -820 1640 -820 {
lab=io_oeb[7]}
N 1500 -820 1540 -820 {
lab=#net2}
N 1600 -720 1640 -720 {
lab=io_oeb[8]}
N 1500 -720 1540 -720 {
lab=#net2}
N 1500 -520 1500 -420 {
lab=#net2}
N 1600 -620 1640 -620 {
lab=io_oeb[9]}
N 1500 -620 1540 -620 {
lab=#net2}
N 1600 -520 1640 -520 {
lab=io_oeb[10]}
N 1500 -520 1540 -520 {
lab=#net2}
N 1600 -420 1640 -420 {
lab=io_oeb[11]}
N 1500 -420 1540 -420 {
lab=#net2}
N 1600 -320 1640 -320 {
lab=io_oeb[12]}
N 1500 -320 1540 -320 {
lab=#net2}
N 1500 -420 1500 -320 {
lab=#net2}
N 1600 -220 1640 -220 {
lab=io_oeb[13]}
N 1500 -220 1540 -220 {
lab=#net2}
N 1500 -880 1500 -820 {
lab=#net2}
N 1500 -820 1500 -720 {
lab=#net2}
N 1500 -620 1500 -520 {
lab=#net2}
N 1500 -320 1500 -220 {
lab=#net2}
C {devices/iopin.sym} 370 -1430 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 370 -1400 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 370 -1370 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 370 -1340 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 370 -1310 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 370 -1280 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 370 -1250 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 370 -1220 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 420 -1150 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 420 -1120 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 420 -1090 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 420 -1060 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 420 -1030 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 420 -1000 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 420 -970 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 420 -940 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 410 -880 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 410 -850 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 420 -810 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 410 -780 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 420 -700 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 420 -670 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 410 -390 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 410 -640 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 410 -610 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 380 -550 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 380 -520 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 380 -490 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 380 -460 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 380 -430 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 400 -360 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 420 -750 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} 860 -940 0 0 {name=l1 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 1280 -940 0 1 {name=l3 sig_type=std_logic lab=io_out[5]}
C {devices/title.sym} 160 -30 0 0 {name=l2 author="Harald Pretl, IIC@JKU, 2023"}
C {adc_wrapper.sym} 1070 -880 0 0 {name=x1}
C {devices/lab_pin.sym} 860 -920 0 0 {name=l4 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 860 -900 0 0 {name=l5 sig_type=std_logic lab=io_in[11]}
C {devices/lab_pin.sym} 860 -880 0 0 {name=l6 sig_type=std_logic lab=io_in[13]}
C {devices/lab_pin.sym} 860 -860 0 0 {name=l7 sig_type=std_logic lab=io_in[12]}
C {devices/lab_pin.sym} 860 -840 0 0 {name=l8 sig_type=std_logic lab=io_in[8]}
C {devices/lab_pin.sym} 860 -820 0 0 {name=l9 sig_type=std_logic lab=io_in[7]}
C {devices/lab_pin.sym} 1280 -920 0 1 {name=l10 sig_type=std_logic lab=io_out[6]}
C {devices/lab_pin.sym} 1280 -860 0 1 {name=l11 sig_type=std_logic lab=gpio_analog[3]}
C {devices/lab_pin.sym} 1280 -840 0 1 {name=l12 sig_type=std_logic lab=gpio_analog[2]}
C {devices/lab_pin.sym} 1640 -980 0 1 {name=l13 sig_type=std_logic lab=io_oeb[6]}
C {devices/lab_pin.sym} 1640 -1080 0 1 {name=l14 sig_type=std_logic lab=io_oeb[5]}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -1080 3 0 {name=R1
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {devices/lab_pin.sym} 1640 -820 0 1 {name=l15 sig_type=std_logic lab=io_oeb[7]}
C {devices/lab_pin.sym} 1640 -720 0 1 {name=l16 sig_type=std_logic lab=io_oeb[8]}
C {devices/lab_pin.sym} 1640 -620 0 1 {name=l17 sig_type=std_logic lab=io_oeb[9]}
C {devices/lab_pin.sym} 1640 -520 0 1 {name=l18 sig_type=std_logic lab=io_oeb[10]}
C {devices/lab_pin.sym} 1640 -420 0 1 {name=l19 sig_type=std_logic lab=io_oeb[11]}
C {devices/lab_pin.sym} 1640 -320 0 1 {name=l20 sig_type=std_logic lab=io_oeb[12]}
C {devices/lab_pin.sym} 1640 -220 0 1 {name=l21 sig_type=std_logic lab=io_oeb[13]}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -980 3 0 {name=R2
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -820 3 0 {name=R3
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -720 3 0 {name=R4
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -620 3 0 {name=R5
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -520 3 0 {name=R6
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -420 3 0 {name=R7
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -320 3 0 {name=R8
W=0.3
L=0.6
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 1570 -220 3 0 {name=R9
W=0.3
L=0.6
model=res_generic_m3
mult=1}
