EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 19
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
L microzed:ASDMB-33.333MHZ-LC-T U?
U 1 1 5B91F1A0
P 2250 1350
F 0 "U?" H 2825 1615 50  0000 C CNN
F 1 "ASDMB-33.333MHZ-LC-T" H 2825 1524 50  0000 C CNN
F 2 "microzed:ABRACON-ASDMB" H 3750 1450 50  0001 L CNN
F 3 "http://www.abracon.com/Oscillators/ASDMB.pdf" H 3750 1350 50  0001 L CNN
F 4 "Abracon" H 2250 1350 50  0001 C CNN "Manufacturer"
F 5 "ASDMB-33.333MHZ-LC-T" H 2250 1350 50  0001 C CNN "ManufacturerPartNumber"
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C9202F1
P 3400 1450
F 0 "#PWR?" H 3400 1200 50  0001 C CNN
F 1 "GND" H 3405 1277 50  0000 C CNN
F 2 "" H 3400 1450 50  0001 C CNN
F 3 "" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5B92D2E0
P 1800 1350
F 0 "#PWR?" H 1800 1200 50  0001 C CNN
F 1 "+3.3V" H 1815 1523 50  0000 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B92D3D6
P 1800 1750
F 0 "#PWR?" H 1800 1500 50  0001 C CNN
F 1 "GND" H 1805 1577 50  0000 C CNN
F 2 "" H 1800 1750 50  0001 C CNN
F 3 "" H 1800 1750 50  0001 C CNN
	1    1800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1450 1800 1450
Wire Wire Line
	2250 1350 1800 1350
Wire Wire Line
	1800 1450 1800 1350
Connection ~ 1800 1450
Connection ~ 1800 1350
Text GLabel 3150 2900 2    50   Input ~ 0
PG_MODULE
$Comp
L power:+3.3V #PWR?
U 1 1 5B95CBB1
P 8800 2500
F 0 "#PWR?" H 8800 2350 50  0001 C CNN
F 1 "+3.3V" H 8815 2673 50  0000 C CNN
F 2 "" H 8800 2500 50  0001 C CNN
F 3 "" H 8800 2500 50  0001 C CNN
	1    8800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B960C36
P 8800 2650
F 0 "R?" H 8870 2696 50  0000 L CNN
F 1 "20K" H 8870 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8730 2650 50  0001 C CNN
F 3 "~" H 8800 2650 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    8800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3900 3150 3900
$Comp
L Device:R R?
U 1 1 5B9611C5
P 10000 4500
F 0 "R?" H 10070 4546 50  0000 L CNN
F 1 "20K" H 10070 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9930 4500 50  0001 C CNN
F 3 "~" H 10000 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    10000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4350 10000 3400
$Comp
L power:GND #PWR?
U 1 1 5B961AE1
P 10000 4650
F 0 "#PWR?" H 10000 4400 50  0001 C CNN
F 1 "GND" H 10005 4477 50  0000 C CNN
F 2 "" H 10000 4650 50  0001 C CNN
F 3 "" H 10000 4650 50  0001 C CNN
	1    10000 4650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5BDA4E78
P 5700 1350
F 0 "Q?" H 5891 1396 50  0000 L CNN
F 1 "MMBT3904" H 5891 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 1275 50  0001 L CIN
F 3 "" H 5700 1350 50  0001 L CNN
F 4 "Diodes" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "MMBT3904-7-F" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    5700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDA4E86
P 5800 2450
F 0 "#PWR?" H 5800 2200 50  0001 C CNN
F 1 "GND" H 5805 2277 50  0000 C CNN
F 2 "" H 5800 2450 50  0001 C CNN
F 3 "" H 5800 2450 50  0001 C CNN
	1    5800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1150 5800 1050
$Comp
L power:+3V3 #PWR?
U 1 1 5BDA4E96
P 5800 1050
F 0 "#PWR?" H 5800 900 50  0001 C CNN
F 1 "+3V3" H 5815 1223 50  0000 C CNN
F 2 "" H 5800 1050 50  0001 C CNN
F 3 "" H 5800 1050 50  0001 C CNN
	1    5800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1550 5800 1650
Wire Wire Line
	2750 3300 3150 3300
Wire Wire Line
	2750 3600 3150 3600
Wire Wire Line
	4800 1350 5500 1350
