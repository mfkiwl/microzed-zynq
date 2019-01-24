EESchema Schematic File Version 4
EELAYER 28 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 17
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
L Device:L L?
U 1 1 5D086D48
P 8500 5500
F 0 "L?" V 8600 5500 50  0000 C CNN
F 1 "220Ω@100MHz" V 8400 5500 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 8500 5500 50  0001 C CNN
F 3 "~" H 8500 5500 50  0001 C CNN
	1    8500 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D4E
P 8000 5650
F 0 "C?" H 8115 5696 50  0000 L CNN
F 1 "10µF" H 8115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8038 5500 50  0001 C CNN
F 3 "~" H 8000 5650 50  0001 C CNN
	1    8000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D54
P 7500 5650
F 0 "C?" H 7600 5700 50  0000 L CNN
F 1 "0.47µF" H 7600 5600 50  0000 L CNN
F 2 "" H 7538 5500 50  0001 C CNN
F 3 "~" H 7500 5650 50  0001 C CNN
	1    7500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D5A
P 5000 1150
F 0 "C?" H 5115 1196 50  0000 L CNN
F 1 "330µF" H 5115 1105 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 5038 1000 50  0001 C CNN
F 3 "~" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D60
P 5500 1150
F 0 "C?" H 5615 1196 50  0000 L CNN
F 1 "4.7µF" H 5615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5538 1000 50  0001 C CNN
F 3 "~" H 5500 1150 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D66
P 6000 1150
F 0 "C?" H 6115 1196 50  0000 L CNN
F 1 "4.7µF" H 6115 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 1000 50  0001 C CNN
F 3 "~" H 6000 1150 50  0001 C CNN
	1    6000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D6C
P 4500 1650
F 0 "C?" H 4615 1696 50  0000 L CNN
F 1 "0.47µF" H 4615 1605 50  0000 L CNN
F 2 "" H 4538 1500 50  0001 C CNN
F 3 "~" H 4500 1650 50  0001 C CNN
	1    4500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D72
P 5000 1650
F 0 "C?" H 5115 1696 50  0000 L CNN
F 1 "0.47µF" H 5115 1605 50  0000 L CNN
F 2 "" H 5038 1500 50  0001 C CNN
F 3 "~" H 5000 1650 50  0001 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D78
P 5500 1650
F 0 "C?" H 5615 1696 50  0000 L CNN
F 1 "0.47µF" H 5615 1605 50  0000 L CNN
F 2 "" H 5538 1500 50  0001 C CNN
F 3 "~" H 5500 1650 50  0001 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086D7E
P 6000 1650
F 0 "C?" H 6115 1696 50  0000 L CNN
F 1 "0.47µF" H 6115 1605 50  0000 L CNN
F 2 "" H 6038 1500 50  0001 C CNN
F 3 "~" H 6000 1650 50  0001 C CNN
	1    6000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V0 #PWR?
U 1 1 5D086D84
P 4500 1000
F 0 "#PWR?" H 4500 850 50  0001 C CNN
F 1 "+1V0" H 4515 1173 50  0000 C CNN
F 2 "" H 4500 1000 50  0001 C CNN
F 3 "" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1000 5000 1000
Connection ~ 5000 1000
Wire Wire Line
	5000 1000 5500 1000
Connection ~ 5500 1000
Wire Wire Line
	5500 1000 6000 1000
Wire Wire Line
	4500 1000 4500 1500
Wire Wire Line
	4500 1500 5000 1500
Connection ~ 4500 1000
Connection ~ 4500 1500
Connection ~ 5000 1500
Wire Wire Line
	5000 1500 5500 1500
Connection ~ 5500 1500
Wire Wire Line
	5500 1500 6000 1500
$Comp
L power:GND #PWR?
U 1 1 5D086D97
P 6500 1800
F 0 "#PWR?" H 6500 1550 50  0001 C CNN
F 1 "GND" H 6505 1627 50  0000 C CNN
F 2 "" H 6500 1800 50  0001 C CNN
F 3 "" H 6500 1800 50  0001 C CNN
	1    6500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1800 5000 1800
Connection ~ 5000 1800
Wire Wire Line
	5000 1800 5500 1800
Connection ~ 5500 1800
Wire Wire Line
	5500 1800 6000 1800
Connection ~ 6000 1800
Wire Wire Line
	6000 1800 6500 1800
Wire Wire Line
	5000 1300 5500 1300
Wire Wire Line
	6500 1300 6500 1800
Connection ~ 5500 1300
Wire Wire Line
	5500 1300 6000 1300
Connection ~ 6000 1300
Wire Wire Line
	6000 1300 6500 1300
Connection ~ 6500 1800
$Comp
L Device:C C?
U 1 1 5D086DAB
P 4500 2650
F 0 "C?" H 4615 2696 50  0000 L CNN
F 1 "100µF" H 4615 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4538 2500 50  0001 C CNN
F 3 "~" H 4500 2650 50  0001 C CNN
	1    4500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086DB1
