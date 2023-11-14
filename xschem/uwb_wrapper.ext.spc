* NGSPICE file created from uwb_wrapper.ext - technology: sky130A

.subckt uwb_noise_decoup_cell1 nmoscap_top nmoscap_bot pwell mimcap_top mimcap_bot
X0 mimcap_top mimcap_bot sky130_fd_pr__cap_mim_m3_1 l=17.2 w=17.2
X1 nmoscap_bot nmoscap_top nmoscap_bot pwell sky130_fd_pr__nfet_01v8 ad=11.5 pd=34.2 as=23 ps=68.4 w=16.4 l=16
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_RX9LCP m3_n786_n640# c1_n746_n600#
X0 c1_n746_n600# m3_n786_n640# sky130_fd_pr__cap_mim_m3_1 l=6 w=6
.ends

.subckt sky130_fd_pr__nfet_01v8_QMBXET a_n33_n375# a_n509_n375# a_447_n375# a_n483_n463#
+ a_159_n375# a_n255_n463# a_255_n375# a_351_n375# a_n417_n375# a_n369_n463# a_303_n463#
+ a_n63_n463# a_n611_n549# a_n129_n375# a_63_n375# a_n225_n375# a_417_n463# a_n321_n375#
+ a_129_n463#
X0 a_63_n375# a_n63_n463# a_n33_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X1 a_n129_n375# a_n255_n463# a_n225_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X2 a_n417_n375# a_n483_n463# a_n509_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=1.16 ps=8.12 w=3.75 l=0.15
X3 a_n33_n375# a_n63_n463# a_n129_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X4 a_351_n375# a_303_n463# a_255_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X5 a_255_n375# a_129_n463# a_159_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X6 a_n321_n375# a_n369_n463# a_n417_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X7 a_159_n375# a_129_n463# a_63_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X8 a_n225_n375# a_n255_n463# a_n321_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X9 a_447_n375# a_417_n463# a_351_n375# a_n611_n549# sky130_fd_pr__nfet_01v8 ad=1.16 pd=8.12 as=0.619 ps=4.08 w=3.75 l=0.15
.ends

.subckt osc_nfet_w15_nf4 gate drain en1 en2 m1_369_110# m1_642_110# m1_199_1332# VSUB
Xsky130_fd_pr__nfet_01v8_QMBXET_0 drain VSUB VSUB VSUB VSUB m1_369_110# m1_199_1332#
+ drain drain gate gate gate VSUB m1_199_1332# m1_199_1332# VSUB VSUB m1_199_1332#
+ m1_642_110# sky130_fd_pr__nfet_01v8_QMBXET
.ends

.subckt osc_nfet_w15_nf4_cc osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_1/en1 osc_nfet_w15_nf4_0/gate
+ osc_nfet_w15_nf4_1/m1_199_1332# osc_nfet_w15_nf4_1/gate osc_nfet_w15_nf4_0/m1_199_1332#
+ VSUBS
Xosc_nfet_w15_nf4_0 osc_nfet_w15_nf4_0/gate osc_nfet_w15_nf4_1/gate osc_nfet_w15_nf4_1/en1
+ osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_0/m1_199_1332#
+ VSUBS osc_nfet_w15_nf4
Xosc_nfet_w15_nf4_1 osc_nfet_w15_nf4_1/gate osc_nfet_w15_nf4_0/gate osc_nfet_w15_nf4_1/en1
+ osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_1/en1 osc_nfet_w15_nf4_1/en1 osc_nfet_w15_nf4_1/m1_199_1332#
+ VSUBS osc_nfet_w15_nf4
.ends

.subckt osc_nfet_w30_nf4_cc osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate VSUBS
Xosc_nfet_w15_nf4_cc_1 osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ VSUBS osc_nfet_w15_nf4_cc
Xosc_nfet_w15_nf4_cc_0 osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ VSUBS osc_nfet_w15_nf4_cc
.ends

.subckt osc_nfet_w60_nf4_cc osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332# VSUBS
Xosc_nfet_w30_nf4_cc_1 osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate VSUBS osc_nfet_w30_nf4_cc
Xosc_nfet_w30_nf4_cc_0 osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2 osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332# osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate VSUBS osc_nfet_w30_nf4_cc
.ends

.subckt osc_nfet_w120_nf4_cc osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ VSUBS
Xosc_nfet_w60_nf4_cc_0 osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_0/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ VSUBS osc_nfet_w60_nf4_cc
Xosc_nfet_w60_nf4_cc_1 osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_0/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_1/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/gate
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en2
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/en1
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_0/gate
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_0/osc_nfet_w15_nf4_0/m1_199_1332#
+ osc_nfet_w60_nf4_cc_1/osc_nfet_w30_nf4_cc_1/osc_nfet_w15_nf4_cc_1/osc_nfet_w15_nf4_1/m1_199_1332#
+ VSUBS osc_nfet_w60_nf4_cc
.ends

.subckt sky130_fd_pr__res_generic_m5_EGUVWD m5_n500_200# m5_n500_n257#
R0 m5_n500_200# m5_n500_n257# sky130_fd_pr__res_generic_m5 w=5 l=2
.ends

.subckt uwb_inductor pm p2 p1 li_n9750_8200#
Xsky130_fd_pr__res_generic_m5_EGUVWD_0 pm p1 sky130_fd_pr__res_generic_m5_EGUVWD
Xsky130_fd_pr__res_generic_m5_EGUVWD_1 pm p2 sky130_fd_pr__res_generic_m5_EGUVWD
.ends

.subckt osc_total en1_osc[0] vdd_osc en1_osc[3] en2_osc[2] en1_osc[2] en2_osc[1] en2_osc[0]
+ outn_osc en1_osc[1] outp_osc VSUBS en2_osc[3]
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_26 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_37 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_15 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_48 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_59 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_3 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_27 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_38 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_16 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_49 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_4 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_28 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_39 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_17 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_6 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_5 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_29 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_18 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_19 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_7 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_8 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xosc_nfet_w120_nf4_cc_0 m2_140_6796# m2_140_6796# m2_9198_n492# m2_140_6796# m2_140_6796#
+ m2_9198_n492# m2_140_6796# m2_140_6796# m2_9198_n492# m2_9198_n492# outn_osc m2_140_6796#
+ m2_9198_n492# m2_9198_n492# en2_osc[3] en1_osc[3] outp_osc m2_140_6796# m2_9198_n492#
+ m2_9198_n492# VSUBS osc_nfet_w120_nf4_cc
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_9 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xosc_nfet_w60_nf4_cc_0 m2_140_6796# m2_9198_n492# m2_140_6796# m2_140_6796# m2_9198_n492#
+ m2_9198_n492# outn_osc en2_osc[2] en1_osc[2] outp_osc m2_140_6796# m2_9198_n492#
+ VSUBS osc_nfet_w60_nf4_cc
Xuwb_inductor_0 vdd_osc outn_osc outp_osc VSUBS uwb_inductor
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_60 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_50 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_61 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_40 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_51 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_62 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_30 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_41 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_52 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_63 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_32 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_31 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_20 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_21 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_42 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_43 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_10 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_53 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_54 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_33 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_22 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_44 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_11 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_55 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_34 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_23 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_45 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_12 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_56 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_0 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_35 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_24 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_46 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_13 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_57 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_1 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_25 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_36 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_47 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_14 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xosc_nfet_w30_nf4_cc_0 m2_9198_n492# m2_140_6796# m2_9198_n492# en2_osc[1] en1_osc[1]
+ m2_140_6796# outn_osc outp_osc VSUBS osc_nfet_w30_nf4_cc
Xosc_nfet_w15_nf4_cc_0 en2_osc[0] en1_osc[0] outp_osc m2_9198_n492# outn_osc m2_140_6796#
+ VSUBS osc_nfet_w15_nf4_cc
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_2 m2_9198_n492# m2_140_6796# sky130_fd_pr__cap_mim_m3_1_RX9LCP
Xsky130_fd_pr__cap_mim_m3_1_RX9LCP_58 m2_140_6796# m2_9198_n492# sky130_fd_pr__cap_mim_m3_1_RX9LCP
.ends

.subckt sky130_fd_sc_hd__inv_1 A VGND VNB VPB VPWR Y
X0 Y A VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.169 ps=1.82 w=0.65 l=0.15
X1 Y A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.26 ps=2.52 w=1 l=0.15
.ends

.subckt sky130_fd_pr__nfet_01v8_ZRZL87 a_n29_n100# a_n127_n100# a_n327_n274# a_n225_n100#
+ a_n193_n188# a_69_n100# a_167_n100# a_n87_142# a_21_142#
X0 a_n127_n100# a_n193_n188# a_n225_n100# a_n327_n274# sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.29 as=0.29 ps=2.58 w=1 l=0.2
X1 a_69_n100# a_21_142# a_n29_n100# a_n327_n274# sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=0.2
X2 a_167_n100# a_n327_n274# a_69_n100# a_n327_n274# sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.145 ps=1.29 w=1 l=0.2
X3 a_n29_n100# a_n87_142# a_n127_n100# a_n327_n274# sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=0.2
.ends

.subckt sky130_fd_pr__pfet_01v8_3HMKL2 a_n180_n197# w_n363_n319# a_n69_n131# a_n29_n100#
+ a_n127_n100# a_n225_n100# a_69_n100#
X0 a_n127_n100# a_n180_n197# a_n225_n100# w_n363_n319# sky130_fd_pr__pfet_01v8 ad=0.145 pd=1.29 as=0.29 ps=2.58 w=1 l=0.2
X1 w_n363_n319# w_n363_n319# a_69_n100# w_n363_n319# sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.145 ps=1.29 w=1 l=0.2
X2 a_69_n100# a_n69_n131# a_n29_n100# w_n363_n319# sky130_fd_pr__pfet_01v8 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=0.2
X3 a_n29_n100# a_n69_n131# a_n127_n100# w_n363_n319# sky130_fd_pr__pfet_01v8 ad=0.145 pd=1.29 as=0.145 ps=1.29 w=1 l=0.2
.ends

.subckt sky130_fd_sc_hd__and2_1 A B VGND VNB VPB VPWR X
X0 VPWR B a_59_75# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.167 pd=1.39 as=0.0567 ps=0.69 w=0.42 l=0.15
X1 X a_59_75# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.475 pd=2.95 as=0.167 ps=1.39 w=1 l=0.15
X2 VGND B a_145_75# VNB sky130_fd_pr__nfet_01v8 ad=0.112 pd=1.04 as=0.0567 ps=0.69 w=0.42 l=0.15
X3 a_59_75# A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.118 ps=1.4 w=0.42 l=0.15
X4 X a_59_75# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.182 pd=1.86 as=0.112 ps=1.04 w=0.65 l=0.15
X5 a_145_75# A a_59_75# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.118 ps=1.4 w=0.42 l=0.15
.ends

.subckt mux21 s1_mux21 out_mux21 in1_mux21 in0_mux21 s0_mux21 VSUBS vdd_mux21
Xsky130_fd_sc_hd__inv_1_4 s1_mux21 VSUBS VSUBS vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_4/Y
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_5 VSUBS VSUBS VSUBS vdd_mux21 vdd_mux21 VSUBS sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_6 VSUBS VSUBS VSUBS vdd_mux21 vdd_mux21 VSUBS sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_ZRZL87_0 out_mux21 in0_mux21 VSUBS VSUBS VSUBS VSUBS VSUBS
+ s0_mux21 sky130_fd_sc_hd__and2_1_0/X sky130_fd_pr__nfet_01v8_ZRZL87
Xsky130_fd_sc_hd__inv_1_7 s0_mux21 VSUBS VSUBS vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_7/Y
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_ZRZL87_1 out_mux21 in1_mux21 VSUBS VSUBS VSUBS VSUBS VSUBS
+ s1_mux21 sky130_fd_sc_hd__and2_1_0/X sky130_fd_pr__nfet_01v8_ZRZL87
Xsky130_fd_pr__pfet_01v8_3HMKL2_1 vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_1/Y out_mux21
+ in1_mux21 vdd_mux21 in1_mux21 sky130_fd_pr__pfet_01v8_3HMKL2
Xsky130_fd_pr__pfet_01v8_3HMKL2_0 vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_7/Y out_mux21
+ in0_mux21 vdd_mux21 in0_mux21 sky130_fd_pr__pfet_01v8_3HMKL2
Xsky130_fd_sc_hd__and2_1_0 sky130_fd_sc_hd__inv_1_4/Y sky130_fd_sc_hd__inv_1_3/Y VSUBS
+ VSUBS vdd_mux21 vdd_mux21 sky130_fd_sc_hd__and2_1_0/X sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__inv_1_1 s1_mux21 VSUBS VSUBS vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_1/Y
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_0 VSUBS VSUBS VSUBS vdd_mux21 vdd_mux21 VSUBS sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_2 VSUBS VSUBS VSUBS vdd_mux21 vdd_mux21 VSUBS sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_3 s0_mux21 VSUBS VSUBS vdd_mux21 vdd_mux21 sky130_fd_sc_hd__inv_1_3/Y
+ sky130_fd_sc_hd__inv_1
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_WE7GNF c1_n946_n600# m3_n986_n640#
X0 c1_n946_n600# m3_n986_n640# sky130_fd_pr__cap_mim_m3_1 l=6 w=8
.ends

.subckt balun p2 p1 s2 s1 pm li_n16698_36352#
Xsky130_fd_pr__res_generic_m5_EGUVWD_0 p1 pm sky130_fd_pr__res_generic_m5_EGUVWD
Xsky130_fd_pr__res_generic_m5_EGUVWD_1 p2 pm sky130_fd_pr__res_generic_m5_EGUVWD
Xsky130_fd_pr__res_generic_m5_EGUVWD_2 s2 m4_n12500_46821# sky130_fd_pr__res_generic_m5_EGUVWD
Xsky130_fd_pr__res_generic_m5_EGUVWD_3 s1 m4_n12500_46821# sky130_fd_pr__res_generic_m5_EGUVWD
.ends

.subckt pa_nfet_w15_nf4 M1G M2G M1D m1_199_1332# VSUB
Xsky130_fd_pr__nfet_01v8_QMBXET_0 M1D VSUB VSUB VSUB VSUB M2G m1_199_1332# M1D M1D
+ M1G M1G M1G VSUB m1_199_1332# m1_199_1332# VSUB VSUB m1_199_1332# M2G sky130_fd_pr__nfet_01v8_QMBXET
.ends

.subckt sky130_fd_pr__nfet_01v8_SGMZ76 a_n33_n375# a_n159_n463# a_159_n375# a_n221_n375#
+ a_n129_n375# a_63_n375# a_n323_n549#
X0 a_63_n375# a_n159_n463# a_n33_n375# a_n323_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X1 a_n129_n375# a_n159_n463# a_n221_n375# a_n323_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=1.16 ps=8.12 w=3.75 l=0.15
X2 a_n33_n375# a_n159_n463# a_n129_n375# a_n323_n549# sky130_fd_pr__nfet_01v8 ad=0.619 pd=4.08 as=0.619 ps=4.08 w=3.75 l=0.15
X3 a_159_n375# a_n159_n463# a_63_n375# a_n323_n549# sky130_fd_pr__nfet_01v8 ad=1.16 pd=8.12 as=0.619 ps=4.08 w=3.75 l=0.15
.ends

