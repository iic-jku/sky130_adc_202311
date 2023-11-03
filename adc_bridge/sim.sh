#!/bin/bash

rm -f a.out
rm -f adc_bridge_tb.vcd

iic-vlint.sh -i adc_bridge_tb.v

iverilog -g2005 adc_bridge_tb.v
./a.out
gtkwave adc_bridge_tb.vcd

