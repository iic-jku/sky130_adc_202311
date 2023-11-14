crashbackups stop
drc off
load /foss/designs/finallvs/sky130_adc_202311/mag/user_analog_project_wrapper.mag
select top cell
expand
extract path /foss/designs/finallvs/sky130_adc_202311/mag
extract all
ext2spice lvs
ext2spice -p /foss/designs/finallvs/sky130_adc_202311/mag -o /foss/designs/finallvs/sky130_adc_202311/mag/user_analog_project_wrapper.ext.spc
quit -nocheck