.subckt pa_nfet_w30_nf4 pa_nfet_w15_nf4_1/m1_199_1332# pa_nfet_w15_nf4_1/M1D pa_nfet_w15_nf4_1/M1G
+ VSUBS pa_nfet_w15_nf4_1/M2G
Xpa_nfet_w15_nf4_0 pa_nfet_w15_nf4_1/M1G pa_nfet_w15_nf4_1/M2G pa_nfet_w15_nf4_1/M1D
+ pa_nfet_w15_nf4_1/m1_199_1332# VSUBS pa_nfet_w15_nf4
Xpa_nfet_w15_nf4_1 pa_nfet_w15_nf4_1/M1G pa_nfet_w15_nf4_1/M2G pa_nfet_w15_nf4_1/M1D
+ pa_nfet_w15_nf4_1/m1_199_1332# VSUBS pa_nfet_w15_nf4
.ends

.subckt pa_nfet_w60_nf4 pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332#
+ pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ VSUBS
Xpa_nfet_w30_nf4_0 pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332# pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G VSUBS pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G
+ pa_nfet_w30_nf4
Xpa_nfet_w30_nf4_1 pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332# pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G VSUBS pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G
+ pa_nfet_w30_nf4
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_H9ZJA7 m3_n686_n590# c1_n646_n550#
X0 c1_n646_n550# m3_n686_n590# sky130_fd_pr__cap_mim_m3_1 l=5.5 w=5
.ends

.subckt pa_nfet_w120_nf4 pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G
+ pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ VSUBS
Xpa_nfet_w60_nf4_0 pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332#
+ pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ VSUBS pa_nfet_w60_nf4
Xpa_nfet_w60_nf4_1 pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1G pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332#
+ pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M2G pa_nfet_w60_nf4_1/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/M1D
+ VSUBS pa_nfet_w60_nf4
.ends

.subckt pa_total inn_pa inp_pa en_pa[3] en_pa[2] en_pa[1] en_pa[0] tunep_pa outn_pa
+ outp_pa vdd_pa VSUBS tunen_pa
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_7 outn_pa VSUBS sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xbalun_0 tunen_pa tunep_pa outn_pa outp_pa vdd_pa VSUBS balun
Xpa_nfet_w15_nf4_0 inn_pa en_pa[0] tunen_pa pa_nfet_w15_nf4_0/m1_199_1332# VSUBS pa_nfet_w15_nf4
Xsky130_fd_pr__nfet_01v8_SGMZ76_0 VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS sky130_fd_pr__nfet_01v8_SGMZ76
Xsky130_fd_pr__nfet_01v8_SGMZ76_1 VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS sky130_fd_pr__nfet_01v8_SGMZ76
Xpa_nfet_w15_nf4_1 inp_pa en_pa[0] tunep_pa pa_nfet_w15_nf4_1/m1_199_1332# VSUBS pa_nfet_w15_nf4
Xpa_nfet_w60_nf4_0 inn_pa pa_nfet_w60_nf4_0/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332#
+ en_pa[2] tunen_pa VSUBS pa_nfet_w60_nf4
Xsky130_fd_pr__nfet_01v8_SGMZ76_2 VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS sky130_fd_pr__nfet_01v8_SGMZ76
Xsky130_fd_pr__nfet_01v8_SGMZ76_3 VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS VSUBS sky130_fd_pr__nfet_01v8_SGMZ76
Xpa_nfet_w60_nf4_2 inp_pa pa_nfet_w60_nf4_2/pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332#
+ en_pa[2] tunep_pa VSUBS pa_nfet_w60_nf4
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_70 tunep_pa tunen_pa sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_71 tunen_pa tunep_pa sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_64 tunen_pa tunep_pa sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_65 tunep_pa tunen_pa sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xpa_nfet_w120_nf4_1 inp_pa en_pa[3] tunep_pa VSUBS pa_nfet_w120_nf4
Xpa_nfet_w120_nf4_0 inn_pa en_pa[3] tunen_pa VSUBS pa_nfet_w120_nf4
Xpa_nfet_w30_nf4_0 pa_nfet_w30_nf4_0/pa_nfet_w15_nf4_1/m1_199_1332# tunep_pa inp_pa
+ VSUBS en_pa[1] pa_nfet_w30_nf4
Xpa_nfet_w30_nf4_1 pa_nfet_w30_nf4_1/pa_nfet_w15_nf4_1/m1_199_1332# tunen_pa inn_pa
+ VSUBS en_pa[1] pa_nfet_w30_nf4
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_0 outp_pa VSUBS sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_1 VSUBS outp_pa sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_3 outp_pa VSUBS sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_2 VSUBS outp_pa sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_4 outn_pa VSUBS sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_5 VSUBS outn_pa sky130_fd_pr__cap_mim_m3_1_WE7GNF
Xsky130_fd_pr__cap_mim_m3_1_WE7GNF_6 VSUBS outn_pa sky130_fd_pr__cap_mim_m3_1_WE7GNF
.ends

.subckt sky130_fd_pr__nfet_01v8_722GYZ a_n275_n274# a_n173_n100# a_15_n100# a_n33_122#
+ a_111_n100# a_n147_n188# a_81_n188# a_n81_n100#
X0 a_15_n100# a_n33_122# a_n81_n100# a_n275_n274# sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X1 a_111_n100# a_81_n188# a_15_n100# a_n275_n274# sky130_fd_pr__nfet_01v8 ad=0.31 pd=2.62 as=0.165 ps=1.33 w=1 l=0.15
X2 a_n81_n100# a_n147_n188# a_n173_n100# a_n275_n274# sky130_fd_pr__nfet_01v8 ad=0.165 pd=1.33 as=0.31 ps=2.62 w=1 l=0.15
.ends

.subckt sky130_fd_pr__nfet_01v8_DGP55P a_n458_n19# a_n560_n193# a_n400_n107# a_400_n19#
X0 a_400_n19# a_n400_n107# a_n458_n19# a_n560_n193# sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=4
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_FJFAMD m3_n386_n240# c1_n346_n200#
X0 c1_n346_n200# m3_n386_n240# sky130_fd_pr__cap_mim_m3_1 l=2 w=2
.ends

.subckt sky130_fd_sc_hd__mux4_1 A0 A1 A2 A3 S0 S1 VGND VNB VPB VPWR X
X0 a_277_47# a_247_21# a_27_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
X1 VGND S0 a_247_21# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.109 ps=1.36 w=0.42 l=0.15
X2 a_834_97# a_247_21# a_750_97# VNB sky130_fd_pr__nfet_01v8 ad=0.108 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X3 VGND A3 a_668_97# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.108 ps=1.36 w=0.42 l=0.15
X4 a_1290_413# S1 VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.36 as=0.109 ps=1.36 w=0.42 l=0.15
X5 a_834_97# A2 VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X6 a_750_97# S0 a_757_363# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.108 ps=1.36 w=0.42 l=0.15
X7 a_27_47# S0 a_277_47# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0852 ps=0.925 w=0.42 l=0.15
X8 X a_1478_413# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.169 ps=1.82 w=0.65 l=0.15
X9 VPWR A1 a_27_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
X10 VPWR S0 a_247_21# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.108 pd=1.36 as=0.108 ps=1.36 w=0.42 l=0.15
X11 X a_1478_413# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.26 ps=2.52 w=1 l=0.15
X12 a_193_47# A0 VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.0567 ps=0.69 w=0.42 l=0.15
X13 a_750_97# a_1290_413# a_1478_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.269 pd=2.12 as=0.0921 ps=0.99 w=0.42 l=0.15
X14 a_1478_413# S1 a_277_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0921 pd=0.99 as=0.109 ps=1.36 w=0.42 l=0.15
X15 a_1290_413# S1 VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.109 ps=1.36 w=0.42 l=0.15
X16 a_277_47# a_247_21# a_193_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0852 pd=0.925 as=0.0567 ps=0.69 w=0.42 l=0.15
X17 a_750_97# S0 a_668_97# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
X18 a_923_363# a_247_21# a_750_97# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0901 pd=0.995 as=0.0567 ps=0.69 w=0.42 l=0.15
X19 a_757_363# A2 VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X20 VPWR A3 a_923_363# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.0901 ps=0.995 w=0.42 l=0.15
X21 a_277_47# a_1290_413# a_1478_413# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.151 ps=1.28 w=0.42 l=0.15
X22 a_193_413# A0 VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X23 a_193_413# S0 a_277_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.108 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X24 VGND A1 a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
X25 a_1478_413# S1 a_750_97# VNB sky130_fd_pr__nfet_01v8 ad=0.151 pd=1.28 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt sky130_fd_pr__pfet_01v8_ADYTEV a_100_n186# a_n158_n186# w_n296_n334# a_n100_n212#
X0 a_100_n186# a_n100_n212# a_n158_n186# w_n296_n334# sky130_fd_pr__pfet_01v8 ad=0.435 pd=3.58 as=0.435 ps=3.58 w=1.5 l=1
.ends

.subckt sky130_fd_pr__nfet_01v8_QWA63T a_159_n50# a_n63_n138# a_n419_n224# a_n33_n50#
+ a_n177_n138# a_111_n138# a_n225_n50# a_63_n50# a_225_n138# a_255_n50# a_n129_n50#
+ a_n317_n50# a_n291_n138#
X0 a_n33_n50# a_n63_n138# a_n129_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.0825 pd=0.83 as=0.0825 ps=0.83 w=0.5 l=0.15
X1 a_159_n50# a_111_n138# a_63_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.0825 pd=0.83 as=0.0825 ps=0.83 w=0.5 l=0.15
X2 a_255_n50# a_225_n138# a_159_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.155 pd=1.62 as=0.0825 ps=0.83 w=0.5 l=0.15
X3 a_n225_n50# a_n291_n138# a_n317_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.0825 pd=0.83 as=0.155 ps=1.62 w=0.5 l=0.15
X4 a_n129_n50# a_n177_n138# a_n225_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.0825 pd=0.83 as=0.0825 ps=0.83 w=0.5 l=0.15
X5 a_63_n50# a_n63_n138# a_n33_n50# a_n419_n224# sky130_fd_pr__nfet_01v8 ad=0.0825 pd=0.83 as=0.0825 ps=0.83 w=0.5 l=0.15
.ends

.subckt sky130_fd_pr__pfet_01v8_4N94TK a_165_n186# a_n165_n212# a_n223_n186# w_n361_n334#
X0 a_165_n186# a_n165_n212# a_n223_n186# w_n361_n334# sky130_fd_pr__pfet_01v8 ad=0.435 pd=3.58 as=0.435 ps=3.58 w=1.5 l=1.65
.ends

.subckt sky130_fd_pr__nfet_01v8_L9WNCD a_15_n19# a_n175_n193# a_n73_n19# a_n33_n107#
X0 a_15_n19# a_n33_n107# a_n73_n19# a_n175_n193# sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.58 as=0.145 ps=1.58 w=0.5 l=0.15
.ends

.subckt sky130_fd_pr__pfet_01v8_UAU7GH a_159_n100# a_255_n100# a_n291_n197# a_n63_n197#
+ a_n129_n100# a_63_n100# a_n176_n197# a_n225_n100# a_111_n197# w_n455_n319# a_n33_n100#
+ a_225_n197# a_n317_n100#
X0 a_63_n100# a_n63_n197# a_n33_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X1 a_n33_n100# a_n63_n197# a_n129_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X2 a_255_n100# a_225_n197# a_159_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.31 pd=2.62 as=0.165 ps=1.33 w=1 l=0.15
X3 a_159_n100# a_111_n197# a_63_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
X4 a_n225_n100# a_n291_n197# a_n317_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.165 pd=1.33 as=0.31 ps=2.62 w=1 l=0.15
X5 a_n129_n100# a_n176_n197# a_n225_n100# w_n455_n319# sky130_fd_pr__pfet_01v8 ad=0.165 pd=1.33 as=0.165 ps=1.33 w=1 l=0.15
.ends

.subckt sky130_fd_sc_hd__buf_1 A VGND VNB VPB VPWR X
X0 VPWR A a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.115 pd=1.08 as=0.205 ps=2.1 w=0.79 l=0.15
X1 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.135 pd=1.56 as=0.0754 ps=0.81 w=0.52 l=0.15
X2 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.205 pd=2.1 as=0.115 ps=1.08 w=0.79 l=0.15
X3 VGND A a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0754 pd=0.81 as=0.135 ps=1.56 w=0.52 l=0.15
.ends

