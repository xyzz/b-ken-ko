EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Bakeneko 65"
Date "2020-08-01"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic_MountingPin:Conn_01x04_MountingPin J1
U 1 1 5F252816
P 10250 1600
F 0 "J1" H 10600 1500 50  0000 C CNN
F 1 "JST SH 4-pin" H 10600 1600 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
F 4 "" H 10250 1600 50  0001 C CNN "LCSC Part #"
	1    10250 1600
	1    0    0    -1  
$EndComp
Text GLabel 10050 1600 0    50   Input ~ 0
D-
Text GLabel 10050 1700 0    50   Input ~ 0
D+
$Comp
L power:VBUS #PWR03
U 1 1 5F275D18
P 10050 1500
F 0 "#PWR03" H 10050 1350 50  0001 C CNN
F 1 "VBUS" V 10065 1628 50  0000 L CNN
F 2 "" H 10050 1500 50  0001 C CNN
F 3 "" H 10050 1500 50  0001 C CNN
	1    10050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F253A4B
P 10050 1800
F 0 "#PWR07" H 10050 1550 50  0001 C CNN
F 1 "GND" V 10055 1672 50  0000 R CNN
F 2 "" H 10050 1800 50  0001 C CNN
F 3 "" H 10050 1800 50  0001 C CNN
	1    10050 1800
	1    0    0    -1  
$EndComp
$Sheet
S 9100 4100 1800 2100
U 5F45B9B8
F0 "Switch Matrix" 50
F1 "matrix.sch" 50
$EndSheet
$Comp
L Regulator_Linear:XC6206PxxxMR U2
U 1 1 5FA4FFA5
P 1400 1050
F 0 "U2" H 1400 1292 50  0000 C CNN
F 1 "XC6206P332MR" H 1400 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1400 1275 50  0001 C CIN
F 3 "https://www.torexsemi.com/file/xc6206/XC6206.pdf" H 1400 1050 50  0001 C CNN
F 4 "" H 1400 1050 50  0001 C CNN "LCSC"
F 5 "C5446" H 1400 1050 50  0001 C CNN "JLC"
	1    1400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5FA4FFAB
P 900 1050
F 0 "#PWR0101" H 900 900 50  0001 C CNN
F 1 "+5V" H 915 1223 50  0000 C CNN
F 2 "" H 900 1050 50  0001 C CNN
F 3 "" H 900 1050 50  0001 C CNN
	1    900  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1050 1000 1050
$Comp
L power:+3.3V #PWR0102
U 1 1 5FA4FFB2
P 1900 1050
F 0 "#PWR0102" H 1900 900 50  0001 C CNN
F 1 "+3.3V" H 1915 1223 50  0000 C CNN
F 2 "" H 1900 1050 50  0001 C CNN
F 3 "" H 1900 1050 50  0001 C CNN
	1    1900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1050 1800 1050
$Comp
L power:GND #PWR0103
U 1 1 5FA4FFB9
P 1400 1500
F 0 "#PWR0103" H 1400 1250 50  0001 C CNN
F 1 "GND" H 1405 1327 50  0000 C CNN
F 2 "" H 1400 1500 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
	1    1400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1350 1400 1400
$Comp
L Device:C_Small C1
U 1 1 5FA4FFC1
P 1000 1250
F 0 "C1" H 800 1300 50  0000 L CNN
F 1 "1u" H 800 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 1250 50  0001 C CNN
F 3 "~" H 1000 1250 50  0001 C CNN
F 4 "" H 1000 1250 50  0001 C CNN "LCSC"
F 5 "C15849" H 1000 1250 50  0001 C CNN "JLC"
	1    1000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1050 1000 1150
Connection ~ 1000 1050
Wire Wire Line
	1000 1050 1100 1050
Wire Wire Line
	1000 1350 1000 1400
Wire Wire Line
	1000 1400 1400 1400
Connection ~ 1400 1400
Wire Wire Line
	1400 1400 1400 1500
$Comp
L Device:C_Small C2
U 1 1 5FA4FFCF
P 1800 1250
F 0 "C2" H 1892 1296 50  0000 L CNN
F 1 "1u" H 1892 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 1250 50  0001 C CNN
F 3 "~" H 1800 1250 50  0001 C CNN
F 4 "" H 1800 1250 50  0001 C CNN "LCSC"
F 5 "C15849" H 1800 1250 50  0001 C CNN "JLC"
	1    1800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1050 1800 1150
