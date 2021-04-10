#!/bin/bash

set -e

openocd -f interface/stlink.cfg -f target/stm32f1x.cfg \
    -c "init" \
    -c "reset halt" \
    -c "stm32f1x prot1 0" \
    -c "shutdown"

st-flash --reset write bootloader-xyz60.bin 0x08000000

openocd -f interface/stlink.cfg -f target/stm32f1x.cfg \
    -c "init" \
    -c "reset halt" \
    -c "stm32f1x prot2 0" \
    -c "shutdown"

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

vibl-flash xyz60_via.vfw

echo ""
echo "ALL OK"
