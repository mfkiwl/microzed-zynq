EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 19
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
L microzed:TLV62130RGTR U1
U 1 1 5BE55E2C
P 2100 1100
F 0 "U1" H 2500 1265 50  0000 C CNN
F 1 "TLV62130RGTR" H 2500 1174 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.7x1.7mm" H 3500 1050 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tlv62130" H 3500 950 50  0001 L CNN
F 4 "1" H 3500 750 50  0001 L CNN "Height"
F 5 "Texas Instruments" H 3500 650 50  0001 L CNN "Manufacturer"
F 6 "TLV62130RGTR" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    2100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1400 1900 1300
Wire Wire Line
	1900 1000 1500 1000
Connection ~ 1900 1200
Wire Wire Line
	1900 1200 1900 1000
Connection ~ 1900 1300
Wire Wire Line
	1900 1300 1900 1200
$Comp
L Device:C C1
U 1 1 5BE59FD1
P 1500 1250
F 0 "C1" H 1550 1300 50  0000 L BNN
F 1 "10µF" H 1550 1200 50  0000 L TNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 1100 50  0001 C CNN
F 3 "~" H 1500 1250 50  0001 C CNN
F 4 "Yageo" H 1500 1250 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 1500 1250 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BE5C0C7
P 1500 1400
F 0 "#PWR01" H 1500 1150 50  0001 C CNN
F 1 "GND" H 1505 1227 50  0000 C CNN
F 2 "" H 1500 1400 50  0001 C CNN
F 3 "" H 1500 1400 50  0001 C CNN
	1    1500 1400
	1    0    0    -1  
$EndComp
Text GLabel 1100 1700 0    50   Input ~ 0
PWR_EN
$Comp
L Device:R R1
U 1 1 5BE5C1CD
P 1200 1250
F 0 "R1" H 1050 1300 50  0000 L BNN
F 1 "10k" H 1000 1200 50  0000 L TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1130 1250 50  0001 C CNN
F 3 "~" H 1200 1250 50  0001 C CNN
F 4 "Yageo" H 1200 1250 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H 1200 1250 50  0001 C CNN "ManufacturerPartNumber"
	1    1200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1100 1200 1000
Wire Wire Line
	1200 1000 1500 1000
Connection ~ 1500 1000
Wire Wire Line
	1500 1100 1500 1000
Wire Wire Line
	1900 1700 1200 1700
Wire Wire Line
	1200 1400 1200 1700
Connection ~ 1200 1700
Wire Wire Line
	1200 1700 1100 1700
Wire Wire Line
	1900 1900 1900 2000
Wire Wire Line
	1900 2500 2400 2500
Connection ~ 1900 2000
Wire Wire Line
	1900 2000 1900 2500
Connection ~ 2400 2500
Wire Wire Line
	2400 2500 2500 2500
Connection ~ 2500 2500
Wire Wire Line
	2500 2500 2600 2500
Connection ~ 2600 2500
Wire Wire Line
	2600 2500 2700 2500
$Comp
L Device:C C2
U 1 1 5BE60955
P 1500 2150
F 0 "C2" H 1550 2250 50  0000 L CNN
F 1 "3300pF" H 1550 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1538 2000 50  0001 C CNN
F 3 "~" H 1500 2150 50  0001 C CNN
F 4 "Yageo" H 1500 2150 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX7R9BB332" H 1500 2150 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1800 1500 1800
Wire Wire Line
	1500 1800 1500 2000
Wire Wire Line
	1500 2300 1500 2500
Wire Wire Line
	1500 2500 1900 2500
Connection ~ 1900 2500
$Comp
L power:GND #PWR04
U 1 1 5BE6114C
P 1900 2500
F 0 "#PWR04" H 1900 2250 50  0001 C CNN
F 1 "GND" H 1905 2327 50  0000 C CNN
F 2 "" H 1900 2500 50  0001 C CNN
F 3 "" H 1900 2500 50  0001 C CNN
	1    1900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1400 3100 1300
Connection ~ 3100 1300
Wire Wire Line
	3100 1300 3100 1200
$Comp
L Device:R R8
U 1 1 5BE64366
P 4900 1550
F 0 "R8" H 4970 1596 50  0000 L CNN
F 1 "40.2" H 4970 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 1550 50  0001 C CNN
F 3 "~" H 4900 1550 50  0001 C CNN
F 4 "Yageo" H 4900 1550 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H 4900 1550 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BE643D8
P 4000 1550
F 0 "R2" H 4070 1596 50  0000 L CNN
F 1 "76.8k" H 4070 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 1550 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
F 4 "Yageo" H 4000 1550 50  0001 C CNN "Manufacturer"
F 5 "RT0402DRE0776K8L" H 4000 1550 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BE6445A
P 4000 2250
F 0 "R3" H 4070 2296 50  0000 L CNN
F 1 "300k" H 4070 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 2250 50  0001 C CNN
F 3 "~" H 4000 2250 50  0001 C CNN
F 4 "Yageo" H 4000 2250 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 4000 2250 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5BE6455E
P 4400 1550
F 0 "C7" H 4450 1600 50  0000 L BNN
F 1 "22µF" H 4450 1500 50  0000 L TNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 1400 50  0001 C CNN
F 3 "~" H 4400 1550 50  0001 C CNN
F 4 "Yageo" H 4400 1550 50  0001 C CNN "Manufacturer"
F 5 "CC0603MRX5R5BB226" H 4400 1550 50  0001 C CNN "ManufacturerPartNumber"
	1    4400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1700 4000 2000
Wire Wire Line
	3100 2000 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4000 2000 4000 2100
Wire Wire Line
	3100 1200 3300 1200
Connection ~ 3100 1200
Wire Wire Line
	3600 1200 3800 1200
Wire Wire Line
	4000 1200 4000 1400
Wire Wire Line
	2700 2500 4000 2500
