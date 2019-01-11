EESchema Schematic File Version 4
EELAYER 28 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 17
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8750 4150 2    50   Input ~ 0
CARRIER_SRST#
$Comp
L Device:R R63
U 1 1 5B976827
P 8400 3800
F 0 "R63" H 8470 3846 50  0000 L CNN
F 1 "10.00K" H 8470 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8330 3800 50  0001 C CNN
F 3 "~" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3950 8400 4150
$Comp
L power:+3V3 #PWR?
U 1 1 5B977486
P 8400 3550
F 0 "#PWR?" H 8400 3400 50  0001 C CNN
F 1 "+3V3" H 8415 3723 50  0000 C CNN
F 2 "" H 8400 3550 50  0001 C CNN
F 3 "" H 8400 3550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 5B97A54D
P 7650 3550
F 0 "#PWR?" H 7650 3400 50  0001 C CNN
F 1 "+1V8" H 7665 3723 50  0000 C CNN
F 2 "" H 7650 3550 50  0001 C CNN
F 3 "" H 7650 3550 50  0001 C CNN
	1    7650 3550
	1    0    0    -1  
$EndComp
$Comp
L microzed:7914J-1-000E S2
U 1 1 5B97B78C
P 6300 4150
F 0 "S2" H 6800 4415 50  0000 C CNN
F 1 "7914J-1-000E" H 6800 4324 50  0000 C CNN
F 2 "microzed:7914J1000E" H 7600 4250 50  0001 L CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/7914.pdf" H 7600 4150 50  0001 L CNN
F 4 "BOURNS - 7914J-1-000E - SWITCH, SPST, 0.1A, 16V, J LEGS" H 7600 4050 50  0001 L CNN "Description"
F 5 "4" H 7600 3950 50  0001 L CNN "Height"
F 6 "Bourns" H 7600 3850 50  0001 L CNN "Manufacturer_Name"
F 7 "7914J-1-000E" H 7600 3750 50  0001 L CNN "Manufacturer_Part_Number"
	1    6300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B97B903
P 6300 4250
F 0 "#PWR?" H 6300 4000 50  0001 C CNN
F 1 "GND" H 6305 4077 50  0000 C CNN
F 2 "" H 6300 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
	1    6300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4150 6300 4250
Connection ~ 6300 4250
Text GLabel 7550 2650 2    50   Output ~ 0
PS_SRST#
Connection ~ 7300 2650
Text GLabel 4650 6400 2    50   BiDi ~ 0
ETH_MDIO
Text GLabel 4650 6300 2    50   BiDi ~ 0
ETH_MDC
Text GLabel 4650 6000 2    50   Input ~ 0
USB_UART_RXD
Text GLabel 4650 5900 2    50   Output ~ 0
USB_UART_TXD
Text GLabel 4650 5000 2    50   BiDi ~ 0
USB_D7
Text GLabel 4650 4900 2    50   BiDi ~ 0
USB_D6
Text GLabel 4650 4800 2    50   BiDi ~ 0
USB_D5
Text GLabel 4650 4700 2    50   Input ~ 0
USB_CLK
Text GLabel 4650 4600 2    50   BiDi ~ 0
USB_D3
Text GLabel 4650 4500 2    50   BiDi ~ 0
USB_D2
Text GLabel 4650 4400 2    50   BiDi ~ 0
USB_D1
Text GLabel 4650 4300 2    50   BiDi ~ 0
USB_D0
Text GLabel 4650 4200 2    50   Input ~ 0
USB_NXT
Text GLabel 4650 4100 2    50   Output ~ 0
USB_STP
Text GLabel 4650 4000 2    50   Input ~ 0
USB_DIR
Text GLabel 4650 3900 2    50   BiDi ~ 0
USB_D4
Text GLabel 4650 3800 2    50   Input ~ 0
ETH_RX_CTRL
Text GLabel 4650 3700 2    50   Input ~ 0
ETH_RXD3
Text GLabel 4650 3600 2    50   Input ~ 0
ETH_RXD2
Text GLabel 4650 3500 2    50   Input ~ 0
ETH_RXD1
Text GLabel 4650 3400 2    50   Input ~ 0
ETH_RXD0
Text GLabel 4650 3300 2    50   Input ~ 0
ETH_RX_CLK
Text GLabel 4650 3200 2    50   Output ~ 0
ETH_TX_CTRL
Text GLabel 4650 3100 2    50   Output ~ 0
ETH_TXD3
Text GLabel 4650 3000 2    50   Output ~ 0
ETH_TXD2
Text GLabel 4650 2900 2    50   Output ~ 0
ETH_TXD1
Text GLabel 4650 2800 2    50   Output ~ 0
ETH_TXD0
Text GLabel 4650 2700 2    50   Output ~ 0
ETH_TX_CLK
$Comp
L Device:R R73
U 1 1 5B984C4F
P 7300 1700
F 0 "R73" H 7370 1746 50  0000 L CNN
F 1 "1.00K" H 7370 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 1700 50  0001 C CNN
F 3 "~" H 7300 1700 50  0001 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R72
U 1 1 5B984E1F
P 7300 2000
F 0 "R72" H 7370 2046 50  0000 L CNN
F 1 "1.00K" H 7370 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 2000 50  0001 C CNN
F 3 "~" H 7300 2000 50  0001 C CNN
	1    7300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1850 7300 1850
