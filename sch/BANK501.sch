EESchema Schematic File Version 4
EELAYER 28 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
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
L microzed:Zynq_7010_7020_SOC_CLG400 U9
U 6 1 5B98CF82
P 2100 1000
F 0 "U9" H 2161 1187 60  0000 C CNN
F 1 "Zynq_7010_7020_SOC_CLG400" H 2161 1081 60  0000 C CNN
F 2 "microzed:BGA400C80P20X20_1700X1700X160" H 2000 1500 60  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 2100 1900 60  0001 C CNN
	6    2100 1000
	1    0    0    -1  
$EndComp
Text GLabel 4650 6800 2    50   Input ~ 0
CARRIER_SRST#
$Comp
L Device:R R63
U 1 1 5B976827
P 4300 6450
F 0 "R63" H 4370 6496 50  0000 L CNN
F 1 "10.00K" H 4370 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4230 6450 50  0001 C CNN
F 3 "~" H 4300 6450 50  0001 C CNN
	1    4300 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6600 4300 6800
$Comp
L power:+3V3 #PWR?
U 1 1 5B977486
P 4300 6200
F 0 "#PWR?" H 4300 6050 50  0001 C CNN
F 1 "+3V3" H 4315 6373 50  0000 C CNN
F 2 "" H 4300 6200 50  0001 C CNN
F 3 "" H 4300 6200 50  0001 C CNN
	1    4300 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 5B97A54D
P 3550 6200
F 0 "#PWR?" H 3550 6050 50  0001 C CNN
F 1 "+1V8" H 3565 6373 50  0000 C CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
$Comp
L microzed:7914J-1-000E S2
U 1 1 5B97B78C
P 2200 6800
F 0 "S2" H 2700 7065 50  0000 C CNN
F 1 "7914J-1-000E" H 2700 6974 50  0000 C CNN
F 2 "microzed:7914J1000E" H 3500 6900 50  0001 L CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/7914.pdf" H 3500 6800 50  0001 L CNN
F 4 "BOURNS - 7914J-1-000E - SWITCH, SPST, 0.1A, 16V, J LEGS" H 3500 6700 50  0001 L CNN "Description"
F 5 "4" H 3500 6600 50  0001 L CNN "Height"
F 6 "Bourns" H 3500 6500 50  0001 L CNN "Manufacturer_Name"
F 7 "7914J-1-000E" H 3500 6400 50  0001 L CNN "Manufacturer_Part_Number"
	1    2200 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B97B903