Wire Wire Line
	4000 2500 4000 2400
Connection ~ 2700 2500
Wire Wire Line
	4400 1700 4400 2500
Wire Wire Line
	4400 2500 4000 2500
Connection ~ 4000 2500
Wire Wire Line
	4400 1400 4400 1200
Wire Wire Line
	4400 1200 4000 1200
Connection ~ 4000 1200
$Comp
L power:+1V0 #PWR07
U 1 1 5BE6A563
P 4400 1200
F 0 "#PWR07" H 4400 1050 50  0001 C CNN
F 1 "+1V0" H 4415 1373 50  0000 C CNN
F 2 "" H 4400 1200 50  0001 C CNN
F 3 "" H 4400 1200 50  0001 C CNN
	1    4400 1200
	1    0    0    -1  
$EndComp
Connection ~ 4400 1200
Wire Wire Line
	3100 1600 3800 1600
Wire Wire Line
	3800 1600 3800 1200
Connection ~ 3800 1200
Wire Wire Line
	3800 1200 4000 1200
Wire Wire Line
	4900 1400 4900 1200
Wire Wire Line
	4900 1200 4400 1200
Wire Wire Line
	4900 1700 4900 1800
Wire Wire Line
	4900 2400 4900 2500
Wire Wire Line
	4900 2500 4400 2500
Connection ~ 4400 2500
Wire Wire Line
	3100 1800 4900 1800
Connection ~ 4900 1800
Wire Wire Line
	4900 1800 4900 2100
$Comp
L microzed:TLV62130RGTR U2
U 1 1 5BE755A7
P 2100 3600
F 0 "U2" H 2500 3765 50  0000 C CNN
F 1 "TLV62130RGTR" H 2500 3674 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.7x1.7mm" H 3500 3550 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tlv62130" H 3500 3450 50  0001 L CNN
F 4 "1" H 3500 3250 50  0001 L CNN "Height"
F 5 "Texas Instruments" H 3500 3150 50  0001 L CNN "Manufacturer"
F 6 "TLV62130RGTR" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    2100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3900 1900 3800
Wire Wire Line
	1900 3500 1500 3500
Connection ~ 1900 3700
Wire Wire Line
	1900 3700 1900 3500
Connection ~ 1900 3800
Wire Wire Line
	1900 3800 1900 3700
$Comp
L power:GND #PWR02
U 1 1 5BE755C1
P 1500 3900
F 0 "#PWR02" H 1500 3650 50  0001 C CNN
F 1 "GND" H 1505 3727 50  0000 C CNN
F 2 "" H 1500 3900 50  0001 C CNN
F 3 "" H 1500 3900 50  0001 C CNN
	1    1500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3600 1500 3500
Wire Wire Line
	1900 4200 900  4200
Wire Wire Line
	1900 4400 1900 4500
Wire Wire Line
	1900 5000 2400 5000
Connection ~ 1900 4500
Wire Wire Line
	1900 4500 1900 5000
Connection ~ 2400 5000
Wire Wire Line
	2400 5000 2500 5000
Connection ~ 2500 5000
Wire Wire Line
	2500 5000 2600 5000
Connection ~ 2600 5000
Wire Wire Line
	2600 5000 2700 5000
Wire Wire Line
	1900 4300 1500 4300
Wire Wire Line
	1500 4300 1500 4500
Wire Wire Line
	1500 4800 1500 5000
Wire Wire Line
	1500 5000 1900 5000
Connection ~ 1900 5000
$Comp
L power:GND #PWR05
U 1 1 5BE755E1
P 1900 5000
F 0 "#PWR05" H 1900 4750 50  0001 C CNN
F 1 "GND" H 1905 4827 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3900 3100 3800
Connection ~ 3100 3800
Wire Wire Line
	3100 3800 3100 3700
$Comp
L Device:R R4
U 1 1 5BE755F8
P 4000 4050
F 0 "R4" H 4070 4096 50  0000 L CNN
F 1 "300k" H 4070 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 4050 50  0001 C CNN
F 3 "~" H 4000 4050 50  0001 C CNN
F 4 "Yageo" H 4000 4050 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 4000 4050 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BE755FF
P 4000 4750
F 0 "R5" H 4070 4796 50  0000 L CNN
F 1 "240k" H 4070 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 4750 50  0001 C CNN
F 3 "~" H 4000 4750 50  0001 C CNN
F 4 "Yageo" H 4000 4750 50  0001 C CNN "Manufacturer"
F 5 "AC0402FR-07240KL" H 4000 4750 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5BE75606
P 4900 4750
F 0 "R11" H 4970 4796 50  0000 L CNN
F 1 "300k" H 4970 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 4750 50  0001 C CNN
F 3 "~" H 4900 4750 50  0001 C CNN
F 4 "Yageo" H 4900 4750 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 4900 4750 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 4000 4500
Wire Wire Line
	3100 4500 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4000 4600
Wire Wire Line
	3100 3700 3300 3700
Connection ~ 3100 3700
Wire Wire Line
	3600 3700 3800 3700
Wire Wire Line
	4000 3700 4000 3900
Wire Wire Line
	2700 5000 4000 5000
Wire Wire Line
	4000 5000 4000 4900
Connection ~ 2700 5000
Wire Wire Line
	4400 4200 4400 5000
Wire Wire Line
	4400 5000 4000 5000
Connection ~ 4000 5000
Wire Wire Line
	4400 3700 4000 3700
Connection ~ 4000 3700
Connection ~ 4400 3700
Wire Wire Line
	3100 4100 3800 4100
Wire Wire Line
	3800 4100 3800 3700
Connection ~ 3800 3700
Wire Wire Line
	3800 3700 4000 3700
Wire Wire Line
	4900 3900 4900 3700
Wire Wire Line
	4900 3700 4400 3700
Wire Wire Line
	4900 4200 4900 4300
