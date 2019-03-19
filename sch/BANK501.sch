EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 19
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7550 2650 2    50   Input ~ 0
CARRIER_SRST#
$Comp
L Device:R R?
U 1 1 5B976827
P 7300 2150
F 0 "R?" H 7370 2196 50  0000 L CNN
F 1 "10k" H 7370 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 2150 50  0001 C CNN
F 3 "~" H 7300 2150 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2300 7300 2500
$Comp
L power:+3V3 #PWR?
U 1 1 5B977486
P 7300 1900
F 0 "#PWR?" H 7300 1750 50  0001 C CNN
F 1 "+3V3" H 7315 2073 50  0000 C CNN
F 2 "" H 7300 1900 50  0001 C CNN
F 3 "" H 7300 1900 50  0001 C CNN
	1    7300 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B97B903
P 7300 3400
F 0 "#PWR?" H 7300 3150 50  0001 C CNN
F 1 "GND" H 7305 3227 50  0000 C CNN
F 2 "" H 7300 3400 50  0001 C CNN
F 3 "" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3300 7300 3400
Text GLabel 7550 2500 2    50   Output ~ 0
PS_SRST#
Connection ~ 7300 2500
Text GLabel 4650 6400 2    50   BiDi ~ 0
ETH_MDIO
Text GLabel 4650 6300 2    50   BiDi ~ 0
ETH_MDC
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
ETH_RX_D3
Text GLabel 4650 3600 2    50   Input ~ 0
ETH_RX_D2
Text GLabel 4650 3500 2    50   Input ~ 0
ETH_RX_D1
Text GLabel 4650 3400 2    50   Input ~ 0
ETH_RX_D0
Text GLabel 4650 3300 2    50   Input ~ 0
ETH_RX_CLK
Text GLabel 4650 3200 2    50   Output ~ 0
ETH_TX_CTRL
Text GLabel 4650 3100 2    50   Output ~ 0
ETH_TX_D3
Text GLabel 4650 3000 2    50   Output ~ 0
ETH_TX_D2
Text GLabel 4650 2900 2    50   Output ~ 0
ETH_TX_D1
Text GLabel 4650 2800 2    50   Output ~ 0
ETH_TX_D0
Text GLabel 4650 2700 2    50   Output ~ 0
ETH_TX_CLK
Wire Wire Line
	4750 1750 5500 1750
$Comp
L power:GND #PWR?
U 1 1 5B984FE5
P 6250 2150
F 0 "#PWR?" H 6250 1900 50  0001 C CNN
F 1 "GND" H 6255 1977 50  0000 C CNN
F 2 "" H 6250 2150 50  0001 C CNN
F 3 "" H 6250 2150 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B994B69
P 5250 5100
F 0 "R?" V 5200 5100 50  0000 C BNN
F 1 "40.2" V 5300 5100 50  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5180 5100 50  0001 C CNN
F 3 "~" H 5250 5100 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0740R2L" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    5250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2500 7300 2500
Wire Wire Line
	5400 5100 5600 5100
Text GLabel 4650 6100 2    50   Output ~ 0
ETH_RST#
Text GLabel 4650 6200 2    50   Output ~ 0
USB_RST#
Wire Wire Line
	4650 5100 5100 5100
Wire Wire Line
	7300 1900 7300 2000
Wire Wire Line
	7300 2500 7300 2650
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
L microzed:XC7Z020-1CLG484C IC1
U 8 1 5C48C6B6
P 3650 2100
F 0 "IC1" H 4158 2265 50  0000 C CNN
F 1 "XC7Z020-1CLG484C" H 4158 2174 50  0000 C CNN
F 2 "microzed:BGA484C100P22X22_2300X2300X254" H 6300 2200 50  0001 L CNN
F 3 "http://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf" H 6300 2100 50  0001 L CNN
F 4 "2.54" H 6300 1900 50  0001 L CNN "Height"
F 5 "XILINX" H 6300 1800 50  0001 L CNN "Manufacturer"
F 6 "XC7Z020-1CLG484C" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	8    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 4750 2400
Wire Wire Line
	4750 2400 4750 1750
