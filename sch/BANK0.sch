EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 19
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1900 3650 2150 3650
Wire Wire Line
	1900 3750 2150 3750
Wire Wire Line
	1900 1950 2550 1950
Wire Wire Line
	1900 2050 2650 2050
Wire Wire Line
	1900 2150 2750 2150
Wire Wire Line
	1900 2250 2850 2250
Wire Wire Line
	1900 2450 2150 2450
Wire Wire Line
	1900 2550 2150 2550
Wire Wire Line
	1900 2650 2150 2650
Text GLabel 4000 2950 2    50   Output ~ 0
FPGA_DONE
Wire Wire Line
	2150 2450 2150 2550
Connection ~ 2150 2550
Wire Wire Line
	2150 2550 2150 2650
$Comp
L power:+3V3 #PWR045
U 1 1 5BC65EF4
P 2350 2550
F 0 "#PWR045" H 2350 2400 50  0001 C CNN
F 1 "+3V3" H 2365 2723 50  0000 C CNN
F 2 "" H 2350 2550 50  0001 C CNN
F 3 "" H 2350 2550 50  0001 C CNN
	1    2350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2650 2350 2650
Wire Wire Line
	2350 2650 2350 2550
Connection ~ 2150 2650
$Comp
L power:+3V3 #PWR046
U 1 1 5BCAA1AE
P 2550 1100
F 0 "#PWR046" H 2550 950 50  0001 C CNN
F 1 "+3V3" H 2565 1273 50  0000 C CNN
F 2 "" H 2550 1100 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    2550 1100
	1    0    0    -1  
$EndComp
Text Notes 4850 3450 0    50   ~ 0
DXN_0, DXP_0:\nUG865 P17 Table 1-5:\nrecommend use XADC external inputs.
Text GLabel 2150 3750 2    50   Input ~ 0
XADC0_N
Text GLabel 2150 3650 2    50   Input ~ 0
XADC0_P
$Comp
L microzed:XC7Z020-1CLG484C IC1
U 1 1 5C46CEA5
P 900 1850
F 0 "IC1" H 1408 2015 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 1408 1924 50  0000 C CNN
F 2 "microzed:BGA-484_19.0x19.0mm_Layout22x22_P0.8mm" H 3550 1950 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 3550 1850 50  0001 L CNN
F 4 "2.54" H 3550 1650 50  0001 L CNN "Height"
F 5 "XILINX" H 3550 1550 50  0001 L CNN "Manufacturer"
F 6 "XC7Z020-1CLG484C" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    900  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3050 3800 3050
Wire Wire Line
	3800 3050 3800 3750
Wire Wire Line
	1900 3150 3700 3150
Wire Wire Line
	3700 3150 3700 3850
Wire Wire Line
	1900 3950 4000 3950
Wire Wire Line
	3700 3850 4000 3850
Wire Wire Line
	3800 3750 4000 3750
Text Notes 2700 2950 0    50   ~ 0
1: config done
Text Notes 2700 3150 0    50   ~ 0
pull-up, ≤4.7kΩ
Text Notes 2700 3050 0    50   ~ 0
pull-up, ≤4.7kΩ
Text Notes 1900 4200 0    50   ~ 0
1: 2.5V or 3.3V\n0: 1.8V or 1.5V\ncontrol BANK14 / BANK15 during configuration
Text Notes 3650 950  0    50   ~ 0
BANK0\n3.3V\nUG470
Text Notes 1950 1950 0    50   ~ 0
pull-up, 10kΩ
Text Notes 1950 2050 0    50   ~ 0
pull-up, 10kΩ
Text Notes 2600 3850 0    50   ~ 0
UG480 (BANK35)\nconnect to GND\nif not used.
Wire Wire Line
	1900 3450 1900 3350
Wire Wire Line
	1900 3350 2250 3350
Connection ~ 1900 3350
$Comp
L power:GND #PWR044
U 1 1 5CF50B8A
P 2250 3350
F 0 "#PWR044" H 2250 3100 50  0001 C CNN
F 1 "GND" H 2400 3300 50  0000 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 5C84E96A
P 4650 1500
F 0 "Q1" H 4841 1546 50  0000 L CNN
F 1 "MMBT3904" H 4841 1455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4850 1425 50  0001 L CIN
F 3 "" H 4650 1500 50  0001 L CNN
F 4 "Diodes" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "MMBT3904-7-F" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    4650 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5C84E970
P 4750 2600
F 0 "#PWR049" H 4750 2350 50  0001 C CNN
F 1 "GND" H 4755 2427 50  0000 C CNN
F 2 "" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1300 4750 1200
$Comp
L power:+3V3 #PWR048
U 1 1 5C84E977
P 4750 1200
F 0 "#PWR048" H 4750 1050 50  0001 C CNN
F 1 "+3V3" H 4765 1373 50  0000 C CNN
F 2 "" H 4750 1200 50  0001 C CNN
F 3 "" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1700 4750 1800
Wire Wire Line
	3750 1500 4450 1500
