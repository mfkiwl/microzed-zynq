EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 19
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
	5550 2600 7150 2600
Wire Wire Line
	5550 2700 6850 2700
Wire Wire Line
	5550 2500 7150 2500
Wire Wire Line
	5550 2900 7150 2900
Wire Wire Line
	5550 3200 7150 3200
Wire Wire Line
	5550 3100 7150 3100
Wire Wire Line
	7050 3300 7150 3300
Wire Wire Line
	6650 5100 6650 5400
$Comp
L power:GND #PWR?
U 1 1 5C3A8F41
P 3350 4750
F 0 "#PWR?" H 3350 4500 50  0001 C CNN
F 1 "GND" H 3355 4577 50  0000 C CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4650 3350 4650
Wire Wire Line
	3350 4650 3350 4750
$Comp
L power:+3V3 #PWR?
U 1 1 5C3A8F49
P 3350 4050
F 0 "#PWR?" H 3350 3900 50  0001 C CNN
F 1 "+3V3" H 3365 4223 50  0000 C CNN
F 2 "" H 3350 4050 50  0001 C CNN
F 3 "" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2400 6850 2700
Connection ~ 6850 2700
Wire Wire Line
	6850 2700 7150 2700
Wire Wire Line
	3350 4150 3350 4050
$Comp
L Device:C C?
U 1 1 5C3A8F5B
P 3350 4400
F 0 "C?" H 3400 4500 50  0000 L CNN
F 1 "0.1µF" H 3400 4300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3388 4250 50  0001 C CNN
F 3 "~" H 3350 4400 50  0001 C CNN
F 4 "Yageo" H -5600 2150 50  0001 C CNN "Manufacturer"
F 5 "CC0201KRX5R5BB104" H -5600 2150 50  0001 C CNN "ManufacturerPartNumber"
	1    3350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4650 3350 4550
Connection ~ 3350 4650
Wire Wire Line
	3350 4250 3350 4150
$Comp
L Device:R R?
U 1 1 5C3A8F65
P 7150 3950
F 0 "R?" H 7220 3996 50  0000 L CNN
F 1 "0" H 7220 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7080 3950 50  0001 C CNN
F 3 "~" H 7150 3950 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-070RL" H 0   0   50  0001 C CNN "ManufacturerPartNumber"
	1    7150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C3A8F6B
P 8450 4350
F 0 "R?" H 8520 4396 50  0000 L CNN
F 1 "0" H 8520 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8380 4350 50  0001 C CNN
F 3 "~" H 8450 4350 50  0001 C CNN
F 4 "Yageo" H -100 400 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-070RL" H -100 400 50  0001 C CNN "ManufacturerPartNumber"
	1    8450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3A8F78
P 8450 4700
F 0 "#PWR?" H 8450 4450 50  0001 C CNN
F 1 "GND" H 8455 4527 50  0000 C CNN
F 2 "" H 8450 4700 50  0001 C CNN
F 3 "" H 8450 4700 50  0001 C CNN
	1    8450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4100 7150 4200
$Comp
L power:GNDPWR #PWR?
U 1 1 5C3A8F7F
P 8850 4700
F 0 "#PWR?" H 8850 4500 50  0001 C CNN
F 1 "GNDPWR" H 8854 4546 50  0000 C CNN
F 2 "" H 8850 4650 50  0001 C CNN
F 3 "" H 8850 4650 50  0001 C CNN
	1    8850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4100 8850 4100
Wire Wire Line
	8850 4100 8850 4700
Wire Wire Line
	8450 4100 8450 4200
$Comp
L power:GND #PWR?
U 1 1 5C3A8F8F
P 3950 5500
F 0 "#PWR?" H 3950 5250 50  0001 C CNN
F 1 "GND" H 3955 5327 50  0000 C CNN
F 2 "" H 3950 5500 50  0001 C CNN
F 3 "" H 3950 5500 50  0001 C CNN
	1    3950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5500 3950 5500
Wire Wire Line
	8450 4500 8450 4700
Wire Wire Line
	7150 3400 7150 3800
$Comp
L power:GND #PWR?
U 1 1 5C3A8F98
P 7150 4200
F 0 "#PWR?" H 7150 3950 50  0001 C CNN
F 1 "GND" H 7155 4027 50  0000 C CNN
F 2 "" H 7150 4200 50  0001 C CNN
F 3 "" H 7150 4200 50  0001 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3300 7050 5400
Wire Wire Line
	6650 5400 7050 5400