Wire Wire Line
	4650 2500 7300 2500
Text Notes 5450 5000 0    50   ~ 0
UG933 P63 SDIO
Text Notes 4750 1700 0    50   ~ 0
UG933 P57\nhalf of Vcc_mio1\nonly for rgmii
$Comp
L Device:C C?
U 1 1 5C46BA3F
P 5500 1900
F 0 "C?" H 5615 1946 50  0000 L CNN
F 1 "0.01µF" H 5615 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5538 1750 50  0001 C CNN
F 3 "~" H 5500 1900 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CC0201KRX5R7BB103" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    5500 1900
	1    0    0    -1  
$EndComp
Connection ~ 5500 1750
Wire Wire Line
	5500 1750 6250 1750
Wire Wire Line
	5500 2050 6250 2050
Wire Wire Line
	6250 2150 6250 2050
Text Notes 5400 3350 0    50   ~ 0
UG933 P57 Table5-3\nMIO8           MIO16-MIO53\n1.8V mode     20 KΩ resistor to VCCO_MIO0\n3.3V mode     20 KΩ resistor to ground\n 
Wire Wire Line
	6250 1450 6250 1350
Wire Wire Line
	7300 2650 7550 2650
$Comp
L Switch:SW_Push SW?
U 1 1 5C865F2D
P 7300 3100
F 0 "SW?" V 7254 3248 50  0000 L CNN
F 1 "SW_Push" V 7345 3248 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 7300 3300 50  0001 C CNN
F 3 "~" H 7300 3300 50  0001 C CNN
F 4 "TE" H 7300 3100 50  0001 C CNN "Manufacturer"
F 5 "FSM4JH" H 7300 3100 50  0001 C CNN "ManufacturerPartNumber"
	1    7300 3100
	0    1    1    0   
$EndComp
Connection ~ 7300 2650
Wire Wire Line
	7300 2650 7300 2900
$Comp
L Device:R R?
U 1 1 5C922853
P 6250 1600
F 0 "R?" H 6320 1646 50  0000 L CNN
F 1 "10k" H 6320 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6180 1600 50  0001 C CNN
F 3 "~" H 6250 1600 50  0001 C CNN
F 4 "Yageo" H -1050 -550 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H -1050 -550 50  0001 C CNN "ManufacturerPartNumber"
	1    6250 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C923079
P 6250 1900
F 0 "R?" H 6320 1946 50  0000 L CNN
F 1 "10k" H 6320 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6180 1900 50  0001 C CNN
F 3 "~" H 6250 1900 50  0001 C CNN
F 4 "Yageo" H -1050 -250 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H -1050 -250 50  0001 C CNN "ManufacturerPartNumber"
	1    6250 1900
	1    0    0    -1  
$EndComp
Connection ~ 6250 1750
Connection ~ 6250 2050
$Comp
L power:+3V3 #PWR?
U 1 1 5CE7BB2E
P 6250 1350
F 0 "#PWR?" H 6250 1200 50  0001 C CNN
F 1 "+3V3" H 6265 1523 50  0000 C CNN
F 2 "" H 6250 1350 50  0001 C CNN
F 3 "" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
Text GLabel 4650 5900 2    50   Output ~ 0
USB_UART_TxD
Text GLabel 4650 6000 2    50   Input ~ 0
USB_UART_RxD
Text Notes 6150 4700 0    50   ~ 0
We use 3.3V for BANK501\nalthough ug585 said the rgmii does not support it,\nthe main reason is ethernet phy is too expensive.\nwe find rtl8211e is cheaper, but only -VL model\nsupport 1.8V, which has no any solder.\nonother reason is if we use 1.8V, both of\nSDIO/UART-USB need extra level translator (1.8V-3.3V).\n\nhttps://forums.xilinx.com/t5/Embedded-Processor-System-Design/zynq-interface-to-micrel-ksz9021/td-p/464112\nsome one has successful use case for ksz9021 under 3.3V,\nwe should try it.
$EndSCHEMATC