P 2200 6900
F 0 "#PWR?" H 2200 6650 50  0001 C CNN
F 1 "GND" H 2205 6727 50  0000 C CNN
F 2 "" H 2200 6900 50  0001 C CNN
F 3 "" H 2200 6900 50  0001 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6800 2200 6900
Connection ~ 2200 6900
Text GLabel 3450 5300 2    50   Output ~ 0
PS_SRST#
Connection ~ 3200 5300
Text GLabel 2650 5100 2    50   BiDi ~ 0
ETH_MDIO
Text GLabel 2650 5000 2    50   BiDi ~ 0
ETH_MDC
Text GLabel 2650 4700 2    50   Input ~ 0
USB_UART_RXD
Text GLabel 2650 4600 2    50   Output ~ 0
USB_UART_TXD
Text GLabel 2650 3700 2    50   BiDi ~ 0
USB_D7
Text GLabel 2650 3600 2    50   BiDi ~ 0
USB_D6
Text GLabel 2650 3500 2    50   BiDi ~ 0
USB_D5
Text GLabel 2650 3400 2    50   Input ~ 0
USB_CLK
Text GLabel 2650 3300 2    50   BiDi ~ 0
USB_D3
Text GLabel 2650 3200 2    50   BiDi ~ 0
USB_D2
Text GLabel 2650 3100 2    50   BiDi ~ 0
USB_D1
Text GLabel 2650 3000 2    50   BiDi ~ 0
USB_D0
Text GLabel 2650 2900 2    50   Input ~ 0
USB_NXT
Text GLabel 2650 2800 2    50   Output ~ 0
USB_STP
Text GLabel 2650 2700 2    50   Input ~ 0
USB_DIR
Text GLabel 2650 2600 2    50   BiDi ~ 0
USB_D4
Text GLabel 2650 2500 2    50   Input ~ 0
ETH_RX_CTRL
Text GLabel 2650 2400 2    50   Input ~ 0
ETH_RXD3
Text GLabel 2650 2300 2    50   Input ~ 0
ETH_RXD2
Text GLabel 2650 2200 2    50   Input ~ 0
ETH_RXD1
Text GLabel 2650 2100 2    50   Input ~ 0
ETH_RXD0
Text GLabel 2650 2000 2    50   Input ~ 0
ETH_RX_CLK
Text GLabel 2650 1900 2    50   Output ~ 0
ETH_TX_CTRL
Text GLabel 2650 1800 2    50   Output ~ 0
ETH_TXD3
Text GLabel 2650 1700 2    50   Output ~ 0
ETH_TXD2
Text GLabel 2650 1600 2    50   Output ~ 0
ETH_TXD1
Text GLabel 2650 1500 2    50   Output ~ 0
ETH_TXD0
Text GLabel 2650 1400 2    50   Output ~ 0
ETH_TX_CLK
$Comp
L Device:R R73
U 1 1 5B984C4F
P 3400 1050
F 0 "R73" H 3470 1096 50  0000 L CNN
F 1 "1.00K" H 3470 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3330 1050 50  0001 C CNN
F 3 "~" H 3400 1050 50  0001 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R72
U 1 1 5B984E1F
P 3400 1350
F 0 "R72" H 3470 1396 50  0000 L CNN
F 1 "1.00K" H 3470 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3330 1350 50  0001 C CNN
F 3 "~" H 3400 1350 50  0001 C CNN
	1    3400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1200 3400 1200
Connection ~ 3400 1200
$Comp
L power:GND #PWR?
U 1 1 5B984FE5
P 3400 1500
F 0 "#PWR?" H 3400 1250 50  0001 C CNN
F 1 "GND" H 3405 1327 50  0000 C CNN
F 2 "" H 3400 1500 50  0001 C CNN
F 3 "" H 3400 1500 50  0001 C CNN
	1    3400 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 5B985026
P 3400 900
F 0 "#PWR?" H 3400 750 50  0001 C CNN
F 1 "+1V8" H 3415 1073 50  0000 C CNN
F 2 "" H 3400 900 50  0001 C CNN
F 3 "" H 3400 900 50  0001 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
$Comp
L microzed:TXS02612RTWR U1
U 1 1 5B99441F
P 5200 2300
F 0 "U1" H 6750 3350 50  0000 L CNN
F 1 "TXS02612RTWR" H 6750 3200 50  0000 L CNN
F 2 "microzed:QFN50P400X400X80-25N-D" H 7150 2750 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/txs02612" H 7150 2650 50  0001 L CNN
F 4 "SDIO Port Expander With Voltage-Level Translation" H 7150 2550 50  0001 L CNN "Description"
F 5 "0.8" H 7150 2450 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 7150 2350 50  0001 L CNN "Manufacturer_Name"
	1    5200 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5B994B69
P 3100 3800
F 0 "R9" V 3150 3650 50  0000 C CNN
F 1 "40.2" V 3150 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3030 3800 50  0001 C CNN
F 3 "~" H 3100 3800 50  0001 C CNN
	1    3100 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3900 4300 3900
Wire Wire Line
	2650 4000 4400 4000
Wire Wire Line
	2650 4100 4500 4100
Wire Wire Line
	2650 4200 4600 4200
Wire Wire Line
	2650 4300 4700 4300
$Comp
L Device:C C7
U 1 1 5B997C5D
P 5050 1050
F 0 "C7" H 5100 1150 50  0000 L CNN
F 1 "0.1uF" H 5100 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5088 900 50  0001 C CNN
F 3 "~" H 5050 1050 50  0001 C CNN
	1    5050 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5B997D3F
