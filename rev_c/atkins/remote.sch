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
L Connector:Conn_01x02_Female J5
U 1 1 5F909BB4
P 1150 1425
F 0 "J5" H 1042 1192 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1042 1191 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1150 1425 50  0001 C CNN
F 3 "~" H 1150 1425 50  0001 C CNN
	1    1150 1425
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 1325 1700 1325
$Comp
L power:GND #PWR0101
U 1 1 5F90C11E
P 1350 1425
F 0 "#PWR0101" H 1350 1175 50  0001 C CNN
F 1 "GND" H 1355 1252 50  0000 C CNN
F 2 "" H 1350 1425 50  0001 C CNN
F 3 "" H 1350 1425 50  0001 C CNN
	1    1350 1425
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 5F97732E
P 1500 1900
F 0 "J8" H 1418 1667 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1418 1666 50  0001 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 1500 1900 50  0001 C CNN
F 3 "~" H 1500 1900 50  0001 C CNN
	1    1500 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F97924E
P 1700 1900
F 0 "#PWR0112" H 1700 1650 50  0001 C CNN
F 1 "GND" H 1705 1727 50  0000 C CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1800 1700 1325
Connection ~ 1700 1325
Wire Wire Line
	1700 1325 1350 1325
$Comp
L Device:R R2
U 1 1 5F989DB1
P 1300 3175
F 0 "R2" H 1370 3221 50  0000 L CNN
F 1 "R" H 1370 3130 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 3175 50  0001 C CNN
F 3 "~" H 1300 3175 50  0001 C CNN
	1    1300 3175
	1    0    0    -1  
$EndComp
Text GLabel 1300 3325 0    50   Input ~ 0
SCL
$Comp
L power:+3V3 #PWR0113
U 1 1 5F98B87C
P 1300 3025
F 0 "#PWR0113" H 1300 2875 50  0001 C CNN
F 1 "+3V3" H 1315 3198 50  0000 C CNN
F 2 "" H 1300 3025 50  0001 C CNN
F 3 "" H 1300 3025 50  0001 C CNN
	1    1300 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F98BC9A
P 1675 3200
F 0 "R3" H 1745 3246 50  0000 L CNN
F 1 "R" H 1745 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1605 3200 50  0001 C CNN
F 3 "~" H 1675 3200 50  0001 C CNN
	1    1675 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5F98C06B
P 1675 3050
F 0 "#PWR0114" H 1675 2900 50  0001 C CNN
F 1 "+3V3" H 1690 3223 50  0000 C CNN
F 2 "" H 1675 3050 50  0001 C CNN
F 3 "" H 1675 3050 50  0001 C CNN
	1    1675 3050
	1    0    0    -1  
$EndComp
Text GLabel 1675 3350 0    50   Input ~ 0
SDA
$Comp
L power:+3V3 #PWR0115
U 1 1 5F996AAC
P 5875 1675
F 0 "#PWR0115" H 5875 1525 50  0001 C CNN
F 1 "+3V3" V 5890 1803 50  0000 L CNN
F 2 "" H 5875 1675 50  0001 C CNN
F 3 "" H 5875 1675 50  0001 C CNN
	1    5875 1675
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F997480
P 6075 2075
F 0 "#PWR0116" H 6075 1825 50  0001 C CNN
F 1 "GND" H 6080 1902 50  0000 C CNN
F 2 "" H 6075 2075 50  0001 C CNN
F 3 "" H 6075 2075 50  0001 C CNN
	1    6075 2075
	0    -1   -1   0   
$EndComp
Text GLabel 6175 1675 3    50   Input ~ 0
SCL
Text GLabel 6375 1675 3    50   Input ~ 0
SDA
Wire Wire Line
	6075 2075 6075 1675
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
L Connector:Conn_01x08_Female J11
U 1 1 5FADE7E5
P 6175 1475
F 0 "J11" V 6340 1405 50  0000 C CNN
F 1 "BME390" V 6249 1405 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 6175 1475 50  0001 C CNN
F 3 "~" H 6175 1475 50  0001 C CNN
	1    6175 1475
	0    -1   -1   0   
$EndComp
Text GLabel 1800 1325 1    50   Input ~ 0
VBAT
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
Text Notes 1275 1000 0    79   ~ 0
POWER IN
Text Notes 1125 2600 0    79   ~ 0
i2c pullups
Text Notes 4650 1000 0    79   ~ 0
SCD30
Text Notes 6000 1150 0    79   ~ 0
BME388/90
$Comp
L Switch:SW_Push_Dual SW3
U 1 1 5FBA499A
P 3050 4075
F 0 "SW3" H 3050 4360 50  0000 C CNN
F 1 "SW_Push_Dual" H 3175 4275 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 3050 4275 50  0001 C CNN
F 3 "~" H 3050 4275 50  0001 C CNN
	1    3050 4075
	1    0    0    -1  
$EndComp
Text GLabel 2625 4075 0    50   Input ~ 0
39
$Comp
L power:GND #PWR0129
U 1 1 5FBA49A1
P 3250 4275
F 0 "#PWR0129" H 3250 4025 50  0001 C CNN
F 1 "GND" H 3255 4102 50  0000 C CNN
F 2 "" H 3250 4275 50  0001 C CNN
F 3 "" H 3250 4275 50  0001 C CNN
	1    3250 4275
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0130
U 1 1 5FBA49A7
P 2625 3675
F 0 "#PWR0130" H 2625 3525 50  0001 C CNN
F 1 "+3V3" H 2640 3848 50  0000 C CNN
F 2 "" H 2625 3675 50  0001 C CNN
F 3 "" H 2625 3675 50  0001 C CNN
	1    2625 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:R RS3
