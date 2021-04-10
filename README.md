# b\*ken\*ko

A gummyworm mount case based on [Bakeneko 60](https://github.com/kkatano/bakeneko-60) by [kkatano](https://github.com/kkatano)

## Notes

* Case holes/threads for the daughterboard are a bit shallow, you might have to use 3mm M3 screws. Or increase hole depth in the model.
* The reworked PCB is using STM32F103, you will need an ST-Link ($2 from aliexpress) to flash the bootloader if you get it made.
* Production files for PCB and daughterboard use JLCPCB assembly, JLCPCB will not solder JST connectors for you so they are not included into the files, you will have to hand-solder the connector. If you use a different fab, make sure the JST connector is included into the BOM and position file (or you'll get semi-assembled PCBs).
* O-ring spec is AS568-263 (ID 7.234", CS 0.139" / ID 183.74mm, CS 3.53mm).
* As we're not allowed to use the Unikorn mounting points, note that the PCB mounting points are not compatible with Unikorn, neither the Unikorn-compatible PCBs (such as plain60-flex) are compatible with this case
