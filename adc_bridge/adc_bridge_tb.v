// Copyright 2023 Harald Pretl, IIC, JKU
//
// TB for adc_bridge.v

`include "adc_bridge.v"
`timescale 10us/1us

module adc_bridge_tb;

    reg CLK = 1'b0;
    reg RST_N = 1'b1;
    reg DAT_I = 1'b0;
    reg LOAD = 1'b0;
    reg [15:0] ADC_RESULT = 16'habcd;
    wire [15:0] ADC_CFG1;
    wire [15:0] ADC_CFG2;
    wire DAT_O;
    wire TIE1;
    wire TIE0;

    reg [31:0] ADC_CFG_IN = {16'h1234,16'h5678};
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
        .adc_cfg1(ADC_CFG1),
        .adc_cfg2(ADC_CFG2),
        .dat_o(DAT_O),
        .tie1(TIE1),
        .tie0(TIE0)
    );

    initial begin
        $dumpfile("adc_bridge_tb.vcd");
        $dumpvars;

        // first, do a reset

        #1 RST_N = 1'b0;
        #1 RST_N = 1'b1;

        // then load the config register serially

        for (i = 0; i < 32; i = i + 1) begin
            DAT_I = ADC_CFG_IN[i];
            #1 CLK = 1'b1;
            #1 CLK = 1'b0;
        end 

        // do a load cycle (cfg in, adc result out)

           LOAD = 1'b1;
        #1 CLK = 1'b1;
        #1 CLK = 1'b0; 
           LOAD = 1'b0;

        // then shit the adc result out

        for (i = 0; i < 20; i = i + 1) begin
            ADC_RES_OUT[i] = DAT_O;
            #1 CLK = 1'b1;
            #1 CLK = 1'b0;
        end

        // now check for correct result (mini assertion)

        if (ADC_CFG1 != 16'h5678) $display("[ERROR] CFG1 state wrong!");
        if (ADC_CFG2 != 16'h1234) $display("[ERROR] CFG2 state wrong!");
        if (ADC_RES_OUT[17:2] != 16'habcd) $display("[ERROR] RES state wrong!");

        #5 $finish;
    end

endmodule // adc_bridge_tb
