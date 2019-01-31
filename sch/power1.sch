EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L microzed:XC7Z020-1CLG484C IC1
U 9 1 5C55E10B
P 1700 1250
F 0 "IC1" H 2375 1415 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 2375 1324 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 4350 1350 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 4350 1250 50  0001 L CNN
F 4 "XC7Z020-1CLG484C, FPGA ZYNQ-7 1.2  3.3 V 484-pin CLG" H 4350 1150 50  0001 L CNN "Description"
F 5 "2.54" H 4350 1050 50  0001 L CNN "Height"
F 6 "XILINX" H 4350 950 50  0001 L CNN "Manufacturer_Name"
F 7 "XC7Z020-1CLG484C" H 4350 850 50  0001 L CNN "Manufacturer_Part_Number"
	9    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L microzed:XC7Z020-1CLG484C IC1
U 10 1 5C578691
P 7000 1300
F 0 "IC1" H 7600 1465 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 7600 1374 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 9650 1400 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 9650 1300 50  0001 L CNN
F 4 "XC7Z020-1CLG484C, FPGA ZYNQ-7 1.2  3.3 V 484-pin CLG" H 9650 1200 50  0001 L CNN "Description"
F 5 "2.54" H 9650 1100 50  0001 L CNN "Height"
F 6 "XILINX" H 9650 1000 50  0001 L CNN "Manufacturer_Name"
F 7 "XC7Z020-1CLG484C" H 9650 900 50  0001 L CNN "Manufacturer_Part_Number"
	10   7000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2100 3250 2000
Connection ~ 3250 1600
Wire Wire Line
	3250 1600 3250 1500
Connection ~ 3250 1700
Wire Wire Line
	3250 1700 3250 1600
Connection ~ 3250 1800
Wire Wire Line
	3250 1800 3250 1700
Connection ~ 3250 1900
Wire Wire Line
	3250 1900 3250 1800
Connection ~ 3250 2000
Wire Wire Line
	3250 2000 3250 1900
Text GLabel 3500 1500 2    50   Input ~ 0
VCCO_13
Wire Wire Line
	3500 1500 3250 1500
Connection ~ 3250 1500
Wire Wire Line
	3250 2800 3250 2700
Connection ~ 3250 2400
Wire Wire Line
	3250 2400 3250 2300
Connection ~ 3250 2500
Wire Wire Line
	3250 2500 3250 2400
Connection ~ 3250 2600
Wire Wire Line
	3250 2600 3250 2500
Connection ~ 3250 2700
Wire Wire Line
	3250 2700 3250 2600
Text GLabel 3500 2300 2    50   Input ~ 0
VCCO_33
Wire Wire Line
	3500 2300 3250 2300
Connection ~ 3250 2300
Wire Wire Line
	3250 3500 3250 3400
Connection ~ 3250 3100
Wire Wire Line
	3250 3100 3250 3000
Connection ~ 3250 3200
Wire Wire Line
	3250 3200 3250 3100
Connection ~ 3250 3300
Wire Wire Line
	3250 3300 3250 3200
Connection ~ 3250 3400
Wire Wire Line
	3250 3400 3250 3300
Wire Wire Line
	3500 3000 3250 3000
Connection ~ 3250 3000
Text GLabel 3500 3000 2    50   Input ~ 0
VCCO_34
Wire Wire Line
	3250 4300 3250 4200
Connection ~ 3250 3800
Wire Wire Line
	3250 3800 3250 3700
Connection ~ 3250 3900
Wire Wire Line
	3250 3900 3250 3800
Connection ~ 3250 4000
Wire Wire Line
	3250 4000 3250 3900
Connection ~ 3250 4100
Wire Wire Line
	3250 4100 3250 4000
Connection ~ 3250 4200
Wire Wire Line
	3250 4200 3250 4100
Wire Wire Line
	3250 3700 3500 3700
Connection ~ 3250 3700
Text GLabel 3500 3700 2    50   Input ~ 0
VCCO_35
Wire Wire Line
	3250 5200 3250 5100
Connection ~ 3250 4600
Wire Wire Line
	3250 4600 3250 4500
Connection ~ 3250 4700
Wire Wire Line
	3250 4700 3250 4600
Connection ~ 3250 4800
Wire Wire Line
	3250 4800 3250 4700
Connection ~ 3250 4900
Wire Wire Line
	3250 4900 3250 4800
Connection ~ 3250 5000
Wire Wire Line
	3250 5000 3250 4900
Connection ~ 3250 5100
Wire Wire Line
	3250 5100 3250 5000
Wire Wire Line
	3250 4500 3500 4500
Connection ~ 3250 4500
Text GLabel 3500 4500 2    50   Input ~ 0
VCCINT
Wire Wire Line
	3250 5700 3250 5600
Connection ~ 3250 5500
Wire Wire Line
	3250 5500 3250 5400
Connection ~ 3250 5600
Wire Wire Line
	3250 5600 3250 5500
Wire Wire Line
	3250 5400 3500 5400