P 5450 1050
F 0 "C8" H 5500 1150 50  0000 L CNN
F 1 "0.1uF" H 5500 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5488 900 50  0001 C CNN
F 3 "~" H 5450 1050 50  0001 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B997F40
P 5050 1200
F 0 "#PWR?" H 5050 950 50  0001 C CNN
F 1 "GND" H 5055 1027 50  0000 C CNN
F 2 "" H 5050 1200 50  0001 C CNN
F 3 "" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1200 5050 1200
Connection ~ 5050 1200
$Comp
L power:+1V8 #PWR?
U 1 1 5B998EA4
P 5800 900
F 0 "#PWR?" H 5800 750 50  0001 C CNN
F 1 "+1V8" H 5815 1073 50  0000 C CNN
F 2 "" H 5800 900 50  0001 C CNN
F 3 "" H 5800 900 50  0001 C CNN
	1    5800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 900  5800 1300
Wire Wire Line
	5050 900  5450 900 
Connection ~ 5800 900 
Connection ~ 5450 900 
Wire Wire Line
	5450 900  5800 900 
Wire Wire Line
	6200 1300 6100 1300
$Comp
L power:+3V3 #PWR?
U 1 1 5B99B3F3
P 6200 900
F 0 "#PWR?" H 6200 750 50  0001 C CNN
F 1 "+3V3" H 6215 1073 50  0000 C CNN
F 2 "" H 6200 900 50  0001 C CNN
F 3 "" H 6200 900 50  0001 C CNN
	1    6200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 900  6200 1300
Connection ~ 6200 1300
$Comp
L Device:C C5
U 1 1 5B99BCE1
P 6400 1050
F 0 "C5" H 6450 1150 50  0000 L CNN
F 1 "0.1uF" H 6450 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 6438 900 50  0001 C CNN
F 3 "~" H 6400 1050 50  0001 C CNN
	1    6400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 900  6200 900 
Connection ~ 6200 900 
$Comp
L power:GND #PWR?
U 1 1 5B99C667
P 6400 1200
F 0 "#PWR?" H 6400 950 50  0001 C CNN
F 1 "GND" H 6405 1027 50  0000 C CNN
F 2 "" H 6400 1200 50  0001 C CNN
F 3 "" H 6400 1200 50  0001 C CNN
	1    6400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B99D492
P 5200 2800
F 0 "#PWR?" H 5200 2550 50  0001 C CNN
F 1 "GND" H 5205 2627 50  0000 C CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3100 6100 3100
Connection ~ 6100 3100
Wire Wire Line
	6100 3100 6200 3100
$Comp
L power:GND #PWR?
U 1 1 5B99DF64
P 6200 3100
F 0 "#PWR?" H 6200 2850 50  0001 C CNN
F 1 "GND" H 6205 2927 50  0000 C CNN
F 2 "" H 6200 3100 50  0001 C CNN
F 3 "" H 6200 3100 50  0001 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
Connection ~ 6200 3100
Wire Wire Line
	4200 3800 4200 1800
Wire Wire Line
	4300 3900 4300 1900
Wire Wire Line
	4300 1900 5200 1900
Wire Wire Line
	4400 4000 4400 2000
Wire Wire Line
	4400 2000 5200 2000
Wire Wire Line
	4500 4100 4500 2100
Wire Wire Line
	4500 2100 5200 2100
Wire Wire Line
	4600 4200 4600 2200
Wire Wire Line
	4600 2200 5200 2200
Wire Wire Line
	4700 4300 4700 2300
Wire Wire Line
	4700 2300 5200 2300
$Comp
L microzed:5025700893 J6
U 1 1 5B9C2F57
P 8400 1600
F 0 "J6" H 9100 1865 50  0000 C CNN
F 1 "5025700893" H 9100 1774 50  0000 C CNN
F 2 "microzed:5025700893" H 10200 1700 50  0001 L CNN
F 3 "https://www.molex.com/pdm_docs/sd/5025700893_sd.pdf" H 10200 1600 50  0001 L CNN
F 4 "CONN MICRO SD CARD PUSH-PUSH R/A" H 10200 1500 50  0001 L CNN "Description"
F 5 "1" H 10200 1400 50  0001 L CNN "Height"
F 6 "Molex" H 10200 1300 50  0001 L CNN "Manufacturer_Name"
	1    8400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1600 8400 1600
Wire Wire Line
	6800 1700 8100 1700
Wire Wire Line
	6800 1800 8400 1800