Text GLabel 3150 3200 2    50   Output ~ 0
QSPI_CS#
Text GLabel 3150 3300 2    50   BiDi ~ 0
QSPI_DQ0
Text GLabel 3150 3400 2    50   BiDi ~ 0
QSPI_DQ1
Text GLabel 3150 3500 2    50   BiDi ~ 0
QSPI_DQ2
Text GLabel 3150 3600 2    50   BiDi ~ 0
QSPI_DQ3
Text GLabel 3150 3700 2    50   Output ~ 0
QSPI_SCK
Wire Wire Line
	2750 3200 3150 3200
Text Label 2750 3200 0    50   ~ 0
PS_MIO1
Text Label 2750 3300 0    50   ~ 0
PS_MIO2
Text Label 2750 3400 0    50   ~ 0
PS_MIO3
Text Label 2750 3500 0    50   ~ 0
PS_MIO4
Text Label 2750 3600 0    50   ~ 0
PS_MIO5
Text Label 2750 3700 0    50   ~ 0
PS_MIO6
Wire Wire Line
	2750 3700 3150 3700
Wire Wire Line
	2750 3400 3150 3400
Wire Wire Line
	2750 3800 3150 3800
Text Label 2750 3800 0    50   ~ 0
PS_MIO7
Text Label 2750 3900 0    50   ~ 0
PS_MIO8
Wire Wire Line
	2750 3500 3150 3500
$Comp
L microzed:XC7Z020-1CLG484C IC?
U 7 1 5C3AAAB4
P 1850 2550
F 0 "IC?" H 2308 2715 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 2308 2624 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 4500 2650 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 4500 2550 50  0001 L CNN
F 4 "2.54" H 4500 2350 50  0001 L CNN "Height"
F 5 "XILINX" H 4500 2250 50  0001 L CNN "Manufacturer"
F 6 "XC7Z020-1CLG484C" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	7    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2900 3150 2900
Wire Wire Line
	3400 1350 3550 1350
Wire Wire Line
	2750 2800 4150 2800
Wire Wire Line
	4150 2800 4150 1350
Wire Wire Line
	6350 3900 7050 3900
Wire Wire Line
	6350 3300 10700 3300
Wire Wire Line
	6350 3600 8800 3600
Text Label 6350 3300 0    50   ~ 0
PS_MIO2
Text Label 6350 3400 0    50   ~ 0
PS_MIO3
Text Label 6350 3500 0    50   ~ 0
PS_MIO4
Text Label 6350 3600 0    50   ~ 0
PS_MIO5
Text Label 6350 3700 0    50   ~ 0
PS_MIO6
Text Label 6350 3800 0    50   ~ 0
PS_MIO7
Text Label 6350 3900 0    50   ~ 0
PS_MIO8
Wire Wire Line
	6350 3500 9350 3500
Wire Wire Line
	6350 3400 10000 3400
Wire Wire Line
	8800 3600 8800 2800
Wire Wire Line
	6350 3700 8250 3700
$Comp
L Device:R R?
U 1 1 5C3F7CA1
P 8250 4500
F 0 "R?" H 8320 4546 50  0000 L CNN
F 1 "20K" H 8320 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8180 4500 50  0001 C CNN
F 3 "~" H 8250 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    8250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4350 8250 3700
$Comp
L power:GND #PWR?
U 1 1 5C3F7CA8
P 8250 4650
F 0 "#PWR?" H 8250 4400 50  0001 C CNN
F 1 "GND" H 8255 4477 50  0000 C CNN
F 2 "" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 7650 3800
$Comp
L Device:R R?
U 1 1 5C402B90
P 7650 4500
F 0 "R?" H 7720 4546 50  0000 L CNN
F 1 "20K" H 7720 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7580 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7650 3800
$Comp
L power:GND #PWR?
U 1 1 5C402B97
P 7650 4650
F 0 "#PWR?" H 7650 4400 50  0001 C CNN
F 1 "GND" H 7655 4477 50  0000 C CNN
F 2 "" H 7650 4650 50  0001 C CNN
F 3 "" H 7650 4650 50  0001 C CNN
	1    7650 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C408F95
P 7050 4500
F 0 "R?" H 7120 4546 50  0000 L CNN
F 1 "20K" H 7120 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6980 4500 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3900 7050 4350
$Comp
L Device:R R?
U 1 1 5C4157BA
P 10700 4500
F 0 "R?" H 10770 4546 50  0000 L CNN
F 1 "20K" H 10770 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10630 4500 50  0001 C CNN
F 3 "~" H 10700 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    10700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4350 10700 3300
$Comp
L power:GND #PWR?
U 1 1 5C4157C1
P 10700 4650
F 0 "#PWR?" H 10700 4400 50  0001 C CNN
F 1 "GND" H 10705 4477 50  0000 C CNN
F 2 "" H 10700 4650 50  0001 C CNN
F 3 "" H 10700 4650 50  0001 C CNN
	1    10700 4650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP?
