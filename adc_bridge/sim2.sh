#!/bin/bash
# SPDX-FileCopyrightText: 2023 Harald Pretl
# Johannes Kepler University, Institute for Integrated Circuits
# SPDX-License-Identifier: Apache-2.0

rm -f a.out
rm -f adc_bridge_tb2.vcd

iic-vlint.sh -i adc_bridge_tb2.v

iverilog -g2005 adc_bridge_tb2.v
./a.out
gtkwave adc_bridge_tb2.vcd