Wire Wire Line
	6800 1900 8400 1900
Wire Wire Line
	6800 2000 8400 2000
Wire Wire Line
	6800 2100 8400 2100
Wire Wire Line
	8300 2300 8400 2300
$Comp
L Device:R R4
U 1 1 5B9C6D3B
P 7900 3950
F 0 "R4" H 7970 3996 50  0000 L CNN
F 1 "4.99K" H 7970 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7830 3950 50  0001 C CNN
F 3 "~" H 7900 3950 50  0001 C CNN
	1    7900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4100 7900 4400
$Comp
L power:+1V8 #PWR?
U 1 1 5B9C81C0
P 7900 3800
F 0 "#PWR?" H 7900 3650 50  0001 C CNN
F 1 "+1V8" H 7915 3973 50  0000 C CNN
F 2 "" H 7900 3800 50  0001 C CNN
F 3 "" H 7900 3800 50  0001 C CNN
	1    7900 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B9C906F
P 10200 1900
F 0 "#PWR?" H 10200 1650 50  0001 C CNN
F 1 "GND" H 10205 1727 50  0000 C CNN
F 2 "" H 10200 1900 50  0001 C CNN
F 3 "" H 10200 1900 50  0001 C CNN
	1    10200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1800 10200 1800
Wire Wire Line
	10200 1800 10200 1900
$Comp
L power:+3V3 #PWR?
U 1 1 5B9CB207
P 9800 900
F 0 "#PWR?" H 9800 750 50  0001 C CNN
F 1 "+3V3" H 9815 1073 50  0000 C CNN
F 2 "" H 9800 900 50  0001 C CNN
F 3 "" H 9800 900 50  0001 C CNN
	1    9800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1600 9800 1000
$Comp
L Device:R R3
U 1 1 5B9CC72C
P 8100 1250
F 0 "R3" H 8170 1296 50  0000 L CNN
F 1 "4.99K" H 8170 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 1250 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
	1    8100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1400 8100 1700
Connection ~ 8100 1700
Wire Wire Line
	8100 1700 8400 1700
Connection ~ 9800 1000
Wire Wire Line
	9800 1000 9800 900 
$Comp
L Device:C C2
U 1 1 5B9CF45B
P 10200 1250
F 0 "C2" H 10250 1350 50  0000 L CNN
F 1 "0.1uF" H 10250 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 10238 1100 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
	1    10200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1800 10200 1400
Connection ~ 10200 1800
Wire Wire Line
	10200 1100 10200 1000
Wire Wire Line
	10200 1000 9800 1000
$Comp
L Device:R R54
U 1 1 5B9D3F83
P 8400 2950
F 0 "R54" H 8470 2996 50  0000 L CNN
F 1 "0" H 8470 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8330 2950 50  0001 C CNN
F 3 "~" H 8400 2950 50  0001 C CNN
	1    8400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R47
U 1 1 5B9D412C
P 9800 2950
F 0 "R47" H 9870 2996 50  0000 L CNN
F 1 "0" H 9870 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9730 2950 50  0001 C CNN
F 3 "~" H 9800 2950 50  0001 C CNN
	1    9800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2000 9800 2100
Connection ~ 9800 2100
Wire Wire Line
	9800 2100 9800 2200
Connection ~ 9800 2200
Wire Wire Line
	9800 2200 9800 2300
Connection ~ 9800 2300
Wire Wire Line
	9800 2300 9800 2700
$Comp
L power:GND #PWR?
U 1 1 5B9D82A2
P 9800 3300
F 0 "#PWR?" H 9800 3050 50  0001 C CNN
F 1 "GND" H 9805 3127 50  0000 C CNN
F 2 "" H 9800 3300 50  0001 C CNN
F 3 "" H 9800 3300 50  0001 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3100 8400 3200
$Comp
L power:GNDPWR #PWR?
U 1 1 5B9DE882
P 10200 3300
F 0 "#PWR?" H 10200 3100 50  0001 C CNN
F 1 "GNDPWR" H 10204 3146 50  0000 C CNN
F 2 "" H 10200 3250 50  0001 C CNN
F 3 "" H 10200 3250 50  0001 C CNN
	1    10200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2700 10200 2700