Wire Wire Line
	2950 5400 6650 5400
$Comp
L power:+3V3 #PWR?
U 1 1 5C3A8FA3
P 6850 1900
F 0 "#PWR?" H 6850 1750 50  0001 C CNN
F 1 "+3V3" H 6865 2073 50  0000 C CNN
F 2 "" H 6850 1900 50  0001 C CNN
F 3 "" H 6850 1900 50  0001 C CNN
	1    6850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2100 6850 1900
Text GLabel 5550 2900 0    50   Input ~ 0
SD_CLK
Text GLabel 5550 2700 0    50   Input ~ 0
SD_CMD
Text GLabel 5550 3100 0    50   BiDi ~ 0
SD_D0
Text GLabel 5550 3200 0    50   BiDi ~ 0
SD_D1
Text GLabel 5550 2500 0    50   BiDi ~ 0
SD_D2
Text GLabel 5550 2600 0    50   BiDi ~ 0
SD_D3
Text GLabel 2950 5400 0    50   Output ~ 0
SD_CD
Text GLabel 2950 5500 0    50   Output ~ 0
SD_WP
Connection ~ 6650 5400
$Comp
L power:+3V3 #PWR?
U 1 1 5CF30F55
P 6650 4700
F 0 "#PWR?" H 6650 4550 50  0001 C CNN
F 1 "+3V3" H 6665 4873 50  0000 C CNN
F 2 "" H 6650 4700 50  0001 C CNN
F 3 "" H 6650 4700 50  0001 C CNN
	1    6650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4800 6650 4700
$Comp
L Connector:Micro_SD_Card_Det_Hirose_DM3AT J?
U 1 1 5C910D9F
P 8050 2900
F 0 "J?" H 8000 3717 50  0000 C CNN
F 1 "Micro_SD_Card_Det_Hirose_DM3AT" H 8000 3626 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 10100 3600 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 8050 3000 50  0001 C CNN
F 4 "Hirose" H 8050 2900 50  0001 C CNN "Manufacturer"
F 5 "DM3AT-SF-PEJM5" H 8050 2900 50  0001 C CNN "ManufacturerPartNumber"
	1    8050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3400 8850 4100
Connection ~ 8850 4100
$Comp
L Device:R R?
U 1 1 5C9293DD
P 6650 4950
AR Path="/5BE4514C/5C9293DD" Ref="R?"  Part="1" 
AR Path="/5C39D5E3/5C9293DD" Ref="R?"  Part="1" 
F 0 "R?" H 6550 5000 50  0000 R BNN
F 1 "10k" H 6550 4900 50  0000 R TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6580 4950 50  0001 C CNN
F 3 "~" H 6650 4950 50  0001 C CNN
F 4 "Yageo" H 6650 4950 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H 6650 4950 50  0001 C CNN "ManufacturerPartNumber"
	1    6650 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C929B07
P 6850 2250
AR Path="/5BE4514C/5C929B07" Ref="R?"  Part="1" 
AR Path="/5C39D5E3/5C929B07" Ref="R?"  Part="1" 
F 0 "R?" H 6750 2300 50  0000 R BNN
F 1 "10k" H 6750 2200 50  0000 R TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6780 2250 50  0001 C CNN
F 3 "~" H 6850 2250 50  0001 C CNN
F 4 "Yageo" H 6850 2250 50  0001 C CNN "Manufacturer"
F 5 "RC0402FR-0710KL" H 6850 2250 50  0001 C CNN "ManufacturerPartNumber"
	1    6850 2250
	1    0    0    -1  
$EndComp
Text Label 6500 2800 0    50   ~ 0
SDIO_VDD
Text Label 6500 3000 0    50   ~ 0
SDIO_VSS
Wire Wire Line
	7150 2800 6500 2800
Wire Wire Line
	7150 3000 6500 3000
Text Label 2700 4150 0    50   ~ 0
SDIO_VDD
Text Label 2700 4650 0    50   ~ 0
SDIO_VSS
Connection ~ 3350 4150
Wire Wire Line
	2700 4150 3350 4150
$EndSCHEMATC