P 5000 2650
F 0 "C?" H 5115 2696 50  0000 L CNN
F 1 "4.7µF" H 5115 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5038 2500 50  0001 C CNN
F 3 "~" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086DB7
P 5500 2650
F 0 "C?" H 5615 2696 50  0000 L CNN
F 1 "0.47µF" H 5615 2605 50  0000 L CNN
F 2 "" H 5538 2500 50  0001 C CNN
F 3 "~" H 5500 2650 50  0001 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V0 #PWR?
U 1 1 5D086DBD
P 4500 2500
F 0 "#PWR?" H 4500 2350 50  0001 C CNN
F 1 "+1V0" H 4515 2673 50  0000 C CNN
F 2 "" H 4500 2500 50  0001 C CNN
F 3 "" H 4500 2500 50  0001 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2500 5000 2500
$Comp
L power:GND #PWR?
U 1 1 5D086DC4
P 5500 2800
F 0 "#PWR?" H 5500 2550 50  0001 C CNN
F 1 "GND" H 5505 2627 50  0000 C CNN
F 2 "" H 5500 2800 50  0001 C CNN
F 3 "" H 5500 2800 50  0001 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2800 5000 2800
Connection ~ 5000 2800
Wire Wire Line
	5000 2800 5500 2800
$Comp
L Device:C C?
U 1 1 5D086DCD
P 4500 3650
F 0 "C?" H 4615 3696 50  0000 L CNN
F 1 "47µF" H 4615 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4538 3500 50  0001 C CNN
F 3 "~" H 4500 3650 50  0001 C CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086DD3
P 5000 3650
F 0 "C?" H 5115 3696 50  0000 L CNN
F 1 "4.7µF" H 5115 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5038 3500 50  0001 C CNN
F 3 "~" H 5000 3650 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086DD9
P 5500 3650
F 0 "C?" H 5615 3696 50  0000 L CNN
F 1 "0.47µF" H 5615 3605 50  0000 L CNN
F 2 "" H 5538 3500 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086DDF
P 6000 3650
F 0 "C?" H 6115 3696 50  0000 L CNN
F 1 "0.47µF" H 6115 3605 50  0000 L CNN
F 2 "" H 6038 3500 50  0001 C CNN
F 3 "~" H 6000 3650 50  0001 C CNN
	1    6000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 5D086DE5
P 4500 3500
F 0 "#PWR?" H 4500 3350 50  0001 C CNN
F 1 "+1V8" H 4515 3673 50  0000 C CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D086DEB
P 6000 3800
F 0 "#PWR?" H 6000 3550 50  0001 C CNN
F 1 "GND" H 6005 3627 50  0000 C CNN
F 2 "" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3500 5000 3500
Connection ~ 5000 3500
Wire Wire Line
	5000 3500 5500 3500
Connection ~ 5500 3500
Wire Wire Line
	5500 3500 6000 3500
Wire Wire Line
	4500 3800 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5500 3800
Connection ~ 5500 3800
Wire Wire Line
	5500 3800 6000 3800
Connection ~ 6000 3800
$Comp
L Device:C C?
U 1 1 5D086DFC
P 7500 1150
F 0 "C?" H 7615 1196 50  0000 L CNN
F 1 "100µF" H 7615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7538 1000 50  0001 C CNN
F 3 "~" H 7500 1150 50  0001 C CNN
	1    7500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E02
P 8050 1150
F 0 "C?" H 8165 1196 50  0000 L CNN
F 1 "4.7µF" H 8165 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8088 1000 50  0001 C CNN
F 3 "~" H 8050 1150 50  0001 C CNN
	1    8050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E08
P 8550 1150
F 0 "C?" H 8665 1196 50  0000 L CNN
F 1 "0.47µF" H 8665 1105 50  0000 L CNN
F 2 "" H 8588 1000 50  0001 C CNN
F 3 "~" H 8550 1150 50  0001 C CNN
	1    8550 1150
	1    0    0    -1  
$EndComp
Connection ~ 8050 1000
Wire Wire Line
	8050 1000 8550 1000
$Comp
L power:GND #PWR?
U 1 1 5D086E10
P 8550 1300
F 0 "#PWR?" H 8550 1050 50  0001 C CNN
F 1 "GND" H 8555 1127 50  0000 C CNN
F 2 "" H 8550 1300 50  0001 C CNN
F 3 "" H 8550 1300 50  0001 C CNN
	1    8550 1300
	1    0    0    -1  
$EndComp
Connection ~ 8050 1300
Wire Wire Line
	8050 1300 8550 1300
$Comp
L power:+1V8 #PWR?
U 1 1 5D086E18
P 7500 1000
F 0 "#PWR?" H 7500 850 50  0001 C CNN
F 1 "+1V8" H 7515 1173 50  0000 C CNN
F 2 "" H 7500 1000 50  0001 C CNN
F 3 "" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
Connection ~ 7500 1000
Connection ~ 8550 1300
$Comp
L Device:C C?
U 1 1 5D086E20
P 4500 5650
F 0 "C?" H 4615 5696 50  0000 L CNN
F 1 "100µF" H 4615 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4538 5500 50  0001 C CNN
F 3 "~" H 4500 5650 50  0001 C CNN
	1    4500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E26