Connection ~ 7300 1850
$Comp
L power:GND #PWR?
U 1 1 5B984FE5
P 7300 2150
F 0 "#PWR?" H 7300 1900 50  0001 C CNN
F 1 "GND" H 7305 1977 50  0000 C CNN
F 2 "" H 7300 2150 50  0001 C CNN
F 3 "" H 7300 2150 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 5B985026
P 7300 1550
F 0 "#PWR?" H 7300 1400 50  0001 C CNN
F 1 "+1V8" H 7315 1723 50  0000 C CNN
F 2 "" H 7300 1550 50  0001 C CNN
F 3 "" H 7300 1550 50  0001 C CNN
	1    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5B994B69
P 5250 5100
F 0 "R9" V 5300 4950 50  0000 C CNN
F 1 "40.2" V 5300 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5180 5100 50  0001 C CNN
F 3 "~" H 5250 5100 50  0001 C CNN
	1    5250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2650 7300 2650
Wire Wire Line
	5400 5100 5600 5100
Text GLabel 4650 6100 2    50   Output ~ 0
ETH_RST#
Text GLabel 4650 6200 2    50   Output ~ 0
USB_RST#
Wire Wire Line
	4650 5100 5100 5100
$Comp
L Device:R R64
U 1 1 5BE19B31
P 7650 3900
F 0 "R64" H 7720 3946 50  0000 L CNN
F 1 "10.00K" H 7720 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7580 3900 50  0001 C CNN
F 3 "~" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4150 7650 4150
$Comp
L Transistor_FET:BSS138 Q6
U 1 1 5BD9E35B
P 8100 4050
F 0 "Q6" V 8351 4050 50  0000 C CNN
F 1 "BSS138" V 8442 4050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8300 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 8100 4050 50  0001 L CNN
	1    8100 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3550 8400 3650
Wire Wire Line
	7650 4150 7650 4050
Wire Wire Line
	7300 2650 7300 4150
Wire Wire Line
	7650 3550 7650 3650
Wire Wire Line
	7900 4150 7650 4150
Connection ~ 7650 4150
Wire Wire Line
	7650 3650 8100 3650
Wire Wire Line
	8100 3650 8100 3850
Connection ~ 7650 3650
Wire Wire Line
	7650 3650 7650 3750
Wire Wire Line
	8750 4150 8400 4150
Connection ~ 8400 4150
Wire Wire Line
	8400 4150 8300 4150
Connection ~ 7300 4150
Wire Wire Line
	7300 4250 7300 4150
Text GLabel 5600 5100 2    50   Output ~ 0
SD_CLK
Text GLabel 4650 5200 2    50   Output ~ 0
SD_CMD
Text GLabel 4650 5300 2    50   BiDi ~ 0
SD_D0
Text GLabel 4650 5400 2    50   BiDi ~ 0
SD_D1
Text GLabel 4650 5500 2    50   BiDi ~ 0
SD_D2
Text GLabel 4650 5600 2    50   BiDi ~ 0
SD_D3
Text GLabel 4650 5700 2    50   Input ~ 0
SD_CD
Text GLabel 4650 5800 2    50   Input ~ 0
SD_WP
$Comp
L microzed:XC7Z020-1CLG484C IC?
U 8 1 5C48C6B6
P 3650 2100
F 0 "IC?" H 4158 2265 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 4158 2174 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 6300 2200 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 6300 2100 50  0001 L CNN
F 4 "XC7Z020-1CLG484C, FPGA ZYNQ-7 1.2  3.3 V 484-pin CLG" H 6300 2000 50  0001 L CNN "Description"
F 5 "2.54" H 6300 1900 50  0001 L CNN "Height"
F 6 "XILINX" H 6300 1800 50  0001 L CNN "Manufacturer_Name"
F 7 "XC7Z020-1CLG484C" H 6300 1700 50  0001 L CNN "Manufacturer_Part_Number"
	8    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 6550 2400
Wire Wire Line
	6550 2400 6550 1850
Wire Wire Line
	4650 2500 6550 2500
Wire Wire Line
	6550 2500 6550 2650
Wire Wire Line
	6550 2650 7300 2650
Text Notes 5200 5000 0    50   ~ 0
UG933 P63 SDIO
$EndSCHEMATC