Wire Wire Line
	4900 4900 4900 5000
Wire Wire Line
	4900 5000 4400 5000
Connection ~ 4400 5000
Wire Wire Line
	3100 4300 4900 4300
Connection ~ 4900 4300
Wire Wire Line
	4900 4300 4900 4600
Wire Wire Line
	4900 1800 5500 1800
$Comp
L power:+1V8 #PWR08
U 1 1 5BE7C825
P 4400 3700
F 0 "#PWR08" H 4400 3550 50  0001 C CNN
F 1 "+1V8" H 4415 3873 50  0000 C CNN
F 2 "" H 4400 3700 50  0001 C CNN
F 3 "" H 4400 3700 50  0001 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
Text Label 2950 3000 0    50   ~ 0
PG_1V
Wire Wire Line
	5500 1800 5500 3000
Wire Wire Line
	5500 3000 900  3000
Wire Wire Line
	900  3000 900  4200
$Comp
L microzed:TLV62130RGTR U5
U 1 1 5BE8DFF2
P 7100 3700
F 0 "U5" H 7500 3865 50  0000 C CNN
F 1 "TLV62130RGTR" H 7500 3774 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.7x1.7mm" H 8500 3650 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tlv62130" H 8500 3550 50  0001 L CNN
F 4 "1" H 8500 3350 50  0001 L CNN "Height"
F 5 "Texas Instruments" H 8500 3250 50  0001 L CNN "Manufacturer"
F 6 "TLV62130RGTR" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4000 6900 3900
Wire Wire Line
	6900 3600 6500 3600
Connection ~ 6900 3800
Wire Wire Line
	6900 3800 6900 3600
Connection ~ 6900 3900
Wire Wire Line
	6900 3900 6900 3800
$Comp
L Device:C C11
U 1 1 5BE8E005
P 6500 3850
F 0 "C11" H 6550 3900 50  0000 L BNN
F 1 "10µF" H 6550 3800 50  0000 L TNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 3700 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
F 4 "Yageo" H 6500 3850 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 6500 3850 50  0001 C CNN "ManufacturerPartNumber"
	1    6500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BE8E00C
P 6500 4000
F 0 "#PWR012" H 6500 3750 50  0001 C CNN
F 1 "GND" H 6505 3827 50  0000 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3700 6500 3600
Wire Wire Line
	6900 4500 6900 4600
Wire Wire Line
	6900 5100 7400 5100
Connection ~ 6900 4600
Wire Wire Line
	6900 4600 6900 5100
Connection ~ 7400 5100
Wire Wire Line
	7400 5100 7500 5100
Connection ~ 7500 5100
Wire Wire Line
	7500 5100 7600 5100
Connection ~ 7600 5100
Wire Wire Line
	7600 5100 7700 5100
Wire Wire Line
	6900 4400 6500 4400
Wire Wire Line
	6500 4400 6500 4600
Wire Wire Line
	6500 4900 6500 5100
Wire Wire Line
	6500 5100 6900 5100
Connection ~ 6900 5100
$Comp
L power:GND #PWR014
U 1 1 5BE8E02B
P 6900 5100
F 0 "#PWR014" H 6900 4850 50  0001 C CNN
F 1 "GND" H 6905 4927 50  0000 C CNN
F 2 "" H 6900 5100 50  0001 C CNN
F 3 "" H 6900 5100 50  0001 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4000 8100 3900
Connection ~ 8100 3900
Wire Wire Line
	8100 3900 8100 3800
$Comp
L Device:R R16
U 1 1 5BE8E042
P 9000 4150
F 0 "R16" H 9070 4196 50  0000 L CNN
F 1 "205k" H 9070 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 4150 50  0001 C CNN
F 3 "~" H 9000 4150 50  0001 C CNN
F 4 "Yageo" H 9000 4150 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-07205KL" H 9000 4150 50  0001 C CNN "ManufacturerPartNumber"
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5BE8E049
P 9000 4850
F 0 "R17" H 9070 4896 50  0000 L CNN
F 1 "300k" H 9070 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 4850 50  0001 C CNN
F 3 "~" H 9000 4850 50  0001 C CNN
F 4 "Yageo" H 9000 4850 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 9000 4850 50  0001 C CNN "ManufacturerPartNumber"
	1    9000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4300 9000 4600
Wire Wire Line
	8100 4600 9000 4600
Connection ~ 9000 4600
Wire Wire Line
	9000 4600 9000 4700
Wire Wire Line
	8100 3800 8300 3800
Connection ~ 8100 3800
Wire Wire Line
	8600 3800 8800 3800
Wire Wire Line
	9000 3800 9000 4000
Wire Wire Line
	7700 5100 9000 5100
Wire Wire Line
	9000 5100 9000 5000
Connection ~ 7700 5100
Wire Wire Line
	9400 4300 9400 5100
Wire Wire Line
	9400 5100 9000 5100
Connection ~ 9000 5100
Wire Wire Line
	9400 4000 9400 3800
Wire Wire Line
	9400 3800 9000 3800
Connection ~ 9000 3800
Connection ~ 9400 3800
Wire Wire Line
	8100 4200 8800 4200
Wire Wire Line
	8800 4200 8800 3800
Connection ~ 8800 3800
Wire Wire Line
	8800 3800 9000 3800
Wire Wire Line
	9900 4000 9900 3800
Wire Wire Line
	9900 3800 9400 3800
Wire Wire Line
	9900 4300 9900 4400
Wire Wire Line
	9900 5000 9900 5100
Wire Wire Line
	9900 5100 9400 5100
Connection ~ 9400 5100
Wire Wire Line
	8100 4400 9900 4400
Connection ~ 9900 4400
Wire Wire Line
	9900 4400 9900 4700
Wire Wire Line
	4900 4300 5400 4300