Text Notes 4950 1150 0    50   ~ 0
LED driver circuit:\nhttps://electronics.stackexchange.com/questions/60865/how-to-drive-a-20ma-led-from-a-4ma-max-gpio-pin
$Comp
L Device:LED LED2
U 1 1 5C84E982
P 4750 2350
F 0 "LED2" V 4789 2232 50  0000 R CNN
F 1 "Blue" V 4698 2232 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4750 2350 50  0001 C CNN
F 3 "~" H 4750 2350 50  0001 C CNN
F 4 "Lite-On" H -1050 150 50  0001 C CNN "Manufacturer"
F 5 "LTST-C191TBKT" H -1050 150 50  0001 C CNN "ManufacturerPartNumber"
	1    4750 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 5C84E98A
P 4750 1950
F 0 "R23" H 4820 1996 50  0000 L CNN
F 1 "40.2" H 4820 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4680 1950 50  0001 C CNN
F 3 "~" H 4750 1950 50  0001 C CNN
F 4 "Yageo" H -1050 150 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H -1050 150 50  0001 C CNN "ManufacturerPartNumber"
	1    4750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2200 4750 2100
Wire Wire Line
	4750 2600 4750 2500
Text Notes 5100 2050 0    50   ~ 0
Vr: 3.3 - 0.7 - 2 = 0.6V\nIr: 0.6 / 40.2 = 0.015A < 20mA
Wire Wire Line
	1900 2950 3750 2950
Wire Wire Line
	3750 1500 3750 2950
Connection ~ 3750 2950
Wire Wire Line
	3750 2950 4000 2950
Wire Wire Line
	2550 1100 2550 1250
$Comp
L power:+3V3 #PWR047
U 1 1 5C87F417
P 4600 3650
F 0 "#PWR047" H 4600 3500 50  0001 C CNN
F 1 "+3V3" H 4615 3823 50  0000 C CNN
F 2 "" H 4600 3650 50  0001 C CNN
F 3 "" H 4600 3650 50  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RP2
U 1 1 5C87F41F
P 4200 3850
F 0 "RP2" V 3783 3850 50  0000 C CNN
F 1 "4.7k" V 3874 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 4475 3850 50  0001 C CNN
F 3 "~" H 4200 3850 50  0001 C CNN
F 4 "Yageo" H 4200 3850 50  0001 C CNN "Manufacturer"
F 5 "YC124-JR-074K7L" H 4200 3850 50  0001 C CNN "ManufacturerPartNumber"
	1    4200 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3950 4400 3850
Connection ~ 4400 3750
Wire Wire Line
	4400 3750 4400 3650
Connection ~ 4400 3850
Wire Wire Line
	4400 3850 4400 3750
Wire Wire Line
	4600 3650 4400 3650
Connection ~ 4400 3650
NoConn ~ 4000 3650
Text GLabel 3250 1950 2    50   Input ~ 0
JTAG_TMS
Text GLabel 3250 2050 2    50   Input ~ 0
JTAG_TCK
Text GLabel 3250 2150 2    50   Input ~ 0
JTAG_TDI
Text GLabel 3250 2250 2    50   Output ~ 0
JTAG_TDO
$Comp
L Device:R_Pack04 RP1
U 1 1 5C83EA0B
P 2650 1450
F 0 "RP1" H 2300 1450 50  0000 C CNN
F 1 "10k" H 2300 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 2925 1450 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
F 4 "Yageo" H 2650 1450 50  0001 C CNN "Manufacturer"
F 5 "YC124-JR-0710KL" H 2650 1450 50  0001 C CNN "ManufacturerPartNumber"
	1    2650 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1250 2750 1250
Connection ~ 2550 1250
Connection ~ 2650 1250
Wire Wire Line
	2650 1250 2550 1250
Connection ~ 2750 1250
Wire Wire Line
	2750 1250 2650 1250
Wire Wire Line
	2550 1650 2550 1950
Connection ~ 2550 1950
Wire Wire Line
	2550 1950 3250 1950
Wire Wire Line
	2650 1650 2650 2050
Connection ~ 2650 2050
Wire Wire Line
	2650 2050 3250 2050
Wire Wire Line
	2750 1650 2750 2150
Connection ~ 2750 2150
Wire Wire Line
	2750 2150 3250 2150
Wire Wire Line
	2850 1650 2850 2250
Connection ~ 2850 2250
Wire Wire Line
	2850 2250 3250 2250
$EndSCHEMATC
