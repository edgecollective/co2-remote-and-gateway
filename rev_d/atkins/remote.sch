EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:R R2
U 1 1 5F989DB1
P 1225 3600
F 0 "R2" H 1295 3646 50  0000 L CNN
F 1 "R" H 1295 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 3600 50  0001 C CNN
F 3 "~" H 1225 3600 50  0001 C CNN
	1    1225 3600
	1    0    0    -1  
$EndComp
Text GLabel 1225 3750 0    50   Input ~ 0
SCL
$Comp
L power:+3V3 #PWR0113
U 1 1 5F98B87C
P 1225 3450
F 0 "#PWR0113" H 1225 3300 50  0001 C CNN
F 1 "+3V3" H 1240 3623 50  0000 C CNN
F 2 "" H 1225 3450 50  0001 C CNN
F 3 "" H 1225 3450 50  0001 C CNN
	1    1225 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F98BC9A
P 1600 3625
F 0 "R3" H 1670 3671 50  0000 L CNN
F 1 "R" H 1670 3580 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 3625 50  0001 C CNN
F 3 "~" H 1600 3625 50  0001 C CNN
	1    1600 3625
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5F98C06B
P 1600 3475
F 0 "#PWR0114" H 1600 3325 50  0001 C CNN
F 1 "+3V3" H 1615 3648 50  0000 C CNN
F 2 "" H 1600 3475 50  0001 C CNN
F 3 "" H 1600 3475 50  0001 C CNN
	1    1600 3475
	1    0    0    -1  
$EndComp
Text GLabel 1600 3775 0    50   Input ~ 0
SDA
$Comp
L power:GND #PWR0116
U 1 1 5F997480
P 7975 2925
F 0 "#PWR0116" H 7975 2675 50  0001 C CNN
F 1 "GND" H 7980 2752 50  0000 C CNN
F 2 "" H 7975 2925 50  0001 C CNN
F 3 "" H 7975 2925 50  0001 C CNN
	1    7975 2925
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F9CF16D
P 5150 2550
F 0 "H1" H 5250 2596 50  0000 L CNN
F 1 "MountingHole" H 5250 2505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5150 2550 50  0001 C CNN
F 3 "~" H 5150 2550 50  0001 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F9CF5FF
P 5150 2775
F 0 "H2" H 5250 2821 50  0000 L CNN
F 1 "MountingHole" H 5250 2730 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5150 2775 50  0001 C CNN
F 3 "~" H 5150 2775 50  0001 C CNN
	1    5150 2775
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F9CFBAC
P 5150 3000
F 0 "H3" H 5250 3046 50  0000 L CNN
F 1 "MountingHole" H 5250 2955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5150 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F9D006D
P 5150 3225
F 0 "H4" H 5250 3271 50  0000 L CNN
F 1 "MountingHole" H 5250 3180 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5150 3225 50  0001 C CNN
F 3 "~" H 5150 3225 50  0001 C CNN
	1    5150 3225
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J9
U 1 1 5FB57B67
P 5025 1575
F 0 "J9" H 5053 1601 50  0000 L CNN
F 1 "SCD30" H 5053 1510 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 5025 1575 50  0001 C CNN
F 3 "~" H 5025 1575 50  0001 C CNN
	1    5025 1575
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 5FBA156B
P 4825 1275
F 0 "#PWR0119" H 4825 1125 50  0001 C CNN
F 1 "+3V3" H 4840 1448 50  0000 C CNN
F 2 "" H 4825 1275 50  0001 C CNN
F 3 "" H 4825 1275 50  0001 C CNN
	1    4825 1275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FBA258D
P 4475 1375
F 0 "#PWR0120" H 4475 1125 50  0001 C CNN
F 1 "GND" H 4480 1202 50  0000 C CNN
F 2 "" H 4475 1375 50  0001 C CNN
F 3 "" H 4475 1375 50  0001 C CNN
	1    4475 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 1375 4475 1375