Text Label 5550 4300 0    50   ~ 0
PG_1V8
$Comp
L microzed:VCCO_DDR3 #PWR016
U 1 1 5BE989CB
P 9400 3800
F 0 "#PWR016" H 9400 3650 50  0001 C CNN
F 1 "VCCO_DDR3" H 9415 3973 50  0000 C CNN
F 2 "" H 9400 3800 50  0001 C CNN
F 3 "" H 9400 3800 50  0001 C CNN
	1    9400 3800
	1    0    0    -1  
$EndComp
$Comp
L microzed:TLV62130RGTR U4
U 1 1 5BEA069B
P 7100 1200
F 0 "U4" H 7500 1365 50  0000 C CNN
F 1 "TLV62130RGTR" H 7500 1274 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.7x1.7mm" H 8500 1150 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tlv62130" H 8500 1050 50  0001 L CNN
F 4 "1" H 8500 850 50  0001 L CNN "Height"
F 5 "Texas Instruments" H 8500 750 50  0001 L CNN "Manufacturer"
F 6 "TLV62130RGTR" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1500 6900 1400
$Comp
L Device:C C13
U 1 1 5BEA06AE
P 6550 1600
F 0 "C13" V 6500 1400 50  0000 L CNN
F 1 "10µF" V 6500 1850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6588 1450 50  0001 C CNN
F 3 "~" H 6550 1600 50  0001 C CNN
F 4 "Yageo" H 6550 1600 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 6550 1600 50  0001 C CNN "ManufacturerPartNumber"
	1    6550 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BEA06B5
P 6300 1600
F 0 "#PWR010" H 6300 1350 50  0001 C CNN
F 1 "GND" H 6305 1427 50  0001 C CNN
F 2 "" H 6300 1600 50  0001 C CNN
F 3 "" H 6300 1600 50  0001 C CNN
	1    6300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 6900 2100
Wire Wire Line
	6900 2600 7400 2600
Connection ~ 6900 2100
Wire Wire Line
	6900 2100 6900 2600
Connection ~ 7400 2600
Wire Wire Line
	7400 2600 7500 2600
Connection ~ 7500 2600
Wire Wire Line
	7500 2600 7600 2600
Connection ~ 7600 2600
Wire Wire Line
	7600 2600 7700 2600
Wire Wire Line
	6900 1900 6500 1900
Wire Wire Line
	6500 1900 6500 2100
Wire Wire Line
	6500 2400 6500 2600
Wire Wire Line
	6500 2600 6900 2600
Connection ~ 6900 2600
$Comp
L power:GND #PWR013
U 1 1 5BEA06D3
P 6900 2600
F 0 "#PWR013" H 6900 2350 50  0001 C CNN
F 1 "GND" H 6905 2427 50  0000 C CNN
F 2 "" H 6900 2600 50  0001 C CNN
F 3 "" H 6900 2600 50  0001 C CNN
	1    6900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1500 8100 1400
Connection ~ 8100 1400
Wire Wire Line
	8100 1400 8100 1300
$Comp
L Device:R R14
U 1 1 5BEA06EA
P 9000 1650
F 0 "R14" H 9070 1696 50  0000 L CNN
F 1 "240k" H 9070 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 1650 50  0001 C CNN
F 3 "~" H 9000 1650 50  0001 C CNN
F 4 "Yageo" H 9000 1650 50  0001 C CNN "Manufacturer"
F 5 "AC0402FR-07240KL" H 9000 1650 50  0001 C CNN "ManufacturerPartNumber"
	1    9000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5BEA06F1
P 9000 2350
F 0 "R15" H 9070 2396 50  0000 L CNN
F 1 "76.8k" H 9070 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8930 2350 50  0001 C CNN
F 3 "~" H 9000 2350 50  0001 C CNN
F 4 "Yageo" H 9000 2350 50  0001 C CNN "Manufacturer"
F 5 "RT0402DRE0776K8L" H 9000 2350 50  0001 C CNN "ManufacturerPartNumber"
	1    9000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1800 9000 2100
Wire Wire Line
	8100 2100 9000 2100
Connection ~ 9000 2100
Wire Wire Line
	9000 2100 9000 2200
Wire Wire Line
	8100 1300 8300 1300
Connection ~ 8100 1300
Wire Wire Line
	8600 1300 8800 1300
Wire Wire Line
	9000 1300 9000 1500
Wire Wire Line
	7700 2600 9000 2600
Wire Wire Line
	9000 2600 9000 2500
Connection ~ 7700 2600
Wire Wire Line
	9400 1800 9400 2600
Wire Wire Line
	9400 2600 9000 2600
Connection ~ 9000 2600
Wire Wire Line
	9400 1500 9400 1300
Wire Wire Line
	9400 1300 9000 1300
Connection ~ 9000 1300
Connection ~ 9400 1300
Wire Wire Line
	8100 1700 8800 1700
Wire Wire Line
	8800 1700 8800 1300
Connection ~ 8800 1300
Wire Wire Line
	8800 1300 9000 1300
Wire Wire Line
	9900 1500 9900 1300
Wire Wire Line
	9900 1300 9400 1300
Wire Wire Line
	9900 1800 9900 1900
Wire Wire Line
	9900 2500 9900 2600
Wire Wire Line
	9900 2600 9400 2600
Connection ~ 9400 2600
Wire Wire Line
	8100 1900 9900 1900
Connection ~ 9900 1900
Wire Wire Line
	9900 1900 9900 2200
$Comp
L power:+3V3 #PWR015
U 1 1 5BEADF49
P 9400 1300
F 0 "#PWR015" H 9400 1150 50  0001 C CNN
F 1 "+3V3" H 9415 1473 50  0000 C CNN
F 2 "" H 9400 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4400 10400 4400
Wire Wire Line
	10400 4400 10400 3000
Wire Wire Line
	10400 3000 6000 3000
Wire Wire Line
	6000 3000 6000 1800
Wire Wire Line
	6000 1800 6900 1800