Connection ~ 1800 1050
Wire Wire Line
	1800 1050 1900 1050
Wire Wire Line
	1800 1350 1800 1400
Wire Wire Line
	1800 1400 1400 1400
$Comp
L Device:Polyfuse_Small F1
U 1 1 5FA4FFDB
P 9250 1650
F 0 "F1" V 9045 1650 50  0000 C CNN
F 1 "500mA" V 9136 1650 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 9300 1450 50  0001 L CNN
F 3 "~" H 9250 1650 50  0001 C CNN
F 4 "" H 9250 1650 50  0001 C CNN "LCSC"
F 5 "C369159" H 9250 1650 50  0001 C CNN "JLC"
	1    9250 1650
	0    1    1    0   
$EndComp
$Comp
L power:VBUS #PWR0104
U 1 1 5FA4FFE1
P 9000 1650
F 0 "#PWR0104" H 9000 1500 50  0001 C CNN
F 1 "VBUS" H 9015 1823 50  0000 C CNN
F 2 "" H 9000 1650 50  0001 C CNN
F 3 "" H 9000 1650 50  0001 C CNN
	1    9000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5FA4FFE7
P 9500 1650
F 0 "#PWR0105" H 9500 1500 50  0001 C CNN
F 1 "+5V" H 9515 1823 50  0000 C CNN
F 2 "" H 9500 1650 50  0001 C CNN
F 3 "" H 9500 1650 50  0001 C CNN
	1    9500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1650 9150 1650
Wire Wire Line
	9350 1650 9500 1650
$Comp
L Power_Protection:SRV05-4 U1
U 1 1 5FA4FFF0
P 1200 2600
F 0 "U1" H 1200 3281 50  0000 C CNN
F 1 "SRV05-4" H 1200 3190 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1900 2150 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/SRV05-4-D.PDF" H 1200 2600 50  0001 C CNN
F 4 "" H 1200 2600 50  0001 C CNN "LCSC"
F 5 "C85364" H 1200 2600 50  0001 C CNN "JLC"
	1    1200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FA4FFF6
P 1200 3150
F 0 "#PWR0106" H 1200 2900 50  0001 C CNN
F 1 "GND" H 1205 2977 50  0000 C CNN
F 2 "" H 1200 3150 50  0001 C CNN
F 3 "" H 1200 3150 50  0001 C CNN
	1    1200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3100 1200 3150
$Comp
L power:+5V #PWR0107
U 1 1 5FA4FFFD
P 1450 2100
F 0 "#PWR0107" H 1450 1950 50  0001 C CNN
F 1 "+5V" H 1465 2273 50  0000 C CNN
F 2 "" H 1450 2100 50  0001 C CNN
F 3 "" H 1450 2100 50  0001 C CNN
	1    1450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2100 1450 2100
NoConn ~ 700  2500
NoConn ~ 700  2700
Text GLabel 1700 2700 2    50   Input ~ 0
D+
Text GLabel 1700 2500 2    50   Input ~ 0
D-
$Comp
L Device:Crystal_Small Y1
U 1 1 5FA50009
P 3000 2400
F 0 "Y1" V 2954 2488 50  0000 L CNN
F 1 "8MHz" V 3045 2488 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 3000 2400 50  0001 C CNN
F 3 "~" H 3000 2400 50  0001 C CNN
F 4 "C115962" V 3000 2400 50  0001 C CNN "JLC"
	1    3000 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2450 3350 2500
Wire Wire Line
	3350 2500 3000 2500
Wire Wire Line
	3350 2350 3350 2300
Wire Wire Line
	3350 2300 3000 2300
$Comp
L Device:C_Small C4
U 1 1 5FA50014
P 2750 2300
F 0 "C4" V 2521 2300 50  0000 C CNN
F 1 "20p" V 2612 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2750 2300 50  0001 C CNN
F 3 "~" H 2750 2300 50  0001 C CNN
F 4 "C1648" H 2750 2300 50  0001 C CNN "JLC"
	1    2750 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FA5001B