P 5000 5650
F 0 "C?" H 5115 5696 50  0000 L CNN
F 1 "4.7µF" H 5115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5038 5500 50  0001 C CNN
F 3 "~" H 5000 5650 50  0001 C CNN
	1    5000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E2C
P 5500 5650
F 0 "C?" H 5615 5696 50  0000 L CNN
F 1 "0.47µF" H 5615 5605 50  0000 L CNN
F 2 "" H 5538 5500 50  0001 C CNN
F 3 "~" H 5500 5650 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E32
P 6000 5650
F 0 "C?" H 6115 5696 50  0000 L CNN
F 1 "0.47µF" H 6115 5605 50  0000 L CNN
F 2 "" H 6038 5500 50  0001 C CNN
F 3 "~" H 6000 5650 50  0001 C CNN
	1    6000 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V0 #PWR?
U 1 1 5D086E38
P 4500 5500
F 0 "#PWR?" H 4500 5350 50  0001 C CNN
F 1 "+1V0" H 4515 5673 50  0000 C CNN
F 2 "" H 4500 5500 50  0001 C CNN
F 3 "" H 4500 5500 50  0001 C CNN
	1    4500 5500
	1    0    0    -1  
$EndComp
Connection ~ 4500 5500
Wire Wire Line
	4500 5500 5000 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 5500 5500
Wire Wire Line
	4500 5800 5000 5800
Connection ~ 5000 5800
Wire Wire Line
	5000 5800 5500 5800
Connection ~ 5500 5800
Wire Wire Line
	5500 5800 6000 5800
Connection ~ 6000 5800
$Comp
L Device:C C?
U 1 1 5D086E48
P 6500 5650
F 0 "C?" H 6615 5696 50  0000 L CNN
F 1 "0.47µF" H 6615 5605 50  0000 L CNN
F 2 "" H 6538 5500 50  0001 C CNN
F 3 "~" H 6500 5650 50  0001 C CNN
	1    6500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5800 6000 5800
Wire Wire Line
	5500 5500 6000 5500
Connection ~ 5500 5500
Connection ~ 6000 5500
Wire Wire Line
	6000 5500 6500 5500
Wire Wire Line
	4500 3500 4300 3500
Connection ~ 4500 3500
Wire Wire Line
	4300 1000 4500 1000
Wire Wire Line
	7500 1000 7350 1000
Connection ~ 5500 2800
Wire Wire Line
	5000 2500 5500 2500
Connection ~ 5000 2500
Connection ~ 4500 2500
Wire Wire Line
	4500 2500 4300 2500
Text Notes 9750 1000 0    50   ~ 0
UG933 P14 Table 3-1
Wire Wire Line
	7500 1000 8050 1000
Wire Wire Line
	7500 1300 8050 1300
$Comp
L power:GND #PWR?
U 1 1 5D086E64
P 6500 5800
F 0 "#PWR?" H 6500 5550 50  0001 C CNN
F 1 "GND" H 6505 5627 50  0000 C CNN
F 2 "" H 6500 5800 50  0001 C CNN
F 3 "" H 6500 5800 50  0001 C CNN
	1    6500 5800
	1    0    0    -1  
$EndComp
Connection ~ 6500 5800
Wire Wire Line
	4300 5500 4500 5500
$Comp
L Device:C C?
U 1 1 5D086E6D
P 4500 4650
F 0 "C?" H 4615 4696 50  0000 L CNN
F 1 "47µF" H 4615 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4538 4500 50  0001 C CNN
F 3 "~" H 4500 4650 50  0001 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D086E73
P 4500 4800
F 0 "#PWR?" H 4500 4550 50  0001 C CNN
F 1 "GND" H 4505 4627 50  0000 C CNN
F 2 "" H 4500 4800 50  0001 C CNN
F 3 "" H 4500 4800 50  0001 C CNN
	1    4500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4500 4300 4500
$Comp
L Device:C C?
U 1 1 5D086E7B
P 8000 2150
F 0 "C?" H 8115 2196 50  0000 L CNN
F 1 "100µF" H 8115 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 8038 2000 50  0001 C CNN
F 3 "~" H 8000 2150 50  0001 C CNN
	1    8000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E81
P 8500 2150
F 0 "C?" H 8615 2196 50  0000 L CNN
F 1 "4.7µF" H 8615 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8538 2000 50  0001 C CNN
F 3 "~" H 8500 2150 50  0001 C CNN
	1    8500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E87
P 7500 2650
F 0 "C?" H 7615 2696 50  0000 L CNN
F 1 "0.47µF" H 7615 2605 50  0000 L CNN
F 2 "" H 7538 2500 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E8D
P 8000 2650
F 0 "C?" H 8115 2696 50  0000 L CNN
F 1 "0.47µF" H 8115 2605 50  0000 L CNN
F 2 "" H 8038 2500 50  0001 C CNN
F 3 "~" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E93
P 8500 2650
F 0 "C?" H 8615 2696 50  0000 L CNN
F 1 "0.47µF" H 8615 2605 50  0000 L CNN
F 2 "" H 8538 2500 50  0001 C CNN
F 3 "~" H 8500 2650 50  0001 C CNN
	1    8500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086E99