Text Label 8150 3000 0    50   ~ 0
PG_1V35
Text GLabel 10200 1900 2    50   Output ~ 0
PG_MODULE
Wire Wire Line
	9900 1900 10200 1900
$Comp
L Device:LED LED1
U 1 1 5BEC6AB0
P 10650 1300
F 0 "LED1" H 10642 1136 50  0000 C CNN
F 1 "Blue" H 10642 1136 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10650 1300 50  0001 C CNN
F 3 "~" H 10650 1300 50  0001 C CNN
F 4 "Lite-On" H 10650 1300 50  0001 C CNN "Manufacturer"
F 5 "LTST-C191TBKT" H 10650 1300 50  0001 C CNN "ManufacturerPartNumber"
	1    10650 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5BED3776
P 10250 1300
F 0 "R22" V 10150 1300 50  0000 C CNN
F 1 "240" V 10350 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10180 1300 50  0001 C CNN
F 3 "~" H 10250 1300 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13240RL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    10250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 1300 9900 1300
Connection ~ 9900 1300
Wire Wire Line
	10500 1300 10400 1300
$Comp
L power:GND #PWR017
U 1 1 5BEE6ECC
P 10900 1400
F 0 "#PWR017" H 10900 1150 50  0001 C CNN
F 1 "GND" H 10905 1227 50  0000 C CNN
F 2 "" H 10900 1400 50  0001 C CNN
F 3 "" H 10900 1400 50  0001 C CNN
	1    10900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1300 10900 1300
Wire Wire Line
	10900 1300 10900 1400
Text Notes 1800 950  0    50   ~ 0
3-17V
Text Notes 2950 1100 0    50   ~ 0
0.9-5.5V\n<3A
Text Notes 3150 1800 0    50   ~ 0
2mA\nmax: 10mA
Text Notes 3750 3000 0    50   ~ 0
for the PG pin:\n1: > 0.9V\nhttp://zedboard.org/zh-hant/node/2414\nmaybe the pull-down resistore is for\nhigh impendance (P9 section 8.3.3)
Text Notes 750  2100 0    50   ~ 0
1.5µA\n-0.3 - VIN+0.3\nL: < 0.3V\nH: > 0.9V
Text Notes 900  4450 0    50   ~ 0
1.5µA\nL: < 0.3V\nH: > 0.9V
Text Notes 5600 4550 0    50   ~ 0
1.5µA\nL: < 0.3V\nH: > 0.9V
Text Notes 5600 1600 0    50   ~ 0
1.5µA\nL: < 0.3V\nH: > 0.9V
Text Notes 5000 800  0    50   ~ 0
V=(R1+R2)/R2*0.8\nR1/R2=(V-0.8)/0.8
$Comp
L Device:L L1
U 1 1 5C41CFD2
P 3450 1200
F 0 "L1" V 3550 1200 50  0000 C BNN
F 1 "2.2µH" V 3350 1200 50  0000 C TNN
F 2 "microzed:SRN8040" H 3450 1200 50  0001 C CNN
F 3 "~" H 3450 1200 50  0001 C CNN
F 4 "Bourns" H 3450 1200 50  0001 C CNN "Manufacturer"
F 5 "SRN8040" H 3450 1200 50  0001 C CNN "ManufacturerPartNumber"
	1    3450 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L2
U 1 1 5C44354F
P 3450 3700
F 0 "L2" V 3550 3700 50  0000 C BNN
F 1 "1.0µH" V 3350 3700 50  0000 C TNN
F 2 "microzed:SRN3015" H 3450 3700 50  0001 C CNN
F 3 "~" H 3450 3700 50  0001 C CNN
F 4 "Bourns" H 3450 3700 50  0001 C CNN "Manufacturer"
F 5 "SRN3015" H 3450 3700 50  0001 C CNN "ManufacturerPartNumber"
	1    3450 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L4
U 1 1 5C447254
P 8450 1300
F 0 "L4" V 8550 1300 50  0000 C BNN
F 1 "1.0µH" V 8350 1300 50  0000 C TNN
F 2 "microzed:SRN3015" H 8450 1300 50  0001 C CNN
F 3 "~" H 8450 1300 50  0001 C CNN
F 4 "Bourns" H 8450 1300 50  0001 C CNN "Manufacturer"
F 5 "SRN3015" H 8450 1300 50  0001 C CNN "ManufacturerPartNumber"
	1    8450 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L5
U 1 1 5C448EA0
P 8450 3800
F 0 "L5" V 8550 3800 50  0000 C BNN
F 1 "1.0µH" V 8350 3800 50  0000 C TNN
F 2 "microzed:SRN3015" H 8450 3800 50  0001 C CNN
F 3 "~" H 8450 3800 50  0001 C CNN
F 4 "Bourns" H 8450 3800 50  0001 C CNN "Manufacturer"
F 5 "SRN3015" H 8450 3800 50  0001 C CNN "ManufacturerPartNumber"
	1    8450 3800
	0    -1   -1   0   
$EndComp
Text Notes 3200 2000 0    50   ~ 0
1:4
Text Notes 3200 4500 0    50   ~ 0
5:4
Text Notes 8150 4550 0    50   ~ 0
11:16
Text Notes 8150 2100 0    50   ~ 0
25:8
Text Notes 5700 5750 0    50   ~ 0
power on/off requirement\nhttps://www.xilinx.com/support/answers/65240.html
$Comp
L Device:R R10
U 1 1 5C80CEFE
P 4900 4050
F 0 "R10" H 4970 4096 50  0000 L CNN
F 1 "76.8k" H 4970 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 4050 50  0001 C CNN
F 3 "~" H 4900 4050 50  0001 C CNN
F 4 "Yageo" H 4900 4050 50  0001 C CNN "Manufacturer"
F 5 "RT0402DRE0776K8L" H 4900 4050 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5C80D54F
P 9900 4850
F 0 "R21" H 9970 4896 50  0000 L CNN
F 1 "300k" H 9970 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9830 4850 50  0001 C CNN
F 3 "~" H 9900 4850 50  0001 C CNN
F 4 "Yageo" H 9900 4850 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 9900 4850 50  0001 C CNN "ManufacturerPartNumber"
	1    9900 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5C80D8FD