P 2750 2500
F 0 "C5" V 2850 2500 50  0000 C CNN
F 1 "20p" V 2950 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2750 2500 50  0001 C CNN
F 3 "~" H 2750 2500 50  0001 C CNN
F 4 "C1648" H 2750 2500 50  0001 C CNN "JLC"
	1    2750 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2300 2850 2300
Connection ~ 3000 2300
Wire Wire Line
	3000 2500 2850 2500
Connection ~ 3000 2500
$Comp
L power:GND #PWR0108
U 1 1 5FA50025
P 2450 2500
F 0 "#PWR0108" H 2450 2250 50  0001 C CNN
F 1 "GND" H 2455 2327 50  0000 C CNN
F 2 "" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2450 2500
Wire Wire Line
	2650 2300 2450 2300
Wire Wire Line
	2450 2300 2450 2500
Connection ~ 2450 2500
$Comp
L power:+3.3V #PWR0109
U 1 1 5FA5002F
P 5150 1250
F 0 "#PWR0109" H 5150 1100 50  0001 C CNN
F 1 "+3.3V" H 5165 1423 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5FA50036
P 6700 1400
F 0 "C12" H 6792 1446 50  0000 L CNN
F 1 "10u" H 6792 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6700 1400 50  0001 C CNN
F 3 "~" H 6700 1400 50  0001 C CNN
F 4 "C19702" H 6700 1400 50  0001 C CNN "JLC"
	1    6700 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5FA5003D
P 4850 1400
F 0 "C6" H 4942 1446 50  0000 L CNN
F 1 "100n" H 4942 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4850 1400 50  0001 C CNN
F 3 "~" H 4850 1400 50  0001 C CNN
F 4 "C14663" H 4850 1400 50  0001 C CNN "JLC"
	1    4850 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FA50044
P 5250 1400
F 0 "C7" H 5342 1446 50  0000 L CNN
F 1 "100n" H 5342 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 1400 50  0001 C CNN
F 3 "~" H 5250 1400 50  0001 C CNN
F 4 "C14663" H 5250 1400 50  0001 C CNN "JLC"
	1    5250 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5FA5004B
P 5600 1400
F 0 "C8" H 5692 1446 50  0000 L CNN
F 1 "100n" H 5692 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 1400 50  0001 C CNN
F 3 "~" H 5600 1400 50  0001 C CNN
F 4 "C14663" H 5600 1400 50  0001 C CNN "JLC"
	1    5600 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5FA50052
P 5950 1400
F 0 "C9" H 6042 1446 50  0000 L CNN
F 1 "100n" H 6042 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5950 1400 50  0001 C CNN
F 3 "~" H 5950 1400 50  0001 C CNN
F 4 "C14663" H 5950 1400 50  0001 C CNN "JLC"
	1    5950 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5FA50059
P 6300 1400
F 0 "C11" H 6392 1446 50  0000 L CNN
F 1 "100n" H 6392 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6300 1400 50  0001 C CNN
F 3 "~" H 6300 1400 50  0001 C CNN
F 4 "C14663" H 6300 1400 50  0001 C CNN "JLC"
	1    6300 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FA5005F
P 4150 5100
F 0 "#PWR0110" H 4150 4850 50  0001 C CNN
F 1 "GND" H 4155 4927 50  0000 C CNN
F 2 "" H 4150 5100 50  0001 C CNN
F 3 "" H 4150 5100 50  0001 C CNN
	1    4150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4750 4150 5100
$Comp
L power:GND #PWR0111
U 1 1 5FA50066
P 2500 1700
F 0 "#PWR0111" H 2500 1450 50  0001 C CNN
F 1 "GND" H 2505 1527 50  0000 C CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "" H 2500 1700 50  0001 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FA5006D
P 2750 1450
F 0 "C3" V 2521 1450 50  0000 C CNN
F 1 "100n" V 2612 1450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2750 1450 50  0001 C CNN
F 3 "~" H 2750 1450 50  0001 C CNN
F 4 "C14663" H 2750 1450 50  0001 C CNN "JLC"
	1    2750 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FA50074