P 9000 2650
F 0 "C?" H 9115 2696 50  0000 L CNN
F 1 "0.47µF" H 9115 2605 50  0000 L CNN
F 2 "" H 9038 2500 50  0001 C CNN
F 3 "~" H 9000 2650 50  0001 C CNN
	1    9000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2000 8000 2000
Connection ~ 8000 2000
Wire Wire Line
	8000 2000 8500 2000
Wire Wire Line
	7500 2000 7500 2500
Wire Wire Line
	7500 2500 8000 2500
Connection ~ 7500 2000
Connection ~ 7500 2500
Connection ~ 8000 2500
Wire Wire Line
	8000 2500 8500 2500
Connection ~ 8500 2500
Wire Wire Line
	8500 2500 9000 2500
Wire Wire Line
	7500 2800 8000 2800
Connection ~ 8000 2800
Wire Wire Line
	8000 2800 8500 2800
Connection ~ 8500 2800
Wire Wire Line
	8500 2800 9000 2800
Connection ~ 9000 2800
Wire Wire Line
	9000 2800 9500 2800
Wire Wire Line
	8000 2300 8500 2300
Connection ~ 8500 2300
Wire Wire Line
	7350 2000 7500 2000
Wire Wire Line
	8500 2300 9500 2300
$Comp
L Device:C C?
U 1 1 5D086EB6
P 7500 3650
F 0 "C?" H 7615 3696 50  0000 L CNN
F 1 "100µF" H 7615 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7538 3500 50  0001 C CNN
F 3 "~" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086EBC
P 8000 3650
F 0 "C?" H 8115 3696 50  0000 L CNN
F 1 "4.7µF" H 8115 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8038 3500 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086EC2
P 8500 3650
F 0 "C?" H 8615 3696 50  0000 L CNN
F 1 "0.47µF" H 8615 3605 50  0000 L CNN
F 2 "" H 8538 3500 50  0001 C CNN
F 3 "~" H 8500 3650 50  0001 C CNN
	1    8500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3500 8000 3500
$Comp
L power:GND #PWR?
U 1 1 5D086EC9
P 8500 3800
F 0 "#PWR?" H 8500 3550 50  0001 C CNN
F 1 "GND" H 8505 3627 50  0000 C CNN
F 2 "" H 8500 3800 50  0001 C CNN
F 3 "" H 8500 3800 50  0001 C CNN
	1    8500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3800 8000 3800
Connection ~ 8000 3800
Wire Wire Line
	8000 3800 8500 3800
Connection ~ 8500 3800
Wire Wire Line
	8000 3500 8500 3500
Connection ~ 8000 3500
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 7350 3500
$Comp
L Device:C C?
U 1 1 5D086ED8
P 7500 4500
F 0 "C?" H 7615 4546 50  0000 L CNN
F 1 "100µF" H 7615 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7538 4350 50  0001 C CNN
F 3 "~" H 7500 4500 50  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086EDE
P 8000 4500
F 0 "C?" H 8115 4546 50  0000 L CNN
F 1 "4.7µF" H 8115 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8038 4350 50  0001 C CNN
F 3 "~" H 8000 4500 50  0001 C CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086EE4
P 8500 4500
F 0 "C?" H 8615 4546 50  0000 L CNN
F 1 "0.47µF" H 8615 4455 50  0000 L CNN
F 2 "" H 8538 4350 50  0001 C CNN
F 3 "~" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D086EEA
P 8500 4650
F 0 "#PWR?" H 8500 4400 50  0001 C CNN
F 1 "GND" H 8505 4477 50  0000 C CNN
F 2 "" H 8500 4650 50  0001 C CNN
F 3 "" H 8500 4650 50  0001 C CNN
	1    8500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4650 8000 4650
Connection ~ 8000 4650
Wire Wire Line
	8000 4650 8500 4650
Connection ~ 8500 4650
Wire Wire Line
	8000 4350 8500 4350
Connection ~ 8000 4350
$Comp
L power:+1V8 #PWR?
U 1 1 5D086EF7
P 7500 4350
F 0 "#PWR?" H 7500 4200 50  0001 C CNN
F 1 "+1V8" H 7515 4523 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4350 7500 4350
Connection ~ 7500 4350
Wire Wire Line
	7500 4350 8000 4350
$Comp
L power:+3V3 #PWR?
U 1 1 5D086F00
P 7500 3500
F 0 "#PWR?" H 7500 3350 50  0001 C CNN
F 1 "+3V3" H 7515 3673 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L microzed:VCCO_DDR3 #PWR?
U 1 1 5D086F06
P 7500 2000
F 0 "#PWR?" H 7500 1850 50  0001 C CNN
F 1 "VCCO_DDR3" H 7515 2173 50  0000 C CNN
F 2 "" H 7500 2000 50  0001 C CNN
F 3 "" H 7500 2000 50  0001 C CNN
	1    7500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F0C