Connection ~ 3250 5400
Text GLabel 3500 5400 2    50   Input ~ 0
VCCAUX
Wire Wire Line
	3250 5900 3500 5900
Text GLabel 3500 5900 2    50   Input ~ 0
VCCO_0
Wire Wire Line
	1500 2300 1500 2200
Connection ~ 1500 1600
Wire Wire Line
	1500 1600 1500 1500
Connection ~ 1500 1700
Wire Wire Line
	1500 1700 1500 1600
Connection ~ 1500 1800
Wire Wire Line
	1500 1800 1500 1700
Connection ~ 1500 1900
Wire Wire Line
	1500 1900 1500 1800
Connection ~ 1500 2000
Wire Wire Line
	1500 2000 1500 1900
Connection ~ 1500 2100
Wire Wire Line
	1500 2100 1500 2000
Connection ~ 1500 2200
Wire Wire Line
	1500 2200 1500 2100
Text GLabel 1250 1500 0    50   Input ~ 0
VCCO_DDR
Wire Wire Line
	1500 1500 1250 1500
Connection ~ 1500 1500
Text GLabel 1250 2500 0    50   Input ~ 0
VCCBRAM
Wire Wire Line
	1500 2600 1500 2500
Wire Wire Line
	1250 2500 1500 2500
Connection ~ 1500 2500
Wire Wire Line
	1500 2900 1500 2800
Wire Wire Line
	1500 2800 1250 2800
Connection ~ 1500 2800
Text GLabel 1250 2800 0    50   Input ~ 0
VCCMIO0
Wire Wire Line
	1500 3400 1500 3300
Connection ~ 1500 3200
Wire Wire Line
	1500 3200 1500 3100
Connection ~ 1500 3300
Wire Wire Line
	1500 3300 1500 3200
Text GLabel 1250 3100 0    50   Input ~ 0
VCCMIO1
Wire Wire Line
	1250 3100 1500 3100
Connection ~ 1500 3100
Wire Wire Line
	1500 4100 1500 4000
Connection ~ 1500 3700
Wire Wire Line
	1500 3700 1500 3600
Connection ~ 1500 3800
Wire Wire Line
	1500 3800 1500 3700
Connection ~ 1500 3900
Wire Wire Line
	1500 3900 1500 3800
Connection ~ 1500 4000
Wire Wire Line
	1500 4000 1500 3900
Wire Wire Line
	1500 3600 1250 3600
Connection ~ 1500 3600
Text GLabel 1250 3600 0    50   Input ~ 0
VCCPINT
Wire Wire Line
	1500 4600 1500 4500
Wire Wire Line
	1500 4300 1250 4300
Connection ~ 1500 4300
Connection ~ 1500 4400
Wire Wire Line
	1500 4400 1500 4300
Connection ~ 1500 4500
Wire Wire Line
	1500 4500 1500 4400
Text GLabel 1250 4300 0    50   Input ~ 0
VCCPAUX
Text GLabel 1250 4800 0    50   Input ~ 0
VCCPLL
Wire Wire Line
	1500 4800 1250 4800
Wire Wire Line
	8200 1500 8200 1600
Connection ~ 8200 1600
Wire Wire Line
	8200 1600 8200 1700
Connection ~ 8200 1700
Wire Wire Line
	8200 1700 8200 1800
Connection ~ 8200 1800
Wire Wire Line
	8200 1800 8200 1900
Connection ~ 8200 1900
Wire Wire Line
	8200 1900 8200 2000
Connection ~ 8200 2000
Wire Wire Line
	8200 2000 8200 2100
Connection ~ 8200 2100
Wire Wire Line
	8200 2100 8200 2200
Connection ~ 8200 2200
Wire Wire Line
	8200 2200 8200 2300
Connection ~ 8200 2300
Wire Wire Line
	8200 2300 8200 2400
Connection ~ 8200 2400
Wire Wire Line
	8200 2400 8200 2500
Connection ~ 8200 2500
Wire Wire Line
	8200 2500 8200 2600
Connection ~ 8200 2600
Wire Wire Line
	8200 2600 8200 2700
Connection ~ 8200 2700
Wire Wire Line
	8200 2700 8200 2800
Connection ~ 8200 2800
Wire Wire Line
	8200 2800 8200 2900
Connection ~ 8200 2900
Wire Wire Line
	8200 2900 8200 3000
Connection ~ 8200 3000
Wire Wire Line
	8200 3000 8200 3100
Connection ~ 8200 3100
Wire Wire Line
	8200 3100 8200 3200
Connection ~ 8200 3200
Wire Wire Line
	8200 3200 8200 3300
Connection ~ 8200 3300
Wire Wire Line
	8200 3300 8200 3400
Connection ~ 8200 3400
Wire Wire Line
	8200 3400 8200 3500
Connection ~ 8200 3500
Wire Wire Line
	8200 3500 8200 3600
Connection ~ 8200 3600
Wire Wire Line
	8200 3600 8200 3700