P 2750 1600
F 0 "R1" V 2850 1600 50  0000 C CNN
F 1 "10k" V 2950 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2750 1600 50  0001 C CNN
F 3 "~" H 2750 1600 50  0001 C CNN
F 4 "C25804" H 2750 1600 50  0001 C CNN "JLC"
	1    2750 1600
	0    1    1    0   
$EndComp
Connection ~ 4150 4750
Wire Wire Line
	4050 4750 4150 4750
Connection ~ 4050 4750
Wire Wire Line
	3850 4750 3950 4750
Wire Wire Line
	3950 4750 4050 4750
Connection ~ 3950 4750
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U3
U 1 1 5FA50081
P 4050 3250
F 0 "U3" H 4000 1661 50  0000 C CNN
F 1 "STM32F103C8Tx" H 4000 1570 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3450 1850 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 4050 3250 50  0001 C CNN
F 4 "C77979" H 4050 3250 50  0001 C CNN "JLC"
	1    4050 3250
	1    0    0    -1  
$EndComp
Text GLabel 3250 1950 0    50   Input ~ 0
NRST
Text GLabel 3250 2150 0    50   Input ~ 0
BOOT0
Wire Wire Line
	3250 1950 3350 1950
Wire Wire Line
	3250 2150 3350 2150
Text GLabel 3000 1450 2    50   Input ~ 0
NRST
Text GLabel 3000 1600 2    50   Input ~ 0
BOOT0
Wire Wire Line
	2650 1450 2500 1450
Wire Wire Line
	2500 1450 2500 1600
Wire Wire Line
	2850 1450 3000 1450
$Comp
L power:GND #PWR0112
U 1 1 5FA50090
P 6150 2550
F 0 "#PWR0112" H 6150 2300 50  0001 C CNN
F 1 "GND" H 6155 2377 50  0000 C CNN
F 2 "" H 6150 2550 50  0001 C CNN
F 3 "" H 6150 2550 50  0001 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
Text GLabel 4650 4250 2    50   Input ~ 0
D+
Text GLabel 4650 4150 2    50   Input ~ 0
D-
Wire Wire Line
	2500 1600 2650 1600
Wire Wire Line
	2850 1600 3000 1600
Wire Wire Line
	2500 1600 2500 1700
Connection ~ 2500 1600
$Comp
L Device:C_Small C10
U 1 1 5FA5009D
P 6300 1050
F 0 "C10" H 6392 1096 50  0000 L CNN
F 1 "1u" H 6392 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6300 1050 50  0001 C CNN
F 3 "~" H 6300 1050 50  0001 C CNN
F 4 "C15849" H 6300 1050 50  0001 C CNN "JLC"
	1    6300 1050
	0    -1   -1   0   
$EndComp
Text GLabel 4250 1650 1    50   Input ~ 0
VDDA
Text GLabel 3850 1650 1    50   Input ~ 0
VBAT
Text GLabel 3950 1650 1    50   Input ~ 0
VDD1
Text GLabel 4050 1650 1    50   Input ~ 0
VDD2
Text GLabel 4150 1650 1    50   Input ~ 0
VDD3
Wire Wire Line
	3850 1650 3850 1750
Wire Wire Line
	3950 1650 3950 1750
Wire Wire Line
	4050 1650 4050 1750
Wire Wire Line
	4150 1650 4150 1750
Wire Wire Line
	4250 1650 4250 1750
Text GLabel 4750 1500 3    50   Input ~ 0
VBAT
$Comp
L power:GND #PWR0113
U 1 1 5FA500AE
P 4950 1500
F 0 "#PWR0113" H 4950 1250 50  0001 C CNN
F 1 "GND" H 4955 1327 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1400 4950 1500
$Comp
L power:+3.3V #PWR0114
U 1 1 5FA500B5
P 4750 1250
F 0 "#PWR0114" H 4750 1100 50  0001 C CNN
F 1 "+3.3V" H 4765 1423 50  0000 C CNN
F 2 "" H 4750 1250 50  0001 C CNN
F 3 "" H 4750 1250 50  0001 C CNN
	1    4750 1250
	1    0    0    -1  
$EndComp
Connection ~ 4750 1400
Wire Wire Line
	4750 1400 4750 1500