.subckt sky130_fd_sc_hd__nand2b_1 A_N B VGND VNB VPB VPWR Y
X0 VGND A_N a_27_93# VNB sky130_fd_pr__nfet_01v8 ad=0.1 pd=0.985 as=0.109 ps=1.36 w=0.42 l=0.15
X1 Y a_27_93# a_206_47# VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X2 a_206_47# B VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.1 ps=0.985 w=0.65 l=0.15
X3 VPWR a_27_93# Y VPB sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X4 Y B VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.146 ps=1.34 w=1 l=0.15
X5 VPWR A_N a_27_93# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.146 pd=1.34 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt startup uwb_trigger delay_line[5] delay_line[4] delay_line[3] delay_line[2]
+ delay_line[1] delay_line[0] trigger_line[1] trigger_line[0] osc_trigger1 osc_trigger2
+ vdd_startup vss_startup
Xsky130_fd_sc_hd__inv_1_15 sky130_fd_sc_hd__inv_1_15/A vss_startup vss_startup vdd_startup
+ vdd_startup x18/B sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_722GYZ_0 vss_startup vss_startup m1_1813_12622# delay_line[4]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_sc_hd__inv_1_4 x9/Y vss_startup vss_startup vdd_startup vdd_startup sky130_fd_sc_hd__inv_1_5/A
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_722GYZ_1 vss_startup vss_startup m1_1813_19014# delay_line[1]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_sc_hd__inv_1_5 sky130_fd_sc_hd__inv_1_5/A vss_startup vss_startup vdd_startup
+ vdd_startup x8/A sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_DGP55P_0 vss_startup vss_startup x18/B m1_1586_3928# sky130_fd_pr__nfet_01v8_DGP55P
Xsky130_fd_pr__nfet_01v8_722GYZ_2 vss_startup vss_startup m1_1813_20036# delay_line[0]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xx2 vss_startup vss_startup vss_startup vdd_startup vdd_startup vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_6 x7/A2 vss_startup vss_startup vdd_startup vdd_startup sky130_fd_sc_hd__inv_1_7/A
+ sky130_fd_sc_hd__inv_1
Xx3 x3/A vss_startup vss_startup vdd_startup vdd_startup osc_trigger2 sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_722GYZ_3 vss_startup vss_startup m1_1813_17992# delay_line[2]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_sc_hd__inv_1_7 sky130_fd_sc_hd__inv_1_7/A vss_startup vss_startup vdd_startup
+ vdd_startup x7/A3 sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_722GYZ_4 vss_startup vss_startup m1_1813_15818# delay_line[3]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_40 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_sc_hd__inv_1_8 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_41 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__nfet_01v8_722GYZ_5 vss_startup vss_startup m1_1813_8404# delay_line[5]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_30 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_sc_hd__inv_1_9 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__nfet_01v8_722GYZ_6 vss_startup vss_startup m1_1813_15818# delay_line[3]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_pr__nfet_01v8_722GYZ_7 vss_startup vss_startup m1_1813_12622# delay_line[4]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_42 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_20 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_31 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xx7 x9/Y x8/A x7/A2 x7/A3 trigger_line[0] trigger_line[1] vss_startup vss_startup
+ vdd_startup vdd_startup x7/X sky130_fd_sc_hd__mux4_1
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_10 m1_1586_3928# m1_1813_17992# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_43 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_21 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__nfet_01v8_722GYZ_8 vss_startup vss_startup m1_1813_8404# delay_line[5]
+ vss_startup vss_startup vss_startup vss_startup sky130_fd_pr__nfet_01v8_722GYZ
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_32 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xx8 x8/A vss_startup vss_startup vdd_startup vdd_startup x8/Y sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_11 m1_1813_17992# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_44 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_22 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_33 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xx9 x9/A vss_startup vss_startup vdd_startup vdd_startup x9/Y sky130_fd_sc_hd__inv_1
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_12 m1_1813_15818# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_45 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_23 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_34 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__pfet_01v8_ADYTEV_0 vdd_startup m1_1586_3928# vdd_startup x18/B sky130_fd_pr__pfet_01v8_ADYTEV
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_46 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_13 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_24 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_35 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__nfet_01v8_QWA63T_1 x18/A_N x18/A_N vss_startup vdd_startup m1_1586_3928#
+ m1_1586_3928# vss_startup m1_1682_4928# vss_startup vss_startup m1_1682_4928# vss_startup
+ vss_startup sky130_fd_pr__nfet_01v8_QWA63T
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_47 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_15 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_14 m1_1813_12622# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_37 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_36 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_26 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_25 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_16 m1_1813_15818# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_38 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_27 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__pfet_01v8_4N94TK_0 vdd_startup vdd_startup vdd_startup vdd_startup
+ sky130_fd_pr__pfet_01v8_4N94TK
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_17 m1_1586_3928# m1_1813_15818# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_39 m1_1813_8404# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_28 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__pfet_01v8_4N94TK_1 vdd_startup vdd_startup vdd_startup vdd_startup
+ sky130_fd_pr__pfet_01v8_4N94TK
Xsky130_fd_pr__nfet_01v8_L9WNCD_0 vss_startup vss_startup vss_startup vss_startup
+ sky130_fd_pr__nfet_01v8_L9WNCD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_18 m1_1586_3928# m1_1813_15818# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_29 m1_1586_3928# m1_1813_8404# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__pfet_01v8_UAU7GH_0 x18/A_N vdd_startup vdd_startup x18/A_N m1_1682_6446#
+ m1_1682_6446# m1_1586_3928# vdd_startup m1_1586_3928# vdd_startup vss_startup vdd_startup
+ vdd_startup sky130_fd_pr__pfet_01v8_UAU7GH
Xsky130_fd_pr__nfet_01v8_L9WNCD_1 vss_startup vss_startup vss_startup vss_startup
+ sky130_fd_pr__nfet_01v8_L9WNCD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_19 m1_1813_15818# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_0 m1_1586_3928# m1_1813_12622# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_1 m1_1586_3928# m1_1813_19014# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_3 m1_1586_3928# m1_1813_20036# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_2 m1_1813_15818# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_4 m1_1586_3928# m1_1813_20036# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_5 m1_1586_3928# m1_1813_15818# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xx11 x7/X vss_startup vss_startup vdd_startup vdd_startup x3/A sky130_fd_sc_hd__buf_1
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_6 m1_1586_3928# m1_1813_15818# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_7 m1_1586_3928# m1_1813_19014# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_8 m1_1813_17992# m1_1586_3928# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xsky130_fd_pr__cap_mim_m3_1_FJFAMD_9 m1_1586_3928# m1_1813_17992# sky130_fd_pr__cap_mim_m3_1_FJFAMD
Xx18 x18/A_N x18/B vss_startup vss_startup vdd_startup vdd_startup x18/Y sky130_fd_sc_hd__nand2b_1
Xsky130_fd_sc_hd__inv_1_10 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__buf_1_0 x18/Y vss_startup vss_startup vdd_startup vdd_startup sky130_fd_sc_hd__inv_1_0/A
+ sky130_fd_sc_hd__buf_1
Xsky130_fd_sc_hd__inv_1_1 x18/Y vss_startup vss_startup vdd_startup vdd_startup x9/A
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_11 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_0 sky130_fd_sc_hd__inv_1_0/A vss_startup vss_startup vdd_startup
+ vdd_startup osc_trigger1 sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_13 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_12 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_2 x8/Y vss_startup vss_startup vdd_startup vdd_startup x7/A2
+ sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_14 uwb_trigger vss_startup vss_startup vdd_startup vdd_startup
+ sky130_fd_sc_hd__inv_1_15/A sky130_fd_sc_hd__inv_1
Xsky130_fd_sc_hd__inv_1_3 vss_startup vss_startup vss_startup vdd_startup vdd_startup
+ vss_startup sky130_fd_sc_hd__inv_1
.ends

.subckt gc in_gc out_gc[0] out_gc[1] en_gc[2] en_gc[3] out_gc[3] en_gc[0] out_gc[2]
+ vss_gc en_gc[1] vdd_gc
Xsky130_fd_sc_hd__and2_1_0 vss_gc vss_gc vss_gc vss_gc vdd_gc vdd_gc vss_gc sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__and2_1_1 en_gc[0] in_gc vss_gc vss_gc vdd_gc vdd_gc out_gc[0] sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__and2_1_2 en_gc[3] in_gc vss_gc vss_gc vdd_gc vdd_gc out_gc[3] sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__and2_1_3 en_gc[1] in_gc vss_gc vss_gc vdd_gc vdd_gc out_gc[1] sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__and2_1_4 en_gc[2] in_gc vss_gc vss_gc vdd_gc vdd_gc out_gc[2] sky130_fd_sc_hd__and2_1
Xsky130_fd_sc_hd__and2_1_5 vss_gc vss_gc vss_gc vss_gc vdd_gc vdd_gc vss_gc sky130_fd_sc_hd__and2_1
.ends

.subckt sky130_fd_pr__nfet_01v8_YN9FL4 a_15_n500# a_n177_n500# a_n561_n500# a_111_n500#
+ a_n273_n500# a_n947_n674# a_n845_n500# a_687_n500# a_n705_n588# a_783_n500# a_399_n500#
+ a_n81_n500# a_753_n588# a_n819_n588# a_495_n500# a_591_n500# a_n657_n500# a_207_n500#
+ a_n753_n500# a_n369_n500# a_303_n500# a_n465_n500#
X0 a_n465_n500# a_n705_n588# a_n561_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X1 a_687_n500# a_n705_n588# a_591_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X2 a_n753_n500# a_n819_n588# a_n845_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=1.55 ps=10.6 w=5 l=0.15
X3 a_n81_n500# a_n705_n588# a_n177_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X4 a_15_n500# a_n705_n588# a_n81_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X5 a_n369_n500# a_n705_n588# a_n465_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X6 a_n657_n500# a_n705_n588# a_n753_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X7 a_n273_n500# a_n705_n588# a_n369_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X8 a_303_n500# a_n705_n588# a_207_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X9 a_591_n500# a_n705_n588# a_495_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X10 a_n177_n500# a_n705_n588# a_n273_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X11 a_207_n500# a_n705_n588# a_111_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X12 a_495_n500# a_n705_n588# a_399_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X13 a_n561_n500# a_n705_n588# a_n657_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X14 a_111_n500# a_n705_n588# a_15_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
X15 a_783_n500# a_753_n588# a_687_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=1.55 pd=10.6 as=0.825 ps=5.33 w=5 l=0.15
X16 a_399_n500# a_n705_n588# a_303_n500# a_n947_n674# sky130_fd_pr__nfet_01v8 ad=0.825 pd=5.33 as=0.825 ps=5.33 w=5 l=0.15
.ends

.subckt cap_sw en_sw m1_202_1660# m1_298_1420# VSUBS
Xsky130_fd_pr__nfet_01v8_UDPJLN_0 m1_298_1420# m1_298_1420# m1_298_1420# m1_202_1660#
+ m1_202_1660# VSUBS VSUBS VSUBS en_sw VSUBS m1_298_1420# m1_202_1660# VSUBS VSUBS
+ m1_202_1660# m1_298_1420# m1_202_1660# m1_298_1420# VSUBS m1_298_1420# m1_202_1660#
+ m1_202_1660# sky130_fd_pr__nfet_01v8_YN9FL4
.ends

.subckt capbank tune[5] tune[4] tune[2] tune[1] tune[0] vp_cap vn_cap tune[3] VSUBS
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_110 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_80 vn_cap m2_1289_n1295# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_111 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_100 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_70 vp_cap m2_2653_n4047# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_92 m2_2653_n1055# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_101 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_71 m2_2653_n4047# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_82 m2_1289_n1295# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_60 m2_2653_3559# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_102 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_94 vp_cap m2_2653_n1055# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_61 m2_2653_3559# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_50 m2_1289_3319# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_103 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_84 vn_cap m2_1289_n1295# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_51 m2_1289_3319# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_62 vp_cap m2_2653_3559# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_40 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_104 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_63 vp_cap m2_2653_3559# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_52 vn_cap m2_1289_3319# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_41 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_96 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_30 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_105 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_64 vn_cap m2_1289_n4287# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_86 m2_1289_n1295# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_53 vn_cap m2_1289_3319# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_42 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_97 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_31 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_20 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_106 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_65 m2_1289_n4287# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_54 m2_1289_3319# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_32 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_43 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_98 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_21 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_10 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_107 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_0 tune[5] m2_2653_19275# m2_1289_19035# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_66 m2_2653_n7039# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_88 vp_cap m2_2653_n1055# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_55 m2_1289_3319# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_44 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_33 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_99 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_22 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_11 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_108 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_1 tune[3] m2_2653_3559# m2_1289_3319# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_89 m2_2653_n1055# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_56 vp_cap m2_2653_3559# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_34 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_45 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_23 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_12 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_109 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_2 tune[4] m2_2653_11417# m2_1289_11177# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_24 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_68 m2_1289_n7279# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_57 m2_2653_3559# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_35 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_46 m2_2653_11417# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_13 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_3 tune[0] m2_2653_n7039# m2_1289_n7279# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_25 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_58 vp_cap m2_2653_3559# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_36 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_47 vp_cap m2_2653_11417# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_14 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_4 tune[2] m2_2653_n1055# m2_1289_n1295# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_0 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_59 m2_2653_3559# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_48 vn_cap m2_1289_3319# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_37 vn_cap m2_1289_11177# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_15 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_26 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_1 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xcap_sw_5 tune[1] m2_2653_n4047# m2_1289_n4287# VSUBS cap_sw
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_49 vn_cap m2_1289_3319# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_38 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_27 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_16 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_39 m2_1289_11177# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_2 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_28 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_17 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_3 vp_cap m2_2653_19275# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_29 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_18 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_4 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_19 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_5 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_6 m2_1289_19035# vn_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_7 vn_cap m2_1289_19035# sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_8 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
Xsky130_fd_pr__cap_mim_m3_1_H9ZJA7_9 m2_2653_19275# vp_cap sky130_fd_pr__cap_mim_m3_1_H9ZJA7
.ends

.subckt uwb_transmitter vdd1v0 in_uwb delayline[3] delayline[2] delayline[1] delayline[0]
+ trigger_line[1] trigger_line[0] pa_tune[5] pa_tune[4] pa_tune[3] pa_tune[2] pa_tune[1]
+ pa_tune[0] osc_tune[5] osc_tune[4] osc_tune[3] osc_tune[2] osc_tune[1] osc_tune[0]
+ pa_gain[3] pa_gain[2] pa_gain[1] pa_gain[0] osc_gain[3] osc_gain[2] osc_gain[1]
+ osc_gain[0] pa_trig1_en pa_trig1_test_en pa_trig1_test osc_trig1_test_en osc_trig1_test
+ osc_trig2_test osc_trig2_en vdd1v8 outn_uwb osc_trig1_en outp_uwb delayline[5] delayline[4]
+ vss osc_trig2_test_en
Xuwb_noise_decoup_cell1_159 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_137 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_126 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_104 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_148 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_115 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_15 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_127 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_149 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_48 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_138 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_59 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_105 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_37 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_116 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_16 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_49 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_38 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_128 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_139 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_106 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_117 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_0 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_17 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_129 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_39 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_107 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_118 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_1 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_18 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_119 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_108 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_29 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_2 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_19 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_109 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_3 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xosc_total_1 gc_0/out_gc[0] vdd1v0 gc_0/out_gc[3] gc_2/out_gc[2] gc_0/out_gc[2] gc_2/out_gc[1]
+ gc_2/out_gc[0] capbank_1/vn_cap gc_0/out_gc[1] capbank_1/vp_cap vss gc_2/out_gc[3]
+ osc_total
Xuwb_noise_decoup_cell1_4 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_5 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xmux21_0 osc_trig1_test_en gc_0/in_gc osc_trig1_test mux21_3/in0_mux21 osc_trig1_en
+ vss vdd1v8 mux21
Xuwb_noise_decoup_cell1_6 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_7 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xmux21_2 osc_trig2_test_en gc_2/in_gc osc_trig2_test mux21_2/in0_mux21 osc_trig2_en
+ vss vdd1v8 mux21
Xuwb_noise_decoup_cell1_8 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xmux21_3 pa_trig1_test_en gc_4/in_gc pa_trig1_test mux21_3/in0_mux21 pa_trig1_en vss
+ vdd1v8 mux21
Xuwb_noise_decoup_cell1_210 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_9 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_211 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_200 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_201 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_202 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_203 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_204 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_205 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xpa_total_0 capbank_1/vn_cap capbank_1/vp_cap gc_4/out_gc[3] gc_4/out_gc[2] gc_4/out_gc[1]
+ gc_4/out_gc[0] capbank_0/vp_cap outn_uwb outp_uwb vdd1v0 vss capbank_0/vn_cap pa_total
Xuwb_noise_decoup_cell1_206 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xstartup_0 startup_0/uwb_trigger startup_0/delay_line[5] startup_0/delay_line[4] startup_0/delay_line[3]
+ startup_0/delay_line[2] startup_0/delay_line[1] startup_0/delay_line[0] startup_0/trigger_line[1]
+ startup_0/trigger_line[0] vss vss vss vss startup
Xuwb_noise_decoup_cell1_207 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_208 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xstartup_2 in_uwb delayline[5] delayline[4] delayline[3] delayline[2] delayline[1]
+ delayline[0] trigger_line[1] trigger_line[0] mux21_3/in0_mux21 mux21_2/in0_mux21
+ vdd1v8 vss startup
Xuwb_noise_decoup_cell1_209 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_190 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_191 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_90 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_180 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_80 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_91 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_170 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_192 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_181 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_70 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_171 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_160 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_81 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_92 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_193 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_182 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_82 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_93 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_71 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_60 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_172 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_161 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_194 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_183 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_150 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_173 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_162 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_195 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_94 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_72 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_83 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_61 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_50 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_140 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_184 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_151 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_73 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_84 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xgc_0 gc_0/in_gc gc_0/out_gc[0] gc_0/out_gc[1] osc_gain[2] osc_gain[3] gc_0/out_gc[3]
+ osc_gain[0] gc_0/out_gc[2] vss osc_gain[1] vdd1v8 gc
Xuwb_noise_decoup_cell1_62 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_51 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_40 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_174 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_163 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_196 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_130 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_152 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_141 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xcapbank_0 pa_tune[5] pa_tune[4] pa_tune[2] pa_tune[1] pa_tune[0] capbank_0/vp_cap
+ capbank_0/vn_cap pa_tune[3] vss capbank
Xuwb_noise_decoup_cell1_185 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_164 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_197 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_120 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_74 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_85 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_131 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_153 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_52 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_175 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_63 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_41 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_30 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_142 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_186 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xcapbank_1 osc_tune[5] osc_tune[4] osc_tune[2] osc_tune[1] osc_tune[0] capbank_1/vp_cap
+ capbank_1/vn_cap osc_tune[3] vss capbank
Xgc_2 gc_2/in_gc gc_2/out_gc[0] gc_2/out_gc[1] osc_gain[2] osc_gain[3] gc_2/out_gc[3]
+ osc_gain[0] gc_2/out_gc[2] vss osc_gain[1] vdd1v8 gc
Xuwb_noise_decoup_cell1_165 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_20 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_198 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_121 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_154 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_75 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_86 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_132 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_53 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_176 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_143 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_64 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_31 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_42 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_110 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_187 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_65 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_10 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_76 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_87 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_54 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_43 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_32 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_166 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_199 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_133 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_122 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_155 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_177 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_111 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_188 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_144 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xgc_4 gc_4/in_gc gc_4/out_gc[0] gc_4/out_gc[1] pa_gain[2] pa_gain[3] gc_4/out_gc[3]
+ pa_gain[0] gc_4/out_gc[2] vss pa_gain[1] vdd1v8 gc
Xuwb_noise_decoup_cell1_167 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_66 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_22 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_88 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_134 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_77 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_123 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_11 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_156 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_33 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_55 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_101 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_178 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_44 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_112 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_145 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_189 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_67 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_23 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_12 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_89 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_78 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_56 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_34 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_45 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_168 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_157 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_135 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_124 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_102 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_179 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_113 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_146 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_68 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_169 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_13 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_136 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_79 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_125 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_158 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_57 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_35 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_46 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_103 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_147 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_114 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_69 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_14 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_47 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_58 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
Xuwb_noise_decoup_cell1_36 vdd1v0 vss vss vdd1v0 vss uwb_noise_decoup_cell1
.ends

