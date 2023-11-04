// SPDX-FileCopyrightText: 2023 Harald Pretl, IIC, JKU
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
`timescale 10us/1us

// This is just an empty Verilog wrapper for the analog module.

module adc_wrapper(
`ifdef USE_POWER_PINS
    inout VDD,
    inout VSS,
`endif
    input rst_n,
    input clk,
    input conv_start,
    input load,
    input dati,
    output conv_finish,
    output dato,
    output tie0,
    output tie1,
    inout inp_ana,
    inout inn_ana
);

endmodule
`default_nettype wire