Text GLabel 5150 1500 3    50   Input ~ 0
VDD1
Wire Wire Line
	5150 1400 5150 1500
$Comp
L power:GND #PWR0115
U 1 1 5FA500BF
P 5350 1500
F 0 "#PWR0115" H 5350 1250 50  0001 C CNN
F 1 "GND" H 5355 1327 50  0000 C CNN
F 2 "" H 5350 1500 50  0001 C CNN
F 3 "" H 5350 1500 50  0001 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1400 5350 1500
Connection ~ 5150 1400
Wire Wire Line
	4750 1250 4750 1400
Wire Wire Line
	5150 1250 5150 1400
Text GLabel 5500 1500 3    50   Input ~ 0
VDD2
Wire Wire Line
	5500 1400 5500 1500
$Comp
L power:GND #PWR0116
U 1 1 5FA500CB
P 5700 1500
F 0 "#PWR0116" H 5700 1250 50  0001 C CNN
F 1 "GND" H 5705 1327 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1400 5700 1500
$Comp
L power:+3.3V #PWR0117
U 1 1 5FA500D2
P 5500 1250
F 0 "#PWR0117" H 5500 1100 50  0001 C CNN
F 1 "+3.3V" H 5515 1423 50  0000 C CNN
F 2 "" H 5500 1250 50  0001 C CNN
F 3 "" H 5500 1250 50  0001 C CNN
	1    5500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1250 5500 1400
Connection ~ 5500 1400
Text GLabel 5850 1500 3    50   Input ~ 0
VDD3
Wire Wire Line
	5850 1400 5850 1500
$Comp
L power:+3.3V #PWR0118
U 1 1 5FA500DC
P 5850 1250
F 0 "#PWR0118" H 5850 1100 50  0001 C CNN
F 1 "+3.3V" H 5865 1423 50  0000 C CNN
F 2 "" H 5850 1250 50  0001 C CNN
F 3 "" H 5850 1250 50  0001 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1250 5850 1400
Connection ~ 5850 1400
Text GLabel 6200 1500 3    50   Input ~ 0
VDDA
$Comp
L power:GND #PWR0119
U 1 1 5FA500E5
P 6050 1500
F 0 "#PWR0119" H 6050 1250 50  0001 C CNN
F 1 "GND" H 6055 1327 50  0000 C CNN
F 2 "" H 6050 1500 50  0001 C CNN
F 3 "" H 6050 1500 50  0001 C CNN
	1    6050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1400 6050 1500
Connection ~ 6200 1400
Wire Wire Line
	6200 1400 6200 1500
$Comp
L power:GND #PWR0120
U 1 1 5FA500EE
P 6400 1500
F 0 "#PWR0120" H 6400 1250 50  0001 C CNN
F 1 "GND" H 6405 1327 50  0000 C CNN
F 2 "" H 6400 1500 50  0001 C CNN
F 3 "" H 6400 1500 50  0001 C CNN
	1    6400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1400 6400 1500
Connection ~ 6400 1400
Wire Wire Line
	6400 1050 6400 1400
$Comp
L power:+3.3V #PWR0121
U 1 1 5FA500F7
P 6200 900
F 0 "#PWR0121" H 6200 750 50  0001 C CNN
F 1 "+3.3V" H 6215 1073 50  0000 C CNN
F 2 "" H 6200 900 50  0001 C CNN
F 3 "" H 6200 900 50  0001 C CNN
	1    6200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 900  6200 1050
Connection ~ 6200 1050
Wire Wire Line
	6200 1050 6200 1400
$Comp
L power:+3.3V #PWR0122
U 1 1 5FA50100
P 6600 1250
F 0 "#PWR0122" H 6600 1100 50  0001 C CNN
F 1 "+3.3V" H 6615 1423 50  0000 C CNN
F 2 "" H 6600 1250 50  0001 C CNN
F 3 "" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1250 6600 1400
$Comp
L power:GND #PWR0123
U 1 1 5FA50107
P 6800 1500
F 0 "#PWR0123" H 6800 1250 50  0001 C CNN
F 1 "GND" H 6805 1327 50  0000 C CNN
F 2 "" H 6800 1500 50  0001 C CNN
F 3 "" H 6800 1500 50  0001 C CNN
	1    6800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1400 6800 1500
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5FA5010E
P 6350 2250
F 0 "J2" H 6378 2276 50  0000 L CNN
F 1 "SWDIO" H 6378 2185 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6350 2250 50  0001 C CNN
F 3 "~" H 6350 2250 50  0001 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5FA50114
P 6350 2400
F 0 "J3" H 6378 2426 50  0000 L CNN
F 1 "SWCLK" H 6378 2335 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6350 2400 50  0001 C CNN
F 3 "~" H 6350 2400 50  0001 C CNN
	1    6350 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5FA5011A