U 1 1 5C45EFD1
P 9050 5250
F 0 "JP?" V 9000 5400 50  0000 L CNN
F 1 "Jumper_3_Open" V 9100 5350 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 9050 5250 50  0001 C CNN
F 3 "~" H 9050 5250 50  0001 C CNN
	1    9050 5250
	0    -1   1    0   
$EndComp
Wire Wire Line
	9500 5150 9500 5000
Wire Wire Line
	9500 5000 9050 5000
Wire Wire Line
	9050 5500 9500 5500
Wire Wire Line
	9500 5500 9500 5350
$Comp
L Device:R R?
U 1 1 5C46B1A9
P 9350 4500
F 0 "R?" H 9420 4546 50  0000 L CNN
F 1 "20K" H 9420 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9280 4500 50  0001 C CNN
F 3 "~" H 9350 4500 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0720KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    9350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5250 9350 5250
Wire Wire Line
	9350 3500 9350 4350
Wire Wire Line
	9350 4650 9350 5250
Connection ~ 9350 5250
Wire Wire Line
	9350 5250 9500 5250
$Comp
L power:GND #PWR?
U 1 1 5C470DA8
P 9050 5600
F 0 "#PWR?" H 9050 5350 50  0001 C CNN
F 1 "GND" H 9055 5427 50  0000 C CNN
F 2 "" H 9050 5600 50  0001 C CNN
F 3 "" H 9050 5600 50  0001 C CNN
	1    9050 5600
	1    0    0    -1  
$EndComp
Connection ~ 9050 5500
$Comp
L power:+3.3V #PWR?
U 1 1 5C4754CC
P 9050 4850
F 0 "#PWR?" H 9050 4700 50  0001 C CNN
F 1 "+3.3V" H 9065 5023 50  0000 C CNN
F 2 "" H 9050 4850 50  0001 C CNN
F 3 "" H 9050 4850 50  0001 C CNN
	1    9050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5000 9050 4850
Connection ~ 9050 5000
Text Notes 6900 6250 0    50   ~ 0
Boot Mode Pin Settings\nUG585 P166 Table 6-4.\n1-2: SD card,        2-3: QSPI\n\nUG585 P166 section 6.2.6\nI/O Pin Connections for Boot Devices\nonly SDIO1 can used as boot device, SIO0 can't.\n\nBoot Time:\nhttps://www.xilinx.com/support/answers/55572.html\nZynq-7000_Boot_time_estimator_QSPI_NAND_rev3.0.xlsm\nboot from NAND is slower than boot from QSPI,\nand the NAND will use more pins.
Text GLabel 3150 3800 2    50   BiDi ~ 0
PS_MIO7
Text GLabel 3150 4100 2    50   BiDi ~ 0
PS_MIO10
Text GLabel 3150 4200 2    50   BiDi ~ 0
PS_MIO11
Text GLabel 3150 4300 2    50   BiDi ~ 0
PS_MIO12
Text GLabel 3150 4400 2    50   BiDi ~ 0
PS_MIO13
Text GLabel 3150 3900 2    50   BiDi ~ 0
PS_MIO8
Text GLabel 3150 4000 2    50   BiDi ~ 0
PS_MIO9
Text Label 2750 4000 0    50   ~ 0
PS_MIO9
Text Label 2750 4100 0    50   ~ 0
PS_MIO10
Text Label 2750 4200 0    50   ~ 0
PS_MIO11
Text Label 2750 4300 0    50   ~ 0
PS_MIO12
Text Label 2750 4400 0    50   ~ 0
PS_MIO13
Text Label 2750 4500 0    50   ~ 0
PS_MIO14
Text Label 2750 4600 0    50   ~ 0
PS_MIO15
Wire Wire Line
	2750 4000 3150 4000
Wire Wire Line
	2750 4100 3150 4100
Wire Wire Line
	2750 4200 3150 4200
Wire Wire Line
	2750 4300 3150 4300
Wire Wire Line
	2750 4400 3150 4400
Wire Wire Line
	2750 4500 3150 4500
Wire Wire Line
	2750 4600 3150 4600