.subckt sky130_ef_sc_hd__decap_12 VGND VPWR VPB VNB
X0 VPWR VGND VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.226 pd=2.26 as=0.452 ps=4.52 w=0.87 l=4.73
X1 VGND VPWR VGND VNB sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0.286 ps=3.24 w=0.55 l=4.73
.ends

.subckt sky130_fd_sc_hd__decap_6 VGND VNB VPB VPWR
X0 VPWR VGND VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.226 pd=2.26 as=0.452 ps=4.52 w=0.87 l=1.97
X1 VGND VPWR VGND VNB sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0.286 ps=3.24 w=0.55 l=1.97
.ends

.subckt sky130_fd_sc_hd__decap_8 VGND VNB VPB VPWR
X0 VPWR VGND VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.226 pd=2.26 as=0.452 ps=4.52 w=0.87 l=2.89
X1 VGND VPWR VGND VNB sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0.286 ps=3.24 w=0.55 l=2.89
.ends

.subckt sky130_fd_sc_hd__clkbuf_1 A VGND VNB VPB VPWR X
X0 VPWR a_75_212# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.115 pd=1.08 as=0.205 ps=2.1 w=0.79 l=0.15
X1 a_75_212# A VGND VNB sky130_fd_pr__nfet_01v8 ad=0.135 pd=1.56 as=0.0754 ps=0.81 w=0.52 l=0.15
X2 a_75_212# A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.205 pd=2.1 as=0.115 ps=1.08 w=0.79 l=0.15
X3 VGND a_75_212# X VNB sky130_fd_pr__nfet_01v8 ad=0.0754 pd=0.81 as=0.135 ps=1.56 w=0.52 l=0.15
.ends

.subckt sky130_fd_sc_hd__dfxtp_2 CLK D VGND VNB VPB VPWR Q
X0 Q a_1059_315# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X1 a_891_413# a_193_47# a_634_159# VNB sky130_fd_pr__nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X2 VPWR a_1059_315# Q VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X3 a_561_413# a_27_47# a_466_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0767 pd=0.785 as=0.0683 ps=0.745 w=0.42 l=0.15
X4 VPWR CLK a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.166 ps=1.8 w=0.64 l=0.15
X5 Q a_1059_315# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X6 a_381_47# D VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0578 pd=0.695 as=0.109 ps=1.36 w=0.42 l=0.15
X7 VGND a_634_159# a_592_47# VNB sky130_fd_pr__nfet_01v8 ad=0.121 pd=1.09 as=0.0696 ps=0.765 w=0.42 l=0.15
X8 VGND a_1059_315# Q VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X9 VPWR a_891_413# a_1059_315# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X10 a_466_413# a_193_47# a_381_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0683 pd=0.745 as=0.0578 ps=0.695 w=0.42 l=0.15
X11 VPWR a_634_159# a_561_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.179 pd=1.26 as=0.0767 ps=0.785 w=0.42 l=0.15
X12 a_634_159# a_466_413# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.121 ps=1.09 w=0.64 l=0.15
X13 a_634_159# a_466_413# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.08 as=0.179 ps=1.26 w=0.75 l=0.15
X14 a_975_413# a_193_47# a_891_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X15 VGND a_1059_315# a_1017_47# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X16 a_193_47# a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X17 a_891_413# a_27_47# a_634_159# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.109 ps=1.08 w=0.42 l=0.15
X18 a_592_47# a_193_47# a_466_413# VNB sky130_fd_pr__nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X19 a_1017_47# a_27_47# a_891_413# VNB sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X20 VPWR a_1059_315# a_975_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.111 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X21 a_466_413# a_27_47# a_381_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X22 a_193_47# a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.166 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X23 VGND a_891_413# a_1059_315# VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X24 a_381_47# D VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.109 ps=1.36 w=0.42 l=0.15
X25 VGND CLK a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt sky130_fd_sc_hd__decap_4 VGND VNB VPB VPWR
X0 VPWR VGND VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.226 pd=2.26 as=0.452 ps=4.52 w=0.87 l=1.05
X1 VGND VPWR VGND VNB sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0.286 ps=3.24 w=0.55 l=1.05
.ends

.subckt sky130_fd_sc_hd__dfxtp_1 CLK D VGND VNB VPB VPWR Q
X0 Q a_1059_315# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X1 a_891_413# a_193_47# a_634_159# VNB sky130_fd_pr__nfet_01v8 ad=0.0684 pd=0.74 as=0.0989 ps=0.995 w=0.36 l=0.15
X2 a_561_413# a_27_47# a_466_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0767 pd=0.785 as=0.0683 ps=0.745 w=0.42 l=0.15
X3 VPWR CLK a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.166 ps=1.8 w=0.64 l=0.15
X4 Q a_1059_315# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X5 a_381_47# D VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0578 pd=0.695 as=0.109 ps=1.36 w=0.42 l=0.15
X6 VGND a_634_159# a_592_47# VNB sky130_fd_pr__nfet_01v8 ad=0.121 pd=1.09 as=0.0696 ps=0.765 w=0.42 l=0.15
X7 VPWR a_891_413# a_1059_315# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.27 ps=2.54 w=1 l=0.15
X8 a_466_413# a_193_47# a_381_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0683 pd=0.745 as=0.0578 ps=0.695 w=0.42 l=0.15
X9 VPWR a_634_159# a_561_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.179 pd=1.26 as=0.0767 ps=0.785 w=0.42 l=0.15
X10 a_634_159# a_466_413# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.121 ps=1.09 w=0.64 l=0.15
X11 a_634_159# a_466_413# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.08 as=0.179 ps=1.26 w=0.75 l=0.15
X12 a_975_413# a_193_47# a_891_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0882 pd=0.84 as=0.0567 ps=0.69 w=0.42 l=0.15
X13 VGND a_1059_315# a_1017_47# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.066 ps=0.745 w=0.42 l=0.15
X14 a_193_47# a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X15 a_891_413# a_27_47# a_634_159# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.109 ps=1.08 w=0.42 l=0.15
X16 a_592_47# a_193_47# a_466_413# VNB sky130_fd_pr__nfet_01v8 ad=0.0696 pd=0.765 as=0.0621 ps=0.705 w=0.36 l=0.15
X17 a_1017_47# a_27_47# a_891_413# VNB sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.0684 ps=0.74 w=0.36 l=0.15
X18 VPWR a_1059_315# a_975_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.111 pd=1.37 as=0.0882 ps=0.84 w=0.42 l=0.15
X19 a_466_413# a_27_47# a_381_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0621 pd=0.705 as=0.0813 ps=0.83 w=0.36 l=0.15
X20 a_193_47# a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.166 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X21 VGND a_891_413# a_1059_315# VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X22 a_381_47# D VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0813 pd=0.83 as=0.109 ps=1.36 w=0.42 l=0.15
X23 VGND CLK a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt sky130_fd_sc_hd__buf_2 A VGND VNB VPB VPWR X
X0 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.265 pd=2.53 as=0.135 ps=1.27 w=1 l=0.15
X1 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.149 ps=1.33 w=1 l=0.15
X2 VPWR A a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.149 pd=1.33 as=0.166 ps=1.8 w=0.64 l=0.15
X3 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.097 ps=0.975 w=0.65 l=0.15
X4 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.172 pd=1.83 as=0.0878 ps=0.92 w=0.65 l=0.15
X5 VGND A a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt sky130_fd_sc_hd__mux2_2 A0 A1 S VGND VNB VPB VPWR X
X0 VPWR S a_591_369# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.0672 ps=0.85 w=0.64 l=0.15
X1 a_591_369# A0 a_79_21# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0672 pd=0.85 as=0.131 ps=1.05 w=0.64 l=0.15
X2 VPWR a_79_21# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.178 pd=1.41 as=0.135 ps=1.27 w=1 l=0.15
X3 a_79_21# A1 a_306_369# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.131 pd=1.05 as=0.229 ps=1.36 w=0.64 l=0.15
X4 VGND a_79_21# X VNB sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.0878 ps=0.92 w=0.65 l=0.15
X5 VGND S a_578_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.0578 ps=0.695 w=0.42 l=0.15
X6 a_306_369# a_257_199# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.229 pd=1.36 as=0.178 ps=1.41 w=0.64 l=0.15
X7 a_79_21# A0 a_288_47# VNB sky130_fd_pr__nfet_01v8 ad=0.173 pd=1.25 as=0.0683 ps=0.745 w=0.42 l=0.15
X8 a_288_47# a_257_199# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0683 pd=0.745 as=0.097 ps=0.975 w=0.42 l=0.15
X9 a_257_199# S VGND VNB sky130_fd_pr__nfet_01v8 ad=0.113 pd=1.38 as=0.0567 ps=0.69 w=0.42 l=0.15
X10 a_578_47# A1 a_79_21# VNB sky130_fd_pr__nfet_01v8 ad=0.0578 pd=0.695 as=0.173 ps=1.25 w=0.42 l=0.15
X11 X a_79_21# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X12 a_257_199# S VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.173 pd=1.82 as=0.0864 ps=0.91 w=0.64 l=0.15
X13 X a_79_21# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
.ends

.subckt sky130_fd_sc_hd__clkbuf_2 A VGND VNB VPB VPWR X
X0 VPWR A a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.162 pd=1.33 as=0.265 ps=2.53 w=1 l=0.15
X1 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X2 VGND A a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0683 pd=0.745 as=0.111 ps=1.37 w=0.42 l=0.15
X3 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.162 ps=1.33 w=1 l=0.15
X4 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.0683 ps=0.745 w=0.42 l=0.15
X5 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
.ends

.subckt sky130_fd_sc_hd__decap_3 VGND VNB VPB VPWR
X0 VPWR VGND VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.226 pd=2.26 as=0.452 ps=4.52 w=0.87 l=0.59
X1 VGND VPWR VGND VNB sky130_fd_pr__nfet_01v8 ad=0.143 pd=1.62 as=0.286 ps=3.24 w=0.55 l=0.59
.ends

.subckt sky130_fd_sc_hd__diode_2 DIODE VGND VNB VPB VPWR
D0 VNB DIODE sky130_fd_pr__diode_pw2nd_05v5 pj=2.64e+06 area=4.347e+11
.ends

.subckt sky130_fd_sc_hd__mux2_1 A0 A1 S VGND VNB VPB VPWR X
X0 VPWR a_505_21# a_535_374# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0693 pd=0.75 as=0.0441 ps=0.63 w=0.42 l=0.15
X1 a_505_21# S VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.118 pd=1.4 as=0.0693 ps=0.75 w=0.42 l=0.15
X2 a_218_374# S VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0767 pd=0.785 as=0.158 ps=1.39 w=0.42 l=0.15
X3 VGND a_505_21# a_439_47# VNB sky130_fd_pr__nfet_01v8 ad=0.145 pd=1.11 as=0.0693 ps=0.75 w=0.42 l=0.15
X4 a_76_199# A0 a_218_374# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.193 pd=1.34 as=0.0767 ps=0.785 w=0.42 l=0.15
X5 a_505_21# S VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.145 ps=1.11 w=0.42 l=0.15
X6 a_439_47# A0 a_76_199# VNB sky130_fd_pr__nfet_01v8 ad=0.0693 pd=0.75 as=0.0997 ps=0.895 w=0.42 l=0.15
X7 a_535_374# A1 a_76_199# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0441 pd=0.63 as=0.193 ps=1.34 w=0.42 l=0.15
X8 a_76_199# A1 a_218_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0997 pd=0.895 as=0.0693 ps=0.75 w=0.42 l=0.15
X9 a_218_47# S VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0693 pd=0.75 as=0.113 ps=1.04 w=0.42 l=0.15
X10 VPWR a_76_199# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.158 pd=1.39 as=0.26 ps=2.52 w=1 l=0.15
X11 VGND a_76_199# X VNB sky130_fd_pr__nfet_01v8 ad=0.113 pd=1.04 as=0.169 ps=1.82 w=0.65 l=0.15
.ends

.subckt sky130_fd_sc_hd__mux2_4 A0 A1 S VGND VNB VPB VPWR X
X0 a_204_297# A1 a_396_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.3 pd=2.6 as=0.16 ps=1.32 w=1 l=0.15
X1 VPWR a_396_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X2 X a_396_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X3 VPWR S a_314_297# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X4 a_204_297# a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.28 pd=2.56 as=0.162 ps=1.33 w=1 l=0.15
X5 a_396_47# A0 a_314_297# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.16 pd=1.32 as=0.26 ps=2.52 w=1 l=0.15
X6 a_206_47# a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.26 pd=1.45 as=0.109 ps=0.985 w=0.65 l=0.15
X7 X a_396_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X8 X a_396_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X9 VPWR a_396_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X10 a_490_47# A1 a_396_47# VNB sky130_fd_pr__nfet_01v8 ad=0.275 pd=1.5 as=0.104 ps=0.97 w=0.65 l=0.15
X11 VGND S a_490_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.275 ps=1.5 w=0.65 l=0.15
X12 VGND a_396_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X13 a_396_47# A0 a_206_47# VNB sky130_fd_pr__nfet_01v8 ad=0.104 pd=0.97 as=0.26 ps=1.45 w=0.65 l=0.15
X14 VGND a_396_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X15 VPWR S a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.162 pd=1.33 as=0.26 ps=2.52 w=1 l=0.15
X16 X a_396_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X17 VGND S a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=0.985 as=0.169 ps=1.82 w=0.65 l=0.15
.ends

