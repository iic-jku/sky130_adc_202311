// SPDX-FileCopyrightText: 2023 Patrick Fath
// Johannes Kepler University, Institute for Integrated Circuits
// SPDX-License-Identifier: Apache-2.0
//
// TB for adc_bridge.v including default settings for ADC

`include "adc_bridge.v"
`timescale 10ns/100ps

module adc_bridge_tb;

    reg CLK = 1'b0;
    reg RST_N = 1'b1;
    reg DAT_I = 1'b0;
    reg LOAD = 1'b0;
    reg [15:0] ADC_RESULT = 16'hdbca;
    wire [15:0] ADC_CFG1;
    wire [15:0] ADC_CFG2;
    wire DAT_O;
    wire TIE1;
    wire TIE0;

    reg ADC_CONV_FINISHED = 1'b0;
    reg ADC_CONV_FINISHED_OSR = 1'b0;
    wire CONV_FINISH;

    reg [32:0] ADC_CFG_IN = {1'b1,16'h8842,16'h3000};
    reg [19:0] ADC_RES_OUT;

    wire [15:0] ADC_RES_OUT_MIDDLE;
    assign ADC_RES_OUT_MIDDLE = ADC_RES_OUT[17:2];

    integer i;

    adc_bridge dut (
        .clk(CLK),
        .rst_n(RST_N),
        .dat_i(DAT_I),
        .load(LOAD),
        .adc_res(ADC_RESULT),
        .adc_conv_finished(ADC_CONV_FINISHED),
        .adc_conv_finished_osr(ADC_CONV_FINISHED_OSR),
        .conv_finish(CONV_FINISH),
        .adc_cfg1(ADC_CFG1),
        .adc_cfg2(ADC_CFG2),
        .dat_o(DAT_O),
        .tie1(TIE1),
        .tie0(TIE0)
    );

    initial begin
        $dumpfile("adc_bridge_tb2.vcd");
        $dumpvars;

        // first, do a reset
        RST_N = 1'b0;
        #40 RST_N = 1'b1;

        // then load the config register serially
        for (i = 0; i < 33; i = i + 1) begin
            DAT_I = ADC_CFG_IN[i];
            #5 CLK = 1'b1;
            #5 CLK = 1'b0;
        end 
	DAT_I = 1'b0;

        // do a load cycle (cfg in, adc result out)
           LOAD = 1'b1;
        #5 CLK = 1'b1;
        #5 CLK = 1'b0; 
           LOAD = 1'b0;
	   ADC_CONV_FINISHED = 1'b1;
        #5 CLK = 1'b1;
        #5 CLK = 1'b0; 
	   ADC_CONV_FINISHED = 1'b0;

        // then shit the adc result out
        for (i = 0; i < 20; i = i + 1) begin
            ADC_RES_OUT[i] = DAT_O;
            #5 CLK = 1'b1;
            #5 CLK = 1'b0;
        end

        // now check for correct result (mini assertion)
        if (ADC_CFG1 != 16'h8842) $display("[ERROR] CFG1 state wrong!");
        if (ADC_CFG2 != 16'h3000) $display("[ERROR] CFG2 state wrong!");
        if (ADC_RES_OUT[17:2] != 16'hdbca) $display("[ERROR] RES state wrong!");

        // and done
        #5 $finish;
    end

endmodule // adc_bridge_tb2