Wire Wire Line
	10200 2700 10200 3300
Connection ~ 9800 2700
Wire Wire Line
	9800 2700 9800 2800
Text Label 4150 3800 2    50   ~ 0
SD_CLK
Text Label 4150 3900 2    50   ~ 0
SD_CMD
Text Label 4100 4000 2    50   ~ 0
SD_D0
Text Label 4100 4100 2    50   ~ 0
SD_D1
Text Label 4100 4200 2    50   ~ 0
SD_D2
Text Label 4100 4300 2    50   ~ 0
SD_D3
Text Label 4100 4400 2    50   ~ 0
SD_CD
NoConn ~ 6800 2300
NoConn ~ 6800 2400
NoConn ~ 6800 2500
NoConn ~ 6800 2600
NoConn ~ 6800 2700
NoConn ~ 6800 2800
Wire Wire Line
	3450 5300 3200 5300
Wire Wire Line
	2650 5300 3200 5300
$Comp
L power:GND #PWR?
U 1 1 5BA02F76
P 5200 4500
F 0 "#PWR?" H 5200 4250 50  0001 C CNN
F 1 "GND" H 5205 4327 50  0000 C CNN
F 2 "" H 5200 4500 50  0001 C CNN
F 3 "" H 5200 4500 50  0001 C CNN
	1    5200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4500 5200 4500
Text Label 4100 4500 2    50   ~ 0
SD_WP
Wire Wire Line
	9800 3100 9800 3300
Wire Wire Line
	8400 2400 8400 2800
$Comp
L power:GND #PWR?
U 1 1 5BA186BE
P 8400 3200
F 0 "#PWR?" H 8400 2950 50  0001 C CNN
F 1 "GND" H 8405 3027 50  0000 C CNN
F 2 "" H 8400 3200 50  0001 C CNN
F 3 "" H 8400 3200 50  0001 C CNN
	1    8400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3800 4200 3800
Wire Wire Line
	5200 1800 4200 1800
Text GLabel 2650 4800 2    50   Output ~ 0
ETH_RST#
Text GLabel 2650 4900 2    50   Output ~ 0
USB_RST#
Wire Wire Line
	2650 3800 2950 3800
$Comp
L Device:R R64
U 1 1 5BE19B31
P 3550 6550
F 0 "R64" H 3620 6596 50  0000 L CNN
F 1 "10.00K" H 3620 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3480 6550 50  0001 C CNN
F 3 "~" H 3550 6550 50  0001 C CNN
	1    3550 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6800 3550 6800
Wire Wire Line
	8300 2300 8300 4400
Connection ~ 7900 4400
Wire Wire Line
	7900 4400 8300 4400
Wire Wire Line
	2650 4400 7900 4400
$Comp
L power:+3V3 #PWR?
U 1 1 5BD8DF10
P 8100 900
F 0 "#PWR?" H 8100 750 50  0001 C CNN
F 1 "+3V3" H 8115 1073 50  0000 C CNN
F 2 "" H 8100 900 50  0001 C CNN
F 3 "" H 8100 900 50  0001 C CNN
	1    8100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1100 8100 900 
$Comp
L Transistor_FET:BSS138 Q6
U 1 1 5BD9E35B
P 4000 6700
F 0 "Q6" V 4251 6700 50  0000 C CNN
F 1 "BSS138" V 4342 6700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 6625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 4000 6700 50  0001 L CNN
	1    4000 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 6200 4300 6300
Wire Wire Line
	3550 6800 3550 6700
Wire Wire Line
	3200 5300 3200 6800
Wire Wire Line
	3550 6200 3550 6300
Wire Wire Line
	3800 6800 3550 6800
Connection ~ 3550 6800
Wire Wire Line
	3550 6300 4000 6300
Wire Wire Line
	4000 6300 4000 6500
Connection ~ 3550 6300
Wire Wire Line
	3550 6300 3550 6400
Wire Wire Line
	4650 6800 4300 6800
Connection ~ 4300 6800
Wire Wire Line
	4300 6800 4200 6800
Connection ~ 3200 6800
Wire Wire Line
	3200 6900 3200 6800
$EndSCHEMATC