.subckt sky130_fd_sc_hd__dfxtp_4 CLK D VGND VNB VPB VPWR Q
X0 Q a_1062_300# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.142 ps=1.28 w=1 l=0.15
X1 a_1020_47# a_27_47# a_891_413# VNB sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.0657 ps=0.725 w=0.36 l=0.15
X2 a_572_47# a_193_47# a_475_413# VNB sky130_fd_pr__nfet_01v8 ad=0.0687 pd=0.76 as=0.0594 ps=0.69 w=0.36 l=0.15
X3 VPWR a_1062_300# a_975_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.122 pd=1.42 as=0.0913 ps=0.855 w=0.42 l=0.15
X4 a_634_183# a_475_413# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0989 pd=0.995 as=0.149 ps=1.22 w=0.64 l=0.15
X5 VPWR CLK a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0864 pd=0.91 as=0.166 ps=1.8 w=0.64 l=0.15
X6 a_381_47# D VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0672 pd=0.74 as=0.109 ps=1.36 w=0.42 l=0.15
X7 a_475_413# a_27_47# a_381_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0594 pd=0.69 as=0.066 ps=0.745 w=0.36 l=0.15
X8 VGND a_1062_300# a_1020_47# VNB sky130_fd_pr__nfet_01v8 ad=0.12 pd=1.41 as=0.066 ps=0.745 w=0.42 l=0.15
X9 VPWR a_634_183# a_568_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.179 pd=1.26 as=0.0693 ps=0.75 w=0.42 l=0.15
X10 Q a_1062_300# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0926 ps=0.935 w=0.65 l=0.15
X11 a_568_413# a_27_47# a_475_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0693 pd=0.75 as=0.0662 ps=0.735 w=0.42 l=0.15
X12 a_634_183# a_475_413# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.109 pd=1.08 as=0.179 ps=1.26 w=0.75 l=0.15
X13 a_975_413# a_193_47# a_891_413# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0913 pd=0.855 as=0.0567 ps=0.69 w=0.42 l=0.15
X14 a_193_47# a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.109 pd=1.36 as=0.0567 ps=0.69 w=0.42 l=0.15
X15 a_891_413# a_27_47# a_634_183# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0567 pd=0.69 as=0.109 ps=1.08 w=0.42 l=0.15
X16 Q a_1062_300# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.106 ps=0.975 w=0.65 l=0.15
X17 VGND a_891_413# a_1062_300# VNB sky130_fd_pr__nfet_01v8 ad=0.106 pd=0.975 as=0.169 ps=1.82 w=0.65 l=0.15
X18 VPWR a_1062_300# Q VPB sky130_fd_pr__pfet_01v8_hvt ad=0.142 pd=1.28 as=0.135 ps=1.27 w=1 l=0.15
X19 VGND a_1062_300# Q VNB sky130_fd_pr__nfet_01v8 ad=0.185 pd=1.87 as=0.0878 ps=0.92 w=0.65 l=0.15
X20 Q a_1062_300# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.162 ps=1.33 w=1 l=0.15
X21 a_193_47# a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.166 pd=1.8 as=0.0864 ps=0.91 w=0.64 l=0.15
X22 VGND a_1062_300# Q VNB sky130_fd_pr__nfet_01v8 ad=0.0926 pd=0.935 as=0.0878 ps=0.92 w=0.65 l=0.15
X23 a_381_47# D VGND VNB sky130_fd_pr__nfet_01v8 ad=0.066 pd=0.745 as=0.109 ps=1.36 w=0.42 l=0.15
X24 VPWR a_891_413# a_1062_300# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.162 pd=1.33 as=0.28 ps=2.56 w=1 l=0.15
X25 a_891_413# a_193_47# a_634_183# VNB sky130_fd_pr__nfet_01v8 ad=0.0657 pd=0.725 as=0.0989 ps=0.995 w=0.36 l=0.15
X26 a_475_413# a_193_47# a_381_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.0662 pd=0.735 as=0.0672 ps=0.74 w=0.42 l=0.15
X27 VGND a_634_183# a_572_47# VNB sky130_fd_pr__nfet_01v8 ad=0.149 pd=1.22 as=0.0687 ps=0.76 w=0.42 l=0.15
X28 VGND CLK a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0567 pd=0.69 as=0.109 ps=1.36 w=0.42 l=0.15
X29 VPWR a_1062_300# Q VPB sky130_fd_pr__pfet_01v8_hvt ad=0.28 pd=2.56 as=0.135 ps=1.27 w=1 l=0.15
.ends

.subckt sky130_fd_sc_hd__buf_6 A VGND VNB VPB VPWR X
X0 VPWR a_161_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1 a_161_47# A VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
X2 X a_161_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X3 VPWR a_161_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X4 VGND A a_161_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X5 X a_161_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X6 VGND a_161_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X7 VGND a_161_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X8 VPWR a_161_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X9 X a_161_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X10 X a_161_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X11 X a_161_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X12 X a_161_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X13 VPWR A a_161_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X14 VGND a_161_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X15 a_161_47# A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
.ends

.subckt sky130_fd_sc_hd__dlymetal6s2s_1 A VGND VNB VPB VPWR X
X0 a_558_47# a_381_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.141 ps=1.33 w=1 l=0.15
X1 VGND X a_381_47# VNB sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.109 ps=1.36 w=0.42 l=0.15
X2 a_841_47# a_664_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.141 ps=1.33 w=1 l=0.15
X3 VPWR A a_62_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.141 pd=1.33 as=0.109 ps=1.36 w=0.42 l=0.15
X4 VGND A a_62_47# VNB sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.109 ps=1.36 w=0.42 l=0.15
X5 a_558_47# a_381_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.097 ps=0.975 w=0.65 l=0.15
X6 X a_62_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.141 ps=1.33 w=1 l=0.15
X7 VPWR X a_381_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.141 pd=1.33 as=0.109 ps=1.36 w=0.42 l=0.15
X8 a_841_47# a_664_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.097 ps=0.975 w=0.65 l=0.15
X9 X a_62_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.097 ps=0.975 w=0.65 l=0.15
X10 VPWR a_558_47# a_664_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.141 pd=1.33 as=0.109 ps=1.36 w=0.42 l=0.15
X11 VGND a_558_47# a_664_47# VNB sky130_fd_pr__nfet_01v8 ad=0.097 pd=0.975 as=0.109 ps=1.36 w=0.42 l=0.15
.ends

.subckt sky130_fd_sc_hd__buf_4 A VGND VNB VPB VPWR X
X0 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.26 pd=2.52 as=0.135 ps=1.27 w=1 l=0.15
X1 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X2 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X3 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.135 ps=1.27 w=1 l=0.15
X4 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X5 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X6 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.0878 ps=0.92 w=0.65 l=0.15
X7 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.169 pd=1.82 as=0.0878 ps=0.92 w=0.65 l=0.15
X8 VPWR A a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.135 pd=1.27 as=0.26 ps=2.52 w=1 l=0.15
X9 VGND A a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0878 pd=0.92 as=0.169 ps=1.82 w=0.65 l=0.15
.ends

.subckt sky130_fd_sc_hd__clkbuf_4 A VGND VNB VPB VPWR X
X0 VPWR A a_27_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=0.165 pd=1.33 as=0.265 ps=2.53 w=1 l=0.15
X1 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.122 pd=1.42 as=0.0588 ps=0.7 w=0.42 l=0.15
X2 VGND a_27_47# X VNB sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X3 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
X4 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0588 ps=0.7 w=0.42 l=0.15
X5 VGND A a_27_47# VNB sky130_fd_pr__nfet_01v8 ad=0.0703 pd=0.755 as=0.111 ps=1.37 w=0.42 l=0.15
X6 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.3 pd=2.6 as=0.14 ps=1.28 w=1 l=0.15
X7 X a_27_47# VGND VNB sky130_fd_pr__nfet_01v8 ad=0.0588 pd=0.7 as=0.0703 ps=0.755 w=0.42 l=0.15
X8 X a_27_47# VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.165 ps=1.33 w=1 l=0.15
X9 VPWR a_27_47# X VPB sky130_fd_pr__pfet_01v8_hvt ad=0.14 pd=1.28 as=0.14 ps=1.28 w=1 l=0.15
.ends

