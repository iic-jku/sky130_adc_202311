crashbackups stop
drc off
load /foss/designs/finallvs/sky130_adc_202311/mag/user_analog_project_wrapper.mag
select top cell
expand
extract path /foss/designs/finallvs/sky130_adc_202311/xschem
extract all
ext2spice lvs
ext2spice -p /foss/designs/finallvs/sky130_adc_202311/xschem -o /foss/designs/finallvs/sky130_adc_202311/xschem/user_analog_project_wrapper.ext.spc
quit -nocheck