P 6350 2550
F 0 "J4" H 6378 2576 50  0000 L CNN
F 1 "GND" H 6378 2485 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6350 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
Text GLabel 4650 4350 2    50   Input ~ 0
SWDIO
Text GLabel 4650 4450 2    50   Input ~ 0
SWCLK
Text GLabel 6150 2250 0    50   Input ~ 0
SWDIO
Text GLabel 6150 2400 0    50   Input ~ 0
SWCLK
Text GLabel 4650 3050 2    50   Input ~ 0
COL14
Text GLabel 4650 3150 2    50   Input ~ 0
COL13
Text GLabel 4650 3250 2    50   Input ~ 0
COL12
Text GLabel 4650 3350 2    50   Input ~ 0
COL11
Text GLabel 4650 3450 2    50   Input ~ 0
COL10
Text GLabel 4650 3550 2    50   Input ~ 0
COL9
Text GLabel 4650 3650 2    50   Input ~ 0
COL8
Text GLabel 4650 3750 2    50   Input ~ 0
COL7
Text GLabel 3350 3050 0    50   Input ~ 0
COL6
Text GLabel 3350 3150 0    50   Input ~ 0
COL5
Text GLabel 3350 3250 0    50   Input ~ 0
COL4
Text GLabel 3350 4050 0    50   Input ~ 0
COL3
Text GLabel 3350 4150 0    50   Input ~ 0
COL2
Text GLabel 3350 4250 0    50   Input ~ 0
ROW2
Text GLabel 3350 4350 0    50   Input ~ 0
COL0
Text GLabel 3350 4450 0    50   Input ~ 0
ROW3
Text GLabel 3350 4550 0    50   Input ~ 0
ROW4
Text GLabel 3350 3950 0    50   Input ~ 0
ROW1
Text GLabel 3350 3850 0    50   Input ~ 0
COL1
Text GLabel 3350 3750 0    50   Input ~ 0
ROW0
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5FA61D9C
P 6350 2100
F 0 "J5" H 6378 2126 50  0000 L CNN
F 1 "3.3v" H 6378 2035 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6350 2100 50  0001 C CNN
F 3 "~" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 5FA63764
P 6150 2100
F 0 "#PWR0124" H 6150 1950 50  0001 C CNN
F 1 "+3.3V" H 6165 2273 50  0000 C CNN
F 2 "" H 6150 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA98B91
P 10250 2000
F 0 "#PWR01" H 10250 1750 50  0001 C CNN
F 1 "GND" H 10255 1827 50  0000 C CNN
F 2 "" H 10250 2000 50  0001 C CNN
F 3 "" H 10250 2000 50  0001 C CNN
	1    10250 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60044A21
P 5700 3950
F 0 "R2" H 5759 3996 50  0000 L CNN
F 1 "1.5k" H 5759 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5700 3950 50  0001 C CNN
F 3 "~" H 5700 3950 50  0001 C CNN
F 4 "C22843" H 5700 3950 50  0001 C CNN "JLC"
	1    5700 3950
	1    0    0    -1  
$EndComp
Text GLabel 5600 4100 0    50   Input ~ 0
D+
$Comp
L power:+3.3V #PWR02
U 1 1 60045CAD
P 5700 3800
F 0 "#PWR02" H 5700 3650 50  0001 C CNN
F 1 "+3.3V" H 5715 3973 50  0000 C CNN
F 2 "" H 5700 3800 50  0001 C CNN
F 3 "" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4100 5700 4100
Wire Wire Line
	5700 4100 5700 4050
Wire Wire Line
	5700 3850 5700 3800
$EndSCHEMATC