EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 17
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
	1900 1950 2650 1950
Wire Wire Line
	1900 2050 2650 2050
Wire Wire Line
	1900 2150 2650 2150
Wire Wire Line
	1900 2250 2650 2250
Wire Wire Line
	1900 2450 2150 2450
Wire Wire Line
	1900 2550 2150 2550
Wire Wire Line
	1900 2650 2150 2650
Text GLabel 4000 2950 2    50   Output ~ 0
FPGA_DONE
$Comp
L Device:R_Network04 RP?
U 1 1 5BC5CA2F
P 4200 3850
F 0 "RP?" V 4100 4000 50  0000 L CNN
F 1 "4.7k" V 4200 4000 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 4475 3850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4200 3850 50  0001 C CNN
	1    4200 3850
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BC5CAC3
P 4400 3650
F 0 "#PWR?" H 4400 3500 50  0001 C CNN
F 1 "+3V3" H 4415 3823 50  0000 C CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "" H 4400 3650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2450 2150 2550
Connection ~ 2150 2550
Wire Wire Line
	2150 2550 2150 2650
$Comp
L power:+3V3 #PWR?
U 1 1 5BC65EF4
P 2350 2550
F 0 "#PWR?" H 2350 2400 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5BC77D8B
P 2350 2750
F 0 "#PWR?" H 2350 2500 50  0001 C CNN
F 1 "GND" H 2500 2700 50  0000 C CNN
F 2 "" H 2350 2750 50  0001 C CNN
F 3 "" H 2350 2750 50  0001 C CNN
	1    2350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2750 2350 2750
$Comp
L power:+3V3 #PWR?
U 1 1 5BC7DF3E
P 4250 1800
F 0 "#PWR?" H 4250 1650 50  0001 C CNN
F 1 "+3V3" H 4265 1973 50  0000 C CNN
F 2 "" H 4250 1800 50  0001 C CNN
F 3 "" H 4250 1800 50  0001 C CNN
	1    4250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BC7DF6E
P 4250 1950
F 0 "R?" H 4320 1996 50  0000 L CNN
F 1 "240" H 4320 1905 50  0000 L CNN
F 2 "" V 4180 1950 50  0001 C CNN
F 3 "~" H 4250 1950 50  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5BC7E29B
P 4250 2250
F 0 "D?" V 4242 2133 50  0000 R CNN
F 1 "LED" V 4197 2133 50  0001 R CNN
F 2 "" H 4250 2250 50  0001 C CNN
F 3 "~" H 4250 2250 50  0001 C CNN
	1    4250 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC95D13
P 4250 2500
F 0 "#PWR?" H 4250 2250 50  0001 C CNN
F 1 "GND" H 4255 2327 50  0000 C CNN
F 2 "" H 4250 2500 50  0001 C CNN
F 3 "" H 4250 2500 50  0001 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2500 4250 2400
$Comp
L Device:R_Network04 RP?
U 1 1 5BCAA1A7
P 2850 2150
F 0 "RP?" V 2750 2400 50  0000 C CNN
F 1 "CAT16-472J4LF" V 2850 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 3125 2150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2850 2150 50  0001 C CNN
	1    2850 2150
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5BCAA1AE
P 3050 1950
F 0 "#PWR?" H 3050 1800 50  0001 C CNN
F 1 "+3V3" H 3065 2123 50  0000 C CNN
F 2 "" H 3050 1950 50  0001 C CNN
F 3 "" H 3050 1950 50  0001 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
NoConn ~ 1900 3350
NoConn ~ 1900 3450
Text Notes 2000 3450 0    50   ~ 0
UG865 P17 Table 1-5:\nrecommend use XADC external inputs.
Wire Notes Line
	1950 3250 3500 3250
Wire Notes Line
	3500 3250 3500 3500
Wire Wire Line
	3750 2100 4250 2100
Text GLabel 2150 3750 2    50   Input ~ 0
XADC0_N
Text GLabel 2150 3650 2    50   Input ~ 0
XADC0_P
Wire Notes Line
	1950 3500 1950 3250
Wire Notes Line
	3500 3500 1950 3500
$Comp
L microzed:XC7Z020-1CLG484C IC1
U 1 1 5C46CEA5
P 900 1850
F 0 "IC1" H 1408 2015 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 1408 1924 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 3550 1950 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 3550 1850 50  0001 L CNN
F 4 "XC7Z020-1CLG484C, FPGA ZYNQ-7 1.2  3.3 V 484-pin CLG" H 3550 1750 50  0001 L CNN "Description"
F 5 "2.54" H 3550 1650 50  0001 L CNN "Height"
F 6 "XILINX" H 3550 1550 50  0001 L CNN "Manufacturer_Name"
F 7 "XC7Z020-1CLG484C" H 3550 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    900  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2950 3750 2950
Wire Wire Line
	3750 2100 3750 2950
Connection ~ 3750 2950
Wire Wire Line
	3750 2950 4000 2950
Connection ~ 4250 2100
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
Text Notes 2900 1350 0    50   ~ 0
BANK0\n3.3V\nUG470
Text Notes 1950 1950 0    50   ~ 0
pull-up, 10kΩ
Text Notes 1950 2050 0    50   ~ 0
pull-up, 10kΩ
Text Notes 2600 3850 0    50   ~ 0
UG480 (BANK35)\nconnect to GND\nif not used.
$EndSCHEMATC