P 9900 4150
F 0 "R20" H 9970 4196 50  0000 L CNN
F 1 "76.8k" H 9970 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9830 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
F 4 "Yageo" H 9900 4150 50  0001 C CNN "Manufacturer"
F 5 "RT0402DRE0776K8L" H 9900 4150 50  0001 C CNN "ManufacturerPartNumber"
	1    9900 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C810469
P 4900 2250
F 0 "R9" H 4970 2296 50  0000 L CNN
F 1 "300k" H 4970 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 2250 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
F 4 "Yageo" H 4900 2250 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 4900 2250 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5C81091D
P 9900 2350
F 0 "R19" H 9970 2396 50  0000 L CNN
F 1 "300k" H 9970 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9830 2350 50  0001 C CNN
F 3 "~" H 9900 2350 50  0001 C CNN
F 4 "Yageo" H 9900 2350 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 9900 2350 50  0001 C CNN "ManufacturerPartNumber"
	1    9900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5C816774
P 9900 1650
F 0 "R18" H 9970 1696 50  0000 L CNN
F 1 "40.2" H 9970 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9830 1650 50  0001 C CNN
F 3 "~" H 9900 1650 50  0001 C CNN
F 4 "Yageo" H 9900 1650 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H 9900 1650 50  0001 C CNN "ManufacturerPartNumber"
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C81DF08
P 1500 4650
F 0 "C4" H 1550 4750 50  0000 L CNN
F 1 "3300pF" H 1550 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1538 4500 50  0001 C CNN
F 3 "~" H 1500 4650 50  0001 C CNN
F 4 "Yageo" H 1500 4650 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX7R9BB332" H 1500 4650 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C81E4FB
P 6500 2250
F 0 "C10" H 6550 2350 50  0000 L CNN
F 1 "3300pF" H 6550 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 2100 50  0001 C CNN
F 3 "~" H 6500 2250 50  0001 C CNN
F 4 "Yageo" H 6500 2250 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX7R9BB332" H 6500 2250 50  0001 C CNN "ManufacturerPartNumber"
	1    6500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5C81EA70
P 6500 4750
F 0 "C12" H 6550 4850 50  0000 L CNN
F 1 "3300pF" H 6550 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 4600 50  0001 C CNN
F 3 "~" H 6500 4750 50  0001 C CNN
F 4 "Yageo" H 6500 4750 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX7R9BB332" H 6500 4750 50  0001 C CNN "ManufacturerPartNumber"
	1    6500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4400 3700
$Comp
L Device:C C8
U 1 1 5C8227AE
P 4400 4050
F 0 "C8" H 4450 4100 50  0000 L BNN
F 1 "22µF" H 4450 4000 50  0000 L TNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 3900 50  0001 C CNN
F 3 "~" H 4400 4050 50  0001 C CNN
F 4 "Yageo" H 4400 4050 50  0001 C CNN "Manufacturer"
F 5 "CC0603MRX5R5BB226" H 4400 4050 50  0001 C CNN "ManufacturerPartNumber"
	1    4400 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5C822E31
P 9400 4150
F 0 "C16" H 9450 4200 50  0000 L BNN
F 1 "22µF" H 9450 4100 50  0000 L TNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 4000 50  0001 C CNN
F 3 "~" H 9400 4150 50  0001 C CNN
F 4 "Yageo" H 9400 4150 50  0001 C CNN "Manufacturer"
F 5 "CC0603MRX5R5BB226" H 9400 4150 50  0001 C CNN "ManufacturerPartNumber"
	1    9400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5C82339A
P 9400 1650
F 0 "C15" H 9450 1700 50  0000 L BNN
F 1 "22µF" H 9450 1600 50  0000 L TNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 1500 50  0001 C CNN
F 3 "~" H 9400 1650 50  0001 C CNN
F 4 "Yageo" H 9400 1650 50  0001 C CNN "Manufacturer"
F 5 "CC0603MRX5R5BB226" H 9400 1650 50  0001 C CNN "ManufacturerPartNumber"
	1    9400 1650
	1    0    0    -1  
$EndComp
Text Notes 8300 5350 0    50   ~ 0
default: 1.35V\nif want 1.5V, change 205k to 261k
Text GLabel 1500 900  1    50   Input ~ 0
VIN
Wire Wire Line
	1500 1000 1500 900 
Text GLabel 1500 3400 1    50   Input ~ 0
VIN
Wire Wire Line
	1500 3500 1500 3400
Connection ~ 1500 3500
Text GLabel 6400 1300 0    50   Input ~ 0
VIN
Text GLabel 6500 3500 1    50   Input ~ 0
VIN
Wire Wire Line
	6500 3600 6500 3500
Connection ~ 6500 3600
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C977765
P 3800 1200
F 0 "#FLG02" H 3800 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 1373 50  0001 C CNN
F 2 "" H 3800 1200 50  0001 C CNN
F 3 "~" H 3800 1200 50  0001 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5C97A247
P 8800 1300
F 0 "#FLG05" H 8800 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 1473 50  0001 C CNN
F 2 "" H 8800 1300 50  0001 C CNN
F 3 "~" H 8800 1300 50  0001 C CNN
	1    8800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5C97AA60
P 8800 3800
F 0 "#FLG06" H 8800 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 3973 50  0001 C CNN
F 2 "" H 8800 3800 50  0001 C CNN
F 3 "~" H 8800 3800 50  0001 C CNN
	1    8800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C97ADFC