Text GLabel 4825 1475 0    50   Input ~ 0
SCL
Text GLabel 4825 1575 0    50   Input ~ 0
SDA
Text Notes 1050 3025 0    79   ~ 0
i2c pullups
Text Notes 4650 1000 0    79   ~ 0
SCD30
Text Notes 6000 1150 0    79   ~ 0
BME388/90
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5FBA59B8
P 2975 5125
F 0 "SW2" H 2975 5410 50  0000 C CNN
F 1 "SW_Push_Dual" H 3100 5325 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T-SH_NO_CK_KMR2xxG" H 2975 5325 50  0001 C CNN
F 3 "~" H 2975 5325 50  0001 C CNN
	1    2975 5125
	1    0    0    -1  
$EndComp
Text GLabel 2550 5125 0    50   Input ~ 0
38
$Comp
L power:GND #PWR0131
U 1 1 5FBA59BF
P 3175 5325
F 0 "#PWR0131" H 3175 5075 50  0001 C CNN
F 1 "GND" H 3180 5152 50  0000 C CNN
F 2 "" H 3175 5325 50  0001 C CNN
F 3 "" H 3175 5325 50  0001 C CNN
	1    3175 5325
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 5FBA59C5
P 2550 4725
F 0 "#PWR0132" H 2550 4575 50  0001 C CNN
F 1 "+3V3" H 2565 4898 50  0000 C CNN
F 2 "" H 2550 4725 50  0001 C CNN
F 3 "" H 2550 4725 50  0001 C CNN
	1    2550 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R RS2
U 1 1 5FBA59CB
P 2550 4875
F 0 "RS2" H 2620 4921 50  0000 L CNN
F 1 "10K" H 2620 4830 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 4875 50  0001 C CNN
F 3 "~" H 2550 4875 50  0001 C CNN
	1    2550 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5125 2550 5025
Wire Wire Line
	2775 5125 2550 5125
Wire Wire Line
	2775 5125 2775 4975
Wire Wire Line
	2775 4975 3175 4975
Wire Wire Line
	3175 4975 3175 5125
Connection ~ 2775 5125
Wire Wire Line
	2775 5325 2775 5200
Wire Wire Line
	2775 5200 3175 5200
Wire Wire Line
	3175 5200 3175 5325
Connection ~ 3175 5325
$Comp
L Switch:SW_Push_Dual SW0
U 1 1 5FBA90A9
P 4200 5150
F 0 "SW0" H 4200 5435 50  0000 C CNN
F 1 "SW_Push_Dual" H 4325 5350 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T-SH_NO_CK_KMR2xxG" H 4200 5350 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5150
	1    0    0    -1  
$EndComp
Text GLabel 3775 5150 0    50   Input ~ 0
36
$Comp
L power:GND #PWR0135
U 1 1 5FBA90B0
P 4400 5350
F 0 "#PWR0135" H 4400 5100 50  0001 C CNN
F 1 "GND" H 4405 5177 50  0000 C CNN
F 2 "" H 4400 5350 50  0001 C CNN
F 3 "" H 4400 5350 50  0001 C CNN
	1    4400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0136
U 1 1 5FBA90B6
P 3775 4750
F 0 "#PWR0136" H 3775 4600 50  0001 C CNN
F 1 "+3V3" H 3790 4923 50  0000 C CNN
F 2 "" H 3775 4750 50  0001 C CNN
F 3 "" H 3775 4750 50  0001 C CNN
	1    3775 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RS0
U 1 1 5FBA90BC
P 3775 4900
F 0 "RS0" H 3845 4946 50  0000 L CNN
F 1 "10K" H 3845 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3705 4900 50  0001 C CNN
F 3 "~" H 3775 4900 50  0001 C CNN
	1    3775 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 5150 3775 5050
Wire Wire Line
	4000 5150 3775 5150
Wire Wire Line
	4000 5150 4000 5000
Wire Wire Line
	4000 5000 4400 5000
Wire Wire Line
	4400 5000 4400 5150
Connection ~ 4000 5150
Wire Wire Line
	4000 5350 4000 5225
Wire Wire Line
	4000 5225 4400 5225
Wire Wire Line
	4400 5225 4400 5350
Connection ~ 4400 5350
$Comp
L ESP32-footprints-Shem-Lib:ESP32-WROOM U2
U 1 1 5FC59C84
P 8925 2225
F 0 "U2" H 8900 3612 60  0000 C CNN
F 1 "ESP32-WROOM" H 8900 3506 60  0000 C CNN
F 2 "atkins:ESP32-WROOM" H 9275 3575 60  0001 C CNN
F 3 "" H 8475 2675 60  0001 C CNN
	1    8925 2225
	1    0    0    -1  
