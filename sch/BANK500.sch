EESchema Schematic File Version 4
EELAYER 28 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 17
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
F 4 "Standard Clock Oscillators 33.333MHZ 50ppm -40 + 85C" H 3750 1250 50  0001 L CNN "Description"
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B9256A7
P 3600 2000
F 0 "R?" H 3670 2046 50  0000 L CNN
F 1 "40.2" H 3670 1955 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 3530 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B92CE9C
P 3400 1450
F 0 "#PWR?" H 3400 1200 50  0001 C CNN
F 1 "GND" H 3405 1277 50  0000 C CNN
F 2 "" H 3400 1450 50  0001 C CNN
F 3 "" H 3400 1450 50  0001 C CNN
	1    3400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B92CEE9
P 2100 1450
F 0 "R?" V 2200 1450 50  0000 C CNN
F 1 "4.99K" V 2300 1450 50  0000 C CNN
F 2 "" V 2030 1450 50  0001 C CNN
F 3 "~" H 2100 1450 50  0001 C CNN
	1    2100 1450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5B92D064
P 2300 1700
F 0 "TP?" H 2300 1950 50  0000 C TNN
F 1 "TestPoint" H 2243 1818 50  0001 R CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "~" H 2500 1700 50  0001 C CNN
	1    2300 1700
	1    0    0    1   
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
L Device:C C?
U 1 1 5B92D34A
P 1800 1600
F 0 "C?" H 1750 1650 50  0000 R BNN
F 1 "0.1uF" H 1750 1550 50  0000 R TNN
F 2 "Capacitor_SMD:C_0201" H 1838 1450 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
	1    1800 1600
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
	1950 1450 1800 1450
Wire Wire Line
	2250 1350 1800 1350
Wire Wire Line
	1800 1450 1800 1350
Connection ~ 1800 1450
Connection ~ 1800 1350
Wire Wire Line
	2300 1700 2300 1450
Text GLabel 3100 2900 2    50   Input ~ 0
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
F 2 "Resistor_SMD:R_0402" V 8730 2650 50  0001 C CNN
F 3 "~" H 8800 2650 50  0001 C CNN
	1    8800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3900 3150 3900
$Comp
L Device:R R70
U 1 1 5B9611C5
P 10000 4500
F 0 "R70" H 10070 4546 50  0000 L CNN
F 1 "20K" H 10070 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402" V 9930 4500 50  0001 C CNN
F 3 "~" H 10000 4500 50  0001 C CNN
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
L microzed:HSMH-C191 LED?
U 1 1 5BDA4E71
P 5200 1800
F 0 "LED?" H 5500 2187 50  0000 C CNN
F 1 "HSMH-C191" H 5500 2096 50  0000 C CNN
F 2 "microzed:LEDC1608X60N" H 6150 1950 50  0001 L BNN
F 3 "https://www.broadcom.com/products/leds-and-displays/chip-leds/0603-1.6-x-0.88mm-top-mount/hsmh-c191#documentation" H 6150 1850 50  0001 L BNN
F 4 "ChipLED,Red,diffused,17mcd,SMD Avago HSMH-C191 Red LED, 639 nm, 1608 (0603) Clear, Dome Lens SMD Package" H 6150 1750 50  0001 L BNN "Description"
F 5 "0.6" H 6150 1650 50  0001 L BNN "Height"
F 6 "Avago Technologies" H 6150 1550 50  0001 L BNN "Manufacturer_Name"
	1    5200 1800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5BDA4E78
P 4900 2200
F 0 "Q?" H 5091 2246 50  0000 L CNN
F 1 "MMBT3904" H 5091 2155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5100 2125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4900 2200 50  0001 L CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BDA4E7F
P 4550 2200
F 0 "R?" V 4450 2200 50  0000 C BNN
F 1 "240" V 4650 2200 50  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4480 2200 50  0001 C CNN
F 3 "~" H 4550 2200 50  0001 C CNN
	1    4550 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BDA4E86
P 5000 2550
F 0 "#PWR?" H 5000 2300 50  0001 C CNN
F 1 "GND" H 5005 2377 50  0000 C CNN
F 2 "" H 5000 2550 50  0001 C CNN
F 3 "" H 5000 2550 50  0001 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2000 5000 1800
Wire Wire Line
	5000 1800 5200 1800
$Comp
L Device:R R?
U 1 1 5BDA4E8E
P 6150 1800
F 0 "R?" V 6050 1800 50  0000 C BNN
F 1 "240" V 6250 1800 50  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6080 1800 50  0001 C CNN
F 3 "~" H 6150 1800 50  0001 C CNN
	1    6150 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1800 6000 1800
$Comp
L power:+3V3 #PWR?
U 1 1 5BDA4E96
P 6500 1600
F 0 "#PWR?" H 6500 1450 50  0001 C CNN
F 1 "+3V3" H 6515 1773 50  0000 C CNN
F 2 "" H 6500 1600 50  0001 C CNN
F 3 "" H 6500 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1800 6500 1800
Wire Wire Line
	6500 1800 6500 1600
Wire Wire Line
	5000 2400 5000 2550
Wire Wire Line
	2750 3300 3150 3300
Wire Wire Line
	2750 3600 3150 3600
Wire Wire Line
	4000 2200 4000 3100
Wire Wire Line
	4000 3100 2750 3100
Wire Wire Line
	4000 2200 4400 2200