P 3800 3700
F 0 "#FLG03" H 3800 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 3873 50  0001 C CNN
F 2 "" H 3800 3700 50  0001 C CNN
F 3 "~" H 3800 3700 50  0001 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BE755BA
P 1500 3750
F 0 "C3" H 1550 3800 50  0000 L BNN
F 1 "10µF" H 1550 3700 50  0000 L TNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 3600 50  0001 C CNN
F 3 "~" H 1500 3750 50  0001 C CNN
F 4 "Yageo" H 1500 3750 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 1500 3750 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 3750
	1    0    0    -1  
$EndComp
Text GLabel 5650 3700 2    50   Output ~ 0
PG_1V8
Wire Wire Line
	5650 3700 5400 3700
Wire Wire Line
	5400 3700 5400 4300
Connection ~ 5400 4300
Wire Wire Line
	5400 4300 6900 4300
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CABCDB4
P 1200 1000
F 0 "#FLG01" H 1200 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1173 50  0001 C CNN
F 2 "" H 1200 1000 50  0001 C CNN
F 3 "~" H 1200 1000 50  0001 C CNN
	1    1200 1000
	1    0    0    -1  
$EndComp
Connection ~ 1200 1000
Text GLabel 10300 800  2    50   Output ~ 0
V3V3
Wire Wire Line
	9900 1300 9900 800 
Wire Wire Line
	9900 800  10300 800 
Text GLabel 5300 3400 2    50   Output ~ 0
V1V8
Wire Wire Line
	4900 3700 4900 3400
Wire Wire Line
	4900 3400 5300 3400
Connection ~ 4900 3700
$Comp
L microzed:TLV62130RGTR U3
U 1 1 5CA23E45
P 2100 5850
F 0 "U3" H 2500 6015 50  0000 C CNN
F 1 "TLV62130RGTR" H 2500 5924 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.7x1.7mm" H 3500 5800 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tlv62130" H 3500 5700 50  0001 L CNN
F 4 "1" H 3500 5500 50  0001 L CNN "Height"
F 5 "Texas Instruments" H 3500 5400 50  0001 L CNN "Manufacturer"
F 6 "TLV62130RGTR" H 0   2250 50  0001 C CNN "ManufacturerPartNumber"
	1    2100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6150 1900 6050
Wire Wire Line
	1900 5750 1500 5750
Connection ~ 1900 5950
Wire Wire Line
	1900 5950 1900 5750
Connection ~ 1900 6050
Wire Wire Line
	1900 6050 1900 5950
$Comp
L power:GND #PWR03
U 1 1 5CA23E51
P 1500 6150
F 0 "#PWR03" H 1500 5900 50  0001 C CNN
F 1 "GND" H 1505 5977 50  0000 C CNN
F 2 "" H 1500 6150 50  0001 C CNN
F 3 "" H 1500 6150 50  0001 C CNN
	1    1500 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5850 1500 5750
Wire Wire Line
	1900 6450 1100 6450
Wire Wire Line
	1900 6650 1900 6750
Wire Wire Line
	1900 7250 2400 7250
Connection ~ 1900 6750
Wire Wire Line
	1900 6750 1900 7250
Connection ~ 2400 7250
Wire Wire Line
	2400 7250 2500 7250
Connection ~ 2500 7250
Wire Wire Line
	2500 7250 2600 7250
Connection ~ 2600 7250
Wire Wire Line
	2600 7250 2700 7250
Wire Wire Line
	1900 6550 1500 6550
Wire Wire Line
	1500 6550 1500 6750
Wire Wire Line
	1500 7050 1500 7250
Wire Wire Line
	1500 7250 1900 7250
Connection ~ 1900 7250
$Comp
L power:GND #PWR06
U 1 1 5CA23E68
P 1900 7250
F 0 "#PWR06" H 1900 7000 50  0001 C CNN
F 1 "GND" H 1905 7077 50  0000 C CNN
F 2 "" H 1900 7250 50  0001 C CNN
F 3 "" H 1900 7250 50  0001 C CNN
	1    1900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6150 3100 6050
Connection ~ 3100 6050
Wire Wire Line
	3100 6050 3100 5950
$Comp
L Device:R R6
U 1 1 5CA23E73
P 4000 6300
F 0 "R6" H 4070 6346 50  0000 L CNN
F 1 "226k" H 4070 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 6300 50  0001 C CNN
F 3 "~" H 4000 6300 50  0001 C CNN
F 4 "Yageo" H 4000 6300 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-07226KL" H 4000 6300 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5CA23E83
P 4900 7000
F 0 "R13" H 4970 7046 50  0000 L CNN
F 1 "300k" H 4970 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 7000 50  0001 C CNN
F 3 "~" H 4900 7000 50  0001 C CNN
F 4 "Yageo" H 4900 7000 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-13300KL" H 4900 7000 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6450 4000 6750
Wire Wire Line
	3100 6750 4000 6750
Connection ~ 4000 6750
Wire Wire Line
	4000 6750 4000 6850
Wire Wire Line
	3100 5950 3300 5950
Connection ~ 3100 5950
Wire Wire Line
	3600 5950 3800 5950
Wire Wire Line
	4000 5950 4000 6150
Wire Wire Line
	2700 7250 4000 7250
Wire Wire Line
	4000 7250 4000 7150
Connection ~ 2700 7250
Wire Wire Line
	4400 6450 4400 7250
Wire Wire Line
	4400 7250 4000 7250
Connection ~ 4000 7250
Wire Wire Line
	4400 5950 4000 5950
Connection ~ 4000 5950
Connection ~ 4400 5950
Wire Wire Line
	3100 6350 3800 6350
Wire Wire Line
	3800 6350 3800 5950
Connection ~ 3800 5950
Wire Wire Line
	3800 5950 4000 5950
Wire Wire Line
	4900 6150 4900 5950
Wire Wire Line
	4900 5950 4400 5950