.subckt shiftreg clk data_reg[10] data_reg[11] data_reg[12] data_reg[13] data_reg[14]
+ data_reg[15] data_reg[16] data_reg[17] data_reg[18] data_reg[19] data_reg[1] data_reg[20]
+ data_reg[21] data_reg[22] data_reg[23] data_reg[24] data_reg[26] data_reg[27] data_reg[28]
+ data_reg[29] data_reg[2] data_reg[30] data_reg[31] data_reg[32] data_reg[33] data_reg[34]
+ data_reg[35] data_reg[36] data_reg[37] data_reg[38] data_reg[39] data_reg[3] data_reg[4]
+ data_reg[5] data_reg[6] data_reg[7] data_reg[8] data_reg[9] load serial_in serial_out
+ shift_enable data_reg[25] data_reg[0] VPWR VGND
XFILLER_52_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_93_14 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_133_87 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_26_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_294_ _146_ VGND VGND VPWR VPWR _059_ sky130_fd_sc_hd__clkbuf_1
X_363_ clk _027_ VGND VGND VPWR VPWR shift_reg\[39\] sky130_fd_sc_hd__dfxtp_2
XFILLER_95_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_80 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_346_ clk _010_ VGND VGND VPWR VPWR shift_reg\[22\] sky130_fd_sc_hd__dfxtp_2
X_415_ clk _079_ VGND VGND VPWR VPWR shift_reg\[11\] sky130_fd_sc_hd__dfxtp_1
X_277_ _137_ VGND VGND VPWR VPWR _051_ sky130_fd_sc_hd__buf_2
XFILLER_91_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_200_ shift_reg\[27\] shift_reg\[28\] _091_ VGND VGND VPWR VPWR _097_ sky130_fd_sc_hd__mux2_2
XFILLER_90_48 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_90_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_135_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_2_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_329_ _164_ VGND VGND VPWR VPWR _076_ sky130_fd_sc_hd__clkbuf_2
XFILLER_50_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_69_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_70_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_98_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_75_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_5 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_112_147 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_13_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_19_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_120 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_103_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput42 net42 VGND VGND VPWR VPWR data_reg[8] sky130_fd_sc_hd__buf_2
Xoutput7 net7 VGND VGND VPWR VPWR data_reg[12] sky130_fd_sc_hd__buf_2
Xoutput20 net20 VGND VGND VPWR VPWR data_reg[24] sky130_fd_sc_hd__buf_2
Xoutput31 net31 VGND VGND VPWR VPWR data_reg[34] sky130_fd_sc_hd__buf_2
XPHY_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_72_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_145 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_133_99 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_26 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_362_ clk _026_ VGND VGND VPWR VPWR shift_reg\[38\] sky130_fd_sc_hd__dfxtp_2
X_293_ net28 shift_reg\[31\] _144_ VGND VGND VPWR VPWR _146_ sky130_fd_sc_hd__mux2_1
XFILLER_42_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_67_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_92 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_77_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_345_ clk _009_ VGND VGND VPWR VPWR shift_reg\[21\] sky130_fd_sc_hd__dfxtp_2
X_276_ net19 shift_reg\[23\] _133_ VGND VGND VPWR VPWR _137_ sky130_fd_sc_hd__mux2_2
X_414_ clk _078_ VGND VGND VPWR VPWR shift_reg\[10\] sky130_fd_sc_hd__dfxtp_2
XFILLER_58_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_89 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_2_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_328_ shift_reg\[8\] shift_reg\[9\] _157_ VGND VGND VPWR VPWR _164_ sky130_fd_sc_hd__mux2_4
X_259_ net10 shift_reg\[15\] _122_ VGND VGND VPWR VPWR _128_ sky130_fd_sc_hd__mux2_4
XFILLER_43_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_118_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_115_145 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_121_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_6 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_61_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_112_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_86_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_34_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_176 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_103_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput43 net43 VGND VGND VPWR VPWR data_reg[9] sky130_fd_sc_hd__buf_2
Xoutput8 net8 VGND VGND VPWR VPWR data_reg[13] sky130_fd_sc_hd__buf_2
Xoutput10 net10 VGND VGND VPWR VPWR data_reg[15] sky130_fd_sc_hd__buf_2
Xoutput32 net32 VGND VGND VPWR VPWR data_reg[35] sky130_fd_sc_hd__buf_2
Xoutput21 net21 VGND VGND VPWR VPWR data_reg[25] sky130_fd_sc_hd__buf_2
XFILLER_16_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_171 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_16_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_31_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_117_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_361_ clk _025_ VGND VGND VPWR VPWR shift_reg\[37\] sky130_fd_sc_hd__dfxtp_2
X_292_ _145_ VGND VGND VPWR VPWR _058_ sky130_fd_sc_hd__clkbuf_1
XFILLER_13_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_103_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_413_ clk _077_ VGND VGND VPWR VPWR shift_reg\[9\] sky130_fd_sc_hd__dfxtp_4
X_275_ _136_ VGND VGND VPWR VPWR _050_ sky130_fd_sc_hd__clkbuf_2
X_344_ clk _008_ VGND VGND VPWR VPWR shift_reg\[20\] sky130_fd_sc_hd__dfxtp_1
XFILLER_114_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_82_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_189_ net3 VGND VGND VPWR VPWR _091_ sky130_fd_sc_hd__buf_6
XFILLER_9_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_258_ _127_ VGND VGND VPWR VPWR _042_ sky130_fd_sc_hd__clkbuf_2
X_327_ _163_ VGND VGND VPWR VPWR _075_ sky130_fd_sc_hd__clkbuf_1
XFILLER_36_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_50_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_115_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_121_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_7 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_34_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_106_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_82_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_23 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput9 net9 VGND VGND VPWR VPWR data_reg[14] sky130_fd_sc_hd__buf_2
Xoutput11 net11 VGND VGND VPWR VPWR data_reg[16] sky130_fd_sc_hd__buf_2
Xoutput44 net44 VGND VGND VPWR VPWR serial_out sky130_fd_sc_hd__buf_2
Xoutput33 net33 VGND VGND VPWR VPWR data_reg[36] sky130_fd_sc_hd__buf_2
Xoutput22 net22 VGND VGND VPWR VPWR data_reg[26] sky130_fd_sc_hd__buf_2
XFILLER_56_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_155 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_194 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_31_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_291_ net27 shift_reg\[30\] _144_ VGND VGND VPWR VPWR _145_ sky130_fd_sc_hd__mux2_1
XFILLER_13_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_13_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_360_ clk _024_ VGND VGND VPWR VPWR shift_reg\[36\] sky130_fd_sc_hd__dfxtp_2
XFILLER_3_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_412_ clk _076_ VGND VGND VPWR VPWR shift_reg\[8\] sky130_fd_sc_hd__dfxtp_2
XFILLER_53_20 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_343_ clk _007_ VGND VGND VPWR VPWR shift_reg\[19\] sky130_fd_sc_hd__dfxtp_2
X_274_ net18 shift_reg\[22\] _133_ VGND VGND VPWR VPWR _136_ sky130_fd_sc_hd__mux2_2
XFILLER_82_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_99_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_48_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_326_ shift_reg\[7\] shift_reg\[8\] _157_ VGND VGND VPWR VPWR _163_ sky130_fd_sc_hd__mux2_1
XFILLER_9_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_257_ net9 shift_reg\[14\] _122_ VGND VGND VPWR VPWR _127_ sky130_fd_sc_hd__mux2_1
X_188_ _090_ VGND VGND VPWR VPWR _009_ sky130_fd_sc_hd__clkbuf_1
XFILLER_56_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_133_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_109_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_309_ net36 shift_reg\[39\] _144_ VGND VGND VPWR VPWR _154_ sky130_fd_sc_hd__mux2_1
XFILLER_115_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_111_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_8 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_6_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_35 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput12 net12 VGND VGND VPWR VPWR data_reg[17] sky130_fd_sc_hd__buf_2
Xoutput34 net34 VGND VGND VPWR VPWR data_reg[37] sky130_fd_sc_hd__buf_2
Xoutput23 net23 VGND VGND VPWR VPWR data_reg[27] sky130_fd_sc_hd__buf_2
XFILLER_72_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_167 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_195 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_151 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_72_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_140 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_100_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_117_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_26_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_119 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_13_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_21_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_290_ net1 VGND VGND VPWR VPWR _144_ sky130_fd_sc_hd__buf_6
XFILLER_3_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_170 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_103_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_342_ clk _006_ VGND VGND VPWR VPWR shift_reg\[18\] sky130_fd_sc_hd__dfxtp_4
XFILLER_53_32 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_411_ clk _075_ VGND VGND VPWR VPWR shift_reg\[7\] sky130_fd_sc_hd__dfxtp_1
X_273_ _135_ VGND VGND VPWR VPWR _049_ sky130_fd_sc_hd__clkbuf_2
XFILLER_91_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_130_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_325_ _162_ VGND VGND VPWR VPWR _074_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_80_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_256_ _126_ VGND VGND VPWR VPWR _041_ sky130_fd_sc_hd__clkbuf_2
XFILLER_80_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_187_ shift_reg\[21\] shift_reg\[22\] _080_ VGND VGND VPWR VPWR _090_ sky130_fd_sc_hd__mux2_1
XFILLER_100_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_109_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_126_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_124_159 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_308_ _153_ VGND VGND VPWR VPWR _066_ sky130_fd_sc_hd__clkbuf_1
X_239_ _117_ VGND VGND VPWR VPWR _033_ sky130_fd_sc_hd__clkbuf_1
XFILLER_123_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_96_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_9 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_105_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_89_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput13 net13 VGND VGND VPWR VPWR data_reg[18] sky130_fd_sc_hd__buf_2
Xoutput35 net35 VGND VGND VPWR VPWR data_reg[38] sky130_fd_sc_hd__buf_2
XFILLER_31_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput24 net24 VGND VGND VPWR VPWR data_reg[28] sky130_fd_sc_hd__buf_2
XFILLER_56_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_16_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_174 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_72_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_61 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_133_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_13_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_120 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_85_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_85_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_341_ clk _005_ VGND VGND VPWR VPWR shift_reg\[17\] sky130_fd_sc_hd__dfxtp_2
X_272_ net17 shift_reg\[21\] _133_ VGND VGND VPWR VPWR _135_ sky130_fd_sc_hd__mux2_2
X_410_ clk _074_ VGND VGND VPWR VPWR shift_reg\[6\] sky130_fd_sc_hd__dfxtp_2
XFILLER_53_44 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_78_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_82_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_174 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_82_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_324_ shift_reg\[6\] shift_reg\[7\] _157_ VGND VGND VPWR VPWR _162_ sky130_fd_sc_hd__mux2_4
X_255_ net8 shift_reg\[13\] _122_ VGND VGND VPWR VPWR _126_ sky130_fd_sc_hd__mux2_2
XFILLER_89_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_186_ _089_ VGND VGND VPWR VPWR _008_ sky130_fd_sc_hd__clkbuf_2
XFILLER_1_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_64_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_109_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_119_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_124 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_147 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_238_ net39 shift_reg\[5\] _111_ VGND VGND VPWR VPWR _117_ sky130_fd_sc_hd__mux2_2
X_169_ shift_reg\[12\] shift_reg\[13\] _080_ VGND VGND VPWR VPWR _081_ sky130_fd_sc_hd__mux2_1
X_307_ net35 shift_reg\[38\] _144_ VGND VGND VPWR VPWR _153_ sky130_fd_sc_hd__mux2_1
XFILLER_34_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_126_70 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_120_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput14 net14 VGND VGND VPWR VPWR data_reg[19] sky130_fd_sc_hd__buf_2
Xoutput36 net36 VGND VGND VPWR VPWR data_reg[39] sky130_fd_sc_hd__buf_2
XFILLER_31_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput25 net25 VGND VGND VPWR VPWR data_reg[29] sky130_fd_sc_hd__buf_2
XFILLER_102_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_197 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_97_73 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_0 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_117_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_7_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_21_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_107_94 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_271_ _134_ VGND VGND VPWR VPWR _048_ sky130_fd_sc_hd__dlymetal6s2s_1
X_340_ clk _004_ VGND VGND VPWR VPWR shift_reg\[16\] sky130_fd_sc_hd__dfxtp_2
XFILLER_5_146 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_114_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_48_56 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_127_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_323_ _161_ VGND VGND VPWR VPWR _073_ sky130_fd_sc_hd__buf_2
XFILLER_80_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_185_ shift_reg\[20\] shift_reg\[21\] _080_ VGND VGND VPWR VPWR _089_ sky130_fd_sc_hd__mux2_1
XFILLER_9_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_254_ _125_ VGND VGND VPWR VPWR _040_ sky130_fd_sc_hd__clkbuf_1
XFILLER_129_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_125_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_134 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_136 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_83 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_99 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_306_ _152_ VGND VGND VPWR VPWR _065_ sky130_fd_sc_hd__clkbuf_1
XFILLER_61_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_168_ net3 VGND VGND VPWR VPWR _080_ sky130_fd_sc_hd__buf_6
X_237_ _116_ VGND VGND VPWR VPWR _032_ sky130_fd_sc_hd__clkbuf_2
XFILLER_123_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_86_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput15 net15 VGND VGND VPWR VPWR data_reg[1] sky130_fd_sc_hd__buf_2
Xoutput26 net26 VGND VGND VPWR VPWR data_reg[2] sky130_fd_sc_hd__buf_2
Xoutput37 net37 VGND VGND VPWR VPWR data_reg[3] sky130_fd_sc_hd__buf_2
XFILLER_102_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_198 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_154 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_143 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_137_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_1 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_94_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_44 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_43 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_94_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_270_ net16 shift_reg\[20\] _133_ VGND VGND VPWR VPWR _134_ sky130_fd_sc_hd__mux2_1
XFILLER_53_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_94_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_399_ clk _063_ VGND VGND VPWR VPWR net32 sky130_fd_sc_hd__dfxtp_1
XFILLER_130_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_16 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_104_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_58_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_68 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_322_ shift_reg\[5\] shift_reg\[6\] _157_ VGND VGND VPWR VPWR _161_ sky130_fd_sc_hd__mux2_1
XFILLER_129_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_253_ net7 shift_reg\[12\] _122_ VGND VGND VPWR VPWR _125_ sky130_fd_sc_hd__mux2_1
X_184_ _088_ VGND VGND VPWR VPWR _007_ sky130_fd_sc_hd__buf_2
XFILLER_135_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_146 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_148 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_95 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_305_ net34 shift_reg\[37\] _144_ VGND VGND VPWR VPWR _152_ sky130_fd_sc_hd__mux2_2
XFILLER_115_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_108_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_236_ net38 shift_reg\[4\] _111_ VGND VGND VPWR VPWR _116_ sky130_fd_sc_hd__mux2_2
XFILLER_37_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_120_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_61 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_219_ shift_reg\[36\] shift_reg\[37\] _102_ VGND VGND VPWR VPWR _107_ sky130_fd_sc_hd__mux2_1
XFILLER_25_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput38 net38 VGND VGND VPWR VPWR data_reg[4] sky130_fd_sc_hd__buf_2
XFILLER_102_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput16 net16 VGND VGND VPWR VPWR data_reg[20] sky130_fd_sc_hd__buf_2
Xoutput27 net27 VGND VGND VPWR VPWR data_reg[30] sky130_fd_sc_hd__buf_2
XFILLER_112_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_137_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_2 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_87_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_13_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_48 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_128_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_37_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_94_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_398_ clk _062_ VGND VGND VPWR VPWR net31 sky130_fd_sc_hd__dfxtp_1
XFILLER_4_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_28 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_321_ _160_ VGND VGND VPWR VPWR _072_ sky130_fd_sc_hd__buf_2
XFILLER_120_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_252_ _124_ VGND VGND VPWR VPWR _039_ sky130_fd_sc_hd__buf_2
XFILLER_127_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_183_ shift_reg\[19\] shift_reg\[20\] _080_ VGND VGND VPWR VPWR _088_ sky130_fd_sc_hd__mux2_4
XFILLER_13_72 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_109_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_235_ _115_ VGND VGND VPWR VPWR _031_ sky130_fd_sc_hd__clkbuf_1
X_304_ _151_ VGND VGND VPWR VPWR _064_ sky130_fd_sc_hd__clkbuf_2
XFILLER_37_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_106_108 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_120_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_218_ _106_ VGND VGND VPWR VPWR _023_ sky130_fd_sc_hd__clkbuf_2
XFILLER_32_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput39 net39 VGND VGND VPWR VPWR data_reg[5] sky130_fd_sc_hd__buf_2
Xoutput17 net17 VGND VGND VPWR VPWR data_reg[21] sky130_fd_sc_hd__buf_2
Xoutput28 net28 VGND VGND VPWR VPWR data_reg[31] sky130_fd_sc_hd__buf_2
XFILLER_31_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_112_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_90 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_178 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_156 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_145 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_98_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_15_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_91_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_397_ clk _061_ VGND VGND VPWR VPWR net30 sky130_fd_sc_hd__dfxtp_2
XFILLER_43_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_117 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_320_ shift_reg\[4\] shift_reg\[5\] _157_ VGND VGND VPWR VPWR _160_ sky130_fd_sc_hd__mux2_1
XFILLER_120_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_182_ _087_ VGND VGND VPWR VPWR _006_ sky130_fd_sc_hd__clkbuf_1
X_251_ net6 shift_reg\[11\] _122_ VGND VGND VPWR VPWR _124_ sky130_fd_sc_hd__mux2_2
XFILLER_81_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_129_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_84 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_62_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_126_172 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_124_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_234_ net37 shift_reg\[3\] _111_ VGND VGND VPWR VPWR _115_ sky130_fd_sc_hd__mux2_1
X_303_ net33 shift_reg\[36\] _144_ VGND VGND VPWR VPWR _151_ sky130_fd_sc_hd__mux2_1
XFILLER_1_32 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_114_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_43_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_126_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_217_ shift_reg\[35\] shift_reg\[36\] _102_ VGND VGND VPWR VPWR _106_ sky130_fd_sc_hd__mux2_1
XFILLER_25_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput18 net18 VGND VGND VPWR VPWR data_reg[22] sky130_fd_sc_hd__buf_2
Xoutput29 net29 VGND VGND VPWR VPWR data_reg[32] sky130_fd_sc_hd__buf_2
XFILLER_56_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_102 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_80 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_62 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_91 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_137_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_4 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_30_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_26_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_68 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_24 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_396_ clk _060_ VGND VGND VPWR VPWR net29 sky130_fd_sc_hd__dfxtp_1
XFILLER_4_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_129_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_2_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_73_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_181_ shift_reg\[18\] shift_reg\[19\] _080_ VGND VGND VPWR VPWR _087_ sky130_fd_sc_hd__mux2_1
XFILLER_120_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_250_ _123_ VGND VGND VPWR VPWR _038_ sky130_fd_sc_hd__clkbuf_2
XFILLER_13_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_379_ clk _043_ VGND VGND VPWR VPWR net10 sky130_fd_sc_hd__dfxtp_1
XFILLER_55_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_126_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_26 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_75_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_302_ _150_ VGND VGND VPWR VPWR _063_ sky130_fd_sc_hd__clkbuf_2
XFILLER_91_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_233_ _114_ VGND VGND VPWR VPWR _030_ sky130_fd_sc_hd__buf_2
XFILLER_49_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_44 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_34 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_171 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_61_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_108 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_216_ _105_ VGND VGND VPWR VPWR _022_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_111_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput19 net19 VGND VGND VPWR VPWR data_reg[23] sky130_fd_sc_hd__buf_2
XPHY_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_147 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_72_59 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_114 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_81 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_70 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_74 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_92 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_5 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_46_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_30_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_12_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_16_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_85_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_395_ clk _059_ VGND VGND VPWR VPWR net28 sky130_fd_sc_hd__dfxtp_2
XFILLER_4_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_81_150 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_80_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_180_ _086_ VGND VGND VPWR VPWR _005_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_89_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_378_ clk _042_ VGND VGND VPWR VPWR net9 sky130_fd_sc_hd__dfxtp_1
XFILLER_126_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_152 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_131_76 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_232_ net26 shift_reg\[2\] _111_ VGND VGND VPWR VPWR _114_ sky130_fd_sc_hd__mux2_2
XFILLER_91_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_301_ net32 shift_reg\[35\] _144_ VGND VGND VPWR VPWR _150_ sky130_fd_sc_hd__mux2_4
XFILLER_24_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_24_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_101_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_35_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_215_ shift_reg\[34\] shift_reg\[35\] _102_ VGND VGND VPWR VPWR _105_ sky130_fd_sc_hd__mux2_2
XFILLER_42_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_131 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_24_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_148 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_126 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_60 _136_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_115_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_82 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_71 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_86 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_93 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_30_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_93_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_118_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_78_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_394_ clk _058_ VGND VGND VPWR VPWR net27 sky130_fd_sc_hd__dfxtp_1
XFILLER_4_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_66_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_48_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_81_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_89_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_118_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_377_ clk _041_ VGND VGND VPWR VPWR net8 sky130_fd_sc_hd__dfxtp_1
XFILLER_126_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_55_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_132_167 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_117_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_91_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_88 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_231_ _113_ VGND VGND VPWR VPWR _029_ sky130_fd_sc_hd__clkbuf_1
X_300_ _149_ VGND VGND VPWR VPWR _062_ sky130_fd_sc_hd__clkbuf_1
XFILLER_24_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_24_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_150 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_65_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_81_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xinput1 load VGND VGND VPWR VPWR net1 sky130_fd_sc_hd__buf_4
XFILLER_101_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_126 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_214_ _104_ VGND VGND VPWR VPWR _021_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_42_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_70 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_154 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_61 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_83 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_50 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_72 net17 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_138 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_108_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_21_98 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_94 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_97_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_146 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_16 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_94_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_393_ clk _057_ VGND VGND VPWR VPWR net25 sky130_fd_sc_hd__dfxtp_1
XFILLER_4_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_67_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_90_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_90_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_38_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_376_ clk _040_ VGND VGND VPWR VPWR net7 sky130_fd_sc_hd__dfxtp_2
XFILLER_79_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_115_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_91_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_230_ net15 shift_reg\[1\] _111_ VGND VGND VPWR VPWR _113_ sky130_fd_sc_hd__mux2_1
XFILLER_24_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_151 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_60_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_140 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_359_ clk _023_ VGND VGND VPWR VPWR shift_reg\[35\] sky130_fd_sc_hd__dfxtp_2
XFILLER_81_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xinput2 serial_in VGND VGND VPWR VPWR net2 sky130_fd_sc_hd__buf_2
XFILLER_36_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_105_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_213_ shift_reg\[33\] shift_reg\[34\] _102_ VGND VGND VPWR VPWR _104_ sky130_fd_sc_hd__mux2_1
XFILLER_111_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XANTENNA_62 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_84 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_51 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_40 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_95 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_73 net19 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_46_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_7_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_92 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_21_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_21_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_158 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_120_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_73_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_134_89 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_392_ clk _056_ VGND VGND VPWR VPWR net24 sky130_fd_sc_hd__dfxtp_1
XFILLER_4_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_90_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_104_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_64_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_375_ clk _039_ VGND VGND VPWR VPWR net6 sky130_fd_sc_hd__dfxtp_1
XFILLER_79_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_46_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_91_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_123_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_152 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_141 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_358_ clk _022_ VGND VGND VPWR VPWR shift_reg\[34\] sky130_fd_sc_hd__dfxtp_1
XANTENNA_130 shift_reg\[9\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_289_ _143_ VGND VGND VPWR VPWR _057_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_46_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xinput3 shift_enable VGND VGND VPWR VPWR net3 sky130_fd_sc_hd__clkbuf_4
XFILLER_51_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_105_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_212_ _103_ VGND VGND VPWR VPWR _020_ sky130_fd_sc_hd__clkbuf_1
XFILLER_51_31 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_59 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_118 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_96 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_30 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_63 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_52 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_74 net20 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_85 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_41 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_46_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_21_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_108 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_87_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_79_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_40 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_151 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_78_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_391_ clk _055_ VGND VGND VPWR VPWR net23 sky130_fd_sc_hd__dfxtp_2
XFILLER_138_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_90_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_374_ clk _038_ VGND VGND VPWR VPWR net5 sky130_fd_sc_hd__dfxtp_1
XFILLER_72_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_90 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_70_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_131_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_123_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_120 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_142 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_131 net33 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_153 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_81_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_357_ clk _021_ VGND VGND VPWR VPWR shift_reg\[33\] sky130_fd_sc_hd__dfxtp_1
X_288_ net25 shift_reg\[29\] _133_ VGND VGND VPWR VPWR _143_ sky130_fd_sc_hd__mux2_2
XFILLER_39_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_105_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_211_ shift_reg\[32\] shift_reg\[33\] _102_ VGND VGND VPWR VPWR _103_ sky130_fd_sc_hd__mux2_1
XFILLER_51_43 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_409_ clk _073_ VGND VGND VPWR VPWR shift_reg\[5\] sky130_fd_sc_hd__dfxtp_4
XANTENNA_20 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_31 _043_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_97 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_137_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_42 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_64 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_86 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_75 net21 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_53 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_15_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_21_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_171 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_79_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_118_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_94_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_390_ clk _054_ VGND VGND VPWR VPWR net22 sky130_fd_sc_hd__dfxtp_1
XFILLER_138_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_68_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_90_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_102 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_129_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_146 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_373_ clk _037_ VGND VGND VPWR VPWR net43 sky130_fd_sc_hd__dfxtp_2
XFILLER_72_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_70_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_90 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_54_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_123_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_154 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_110 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_143 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_105_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_103 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_132 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_121 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_121_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_287_ _142_ VGND VGND VPWR VPWR _056_ sky130_fd_sc_hd__clkbuf_1
X_356_ clk _020_ VGND VGND VPWR VPWR shift_reg\[32\] sky130_fd_sc_hd__dfxtp_2
XFILLER_122_171 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_10_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_126_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_210_ net3 VGND VGND VPWR VPWR _102_ sky130_fd_sc_hd__buf_6
XFILLER_111_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_76_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_122 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_408_ clk _072_ VGND VGND VPWR VPWR shift_reg\[4\] sky130_fd_sc_hd__dfxtp_2
XFILLER_18_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_339_ clk _003_ VGND VGND VPWR VPWR shift_reg\[15\] sky130_fd_sc_hd__dfxtp_2
XFILLER_110_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_65 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_32 _043_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XPHY_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_21 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_54 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_43 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_10 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_98 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_137_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_76 net36 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_87 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_101_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_107_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_123_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_94_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_113_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_85_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_14_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_134_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_68_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_104_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_135_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_1_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_1_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_110_61 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_372_ clk _036_ VGND VGND VPWR VPWR net42 sky130_fd_sc_hd__dfxtp_2
XFILLER_134_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_95_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_81_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_117_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_115_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_131_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XANTENNA_100 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_121_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_122 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_133 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_60_115 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_144 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_111 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_355_ clk _019_ VGND VGND VPWR VPWR shift_reg\[31\] sky130_fd_sc_hd__dfxtp_2
X_286_ net24 shift_reg\[28\] _133_ VGND VGND VPWR VPWR _142_ sky130_fd_sc_hd__mux2_1
XFILLER_122_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_10_49 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_113_150 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_19_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_104 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_89 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_161 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_92_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_407_ clk _071_ VGND VGND VPWR VPWR shift_reg\[3\] sky130_fd_sc_hd__dfxtp_2
X_338_ clk _002_ VGND VGND VPWR VPWR shift_reg\[14\] sky130_fd_sc_hd__dfxtp_2
XPHY_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_269_ net1 VGND VGND VPWR VPWR _133_ sky130_fd_sc_hd__buf_6
XFILLER_110_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_44_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_112_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_99 _030_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_55 _088_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_66 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_77 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_22 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_88 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_44 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_11 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_33 _049_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_137_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_62_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_123_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_260 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_81_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_66_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_120_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_371_ clk _035_ VGND VGND VPWR VPWR net41 sky130_fd_sc_hd__dfxtp_1
XFILLER_126_104 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_70_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_131_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_24_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_101 _042_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_134 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_112 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_145 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_123 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_354_ clk _018_ VGND VGND VPWR VPWR shift_reg\[30\] sky130_fd_sc_hd__dfxtp_1
X_285_ _141_ VGND VGND VPWR VPWR _055_ sky130_fd_sc_hd__clkbuf_1
XFILLER_53_8 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_113_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_104_173 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_406_ clk _070_ VGND VGND VPWR VPWR shift_reg\[2\] sky130_fd_sc_hd__dfxtp_2
XFILLER_92_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_337_ clk _001_ VGND VGND VPWR VPWR shift_reg\[13\] sky130_fd_sc_hd__dfxtp_1
XPHY_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_199_ _096_ VGND VGND VPWR VPWR _014_ sky130_fd_sc_hd__clkbuf_1
X_268_ _132_ VGND VGND VPWR VPWR _047_ sky130_fd_sc_hd__clkbuf_1
XFILLER_110_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_37_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_137_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_89 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_78 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_23 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_56 _088_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_67 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_45 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_12 _024_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_34 _049_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_101_154 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_46_35 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_15_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_138_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_98_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_84_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_250 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_17_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_129_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_81_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_129_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_370_ clk _034_ VGND VGND VPWR VPWR net40 sky130_fd_sc_hd__dfxtp_1
XFILLER_126_116 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_117_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_102 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_113 _073_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_124 _164_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_45_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_284_ net23 shift_reg\[27\] _133_ VGND VGND VPWR VPWR _141_ sky130_fd_sc_hd__mux2_1
X_353_ clk _017_ VGND VGND VPWR VPWR shift_reg\[29\] sky130_fd_sc_hd__dfxtp_2
XFILLER_121_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_135 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_146 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_36_147 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_126_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_40 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_104_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_92_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_336_ clk _000_ VGND VGND VPWR VPWR shift_reg\[12\] sky130_fd_sc_hd__dfxtp_2
X_267_ net14 shift_reg\[19\] _122_ VGND VGND VPWR VPWR _132_ sky130_fd_sc_hd__mux2_1
X_405_ clk _069_ VGND VGND VPWR VPWR shift_reg\[1\] sky130_fd_sc_hd__dfxtp_2
XPHY_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_198_ shift_reg\[26\] shift_reg\[27\] _091_ VGND VGND VPWR VPWR _096_ sky130_fd_sc_hd__mux2_1
XFILLER_110_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_110_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_2_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_13 _026_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_137_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_57 _095_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_35 _049_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_79 _007_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_24 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_68 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_46 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_21_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_47 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_30_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_97_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_319_ _159_ VGND VGND VPWR VPWR _071_ sky130_fd_sc_hd__clkbuf_1
XFILLER_96_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_57_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_97_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_134_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_105 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_273 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_240 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_17_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_129_136 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_126_128 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_110_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_132_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_125_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_103 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_136 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_114 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_65_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_125 shift_reg\[18\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_147 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_352_ clk _016_ VGND VGND VPWR VPWR shift_reg\[28\] sky130_fd_sc_hd__dfxtp_1
X_283_ _140_ VGND VGND VPWR VPWR _054_ sky130_fd_sc_hd__clkbuf_2
XFILLER_114_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_107_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_39_91 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_159 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_116_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_52 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_404_ clk _068_ VGND VGND VPWR VPWR net44 sky130_fd_sc_hd__dfxtp_2
XFILLER_92_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_197_ _095_ VGND VGND VPWR VPWR _013_ sky130_fd_sc_hd__clkbuf_1
X_266_ _131_ VGND VGND VPWR VPWR _046_ sky130_fd_sc_hd__clkbuf_2
X_335_ _167_ VGND VGND VPWR VPWR _079_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_41_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_2_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_2_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_36 _049_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_25 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_47 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_17_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XANTENNA_14 _026_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_58 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_69 net2 VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_46_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_46_59 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_318_ shift_reg\[3\] shift_reg\[4\] _157_ VGND VGND VPWR VPWR _159_ sky130_fd_sc_hd__mux2_1
X_249_ net5 shift_reg\[10\] _122_ VGND VGND VPWR VPWR _123_ sky130_fd_sc_hd__mux2_2
XFILLER_96_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_16_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_11_154 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_78_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_4_117 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_274 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_263 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_129_148 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_252 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_230 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_33_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_157 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_81_138 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_81_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_57_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_39_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_24_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_351_ clk _015_ VGND VGND VPWR VPWR shift_reg\[27\] sky130_fd_sc_hd__dfxtp_2
XANTENNA_126 shift_reg\[18\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_65_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_115 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_137 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_148 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_104 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_45_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_282_ net22 shift_reg\[26\] _133_ VGND VGND VPWR VPWR _140_ sky130_fd_sc_hd__mux2_1
XFILLER_81_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_104_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_64 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_403_ clk _067_ VGND VGND VPWR VPWR net36 sky130_fd_sc_hd__dfxtp_2
X_334_ shift_reg\[11\] shift_reg\[12\] _157_ VGND VGND VPWR VPWR _167_ sky130_fd_sc_hd__mux2_2
XPHY_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_61 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_94 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_196_ shift_reg\[25\] shift_reg\[26\] _091_ VGND VGND VPWR VPWR _095_ sky130_fd_sc_hd__mux2_2
X_265_ net13 shift_reg\[18\] _122_ VGND VGND VPWR VPWR _131_ sky130_fd_sc_hd__mux2_2
XFILLER_2_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_26 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_48 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_59 _105_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_37 _052_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_15 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_101_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_317_ _158_ VGND VGND VPWR VPWR _070_ sky130_fd_sc_hd__clkbuf_1
XFILLER_14_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_179_ shift_reg\[17\] shift_reg\[18\] _080_ VGND VGND VPWR VPWR _086_ sky130_fd_sc_hd__mux2_1
X_248_ net1 VGND VGND VPWR VPWR _122_ sky130_fd_sc_hd__buf_6
XFILLER_96_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_96_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_35_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_98_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_7_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_4_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_108_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_275 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_264 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_129_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_231 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_220 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_66_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_39_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_100 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_65_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_149 _162_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_138 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_127 shift_reg\[18\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_116 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_350_ clk _014_ VGND VGND VPWR VPWR shift_reg\[26\] sky130_fd_sc_hd__dfxtp_2
XFILLER_81_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XANTENNA_105 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_281_ _139_ VGND VGND VPWR VPWR _053_ sky130_fd_sc_hd__clkbuf_2
XFILLER_14_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_51_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_65_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_116_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_104_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_132_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_402_ clk _066_ VGND VGND VPWR VPWR net35 sky130_fd_sc_hd__dfxtp_2
X_264_ _130_ VGND VGND VPWR VPWR _045_ sky130_fd_sc_hd__clkbuf_1
X_333_ _166_ VGND VGND VPWR VPWR _078_ sky130_fd_sc_hd__dlymetal6s2s_1
XPHY_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_95 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_195_ _094_ VGND VGND VPWR VPWR _012_ sky130_fd_sc_hd__clkbuf_1
XFILLER_2_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XANTENNA_27 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_49 _076_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_38 _052_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_16 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_101_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_101_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_247_ _121_ VGND VGND VPWR VPWR _037_ sky130_fd_sc_hd__clkbuf_1
XFILLER_52_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_14_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_316_ shift_reg\[2\] shift_reg\[3\] _157_ VGND VGND VPWR VPWR _158_ sky130_fd_sc_hd__mux2_2
X_178_ _085_ VGND VGND VPWR VPWR _004_ sky130_fd_sc_hd__clkbuf_1
XFILLER_28_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_7_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_14_9 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_68_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_43 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_210 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_90_118 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_276 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_254 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_95_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_119_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_79_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_108_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_106 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_128 shift_reg\[5\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_117 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_81_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_280_ net21 shift_reg\[25\] _133_ VGND VGND VPWR VPWR _139_ sky130_fd_sc_hd__mux2_2
XANTENNA_139 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_14_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_71_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_58_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_27_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_151 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_76_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_401_ clk _065_ VGND VGND VPWR VPWR net34 sky130_fd_sc_hd__dfxtp_2
XPHY_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_332_ shift_reg\[10\] shift_reg\[11\] _157_ VGND VGND VPWR VPWR _166_ sky130_fd_sc_hd__mux2_2
XPHY_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_63 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_263_ net12 shift_reg\[17\] _122_ VGND VGND VPWR VPWR _130_ sky130_fd_sc_hd__mux2_1
XPHY_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_194_ shift_reg\[24\] shift_reg\[25\] _091_ VGND VGND VPWR VPWR _094_ sky130_fd_sc_hd__mux2_2
XFILLER_41_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_32_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_28 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_39 _053_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_17 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_101_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_11_32 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_14_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_246_ net43 shift_reg\[9\] _111_ VGND VGND VPWR VPWR _121_ sky130_fd_sc_hd__mux2_2
X_315_ net3 VGND VGND VPWR VPWR _157_ sky130_fd_sc_hd__buf_6
XFILLER_14_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_177_ shift_reg\[16\] shift_reg\[17\] _080_ VGND VGND VPWR VPWR _085_ sky130_fd_sc_hd__mux2_2
XFILLER_87_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_229_ _112_ VGND VGND VPWR VPWR _028_ sky130_fd_sc_hd__clkbuf_1
XFILLER_69_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_160 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_84_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_75_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_277 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_233 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_222 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_200 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_33_30 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_57_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_57_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_80_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_95_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_129 shift_reg\[9\] VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_105_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_118 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_107 _063_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_81_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_14_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_14_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_30_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_83 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_44_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_132_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_400_ clk _064_ VGND VGND VPWR VPWR net33 sky130_fd_sc_hd__dfxtp_2
X_331_ _165_ VGND VGND VPWR VPWR _077_ sky130_fd_sc_hd__clkbuf_2
XFILLER_92_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_31 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_26_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_262_ _129_ VGND VGND VPWR VPWR _044_ sky130_fd_sc_hd__clkbuf_1
X_193_ _093_ VGND VGND VPWR VPWR _011_ sky130_fd_sc_hd__clkbuf_1
XPHY_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_18 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_29 _039_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_70_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_101_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_99_133 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_11_44 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_314_ _156_ VGND VGND VPWR VPWR _069_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_14_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_14_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_245_ _120_ VGND VGND VPWR VPWR _036_ sky130_fd_sc_hd__clkbuf_2
X_176_ _084_ VGND VGND VPWR VPWR _003_ sky130_fd_sc_hd__clkbuf_1
XFILLER_77_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_87_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_28 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_118_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_78_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_139 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_228_ net4 net44 _111_ VGND VGND VPWR VPWR _112_ sky130_fd_sc_hd__mux2_1
XFILLER_69_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_172 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_245 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_234 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_212 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_33_42 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_72_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_78 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_28_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_54_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_62_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_105_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XANTENNA_108 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_121_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_105_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_119 _077_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_81_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_95 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_167 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_330_ shift_reg\[9\] shift_reg\[10\] _157_ VGND VGND VPWR VPWR _165_ sky130_fd_sc_hd__mux2_1
XPHY_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_10 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_98 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_192_ shift_reg\[23\] shift_reg\[24\] _091_ VGND VGND VPWR VPWR _093_ sky130_fd_sc_hd__mux2_2
X_261_ net11 shift_reg\[16\] _122_ VGND VGND VPWR VPWR _129_ sky130_fd_sc_hd__mux2_1
XFILLER_41_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_19 _034_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_82_71 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_145 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_102_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_244_ net42 shift_reg\[8\] _111_ VGND VGND VPWR VPWR _120_ sky130_fd_sc_hd__mux2_1
XFILLER_52_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_313_ shift_reg\[1\] shift_reg\[2\] _102_ VGND VGND VPWR VPWR _156_ sky130_fd_sc_hd__mux2_1
X_175_ shift_reg\[15\] shift_reg\[16\] _080_ VGND VGND VPWR VPWR _084_ sky130_fd_sc_hd__mux2_1
XFILLER_77_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_87_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_113_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_87_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_227_ net1 VGND VGND VPWR VPWR _111_ sky130_fd_sc_hd__buf_6
XFILLER_6_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_69_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_26_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_68_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_130_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_246 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_235 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_213 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_202 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_59_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_128_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_90_60 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_37 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_156 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_101 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_28_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_173 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_44_64 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_44_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_62_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_109 _072_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_14_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_122_159 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_104 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_76_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_26_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_260_ _128_ VGND VGND VPWR VPWR _043_ sky130_fd_sc_hd__clkbuf_2
XPHY_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_191_ _092_ VGND VGND VPWR VPWR _010_ sky130_fd_sc_hd__clkbuf_1
XFILLER_103_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_2_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_389_ clk _053_ VGND VGND VPWR VPWR net21 sky130_fd_sc_hd__dfxtp_1
XFILLER_99_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_99_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_11_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_243_ _119_ VGND VGND VPWR VPWR _035_ sky130_fd_sc_hd__clkbuf_1
XFILLER_52_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_312_ _155_ VGND VGND VPWR VPWR _068_ sky130_fd_sc_hd__clkbuf_2
X_174_ _083_ VGND VGND VPWR VPWR _002_ sky130_fd_sc_hd__clkbuf_1
XFILLER_87_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_226_ _110_ VGND VGND VPWR VPWR _027_ sky130_fd_sc_hd__clkbuf_2
XFILLER_6_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_108_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_225 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_123_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_137_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_74_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_90_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_128_176 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_128_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_209_ _101_ VGND VGND VPWR VPWR _019_ sky130_fd_sc_hd__clkbuf_1
XFILLER_99_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_110_49 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_80_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_168 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_95_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_28_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_56_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_125_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_85_72 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_62_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_131_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_116 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_44_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_138 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_92_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_190_ shift_reg\[22\] shift_reg\[23\] _091_ VGND VGND VPWR VPWR _092_ sky130_fd_sc_hd__mux2_1
XPHY_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_41_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_66_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_388_ clk _052_ VGND VGND VPWR VPWR net20 sky130_fd_sc_hd__dfxtp_1
XFILLER_99_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_49_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_11_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_242_ net41 shift_reg\[7\] _111_ VGND VGND VPWR VPWR _119_ sky130_fd_sc_hd__mux2_1
X_311_ net44 shift_reg\[1\] _102_ VGND VGND VPWR VPWR _155_ sky130_fd_sc_hd__mux2_1
X_173_ shift_reg\[14\] shift_reg\[15\] _080_ VGND VGND VPWR VPWR _083_ sky130_fd_sc_hd__mux2_1
XFILLER_93_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_113_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_225_ shift_reg\[39\] net2 _102_ VGND VGND VPWR VPWR _110_ sky130_fd_sc_hd__mux2_1
XFILLER_6_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_83_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_226 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_215 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_204 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_17_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_74_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_128_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_99_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_208_ shift_reg\[31\] shift_reg\[32\] _091_ VGND VGND VPWR VPWR _101_ sky130_fd_sc_hd__mux2_1
XFILLER_31_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_134_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_60_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_84 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_79_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_116_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_128 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_132_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_24 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_41_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_110_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_387_ clk _051_ VGND VGND VPWR VPWR net19 sky130_fd_sc_hd__dfxtp_2
XFILLER_102_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_127_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_100_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_310_ _154_ VGND VGND VPWR VPWR _067_ sky130_fd_sc_hd__clkbuf_1
XFILLER_36_67 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_172_ _082_ VGND VGND VPWR VPWR _001_ sky130_fd_sc_hd__clkbuf_2
XFILLER_22_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_241_ _118_ VGND VGND VPWR VPWR _034_ sky130_fd_sc_hd__clkbuf_2
XFILLER_117_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_77_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_93_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_13_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_113_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_224_ _109_ VGND VGND VPWR VPWR _026_ sky130_fd_sc_hd__buf_2
XFILLER_6_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_92_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_238 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_205 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_17_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_33_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_74_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_207_ _100_ VGND VGND VPWR VPWR _018_ sky130_fd_sc_hd__clkbuf_2
XFILLER_90_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_99_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_110_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_134_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_119_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_135_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_5_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_125_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_116_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_121_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_91_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_60 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_41_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_2_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_82_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_386_ clk _050_ VGND VGND VPWR VPWR net18 sky130_fd_sc_hd__dfxtp_1
XFILLER_99_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_127_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_240_ net40 shift_reg\[6\] _111_ VGND VGND VPWR VPWR _118_ sky130_fd_sc_hd__mux2_2
XFILLER_36_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_171_ shift_reg\[13\] shift_reg\[14\] _080_ VGND VGND VPWR VPWR _082_ sky130_fd_sc_hd__mux2_1
XFILLER_117_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_369_ clk _033_ VGND VGND VPWR VPWR net39 sky130_fd_sc_hd__dfxtp_2
XFILLER_54_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_130 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_103_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_223_ shift_reg\[38\] shift_reg\[39\] _102_ VGND VGND VPWR VPWR _109_ sky130_fd_sc_hd__mux2_1
XFILLER_10_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_92_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_88_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_108_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_137_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_228 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_206 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_33_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_74_111 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_59_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_58_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_74_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_90_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_206_ shift_reg\[30\] shift_reg\[31\] _091_ VGND VGND VPWR VPWR _100_ sky130_fd_sc_hd__mux2_2
XFILLER_17_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_102 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_119_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_135_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_71_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_56_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_121_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_125_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_85_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_62_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_171 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_38_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_30_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_111_84 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_96_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_84_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_72 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_37 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_59 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_385_ clk _049_ VGND VGND VPWR VPWR net17 sky130_fd_sc_hd__dfxtp_1
XFILLER_82_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_15_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_170_ _081_ VGND VGND VPWR VPWR _000_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_96_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_89_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_368_ clk _032_ VGND VGND VPWR VPWR net38 sky130_fd_sc_hd__dfxtp_1
X_299_ net31 shift_reg\[34\] _144_ VGND VGND VPWR VPWR _149_ sky130_fd_sc_hd__mux2_1
XFILLER_9_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_13_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_20_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_95_142 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_86_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_78_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_8_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_222_ _108_ VGND VGND VPWR VPWR _025_ sky130_fd_sc_hd__clkbuf_2
XFILLER_88_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_88_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_207 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_83_145 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_137_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_218 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_137_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_74_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_74_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_205_ _099_ VGND VGND VPWR VPWR _017_ sky130_fd_sc_hd__buf_2
XFILLER_23_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_100_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_34_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_130_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_156 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_111_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_172 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_104_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_132_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_16 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_41_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_96 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_17_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_384_ clk _048_ VGND VGND VPWR VPWR net16 sky130_fd_sc_hd__dfxtp_1
XFILLER_15_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_25_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_31_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_117_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_367_ clk _031_ VGND VGND VPWR VPWR net37 sky130_fd_sc_hd__dfxtp_1
X_298_ _148_ VGND VGND VPWR VPWR _061_ sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_95_154 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_221_ shift_reg\[37\] shift_reg\[38\] _102_ VGND VGND VPWR VPWR _108_ sky130_fd_sc_hd__mux2_1
XFILLER_88_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_208 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_83_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_137_148 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_204_ shift_reg\[29\] shift_reg\[30\] _091_ VGND VGND VPWR VPWR _099_ sky130_fd_sc_hd__mux2_1
XFILLER_23_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_0_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_119_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_127_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_0_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_71_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_71_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_107_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_125_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_109_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_14_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_26 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_35_127 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_1 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_112_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_6_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_41_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_383_ clk _047_ VGND VGND VPWR VPWR net14 sky130_fd_sc_hd__dfxtp_2
XFILLER_17_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_59 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_366_ clk _030_ VGND VGND VPWR VPWR net26 sky130_fd_sc_hd__dfxtp_1
XFILLER_93_99 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_297_ net30 shift_reg\[33\] _144_ VGND VGND VPWR VPWR _148_ sky130_fd_sc_hd__mux2_1
XFILLER_9_145 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_42_70 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_138_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_86_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_47_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_220_ _107_ VGND VGND VPWR VPWR _024_ sky130_fd_sc_hd__buf_2
XFILLER_63_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_137_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_10_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_88_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_349_ clk _013_ VGND VGND VPWR VPWR shift_reg\[25\] sky130_fd_sc_hd__dfxtp_2
XFILLER_52_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_68_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_83_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_137_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_114_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_203_ _098_ VGND VGND VPWR VPWR _016_ sky130_fd_sc_hd__clkbuf_1
XFILLER_65_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_48_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_119_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_100_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_109_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_125 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_39_38 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_96_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_29_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_35_139 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_43_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_50_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_2 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_112_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_122_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_382_ clk _046_ VGND VGND VPWR VPWR net13 sky130_fd_sc_hd__dfxtp_2
XFILLER_25_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput4 net4 VGND VGND VPWR VPWR data_reg[0] sky130_fd_sc_hd__buf_2
XFILLER_82_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_14_109 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_22_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_77_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_63 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_365_ clk _029_ VGND VGND VPWR VPWR net15 sky130_fd_sc_hd__dfxtp_1
X_296_ _147_ VGND VGND VPWR VPWR _060_ sky130_fd_sc_hd__clkbuf_1
XFILLER_9_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_76 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_63_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_128_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_52 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_53_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_279_ _138_ VGND VGND VPWR VPWR _052_ sky130_fd_sc_hd__clkbuf_2
X_348_ clk _012_ VGND VGND VPWR VPWR shift_reg\[24\] sky130_fd_sc_hd__dfxtp_2
XFILLER_45_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_83_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_91_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_33_18 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_58_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_23_40 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_202_ shift_reg\[28\] shift_reg\[29\] _091_ VGND VGND VPWR VPWR _098_ sky130_fd_sc_hd__mux2_1
XFILLER_2_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_73_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_127_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_175 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_69_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_85_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_137 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_101 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_71_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_55_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_112_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_120 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_85 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_45_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_3 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_61_81 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_122_65 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_66_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_381_ clk _045_ VGND VGND VPWR VPWR net12 sky130_fd_sc_hd__dfxtp_1
XFILLER_40_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_40_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
Xoutput5 net5 VGND VGND VPWR VPWR data_reg[10] sky130_fd_sc_hd__buf_2
XFILLER_31_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput40 net40 VGND VGND VPWR VPWR data_reg[6] sky130_fd_sc_hd__buf_2
XPHY_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_75_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_31_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_98_165 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_36_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_69 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_14 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_75 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_93_57 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_9_169 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_364_ clk _028_ VGND VGND VPWR VPWR net4 sky130_fd_sc_hd__dfxtp_2
X_295_ net29 shift_reg\[32\] _144_ VGND VGND VPWR VPWR _147_ sky130_fd_sc_hd__mux2_1
XFILLER_95_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_3_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_128_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_12_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_77_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_278_ net20 shift_reg\[24\] _133_ VGND VGND VPWR VPWR _138_ sky130_fd_sc_hd__mux2_1
XFILLER_53_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
X_347_ clk _011_ VGND VGND VPWR VPWR shift_reg\[23\] sky130_fd_sc_hd__dfxtp_2
XFILLER_38_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_114_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_59_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_114_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_201_ _097_ VGND VGND VPWR VPWR _015_ sky130_fd_sc_hd__clkbuf_2
XFILLER_23_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_153 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_65_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_65_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_29 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_133_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_69_15 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_18_41 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_47_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_47_149 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_70_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_124_121 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_130_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_115_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_55_39 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_71_27 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_52_141 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_106_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_105_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_136_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_136_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_121_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_53 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_97 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_29_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_93 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XANTENNA_4 _008_ VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_112_168 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_20_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_34_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_103_113 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_122_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_380_ clk _044_ VGND VGND VPWR VPWR net11 sky130_fd_sc_hd__dfxtp_1
XFILLER_40_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
Xoutput41 net41 VGND VGND VPWR VPWR data_reg[7] sky130_fd_sc_hd__buf_2
Xoutput6 net6 VGND VGND VPWR VPWR data_reg[11] sky130_fd_sc_hd__buf_2
Xoutput30 net30 VGND VGND VPWR VPWR data_reg[33] sky130_fd_sc_hd__buf_2
XFILLER_31_133 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XPHY_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_68_3 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_177 VGND VPWR VPWR VGND sky130_ef_sc_hd__decap_12
XFILLER_98_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
.ends

.subckt uwb_wrapper vss utrig avdd rfoutn rfoutp pat1ext sen sdo sdi sclk sload osct1ext
+ osct2ext dvdd
Xuwb_transmitter_0 avdd utrig shiftreg_0/data_reg[9] shiftreg_0/data_reg[8] shiftreg_0/data_reg[7]
+ shiftreg_0/data_reg[6] shiftreg_0/data_reg[12] shiftreg_0/data_reg[13] shiftreg_0/data_reg[0]
+ shiftreg_0/data_reg[1] shiftreg_0/data_reg[2] shiftreg_0/data_reg[3] shiftreg_0/data_reg[4]
+ shiftreg_0/data_reg[5] shiftreg_0/data_reg[39] shiftreg_0/data_reg[38] shiftreg_0/data_reg[37]
+ shiftreg_0/data_reg[36] shiftreg_0/data_reg[35] shiftreg_0/data_reg[34] shiftreg_0/data_reg[23]
+ shiftreg_0/data_reg[22] shiftreg_0/data_reg[21] shiftreg_0/data_reg[20] shiftreg_0/data_reg[27]
+ shiftreg_0/data_reg[26] shiftreg_0/data_reg[25] shiftreg_0/data_reg[24] shiftreg_0/data_reg[16]
+ shiftreg_0/data_reg[17] pat1ext shiftreg_0/data_reg[19] osct1ext osct2ext shiftreg_0/data_reg[15]
+ dvdd rfoutn shiftreg_0/data_reg[18] rfoutp shiftreg_0/data_reg[11] shiftreg_0/data_reg[10]
+ vss shiftreg_0/data_reg[14] uwb_transmitter
Xshiftreg_0 sclk shiftreg_0/data_reg[10] shiftreg_0/data_reg[11] shiftreg_0/data_reg[12]
+ shiftreg_0/data_reg[13] shiftreg_0/data_reg[14] shiftreg_0/data_reg[15] shiftreg_0/data_reg[16]
+ shiftreg_0/data_reg[17] shiftreg_0/data_reg[18] shiftreg_0/data_reg[19] shiftreg_0/data_reg[1]
+ shiftreg_0/data_reg[20] shiftreg_0/data_reg[21] shiftreg_0/data_reg[22] shiftreg_0/data_reg[23]
+ shiftreg_0/data_reg[24] shiftreg_0/data_reg[26] shiftreg_0/data_reg[27] shiftreg_0/data_reg[28]
+ shiftreg_0/data_reg[29] shiftreg_0/data_reg[2] shiftreg_0/data_reg[30] shiftreg_0/data_reg[31]
+ shiftreg_0/data_reg[32] shiftreg_0/data_reg[33] shiftreg_0/data_reg[34] shiftreg_0/data_reg[35]
+ shiftreg_0/data_reg[36] shiftreg_0/data_reg[37] shiftreg_0/data_reg[38] shiftreg_0/data_reg[39]
+ shiftreg_0/data_reg[3] shiftreg_0/data_reg[4] shiftreg_0/data_reg[5] shiftreg_0/data_reg[6]
+ shiftreg_0/data_reg[7] shiftreg_0/data_reg[8] shiftreg_0/data_reg[9] sload sdi sdo
+ sen shiftreg_0/data_reg[25] shiftreg_0/data_reg[0] dvdd vss shiftreg
.ends