P 2000 1150
F 0 "C?" H 2115 1196 50  0000 L CNN
F 1 "100µF" H 2115 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2038 1000 50  0001 C CNN
F 3 "~" H 2000 1150 50  0001 C CNN
	1    2000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F12
P 2500 1150
F 0 "C?" H 2615 1196 50  0000 L CNN
F 1 "4.7µF" H 2615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2538 1000 50  0001 C CNN
F 3 "~" H 2500 1150 50  0001 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F18
P 3000 1150
F 0 "C?" H 3115 1196 50  0000 L CNN
F 1 "4.7µF" H 3115 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3038 1000 50  0001 C CNN
F 3 "~" H 3000 1150 50  0001 C CNN
	1    3000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F1E
P 1500 1650
F 0 "C?" H 1615 1696 50  0000 L CNN
F 1 "0.47µF" H 1615 1605 50  0000 L CNN
F 2 "" H 1538 1500 50  0001 C CNN
F 3 "~" H 1500 1650 50  0001 C CNN
	1    1500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F24
P 2000 1650
F 0 "C?" H 2115 1696 50  0000 L CNN
F 1 "0.47µF" H 2115 1605 50  0000 L CNN
F 2 "" H 2038 1500 50  0001 C CNN
F 3 "~" H 2000 1650 50  0001 C CNN
	1    2000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F2A
P 2500 1650
F 0 "C?" H 2615 1696 50  0000 L CNN
F 1 "0.47µF" H 2615 1605 50  0000 L CNN
F 2 "" H 2538 1500 50  0001 C CNN
F 3 "~" H 2500 1650 50  0001 C CNN
	1    2500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F30
P 3000 1650
F 0 "C?" H 3115 1696 50  0000 L CNN
F 1 "0.47µF" H 3115 1605 50  0000 L CNN
F 2 "" H 3038 1500 50  0001 C CNN
F 3 "~" H 3000 1650 50  0001 C CNN
	1    3000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1000 2000 1000
Connection ~ 2000 1000
Wire Wire Line
	2000 1000 2500 1000
Connection ~ 2500 1000
Wire Wire Line
	2500 1000 3000 1000
Wire Wire Line
	1500 1000 1500 1500
Wire Wire Line
	1500 1500 2000 1500
Connection ~ 1500 1500
Connection ~ 2000 1500
Wire Wire Line
	2000 1500 2500 1500
Connection ~ 2500 1500
Wire Wire Line
	2500 1500 3000 1500
$Comp
L power:GND #PWR?
U 1 1 5D086F42
P 3500 1800
F 0 "#PWR?" H 3500 1550 50  0001 C CNN
F 1 "GND" H 3505 1627 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1800 2000 1800
Connection ~ 2000 1800
Wire Wire Line
	2000 1800 2500 1800
Connection ~ 2500 1800
Wire Wire Line
	2500 1800 3000 1800
Connection ~ 3000 1800
Wire Wire Line
	2000 1300 2500 1300
Connection ~ 2500 1300
Wire Wire Line
	2500 1300 3000 1300
Connection ~ 3000 1300
$Comp
L microzed:VCCO_13 #PWR?
U 1 1 5D086F52
P 1500 1000
F 0 "#PWR?" H 1500 850 50  0001 C CNN
F 1 "VCCO_13" H 1515 1173 50  0000 C CNN
F 2 "" H 1500 1000 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
Connection ~ 1500 1000
Wire Wire Line
	3500 1300 3500 1800
Connection ~ 3500 1800
$Comp
L Device:C C?
U 1 1 5D086F5B
P 2000 4150
F 0 "C?" H 2115 4196 50  0000 L CNN
F 1 "100µF" H 2115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2038 4000 50  0001 C CNN
F 3 "~" H 2000 4150 50  0001 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F61
P 2500 4150
F 0 "C?" H 2615 4196 50  0000 L CNN
F 1 "4.7µF" H 2615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2538 4000 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F67
P 3000 4150
F 0 "C?" H 3115 4196 50  0000 L CNN
F 1 "4.7µF" H 3115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3038 4000 50  0001 C CNN
F 3 "~" H 3000 4150 50  0001 C CNN
	1    3000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F6D
P 1500 4650
F 0 "C?" H 1615 4696 50  0000 L CNN
F 1 "0.47µF" H 1615 4605 50  0000 L CNN
F 2 "" H 1538 4500 50  0001 C CNN
F 3 "~" H 1500 4650 50  0001 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F73
P 2000 4650
F 0 "C?" H 2115 4696 50  0000 L CNN
F 1 "0.47µF" H 2115 4605 50  0000 L CNN
F 2 "" H 2038 4500 50  0001 C CNN
F 3 "~" H 2000 4650 50  0001 C CNN
	1    2000 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F79
P 2500 4650
F 0 "C?" H 2615 4696 50  0000 L CNN
F 1 "0.47µF" H 2615 4605 50  0000 L CNN
F 2 "" H 2538 4500 50  0001 C CNN
F 3 "~" H 2500 4650 50  0001 C CNN
	1    2500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086F7F
