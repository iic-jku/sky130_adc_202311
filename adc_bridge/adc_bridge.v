// SPDX-FileCopyrightText: 2023-2025 Harald Pretl
// Johannes Kepler University, Institute for Integrated Circuits
// SPDX-License-Identifier: Apache-2.0
//
// This digital module serves as a bridge between the (few) digital IOs and the
// ADC digital IOs. A shift register is realized for the configuration bits, and
// also the conversion result of the ADC.
//
// 2025-03-06: Improve comments

`default_nettype none

module adc_bridge (
    // chip inputs
    input wire              clk,                // clk for shift regs
    input wire              rst_n,              // async. reset for regs
    input wire              dat_i,              // serial in (ADC config, LSB first, MSB last)
    input wire              load,               // load strobe for shift regs
    // interface to ADC
    input wire [15:0]       adc_res,            // ADC result input
    input wire              adc_conv_finished,
    input wire              adc_conv_finished_osr,
    output wire [15:0]      adc_cfg1,           // ADC config1 output
    output wire [15:0]      adc_cfg2,           // ADC config2 output
    // chip outputs
    output wire             dat_o,              // serial out (ADC result, LSB first, MSB last)
    output wire             conv_finish,        // flag that conversion is finished
    output wire             tie1,               // logic 1 aux. output
    output wire             tie0                // logic 2 aux. output
    );

    // define local register used for shifting and storing
    reg [32:0]              adc_cfg_store_r;    // stored ADC config (reset: reg1=0x0, reg2=0x0, conv_finish=adc_conv_finish_osr)
    reg [32:0]              adc_cfg_load_r;     // reg for serially loading ADC config regs (2x16b plus adc_finished selection)
    reg [19:0]              adc_res_r;          // holding (and shifting out) ADC result (16b) plus framing (4b)
    reg                     adc_cfg_written_r;  // after reset, ADC config can only be programmed once
    wire                    conv_finish_sel;

    // outputs
    assign dat_o = adc_res_r[0];
    assign adc_cfg1 = adc_cfg_store_r[15:0];
    assign adc_cfg2 = adc_cfg_store_r[31:16];
    assign conv_finish_sel = adc_cfg_store_r[32];
    assign tie1=1'b1;
    assign tie0=1'b0;

    // conv_finish is either (depending on ADC config regs) the individual conv. finished or
    // the final (after OSR) conv. finished
    assign conv_finish = (conv_finish_sel == 1'b0) ?
                            adc_conv_finished_osr :
                            adc_conv_finished; 

    // on clk, shift config in, and result out (LSB first)
    //
    // ADC config register can only be loaded once after reset; this is a safeguard to not
    // unwillingly overwrite the config when reading out results
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            // reset (async.)
            adc_cfg_written_r <= 1'b0;
            adc_cfg_store_r <= 33'd0;
            adc_cfg_load_r <= 33'd0;
            adc_res_r <= 20'd0;
        end else begin
            if (clk == 1'b1) begin
                if (load == 1'b0) begin
                    // shift ADC config in and ADC result out
                    adc_res_r <= {1'b0,adc_res_r[19:1]}; // LSB first, MSB last
                    adc_cfg_load_r <= {dat_i,adc_cfg_load_r[32:1]}; // LSB first, MSB last
                end else begin
                    // store ADC result into shift register
                    // add a bit of framing 10xxxx01 for easier detection of correct data frame
                    adc_res_r <= {2'b10,adc_res,2'b01};
                    // if ADC config has never been written after reset, then transfer config
                    // from shift register into storage
                    if (adc_cfg_written_r == 1'b0) begin
                        adc_cfg_written_r <= 1'b1;
                        adc_cfg_store_r <= adc_cfg_load_r;
                    end
                end
            end
        end
    end

endmodule // adc_bridge
