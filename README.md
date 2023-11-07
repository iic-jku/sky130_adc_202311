# Project `SKY130_ADC_202311`

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

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

## Notes for integrating into Caravan (the analog Caravel)

* **Magic** changes cells when reading in a GDS. When this is not wanted (e.g., when using an existing IP block in GDS form as part of a larger design), then before reading the GDS with `gds read file.gds` in **Magic** do `gds readonly true`.
	* This sets the property `GDS_FILE` in **Magic**, that it uses as reference when writing the GDS from the MAG file later.
	* When a cell needs to be changed, this property has to be removed by doing a `property GDS_FILE ""` on this cell.
* The SPICE netlist of the analog design normally resides in the `xschem` folder. However, in order to pass the consistency check of the MPW-precheck of efabless, the netlist has also to be placed into the folder `netgen`.
* Run a local mpw-precheck early in order to detect issues. The used DRC ruleset from **KLayout** can differ to whatever one is using locally, so expect new DRC errors to pop up.
* This repo <https://github.com/iic-jku/sky130_adc_202311> passes all the mpw-prechecks and the TO procedure on the efabless site, so can be used as a reference and template.
