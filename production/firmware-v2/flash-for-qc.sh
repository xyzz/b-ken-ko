#!/bin/bash

set -e

st-flash opterase
st-flash write opt-head.bin 0x1FFFF800
st-flash --reset write bootloader-xyz60.bin 0x08000000
st-flash write opt-tail.bin 0x1FFFF802

st-flash --reset read dump.bin 0x08000000 $(printf "%x" $(stat -c "%s" bootloader-xyz60.bin))

echo ""
if cmp -s dump.bin bootloader-xyz60.bin; then
    echo "Bootloader OK"
else
    echo "Bootloader FAIL"
    exit 1
fi

if st-flash --reset --area=option read | grep "A5 5A FF 00 FF 00 FF 00 FE 01 FF 00 FF 00 FF 00"; then
    echo "Options OK"
else
    echo "Options FAIL"
    exit 1
fi

echo ""
echo "-- remove SWD now --"
echo ""

vibl-flash xyz_xyz60_qc.vfw

echo ""
echo "ALL OK"