Wire Wire Line
	4900 6450 4900 6550
Wire Wire Line
	4900 7150 4900 7250
Wire Wire Line
	4900 7250 4400 7250
Connection ~ 4400 7250
Wire Wire Line
	3100 6550 4900 6550
Connection ~ 4900 6550
Wire Wire Line
	4900 6550 4900 6850
Wire Wire Line
	4900 6550 5400 6550
$Comp
L Device:L L3
U 1 1 5CA23EB0
P 3450 5950
F 0 "L3" V 3550 5950 50  0000 C BNN
F 1 "1.0µH" V 3350 5950 50  0000 C TNN
F 2 "microzed:SRN3015" H 3450 5950 50  0001 C CNN
F 3 "~" H 3450 5950 50  0001 C CNN
F 4 "Bourns" H 3450 5950 50  0001 C CNN "Manufacturer"
F 5 "SRN3015" H 3450 5950 50  0001 C CNN "ManufacturerPartNumber"
	1    3450 5950
	0    -1   -1   0   
$EndComp
Text Notes 3200 6750 0    50   ~ 0
5:4
$Comp
L Device:R R12
U 1 1 5CA23EB9
P 4900 6300
F 0 "R12" H 4970 6346 50  0000 L CNN
F 1 "76.8k" H 4970 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 6300 50  0001 C CNN
F 3 "~" H 4900 6300 50  0001 C CNN
F 4 "Yageo" H 4900 6300 50  0001 C CNN "Manufacturer"
F 5 "RT0402DRE0776K8L" H 4900 6300 50  0001 C CNN "ManufacturerPartNumber"
	1    4900 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CA23EC1
P 1500 6900
F 0 "C6" H 1550 7000 50  0000 L CNN
F 1 "3300pF" H 1550 6800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1538 6750 50  0001 C CNN
F 3 "~" H 1500 6900 50  0001 C CNN
F 4 "Yageo" H 1500 6900 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX7R9BB332" H 1500 6900 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6150 4400 5950
$Comp
L Device:C C9
U 1 1 5CA23ECA
P 4400 6300
F 0 "C9" H 4450 6350 50  0000 L BNN
F 1 "22µF" H 4450 6250 50  0000 L TNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 6150 50  0001 C CNN
F 3 "~" H 4400 6300 50  0001 C CNN
F 4 "Yageo" H 4400 6300 50  0001 C CNN "Manufacturer"
F 5 "CC0603MRX5R5BB226" H 4400 6300 50  0001 C CNN "ManufacturerPartNumber"
	1    4400 6300
	1    0    0    -1  
$EndComp
Text GLabel 1500 5650 1    50   Input ~ 0
VIN
Wire Wire Line
	1500 5750 1500 5650
Connection ~ 1500 5750
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5CA23ED3
P 3800 5950
F 0 "#FLG04" H 3800 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 6123 50  0001 C CNN
F 2 "" H 3800 5950 50  0001 C CNN
F 3 "~" H 3800 5950 50  0001 C CNN
	1    3800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5CA23EDB
P 1500 6000
F 0 "C5" H 1550 6050 50  0000 L BNN
F 1 "10µF" H 1550 5950 50  0000 L TNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 5850 50  0001 C CNN
F 3 "~" H 1500 6000 50  0001 C CNN
F 4 "Yageo" H 1500 6000 50  0001 C CNN "Manufacturer"
F 5 "CC0805KKX5R8BB106" H 1500 6000 50  0001 C CNN "ManufacturerPartNumber"
	1    1500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5CA419B2
P 4400 5950
F 0 "#PWR09" H 4400 5800 50  0001 C CNN
F 1 "+5V" H 4415 6123 50  0000 C CNN
F 2 "" H 4400 5950 50  0001 C CNN
F 3 "" H 4400 5950 50  0001 C CNN
	1    4400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CA23E7B
P 4000 7000
F 0 "R7" H 4070 7046 50  0000 L CNN
F 1 "43k" H 4070 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 7000 50  0001 C CNN
F 3 "~" H 4000 7000 50  0001 C CNN
F 4 "Yageo" H 4000 7000 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0743KL" H 4000 7000 50  0001 C CNN "ManufacturerPartNumber"
	1    4000 7000
	1    0    0    -1  
$EndComp
Text GLabel 1100 6450 0    50   Input ~ 0
5V_EN
Text Label 5100 6550 0    50   ~ 0
PG_5V
$Comp
L Device:C C14
U 1 1 5CA7A8CD
P 6750 1100
F 0 "C14" V 6850 1150 50  0000 L BNN
F 1 "0.1µF" V 6800 1050 50  0000 R TNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6788 950 50  0001 C CNN
F 3 "~" H 6750 1100 50  0001 C CNN
F 4 "Yageo" H 6750 1100 50  0001 C CNN "Manufacturer"
F 5 "CC0402KRX5R8BB104" H 6750 1100 50  0001 C CNN "ManufacturerPartNumber"
	1    6750 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5CAA4ECB
P 6500 1100
F 0 "#PWR011" H 6500 850 50  0001 C CNN
F 1 "GND" H 6505 927 50  0001 C CNN
F 2 "" H 6500 1100 50  0001 C CNN
F 3 "" H 6500 1100 50  0001 C CNN
	1    6500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1100 6600 1100
Wire Wire Line
	6300 1600 6400 1600
Wire Wire Line
	6700 1600 6900 1600
Wire Wire Line
	6400 1300 6450 1300
Connection ~ 6900 1300
Wire Wire Line
	6900 1100 6900 1300
Wire Wire Line
	6900 1600 6900 1500
Connection ~ 6900 1500
Wire Wire Line
	6900 1400 6450 1400
Wire Wire Line
	6450 1400 6450 1300
Connection ~ 6900 1400
Connection ~ 6450 1300
Wire Wire Line
	6450 1300 6900 1300
$EndSCHEMATC