Connection ~ 8200 3700
Wire Wire Line
	8200 3700 8200 3800
Connection ~ 8200 3800
Wire Wire Line
	8200 3800 8200 3900
Connection ~ 8200 3900
Wire Wire Line
	8200 3900 8200 4000
Connection ~ 8200 4000
Wire Wire Line
	8200 4000 8200 4100
Connection ~ 8200 4100
Wire Wire Line
	8200 4100 8200 4200
Connection ~ 8200 4200
Wire Wire Line
	8200 4200 8200 4300
Connection ~ 8200 4300
Wire Wire Line
	8200 4300 8200 4400
Connection ~ 8200 4400
Wire Wire Line
	8200 4400 8200 4500
Wire Wire Line
	7000 1500 7000 1600
Connection ~ 7000 1600
Wire Wire Line
	7000 1600 7000 1700
Connection ~ 7000 1700
Wire Wire Line
	7000 1700 7000 1800
Connection ~ 7000 1800
Wire Wire Line
	7000 1800 7000 1900
Connection ~ 7000 1900
Wire Wire Line
	7000 1900 7000 2000
Connection ~ 7000 2000
Wire Wire Line
	7000 2000 7000 2100
Connection ~ 7000 2100
Wire Wire Line
	7000 2100 7000 2200
Connection ~ 7000 2200
Wire Wire Line
	7000 2200 7000 2300
Connection ~ 7000 2300
Wire Wire Line
	7000 2300 7000 2400
Connection ~ 7000 2400
Wire Wire Line
	7000 2400 7000 2500
Connection ~ 7000 2500
Wire Wire Line
	7000 2500 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	7000 2600 7000 2700
Connection ~ 7000 2700
Wire Wire Line
	7000 2700 7000 2800
Connection ~ 7000 2800
Wire Wire Line
	7000 2800 7000 2900
Connection ~ 7000 2900
Wire Wire Line
	7000 2900 7000 3000
Connection ~ 7000 3000
Wire Wire Line
	7000 3000 7000 3100
Connection ~ 7000 3100
Wire Wire Line
	7000 3100 7000 3200
Connection ~ 7000 3200
Wire Wire Line
	7000 3200 7000 3300
Connection ~ 7000 3300
Wire Wire Line
	7000 3300 7000 3400
Connection ~ 7000 3400
Wire Wire Line
	7000 3400 7000 3500
Connection ~ 7000 3500
Wire Wire Line
	7000 3500 7000 3600
Connection ~ 7000 3600
Wire Wire Line
	7000 3600 7000 3700
Connection ~ 7000 3700
Wire Wire Line
	7000 3700 7000 3800
Connection ~ 7000 3800
Wire Wire Line
	7000 3800 7000 3900
Connection ~ 7000 3900
Wire Wire Line
	7000 3900 7000 4000
Connection ~ 7000 4000
Wire Wire Line
	7000 4000 7000 4100
Connection ~ 7000 4100
Wire Wire Line
	7000 4100 7000 4200
Connection ~ 7000 4200
Wire Wire Line
	7000 4200 7000 4300
Connection ~ 7000 4300
Wire Wire Line
	7000 4300 7000 4400
Connection ~ 7000 4400
Wire Wire Line
	7000 4400 7000 4500
Connection ~ 7000 4500
Wire Wire Line
	7000 4500 7000 4600
$Comp
L power:GND #PWR?
U 1 1 5D1C219A
P 6850 4600
F 0 "#PWR?" H 6850 4350 50  0001 C CNN
F 1 "GND" H 6855 4427 50  0000 C CNN
F 2 "" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0001 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4600 6850 4600
Connection ~ 7000 4600
$Comp
L power:GND #PWR?
U 1 1 5D1CE0DD
P 8500 3800
F 0 "#PWR?" H 8500 3550 50  0001 C CNN
F 1 "GND" H 8505 3627 50  0000 C CNN
F 2 "" H 8500 3800 50  0001 C CNN
F 3 "" H 8500 3800 50  0001 C CNN
	1    8500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3800 8500 3800
Text GLabel 1250 5000 0    50   Input ~ 0
VREFN
Wire Wire Line
	1250 5000 1500 5000
Text GLabel 1250 5200 0    50   Input ~ 0
VREFP
Wire Wire Line
	1250 5200 1500 5200
Text GLabel 3500 6100 2    50   Input ~ 0
VCCADC
Wire Wire Line
	3500 6100 3250 6100
Text GLabel 8400 4600 2    50   Input ~ 0
GNDADC
Wire Wire Line
	8400 4600 8200 4600
Text GLabel 3500 6300 2    50   Input ~ 0
VCCBATT
Wire Wire Line
	3250 6300 3500 6300
Text Notes 4400 1800 0    50   ~ 0
DS187 P8 power-on sequence:\nPS: PINT -> PAUX/PLL -> MIO0/MIO1/DDR\nPL: INT -> BRAM -> AUX -> O
$EndSCHEMATC