Text GLabel 3150 3200 2    50   Output ~ 0
QSPI_CS
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
L microzed:XC7Z020-1CLG484C IC1
U 7 1 5C3AAAB4
P 1850 2550
F 0 "IC1" H 2308 2715 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 2308 2624 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 4500 2650 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 4500 2550 50  0001 L CNN
F 4 "XC7Z020-1CLG484C, FPGA ZYNQ-7 1.2  3.3 V 484-pin CLG" H 4500 2450 50  0001 L CNN "Description"
F 5 "2.54" H 4500 2350 50  0001 L CNN "Height"
F 6 "XILINX" H 4500 2250 50  0001 L CNN "Manufacturer_Name"
F 7 "XC7Z020-1CLG484C" H 4500 2150 50  0001 L CNN "Manufacturer_Part_Number"
	7    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2900 3100 2900
Wire Wire Line
	3400 1350 3600 1350
Wire Wire Line
	3600 1350 3600 1850
Wire Wire Line
	2750 2800 3600 2800
Wire Wire Line
	3600 2800 3600 2150
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
F 2 "Resistor_SMD:R_0402" V 8180 4500 50  0001 C CNN
F 3 "~" H 8250 4500 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0402" V 7580 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
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
L power:+3.3V #PWR?
U 1 1 5C408F8F
P 7050 2500
F 0 "#PWR?" H 7050 2350 50  0001 C CNN
F 1 "+3.3V" H 7065 2673 50  0000 C CNN
F 2 "" H 7050 2500 50  0001 C CNN
F 3 "" H 7050 2500 50  0001 C CNN
	1    7050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C408F95
P 7050 2650
F 0 "R?" H 7120 2696 50  0000 L CNN
F 1 "20K" H 7120 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402" V 6980 2650 50  0001 C CNN
F 3 "~" H 7050 2650 50  0001 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3900 7050 2800
$Comp
L Device:R R?
U 1 1 5C4157BA
P 10700 4500
F 0 "R?" H 10770 4546 50  0000 L CNN
F 1 "20K" H 10770 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402" V 10630 4500 50  0001 C CNN
F 3 "~" H 10700 4500 50  0001 C CNN
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
L microzed:5-146280-3 J?
U 1 1 5C45DC70
P 9500 5150
F 0 "J?" H 9828 5096 50  0000 L CNN
F 1 "5-146280-3" H 9828 5005 50  0000 L CNN
F 2 "microzed:HDRV3W97P0X254_1X3_721X234X821P" H 10150 5250 50  0001 L CNN
F 3 "http://pdl.designspark.com/api/v1/manufacturers/53f31a629b4759f8698ba80b/part/53f33e0b9b4759f869d709b8/55bff39a8759c5ef5e8d0d63/1.pdf" H 10150 5150 50  0001 L CNN
F 4 "Header vert 3 way 2.54mm AmpModu" H 10150 5050 50  0001 L CNN "Description"
F 5 "8.21" H 10150 4950 50  0001 L CNN "Height"
F 6 "TE Connectivity" H 10150 4850 50  0001 L CNN "Manufacturer_Name"
F 7 "5-146280-3" H 10150 4750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "7176592P" H 10150 4650 50  0001 L CNN "RS Part Number"
F 9 "http://uk.rs-online.com/web/p/products/7176592P" H 10150 4550 50  0001 L CNN "RS Price/Stock"
F 10 "70042445" H 10150 4450 50  0001 L CNN "Allied_Number"
F 11 "https://www.alliedelec.com/te-connectivity-5-146280-3/70042445/" H 10150 4350 50  0001 L CNN "Allied Price/Stock"
F 12 "5-146280-3" H 10150 4250 50  0001 L CNN "Arrow Part Number"
F 13 "https://www.arrow.com/en/products/5-146280-3/te-connectivity" H 10150 4150 50  0001 L CNN "Arrow Price/Stock"
	1    9500 5150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP?
U 1 1 5C45EFD1
P 9050 5250
F 0 "JP?" V 9096 5337 50  0000 L CNN
F 1 "Jumper_3_Open" V 9005 5337 50  0000 L CNN
F 2 "" H 9050 5250 50  0001 C CNN
F 3 "~" H 9050 5250 50  0001 C CNN
	1    9050 5250
	0    -1   -1   0   
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
F 2 "Resistor_SMD:R_0402" V 9280 4500 50  0001 C CNN
F 3 "~" H 9350 4500 50  0001 C CNN
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
Wire Wire Line
	9050 5600 9050 5500
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
Text Notes 8200 1900 0    50   ~ 0
Boot Mode Pin Settings\nUG585 P166 Table 6-4.\n\nUG585 P166 section 6.2.6\nI/O Pin Connections for Boot Devices\nonly SDIO1 can used as boot device, SIO0 can't.\n\nBoot Time:\nhttps://www.xilinx.com/support/answers/55572.html\nZynq-7000_Boot_time_estimator_QSPI_NAND_rev3.0.xlsm\nboot from NAND is slower than boot from QSPI,\nand the NAND will use more pins.
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
Text GLabel 3150 4500 2    50   BiDi ~ 0
PS_MIO14
Text GLabel 3150 4600 2    50   BiDi ~ 0
PS_MIO15
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
Text Notes 3600 3000 0    50   ~ 0
DS187P8\nPS_PRO_B must connected\nto GND during power-on.
Text Notes 5400 2000 0    50   ~ 0
20mA
Text Notes 3850 3550 0    50   ~ 0
UG933 P57 Table5-3\nMIO7 2.5V,3.3V mode\nMIO0-MIO15: 20 KΩ resistor to ground
Text GLabel 3150 4000 2    50   Input ~ 0
USB_UART_RXD
Text GLabel 3150 3900 2    50   Output ~ 0
USB_UART_TXD
$EndSCHEMATC
