// SPDX-FileCopyrightText: 2023 Harald Pretl
// Johannes Kepler University, Institute for Integrated Circuits
// SPDX-License-Identifier: Apache-2.0
//
// This digital module serves as a bridge between the (few) digital IOs and the
// ADC digital IOs. A shift register is realized for the configuration bits, and
// also the conversion result of the ADC.

`default_nettype none

module adc_bridge (
    `ifdef USE_POWER_PINS
      inout VDD,	// User area 1.8V supply
      inout VSS,	// User area ground
    `endif
    // chip inputs
    input wire              clk,            // clk for shift regs
    input wire              rst_n,          // async. reset for regs
    input wire              dat_i,          // serial in (ADC config, LSB first)
    input wire              load,           // load strobe for shift regs
    // interface to ADC
    input wire [15:0]       adc_res,        // ADC result input
    input wire              adc_conv_finished,
    input wire              adc_conv_finished_osr,
    output wire [15:0]      adc_cfg1,       // ADC config1 output
    output wire [15:0]      adc_cfg2,       // ADC config2 output
    // chip outputs
    output wire             dat_o,          // serial out (ADC result, LSB first)
    output wire             conv_finish,    // flag that conversion is finished
    output wire             tie1,           // logic 1 aux. output
    output wire             tie0            // logic 2 aux. output
    );

endmodule // adc_bridge
