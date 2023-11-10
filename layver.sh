#!/bin/bash
#
# layver.sh layout verification script
# (c) 2023 Harald Pretl, IIC@JKU

echo "[INFO] Layout verification script for sky130_adc_202311"

RESDIR=$PWD/layver.tmp
[ -d "$RESDIR" ] && rm -rf "$RESDIR"
mkdir -p "$RESDIR"
ERROR=0

if true; then
	CELL=adc_wrapper
	echo "[INFO] Checking cell $CELL"
	./iic-drc.sh -w "$RESDIR" -m mag/$CELL.mag || ERROR=1
	./iic-lvs.sh -w "$RESDIR" -s xschem/$CELL.spice -l mag/$CELL.mag -c $CELL || ERROR=1
fi

if true; then
	CELL=uwb_wrapper
	echo "[INFO] Checking cell $CELL"
	./iic-drc.sh -w "$RESDIR" -m mag/$CELL.mag || ERROR=1
	./iic-lvs.sh -w "$RESDIR" -s xschem/$CELL.spice -l mag/$CELL.mag -c $CELL || ERROR=1
fi

if true; then
	CELL=user_analog_project_wrapper
	echo "[INFO] Checking cell $CELL"
	./iic-drc.sh -w "$RESDIR" -m mag/$CELL.mag || ERROR=1
	./iic-lvs.sh -w "$RESDIR" -s xschem/$CELL.spice -l mag/$CELL.mag -c $CELL || ERROR=1
fi

if [ $ERROR -eq 1 ]; then
	echo "==="
	echo "[ERROR] Layout verification FAILED! Check results!"
	exit 1
else
	echo "==="
	echo "[INFO] Layout verification PASSED all checks!"
fi