P 3000 4650
F 0 "C?" H 3115 4696 50  0000 L CNN
F 1 "0.47µF" H 3115 4605 50  0000 L CNN
F 2 "" H 3038 4500 50  0001 C CNN
F 3 "~" H 3000 4650 50  0001 C CNN
	1    3000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4000 2000 4000
Connection ~ 2000 4000
Wire Wire Line
	2000 4000 2500 4000
Connection ~ 2500 4000
Wire Wire Line
	2500 4000 3000 4000
Wire Wire Line
	1500 4000 1500 4500
Wire Wire Line
	1500 4500 2000 4500
Connection ~ 1500 4500
Connection ~ 2000 4500
Wire Wire Line
	2000 4500 2500 4500
Connection ~ 2500 4500
Wire Wire Line
	2500 4500 3000 4500
$Comp
L power:GND #PWR?
U 1 1 5D086F91
P 3500 4800
F 0 "#PWR?" H 3500 4550 50  0001 C CNN
F 1 "GND" H 3505 4627 50  0000 C CNN
F 2 "" H 3500 4800 50  0001 C CNN
F 3 "" H 3500 4800 50  0001 C CNN
	1    3500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4800 2000 4800
Connection ~ 2000 4800
Wire Wire Line
	2000 4800 2500 4800
Connection ~ 2500 4800
Wire Wire Line
	2500 4800 3000 4800
Connection ~ 3000 4800
Wire Wire Line
	2000 4300 2500 4300
Connection ~ 2500 4300
Wire Wire Line
	2500 4300 3000 4300
Connection ~ 3000 4300
Wire Wire Line
	3500 4300 3500 4800
Connection ~ 3500 4800
$Comp
L microzed:VCCO_34 #PWR?
U 1 1 5D086FA3
P 1500 4000
F 0 "#PWR?" H 1500 3850 50  0001 C CNN
F 1 "VCCO_34" H 1515 4173 50  0000 C CNN
F 2 "" H 1500 4000 50  0001 C CNN
F 3 "" H 1500 4000 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
Connection ~ 1500 4000
$Comp
L Device:C C?
U 1 1 5D086FAA
P 2000 5650
F 0 "C?" H 2115 5696 50  0000 L CNN
F 1 "100µF" H 2115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2038 5500 50  0001 C CNN
F 3 "~" H 2000 5650 50  0001 C CNN
	1    2000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FB0
P 2500 5650
F 0 "C?" H 2615 5696 50  0000 L CNN
F 1 "4.7µF" H 2615 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2538 5500 50  0001 C CNN
F 3 "~" H 2500 5650 50  0001 C CNN
	1    2500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FB6
P 3000 5650
F 0 "C?" H 3115 5696 50  0000 L CNN
F 1 "4.7µF" H 3115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3038 5500 50  0001 C CNN
F 3 "~" H 3000 5650 50  0001 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FBC
P 1500 6150
F 0 "C?" H 1615 6196 50  0000 L CNN
F 1 "0.47µF" H 1615 6105 50  0000 L CNN
F 2 "" H 1538 6000 50  0001 C CNN
F 3 "~" H 1500 6150 50  0001 C CNN
	1    1500 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FC2
P 2000 6150
F 0 "C?" H 2115 6196 50  0000 L CNN
F 1 "0.47µF" H 2115 6105 50  0000 L CNN
F 2 "" H 2038 6000 50  0001 C CNN
F 3 "~" H 2000 6150 50  0001 C CNN
	1    2000 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FC8
P 2500 6150
F 0 "C?" H 2615 6196 50  0000 L CNN
F 1 "0.47µF" H 2615 6105 50  0000 L CNN
F 2 "" H 2538 6000 50  0001 C CNN
F 3 "~" H 2500 6150 50  0001 C CNN
	1    2500 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D086FCE
P 3000 6150
F 0 "C?" H 3115 6196 50  0000 L CNN
F 1 "0.47µF" H 3115 6105 50  0000 L CNN
F 2 "" H 3038 6000 50  0001 C CNN
F 3 "~" H 3000 6150 50  0001 C CNN
	1    3000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5500 2000 5500
Connection ~ 2000 5500
Wire Wire Line
	2000 5500 2500 5500
Connection ~ 2500 5500
Wire Wire Line
	2500 5500 3000 5500
Wire Wire Line
	1500 5500 1500 6000
Wire Wire Line
	1500 6000 2000 6000
Connection ~ 1500 6000
Connection ~ 2000 6000
Wire Wire Line
	2000 6000 2500 6000
Connection ~ 2500 6000
Wire Wire Line
	2500 6000 3000 6000
$Comp
L power:GND #PWR?
U 1 1 5D086FE0
P 3500 6300
F 0 "#PWR?" H 3500 6050 50  0001 C CNN
F 1 "GND" H 3505 6127 50  0000 C CNN
F 2 "" H 3500 6300 50  0001 C CNN
F 3 "" H 3500 6300 50  0001 C CNN
	1    3500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6300 2000 6300