$EndComp
$Comp
L mysensors_radios:RFM95HW U1
U 1 1 5FC5EF48
P 8625 4325
F 0 "U1" H 8875 4575 40  0000 C CNN
F 1 "RFM95HW" H 8375 4575 40  0000 C CNN
F 2 "atkins:RFM95" H 8625 4325 30  0001 C CIN
F 3 "https://cdn-learn.adafruit.com/assets/assets/000/031/659/original/RFM95_96_97_98W.pdf?1460518717" H 8625 4772 60  0001 C CNN
	1    8625 4325
	1    0    0    -1  
$EndComp
Text GLabel 9275 3275 3    50   Input ~ 0
OLED_SCL
Text GLabel 9825 2575 2    50   Input ~ 0
OLED_SDA
Text GLabel 9825 1575 2    50   Input ~ 0
SCL
Text GLabel 9825 1875 2    50   Input ~ 0
SDA
Text GLabel 9825 2075 2    50   Input ~ 0
lora_miso
Text GLabel 9825 2175 2    50   Input ~ 0
lora_cs
Text GLabel 9825 2275 2    50   Input ~ 0
lora_sck
Text GLabel 7975 2025 0    50   Input ~ 0
lora_dio2
Text GLabel 7975 2125 0    50   Input ~ 0
lora_dio1
Text GLabel 7975 2425 0    50   Input ~ 0
LED
Text GLabel 7975 2525 0    50   Input ~ 0
lora_dio0
Text GLabel 7975 2625 0    50   Input ~ 0
lora_mosi
Text GLabel 7975 2725 0    50   Input ~ 0
lora_reset
$Comp
L power:+3V3 #PWR0101
U 1 1 5FCB3765
P 7975 1625
F 0 "#PWR0101" H 7975 1475 50  0001 C CNN
F 1 "+3V3" H 7990 1798 50  0000 C CNN
F 2 "" H 7975 1625 50  0001 C CNN
F 3 "" H 7975 1625 50  0001 C CNN
	1    7975 1625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FCBE57E
P 9825 2875
F 0 "#PWR0102" H 9825 2625 50  0001 C CNN
F 1 "GND" H 9830 2702 50  0000 C CNN
F 2 "" H 9825 2875 50  0001 C CNN
F 3 "" H 9825 2875 50  0001 C CNN
	1    9825 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	9825 2775 9825 2875
Connection ~ 9825 2875
Text GLabel 9825 1675 2    50   Input ~ 0
TXD0
Text GLabel 9825 1775 2    50   Input ~ 0
RXD0
Text GLabel 9825 2675 2    50   Input ~ 0
0
Text GLabel 9375 3275 3    50   Input ~ 0
2
Text GLabel 7975 1725 0    50   Input ~ 0
RESET
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5FCF851F
P 1625 1300
F 0 "Q1" H 1816 1346 50  0000 L CNN
F 1 "Q_NPN_BEC" H 1816 1255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1825 1400 50  0001 C CNN
F 3 "~" H 1625 1300 50  0001 C CNN
	1    1625 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 5FCF9CAE
P 1625 2025
F 0 "Q2" H 1816 1979 50  0000 L CNN
F 1 "Q_NPN_BEC" H 1816 2070 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1825 2125 50  0001 C CNN
F 3 "~" H 1625 2025 50  0001 C CNN
	1    1625 2025
	1    0    0    1   
$EndComp
Wire Wire Line
	1725 1825 1725 1725
$Comp
L Device:R R4
U 1 1 5FCFF58B
P 1275 2025
F 0 "R4" V 1068 2025 50  0000 C CNN
F 1 "R" V 1159 2025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 2025 50  0001 C CNN
F 3 "~" H 1275 2025 50  0001 C CNN
	1    1275 2025
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FCFF966
P 1275 1300
F 0 "R1" V 1068 1300 50  0000 C CNN
F 1 "R" V 1159 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1205 1300 50  0001 C CNN
F 3 "~" H 1275 1300 50  0001 C CNN
	1    1275 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	1125 2025 925  2025
Connection ~ 925  2025
Wire Wire Line
	925  2025 925  2275
