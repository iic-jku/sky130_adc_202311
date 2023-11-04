# Project `SKY130_ADC_202311`

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)

---

**(c) 2023 Harald Pretl, Institute for Integrated Circuits, Johannes Kepler University, Linz**

This project is based on efabless' Caravel and instantiates a SAR-ADC with bridge logic for serial input and output.

The documentation is pretty rudimentary for now, but will be improved in the future.

## Features:

* Technology: `sky130A`
* SAR-ADC: <https://github.com/iic-jku/SKY130_SAR-ADC1>
* Used IOs: `GPIO[5]` to `GPIO[13]`
* Power supplies: `VCCD1`/`VSSD1`, supply voltage 1.8V
* Padframe: `caravel_user_project_analog`

## IO Usage:

* `GPIO[5]`: ADC ready signal `conv_finish`
* `GPIO[6]`: Serial output `dato`
* `GPIO[7]`: Serial input `dati`
* `GPIO[8]`: Parallel load `load`
* `GPIO[9]` = `ANALOG[2]`: ADC negative input `inn_ana`
* `GPIO[10]` = `ANALOG[3]`: ADC positive input `inp_ana`
* `GPIO[11]`: Digital reset `rst_n`
* `GPIO[12]`: ADC conversion start trigger `conv_start`
* `GPIO[12]`: Clock for bridge logic and ADC charge pump `clk`