U 1 1 5FBA49AD
P 2625 3825
F 0 "RS3" H 2695 3871 50  0000 L CNN
F 1 "10K" H 2695 3780 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2555 3825 50  0001 C CNN
F 3 "~" H 2625 3825 50  0001 C CNN
	1    2625 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 4075 2625 3975
Wire Wire Line
	2850 4075 2625 4075
Wire Wire Line
	2850 4075 2850 3925
Wire Wire Line
	2850 3925 3250 3925
Wire Wire Line
	3250 3925 3250 4075
Connection ~ 2850 4075
Wire Wire Line
	2850 4275 2850 4150
Wire Wire Line
	2850 4150 3250 4150
Wire Wire Line
	3250 4150 3250 4275
Connection ~ 3250 4275
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 5FBA59B8
P 2975 5125
F 0 "SW2" H 2975 5410 50  0000 C CNN
F 1 "SW_Push_Dual" H 3100 5325 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 2975 5325 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 4875 50  0001 C CNN
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
L Switch:SW_Push_Dual SW1
U 1 1 5FBA6963
P 4200 4100
F 0 "SW1" H 4200 4385 50  0000 C CNN
F 1 "SW_Push_Dual" H 4325 4300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 4200 4300 50  0001 C CNN
F 3 "~" H 4200 4300 50  0001 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
Text GLabel 3775 4100 0    50   Input ~ 0
37
$Comp
L power:GND #PWR0133
U 1 1 5FBA696A
P 4400 4300
F 0 "#PWR0133" H 4400 4050 50  0001 C CNN
F 1 "GND" H 4405 4127 50  0000 C CNN
F 2 "" H 4400 4300 50  0001 C CNN
F 3 "" H 4400 4300 50  0001 C CNN
	1    4400 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 5FBA6970
P 3775 3700
F 0 "#PWR0134" H 3775 3550 50  0001 C CNN
F 1 "+3V3" H 3790 3873 50  0000 C CNN
F 2 "" H 3775 3700 50  0001 C CNN
F 3 "" H 3775 3700 50  0001 C CNN
	1    3775 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R RS1
U 1 1 5FBA6976
P 3775 3850
F 0 "RS1" H 3845 3896 50  0000 L CNN
F 1 "10K" H 3845 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3705 3850 50  0001 C CNN
F 3 "~" H 3775 3850 50  0001 C CNN
	1    3775 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 4100 3775 4000
Wire Wire Line
	4000 4100 3775 4100
Wire Wire Line
	4000 4100 4000 3950
Wire Wire Line
	4000 3950 4400 3950
Wire Wire Line
	4400 3950 4400 4100
Connection ~ 4000 4100
Wire Wire Line
	4000 4300 4000 4175
Wire Wire Line
	4000 4175 4400 4175
Wire Wire Line
	4400 4175 4400 4300
Connection ~ 4400 4300
$Comp
L Switch:SW_Push_Dual SW0
U 1 1 5FBA90A9
P 4200 5150
F 0 "SW0" H 4200 5435 50  0000 C CNN
F 1 "SW_Push_Dual" H 4325 5350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 4200 5350 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3705 4900 50  0001 C CNN
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
L Connector:Conn_01x18_Female J1
U 1 1 5FB5C186
P 3350 2200
F 0 "J1" H 3250 3125 50  0000 L CNN
F 1 "Conn_01x18_Female" V 3425 1925 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x18_P2.54mm_Vertical" H 3350 2200 50  0001 C CNN
F 3 "~" H 3350 2200 50  0001 C CNN
	1    3350 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x18_Female J2
U 1 1 5FB65139
P 3525 2200
F 0 "J2" H 3417 3093 50  0000 C CNN
F 1 "Conn_01x18_Female" H 3417 3094 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x18_P2.54mm_Vertical" H 3525 2200 50  0001 C CNN
F 3 "~" H 3525 2200 50  0001 C CNN
	1    3525 2200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FB89358
P 3150 1400
F 0 "#PWR0102" H 3150 1150 50  0001 C CNN
F 1 "GND" H 3155 1227 50  0000 C CNN
F 2 "" H 3150 1400 50  0001 C CNN
F 3 "" H 3150 1400 50  0001 C CNN
	1    3150 1400
	0    1    1    0   
$EndComp
Text GLabel 3150 1600 0    50   Input ~ 0
VBAT
Text GLabel 3725 3100 2    50   Input ~ 0
SDA
Text GLabel 3150 2200 0    50   Input ~ 0
SCL
$Comp
L power:+3V3 #PWR0103
U 1 1 5FBB0204
P 3725 1500
F 0 "#PWR0103" H 3725 1350 50  0001 C CNN
F 1 "+3V3" H 3740 1673 50  0000 C CNN
F 2 "" H 3725 1500 50  0001 C CNN
F 3 "" H 3725 1500 50  0001 C CNN
	1    3725 1500
	0    1    1    0   
$EndComp
Text GLabel 3725 1700 2    50   Input ~ 0
36
Text GLabel 3725 1800 2    50   Input ~ 0
37
Text GLabel 3725 1900 2    50   Input ~ 0
38
Text GLabel 3725 2000 2    50   Input ~ 0
39
$EndSCHEMATC