Wire Wire Line
	1725 1500 1725 1650
Wire Wire Line
	1725 1650 925  1650
Wire Wire Line
	925  1650 925  2025
Wire Wire Line
	1125 1300 975  1300
Wire Wire Line
	975  1300 975  1725
Wire Wire Line
	975  1725 1725 1725
Wire Wire Line
	975  1300 975  1050
Connection ~ 975  1300
Text GLabel 925  2275 0    50   Input ~ 0
DTR
Text GLabel 975  1050 0    50   Input ~ 0
RTS
Text GLabel 1825 2350 2    50   Input ~ 0
RESET
Wire Wire Line
	1725 2350 1825 2350
Wire Wire Line
	1725 2225 1725 2350
Text GLabel 1875 975  2    50   Input ~ 0
0
Wire Wire Line
	1875 975  1725 975 
Wire Wire Line
	1725 975  1725 1100
Text Notes 1025 800  0    79   ~ 0
auto reset
Text GLabel 8075 4475 0    50   Input ~ 0
lora_mosi
Text GLabel 8075 4875 0    50   Input ~ 0
lora_reset
Text GLabel 8075 4675 0    50   Input ~ 0
lora_sck
Text GLabel 8075 4575 0    50   Input ~ 0
lora_miso
Text GLabel 9175 4425 2    50   Input ~ 0
lora_dio1
Text GLabel 9175 4325 2    50   Input ~ 0
lora_dio0
Text GLabel 9175 4525 2    50   Input ~ 0
lora_dio2
$Comp
L power:+3V3 #PWR0103
U 1 1 5FD28AEC
P 8625 3975
F 0 "#PWR0103" H 8625 3825 50  0001 C CNN
F 1 "+3V3" H 8640 4148 50  0000 C CNN
F 2 "" H 8625 3975 50  0001 C CNN
F 3 "" H 8625 3975 50  0001 C CNN
	1    8625 3975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FD29F67
P 8525 5300
F 0 "#PWR0104" H 8525 5050 50  0001 C CNN
F 1 "GND" H 8530 5127 50  0000 C CNN
F 2 "" H 8525 5300 50  0001 C CNN
F 3 "" H 8525 5300 50  0001 C CNN
	1    8525 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 5175 8625 5175
Wire Wire Line
	8625 5175 8525 5175
Connection ~ 8625 5175
Wire Wire Line
	8525 5175 8525 5300
Connection ~ 8525 5175
Text GLabel 8075 4375 0    50   Input ~ 0
lora_cs
Text GLabel 8075 4175 0    50   Input ~ 0
ANA
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5FC71E64
P 2850 3325
F 0 "J1" V 2788 3037 50  0000 R CNN
F 1 "Conn_01x04_Female" V 2697 3037 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2850 3325 50  0001 C CNN
F 3 "~" H 2850 3325 50  0001 C CNN
	1    2850 3325
	0    -1   -1   0   
$EndComp
Text GLabel 2950 3525 3    50   Input ~ 0
SCL
Text GLabel 3050 3525 3    50   Input ~ 0
SDA
$Comp
L power:+3V3 #PWR0105
U 1 1 5FC74DCB
P 2850 3750
F 0 "#PWR0105" H 2850 3600 50  0001 C CNN
F 1 "+3V3" H 2865 3923 50  0000 C CNN
F 2 "" H 2850 3750 50  0001 C CNN
F 3 "" H 2850 3750 50  0001 C CNN
	1    2850 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FC7959F
P 2750 3525
F 0 "#PWR0106" H 2750 3275 50  0001 C CNN
F 1 "GND" H 2755 3352 50  0000 C CNN
F 2 "" H 2750 3525 50  0001 C CNN
F 3 "" H 2750 3525 50  0001 C CNN
	1    2750 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3525 2850 3750
Text Notes 2775 3225 0    79   ~ 0
oled
$Comp
L Connector:Conn_01x07_Female J2
U 1 1 5FC8BF23
P 3650 2525
F 0 "J2" H 3678 2551 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3678 2460 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Horizontal" H 3650 2525 50  0001 C CNN
F 3 "~" H 3650 2525 50  0001 C CNN
	1    3650 2525
	1    0    0    -1  
$EndComp
$EndSCHEMATC