Connection ~ 2000 6300
Wire Wire Line
	2000 6300 2500 6300
Connection ~ 2500 6300
Wire Wire Line
	2500 6300 3000 6300
Connection ~ 3000 6300
Wire Wire Line
	2000 5800 2500 5800
Connection ~ 2500 5800
Wire Wire Line
	2500 5800 3000 5800
Connection ~ 3000 5800
Wire Wire Line
	3500 5800 3500 6300
Connection ~ 3500 6300
$Comp
L microzed:VCCO_35 #PWR?
U 1 1 5D086FF2
P 1500 5500
F 0 "#PWR?" H 1500 5350 50  0001 C CNN
F 1 "VCCO_35" H 1515 5673 50  0000 C CNN
F 2 "" H 1500 5500 50  0001 C CNN
F 3 "" H 1500 5500 50  0001 C CNN
	1    1500 5500
	1    0    0    -1  
$EndComp
Connection ~ 1500 5500
Wire Wire Line
	1500 1000 1350 1000
Wire Wire Line
	3000 1300 3500 1300
Wire Wire Line
	3000 1800 3500 1800
Wire Wire Line
	3000 4800 3500 4800
Wire Wire Line
	3000 4300 3500 4300
Wire Wire Line
	3000 5800 3500 5800
Wire Wire Line
	3000 6300 3500 6300
Wire Wire Line
	1500 4000 1350 4000
Wire Wire Line
	1500 5500 1350 5500
$Comp
L Device:C C?
U 1 1 5D087005
P 2000 2650
F 0 "C?" H 2115 2696 50  0000 L CNN
F 1 "100µF" H 2115 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2038 2500 50  0001 C CNN
F 3 "~" H 2000 2650 50  0001 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08700B
P 2500 2650
F 0 "C?" H 2615 2696 50  0000 L CNN
F 1 "4.7µF" H 2615 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2538 2500 50  0001 C CNN
F 3 "~" H 2500 2650 50  0001 C CNN
	1    2500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D087011
P 3000 2650
F 0 "C?" H 3115 2696 50  0000 L CNN
F 1 "4.7µF" H 3115 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3038 2500 50  0001 C CNN
F 3 "~" H 3000 2650 50  0001 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D087017
P 1500 3150
F 0 "C?" H 1615 3196 50  0000 L CNN
F 1 "0.47µF" H 1615 3105 50  0000 L CNN
F 2 "" H 1538 3000 50  0001 C CNN
F 3 "~" H 1500 3150 50  0001 C CNN
	1    1500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08701D
P 2000 3150
F 0 "C?" H 2115 3196 50  0000 L CNN
F 1 "0.47µF" H 2115 3105 50  0000 L CNN
F 2 "" H 2038 3000 50  0001 C CNN
F 3 "~" H 2000 3150 50  0001 C CNN
	1    2000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D087023
P 2500 3150
F 0 "C?" H 2615 3196 50  0000 L CNN
F 1 "0.47µF" H 2615 3105 50  0000 L CNN
F 2 "" H 2538 3000 50  0001 C CNN
F 3 "~" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D087029
P 3000 3150
F 0 "C?" H 3115 3196 50  0000 L CNN
F 1 "0.47µF" H 3115 3105 50  0000 L CNN
F 2 "" H 3038 3000 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2500 2000 2500
Connection ~ 2000 2500
Wire Wire Line
	2000 2500 2500 2500
Connection ~ 2500 2500
Wire Wire Line
	2500 2500 3000 2500
Wire Wire Line
	1500 2500 1500 3000
Wire Wire Line
	1500 3000 2000 3000
Connection ~ 1500 3000
Connection ~ 2000 3000
Wire Wire Line
	2000 3000 2500 3000
Connection ~ 2500 3000
Wire Wire Line
	2500 3000 3000 3000
$Comp
L power:GND #PWR?
U 1 1 5D08703B
P 3500 3300
F 0 "#PWR?" H 3500 3050 50  0001 C CNN
F 1 "GND" H 3505 3127 50  0000 C CNN
F 2 "" H 3500 3300 50  0001 C CNN
F 3 "" H 3500 3300 50  0001 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3300 2000 3300
Connection ~ 2000 3300
Wire Wire Line
	2000 3300 2500 3300
Connection ~ 2500 3300
Wire Wire Line
	2500 3300 3000 3300
Connection ~ 3000 3300
Wire Wire Line
	2000 2800 2500 2800
Connection ~ 2500 2800
Wire Wire Line
	2500 2800 3000 2800
Connection ~ 3000 2800
Wire Wire Line
	3500 2800 3500 3300
Connection ~ 3500 3300
Connection ~ 1500 2500
Wire Wire Line
	3000 3300 3500 3300
Wire Wire Line
	3000 2800 3500 2800
Wire Wire Line
	1500 2500 1350 2500