Text Notes 2800 2800 0    50   ~ 0
30M-60MHZ
Text Notes 3650 3050 0    50   ~ 0
DS187P8\nPS_PRO_B must connected\nto GND during power-on.
Text Notes 6000 1000 0    50   ~ 0
LED driver circuit:\nhttps://electronics.stackexchange.com/questions/60865/how-to-drive-a-20ma-led-from-a-4ma-max-gpio-pin
$Comp
L Device:LED LED?
U 1 1 5C94C6A3
P 5800 2200
F 0 "LED?" V 5839 2082 50  0000 R CNN
F 1 "Blue" V 5748 2082 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5800 2200 50  0001 C CNN
F 3 "~" H 5800 2200 50  0001 C CNN
F 4 "Lite-On" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "LTST-C191TBKT" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    5800 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C950243
P 5800 1800
F 0 "R?" H 5870 1846 50  0000 L CNN
F 1 "40.2" H 5870 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5730 1800 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    5800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2050 5800 1950
Wire Wire Line
	5800 2450 5800 2350
Text Notes 6150 1900 0    50   ~ 0
Vr: 3.3 - 0.7 - 2 = 0.6V\nIr: 0.6 / 40.2 = 0.015A < 20mA
Text Notes 700  1700 0    50   ~ 0
datasheet recommand\n0.01uF capacitor.
Text GLabel 3150 3100 2    50   Output ~ 0
PS_MIO0
Text Label 2750 3100 0    50   ~ 0
PS_MIO0
Text Label 4800 1350 0    50   ~ 0
PS_MIO0
Wire Wire Line
	2750 3100 3150 3100
Text Notes 4350 4500 0    50   ~ 0
UG933 P57 Table5-3\nMIO7           MIO0-MIO15\n1.8V mode     20 KΩ resistor to VCCO_MIO0\n3.3V mode     20 KΩ resistor to ground\n\nMIO8           MIO16-MIO53\n1.8V mode     20 KΩ resistor to VCCO_MIO0\n3.3V mode     20 KΩ resistor to ground\n\nBANK501, MIO16-MIO53 use 3.3V, or:\nthe sd card need 3.3V, sowe should add a voltage translater.\nthe IO of usb-uart need voltage translater.
Text Notes 6150 3150 0    50   ~ 0
https://electronics.stackexchange.com/questions/76793/pros-and-cons-of-using-resistor-networks-over-individual-resistors
$Comp
L Device:R R?
U 1 1 5B9256A7
P 3700 1350
F 0 "R?" V 3800 1350 50  0000 C CNN
F 1 "40.2" V 3600 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3630 1350 50  0001 C CNN
F 3 "~" H 3700 1350 50  0001 C CNN
F 4 "Yageo" H 100 -650 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H 100 -650 50  0001 C CNN "ManufacturerPartNumber"
	1    3700 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1350 3850 1350
Text Notes 3650 1100 0    50   ~ 0
clock termination techniques:\nR=Z0
Text Notes 9650 5550 0    50   ~ 0
Accessory: Harwin M7581-05
Wire Wire Line
	9050 5600 9050 5500
$Comp
L power:GND #PWR?
U 1 1 5C8BA4DB
P 7050 4650
F 0 "#PWR?" H 7050 4400 50  0001 C CNN
F 1 "GND" H 7055 4477 50  0000 C CNN
F 2 "" H 7050 4650 50  0001 C CNN
F 3 "" H 7050 4650 50  0001 C CNN
	1    7050 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9A5DBF
P 9700 5250
F 0 "J?" H 9780 5292 50  0000 L CNN
F 1 "640456-3" H 9780 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9700 5250 50  0001 C CNN
F 3 "~" H 9700 5250 50  0001 C CNN
F 4 "TE" H 9700 5250 50  0001 C CNN "Manufacturer"
F 5 "640456-3" H 9700 5250 50  0001 C CNN "ManufacturerPartNumber"
	1    9700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5B92D34A
P 1800 1600
F 0 "C?" H 1800 1650 50  0000 R BNN
F 1 "0.1µF" H 1800 1550 50  0000 R TNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 1838 1450 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CC0201KRX5R5BB104" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    1800 1600
	1    0    0    -1  
$EndComp
Text GLabel 3150 4600 2    50   Output ~ 0
USB_UART_TxD
Text GLabel 3150 4500 2    50   Input ~ 0
USB_UART_RxD
$EndSCHEMATC