$Comp
L microzed:VCCO_33 #PWR?
U 1 1 5D087052
P 1500 2500
F 0 "#PWR?" H 1500 2350 50  0001 C CNN
F 1 "VCCO_33" H 1515 2673 50  0000 C CNN
F 2 "" H 1500 2500 50  0001 C CNN
F 3 "" H 1500 2500 50  0001 C CNN
	1    1500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D087058
P 4500 4500
F 0 "#PWR?" H 4500 4350 50  0001 C CNN
F 1 "+3V3" H 4515 4673 50  0000 C CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
Connection ~ 4500 4500
Wire Wire Line
	7350 5500 7500 5500
Connection ~ 7500 5500
Wire Wire Line
	7500 5500 8000 5500
Text Notes 7200 6050 0    50   ~ 0
UG933 P54\n0.47uF - 4.7uF
Wire Wire Line
	7500 5800 8000 5800
$Comp
L power:GND #PWR?
U 1 1 5D087065
P 8000 5800
F 0 "#PWR?" H 8000 5550 50  0001 C CNN
F 1 "GND" H 8005 5627 50  0000 C CNN
F 2 "" H 8000 5800 50  0001 C CNN
F 3 "" H 8000 5800 50  0001 C CNN
	1    8000 5800
	1    0    0    -1  
$EndComp
Connection ~ 8000 5800
Wire Wire Line
	8000 5500 8350 5500
Connection ~ 8000 5500
Wire Wire Line
	8650 5500 9000 5500
Wire Wire Line
	9500 2300 9500 2800
$Comp
L power:GND #PWR?
U 1 1 5D087071
P 9500 2800
F 0 "#PWR?" H 9500 2550 50  0001 C CNN
F 1 "GND" H 9505 2627 50  0000 C CNN
F 2 "" H 9500 2800 50  0001 C CNN
F 3 "" H 9500 2800 50  0001 C CNN
	1    9500 2800
	1    0    0    -1  
$EndComp
Connection ~ 9500 2800
Text GLabel 7350 2000 0    50   Output ~ 0
VCCO_DDR
Text GLabel 4300 2500 0    50   Output ~ 0
VCCBRAM
Text GLabel 7350 3500 0    50   Output ~ 0
VCCMIO0
Text GLabel 7350 4350 0    50   Output ~ 0
VCCMIO1
Text GLabel 4300 5500 0    50   Output ~ 0
VCCPINT
Text GLabel 7350 1000 0    50   Output ~ 0
VCCPAUX
Text GLabel 1350 1000 0    50   Output ~ 0
VCCO_13
Text GLabel 1350 2500 0    50   Output ~ 0
VCCO_33
Text GLabel 1350 4000 0    50   Output ~ 0
VCCO_34
Text GLabel 1350 5500 0    50   Output ~ 0
VCCO_35
Text GLabel 4300 1000 0    50   Output ~ 0
VCCINT
Text GLabel 4300 3500 0    50   Output ~ 0
VCCAUX
Text GLabel 4300 4500 0    50   Output ~ 0
VCCO_0
Text GLabel 7350 5500 0    50   Output ~ 0
VCCPLL
Text GLabel 9000 5500 2    50   Input ~ 0
VCCPAUX
Text GLabel 4300 7000 0    50   Output ~ 0
VCCBATT
$Comp
L power:+1V8 #PWR?
U 1 1 5C3B125F
P 4750 7000
F 0 "#PWR?" H 4750 6850 50  0001 C CNN
F 1 "+1V8" H 4765 7173 50  0000 C CNN
F 2 "" H 4750 7000 50  0001 C CNN
F 3 "" H 4750 7000 50  0001 C CNN
	1    4750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7000 4300 7000
Text Notes 5150 7000 0    50   ~ 0
DS187 P3
Text Notes 9400 1550 0    50   ~ 0
330µF:\n2.0 nH, 5 mΩ < ESR < 40 mΩ, 2.5V \nAVX, TCJB337M002#0035\nKEMET, T543B337(1)2R5A(2)(3)035\nPanasonic, 2R5TPE330MAZB
Text Notes 9400 2100 0    50   ~ 0
100µF:\n1.0 nH, 1 mΩ < ESR < 40 mΩ, 3.3V\nmurata, GRM32EE70G107ME19
Text Notes 9300 3450 0    50   ~ 0
47µF:\n1.0 nH, 1 mΩ < ESR < 40 mΩ, 6.3V \nKEMET, T543B476(1)006A(2)(3)025\nPanasonic, 10TPE47MAZB
Text Notes 3950 5400 0    50   ~ 0
122mA\n70mA
Text Notes 7000 950  0    50   ~ 0
13mA\n40mA
Text Notes 6950 1950 0    50   ~ 0
4mA\n100mA
Text Notes 4000 950  0    50   ~ 0
78mA\n70mA
Text Notes 4000 3450 0    50   ~ 0
38mA\n60mA
Text Notes 3950 4450 0    50   ~ 0
3mA\n90mA
Text Notes 3900 2450 0    50   ~ 0
6mA\n40mA
Text Notes 1550 7100 0    50   ~ 0
DS187 P5 Table5 Iccq\nDS187 P9 Table6 Iccmin plus when power-on
$EndSCHEMATC
