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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1155 3600 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1530 3625 50  0001 C CNN
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
L Connector:Conn_01x07_Female J9
U 1 1 5FB57B67
P 6450 1450
F 0 "J9" H 6478 1476 50  0000 L CNN
F 1 "SCD30" H 6478 1385 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 6450 1450 50  0001 C CNN
F 3 "~" H 6450 1450 50  0001 C CNN
	1    6450 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 5FBA156B
P 6250 1150
F 0 "#PWR0119" H 6250 1000 50  0001 C CNN
F 1 "+3V3" H 6265 1323 50  0000 C CNN
F 2 "" H 6250 1150 50  0001 C CNN
F 3 "" H 6250 1150 50  0001 C CNN
	1    6250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FBA258D
P 5900 1250
F 0 "#PWR0120" H 5900 1000 50  0001 C CNN
F 1 "GND" H 5905 1077 50  0000 C CNN
F 2 "" H 5900 1250 50  0001 C CNN
F 3 "" H 5900 1250 50  0001 C CNN
	1    5900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1250 5900 1250
Text GLabel 6250 1350 0    50   Input ~ 0
SCL
Text GLabel 6250 1450 0    50   Input ~ 0
SDA
Text Notes 1050 3025 0    79   ~ 0
i2c pullups
Text Notes 6075 875  0    79   ~ 0
SCD30
Text Notes 5625 4925 0    79   ~ 0
BME388/90
Text GLabel 3175 5175 0    50   Input ~ 0
36
$Comp
L power:+3V3 #PWR0136
U 1 1 5FBA90B6
P 3325 4775
F 0 "#PWR0136" H 3325 4625 50  0001 C CNN
F 1 "+3V3" H 3340 4948 50  0000 C CNN
F 2 "" H 3325 4775 50  0001 C CNN
F 3 "" H 3325 4775 50  0001 C CNN
	1    3325 4775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FBA90BC
P 3325 4925
F 0 "R6" H 3395 4971 50  0000 L CNN
F 1 "10K" H 3395 4880 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3255 4925 50  0001 C CNN
F 3 "~" H 3325 4925 50  0001 C CNN
	1    3325 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 5175 3325 5075
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
P 8700 4650
F 0 "U1" H 8950 4900 40  0000 C CNN
F 1 "RFM95HW" H 8450 4900 40  0000 C CNN
F 2 "atkins:RFM95" H 8700 4650 30  0001 C CIN
F 3 "https://cdn-learn.adafruit.com/assets/assets/000/031/659/original/RFM95_96_97_98W.pdf?1460518717" H 8700 5097 60  0001 C CNN
	1    8700 4650
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1205 2025 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1205 1300 50  0001 C CNN
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
Text GLabel 8150 4800 0    50   Input ~ 0
lora_mosi
Text GLabel 8150 5200 0    50   Input ~ 0
lora_reset
Text GLabel 8150 5000 0    50   Input ~ 0
lora_sck
Text GLabel 8150 4900 0    50   Input ~ 0
lora_miso
Text GLabel 9250 4750 2    50   Input ~ 0
lora_dio1
Text GLabel 9250 4650 2    50   Input ~ 0
lora_dio0
Text GLabel 9250 4850 2    50   Input ~ 0
lora_dio2
$Comp
L power:+3V3 #PWR0103
U 1 1 5FD28AEC
P 8700 4300
F 0 "#PWR0103" H 8700 4150 50  0001 C CNN
F 1 "+3V3" H 8715 4473 50  0000 C CNN
F 2 "" H 8700 4300 50  0001 C CNN
F 3 "" H 8700 4300 50  0001 C CNN
	1    8700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FD29F67
P 8600 5625
F 0 "#PWR0104" H 8600 5375 50  0001 C CNN
F 1 "GND" H 8605 5452 50  0000 C CNN
F 2 "" H 8600 5625 50  0001 C CNN
F 3 "" H 8600 5625 50  0001 C CNN
	1    8600 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5500 8700 5500
Wire Wire Line
	8700 5500 8600 5500
Connection ~ 8700 5500
Wire Wire Line
	8600 5500 8600 5625
Connection ~ 8600 5500
Text GLabel 8150 4700 0    50   Input ~ 0
lora_cs
Text GLabel 8150 4500 0    50   Input ~ 0
ANA
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5FC71E64
P 2850 2900
F 0 "J1" V 2788 2612 50  0000 R CNN
F 1 "Conn_01x04_Female" V 2697 2612 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2850 2900 50  0001 C CNN
F 3 "~" H 2850 2900 50  0001 C CNN
	1    2850 2900
	0    -1   -1   0   
$EndComp
Text GLabel 2950 3100 3    50   Input ~ 0
SCL
Text GLabel 3050 3100 3    50   Input ~ 0
SDA
$Comp
L power:+3V3 #PWR0105
U 1 1 5FC74DCB
P 2850 3325
F 0 "#PWR0105" H 2850 3175 50  0001 C CNN
F 1 "+3V3" H 2865 3498 50  0000 C CNN
F 2 "" H 2850 3325 50  0001 C CNN
F 3 "" H 2850 3325 50  0001 C CNN
	1    2850 3325
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FC7959F
P 2750 3100
F 0 "#PWR0106" H 2750 2850 50  0001 C CNN
F 1 "GND" H 2755 2927 50  0000 C CNN
F 2 "" H 2750 3100 50  0001 C CNN
F 3 "" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2850 3325
Text Notes 2775 2800 0    79   ~ 0
oled
$Comp
L Connector:Conn_01x07_Female J2
U 1 1 5FC8BF23
P 12950 575
F 0 "J2" H 12978 601 50  0000 L CNN
F 1 "Conn_01x07_Female" H 12978 510 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Horizontal" H 12950 575 50  0001 C CNN
F 3 "~" H 12950 575 50  0001 C CNN
	1    12950 575 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FDEC2FC
P 12400 275
F 0 "#PWR0107" H 12400 25  50  0001 C CNN
F 1 "GND" H 12405 102 50  0000 C CNN
F 2 "" H 12400 275 50  0001 C CNN
F 3 "" H 12400 275 50  0001 C CNN
	1    12400 275 
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 275  12400 275 
Text GLabel 12750 475  0    50   Input ~ 0
VBUS
Text GLabel 9825 1775 2    50   Input ~ 0
RXD0
Text GLabel 12750 575  0    50   Input ~ 0
RXD0
Text GLabel 12750 775  0    50   Input ~ 0
RTS
Text GLabel 12750 875  0    50   Input ~ 0
DTR
$Comp
L Adafruit_BMP390-eagle-import:BMP388 1111111111
U 1 1 5FDECF01
P 5975 5675
F 0 "1111111111" H 5975 6322 42  0000 C CNN
F 1 "BMP388" H 5975 6243 42  0000 C CNN
F 2 "atkins:BMP388" H 5975 5675 50  0001 C CNN
F 3 "" H 5975 5675 50  0001 C CNN
	1    5975 5675
	1    0    0    -1  
$EndComp
$Comp
L dk_Coaxial-Connectors-RF:U_FL-R-SMT-1_10_ J4
U 1 1 5FDFECD2
P 7200 4425
F 0 "J4" H 7278 4650 50  0000 C CNN
F 1 "U_FL-R-SMT-1_10_" H 7278 4559 50  0000 C CNN
F 2 "digikey-footprints:Coax_Conn_U.FL" H 7400 4625 60  0001 L CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/U.FL-R-SMT-1%2810%29/category/Drawing%20(2D)/doc_file_id/37627/?file_category_id=6&item_id=03310472210&is_series=U.FL-R-SMT-1(10" H 7400 4725 60  0001 L CNN
F 4 "H11891CT-ND" H 7400 4825 60  0001 L CNN "Digi-Key_PN"
F 5 "U.FL-R-SMT-1(10)" H 7400 4925 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 7400 5025 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 7400 5125 60  0001 L CNN "Family"
F 8 "https://www.hirose.com/product/en/download_file/key_name/U.FL-R-SMT-1%2810%29/category/Drawing%20(2D)/doc_file_id/37627/?file_category_id=6&item_id=03310472210&is_series=U.FL-R-SMT-1(10" H 7400 5225 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/hirose-electric-co-ltd/U.FL-R-SMT-1(10)/H11891CT-ND/2504612" H 7400 5325 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN U.FL RCPT STR 50 OHM SMD" H 7400 5425 60  0001 L CNN "Description"
F 11 "Hirose Electric Co Ltd" H 7400 5525 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7400 5625 60  0001 L CNN "Status"
	1    7200 4425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FE092D5
P 7200 4625
F 0 "#PWR0108" H 7200 4375 50  0001 C CNN
F 1 "GND" H 7205 4452 50  0000 C CNN
F 2 "" H 7200 4625 50  0001 C CNN
F 3 "" H 7200 4625 50  0001 C CNN
	1    7200 4625
	1    0    0    -1  
$EndComp
Text GLabel 7400 4425 2    50   Input ~ 0
ANA
$Comp
L Adafruit_Feather_M0_RFMxx-eagle-import:MCP73831_2 U3
U 1 1 5FE451CA
P 3925 1775
F 0 "U3" H 3925 2322 42  0000 C CNN
F 1 "MCP73831_2" H 3925 2243 42  0000 C CNN
F 2 "atkins:SOT23-5" H 3925 1775 50  0001 C CNN
F 3 "" H 3925 1775 50  0001 C CNN
	1    3925 1775
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_RFMxx-eagle-import:CON_JST_PH_2PIN X1
U 1 1 5FE4F814
P 4475 2725
F 0 "X1" H 4553 2828 59  0000 L CNN
F 1 "CON_JST_PH_2PIN" H 4553 2723 59  0000 L CNN
F 2 "atkins:JSTPH2" H 4475 2725 50  0001 C CNN
F 3 "" H 4475 2725 50  0001 C CNN
	1    4475 2725
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_RFMxx-eagle-import:CON_JST_PH_2PIN X2
U 1 1 5FE4FC62
P 4475 3150
F 0 "X2" H 4553 3253 59  0000 L CNN
F 1 "CON_JST_PH_2PIN" H 4553 3148 59  0000 L CNN
F 2 "Connector_JST:JST_SH_SM02B-SRSS-TB_1x02-1MP_P1.00mm_Horizontal" H 4475 3150 50  0001 C CNN
F 3 "" H 4475 3150 50  0001 C CNN
	1    4475 3150
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_RFMxx-eagle-import:SPST_TACT-KMR2 SW2
U 1 1 5FE5C6A1
P 2725 7175
F 0 "SW2" H 2869 7228 59  0000 L CNN
F 1 "SPST_TACT-KMR2" H 2869 7123 59  0000 L CNN
F 2 "atkins:KMR2" H 2725 7175 50  0001 C CNN
F 3 "" H 2725 7175 50  0001 C CNN
	1    2725 7175
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_Feather_M0_RFMxx-eagle-import:SPST_TACT-KMR2 SW3
U 1 1 5FE5CF01
P 1450 7150
F 0 "SW3" H 1594 7203 59  0000 L CNN
F 1 "SPST_TACT-KMR2" H 1594 7098 59  0000 L CNN
F 2 "atkins:KMR2" H 1450 7150 50  0001 C CNN
F 3 "" H 1450 7150 50  0001 C CNN
	1    1450 7150
	1    0    0    -1  
$EndComp
Text GLabel 2825 6750 1    50   Input ~ 0
0
Text GLabel 1550 6400 1    50   Input ~ 0
RESET
$Comp
L Device:R R5
U 1 1 5FE6D347
P 1550 6700
F 0 "R5" H 1620 6746 50  0000 L CNN
F 1 "R" H 1620 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1480 6700 50  0001 C CNN
F 3 "~" H 1550 6700 50  0001 C CNN
	1    1550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FE6EF8E
P 1550 7475
F 0 "#PWR0109" H 1550 7225 50  0001 C CNN
F 1 "GND" H 1555 7302 50  0000 C CNN
F 2 "" H 1550 7475 50  0001 C CNN
F 3 "" H 1550 7475 50  0001 C CNN
	1    1550 7475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FE6F728
P 2825 7475
F 0 "#PWR0110" H 2825 7225 50  0001 C CNN
F 1 "GND" H 2830 7302 50  0000 C CNN
F 2 "" H 2825 7475 50  0001 C CNN
F 3 "" H 2825 7475 50  0001 C CNN
	1    2825 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7350 1550 7350
Wire Wire Line
	1550 7350 1550 7475
Connection ~ 1550 7350
Wire Wire Line
	2725 7375 2825 7375
Wire Wire Line
	2825 7375 2825 7475
Connection ~ 2825 7375
Wire Wire Line
	2725 6975 2825 6975
Wire Wire Line
	2825 6975 2825 6750
Connection ~ 2825 6975
Wire Wire Line
	1550 6950 1450 6950
Wire Wire Line
	1550 6850 1550 6950
Connection ~ 1550 6950
Wire Wire Line
	1550 6550 1550 6400
$Comp
L Switch:SW_Push SW4
U 1 1 5FE7DEB6
P 3325 5375
F 0 "SW4" V 3371 5327 50  0000 R CNN
F 1 "SW_Push" V 3280 5327 50  0000 R CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 3325 5575 50  0001 C CNN
F 3 "~" H 3325 5575 50  0001 C CNN
	1    3325 5375
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5FE7E718
P 3975 5375
F 0 "SW5" V 4021 5327 50  0000 R CNN
F 1 "SW_Push" V 3930 5327 50  0000 R CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 3975 5575 50  0001 C CNN
F 3 "~" H 3975 5575 50  0001 C CNN
	1    3975 5375
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FE82D77
P 3325 5575
F 0 "#PWR0111" H 3325 5325 50  0001 C CNN
F 1 "GND" H 3330 5402 50  0000 C CNN
F 2 "" H 3325 5575 50  0001 C CNN
F 3 "" H 3325 5575 50  0001 C CNN
	1    3325 5575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FE83700
P 3975 5575
F 0 "#PWR0112" H 3975 5325 50  0001 C CNN
F 1 "GND" H 3980 5402 50  0000 C CNN
F 2 "" H 3975 5575 50  0001 C CNN
F 3 "" H 3975 5575 50  0001 C CNN
	1    3975 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 5175 3175 5175
Connection ~ 3325 5175
Text GLabel 3775 5175 0    50   Input ~ 0
38
Wire Wire Line
	3975 5175 3775 5175
$Comp
L Device:R R7
U 1 1 5FE8FF9E
P 3975 4900
F 0 "R7" H 4045 4946 50  0000 L CNN
F 1 "10K" H 4045 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3905 4900 50  0001 C CNN
F 3 "~" H 3975 4900 50  0001 C CNN
	1    3975 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 5FE90FCA
P 3975 4750
F 0 "#PWR0115" H 3975 4600 50  0001 C CNN
F 1 "+3V3" H 3990 4923 50  0000 C CNN
F 2 "" H 3975 4750 50  0001 C CNN
F 3 "" H 3975 4750 50  0001 C CNN
	1    3975 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 5175 3975 5050
Connection ~ 3975 5175
Text Notes 1825 6175 0    79   ~ 0
RESET / BOOTLOADER
Text Notes 3200 4375 0    79   ~ 0
CALIBRATE / MISC
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:CP2104 U4
U 1 1 5FED8919
P 14875 2225
F 0 "U4" H 14875 3405 59  0000 C CNN
F 1 "CP2104" H 14375 925 42  0001 L BNN
F 2 "atkins:QFN24_4MM_SMSC" H 14875 2225 50  0001 C CNN
F 3 "" H 14875 2225 50  0001 C CNN
	1    14875 2225
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:CP2104 U4
U 2 1 5FEDB3FA
P 16250 2575
F 0 "U4" H 16478 2517 59  0000 L CNN
F 1 "CP2104" H 15750 1275 42  0001 L BNN
F 2 "atkins:QFN24_4MM_SMSC" H 16250 2575 50  0001 C CNN
F 3 "" H 16250 2575 50  0001 C CNN
	2    16250 2575
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_HUZZAH32_ESP32_Feather-eagle-import:USB_MICRO_20329_V2 X?
U 1 1 5FEEABFA
P 13025 2625
F 0 "X?" H 13032 3072 42  0000 C CNN
F 1 "USB_MICRO_20329_V2" H 13032 2993 42  0000 C CNN
F 2 "" H 13025 2625 50  0001 C CNN
F 3 "" H 13025 2625 50  0001 C CNN
	1    13025 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	15475 2625 15625 2625
Wire Wire Line
	15475 2925 15625 2925
Wire Wire Line
	15475 3025 15625 3025
Text GLabel 15625 2625 2    50   Input ~ 0
DTR
Text GLabel 15625 3025 2    50   Input ~ 0
RTS
Text GLabel 15625 2925 2    50   Input ~ 0
TXD0
Text GLabel 15475 2825 2    50   Input ~ 0
RXD0
$Comp
L power:GND #PWR?
U 1 1 5FF14AFF
P 16250 2875
F 0 "#PWR?" H 16250 2625 50  0001 C CNN
F 1 "GND" H 16255 2702 50  0000 C CNN
F 2 "" H 16250 2875 50  0001 C CNN
F 3 "" H 16250 2875 50  0001 C CNN
	1    16250 2875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF16B32
P 14175 2025
F 0 "#PWR?" H 14175 1775 50  0001 C CNN
F 1 "GND" H 14180 1852 50  0000 C CNN
F 2 "" H 14175 2025 50  0001 C CNN
F 3 "" H 14175 2025 50  0001 C CNN
	1    14175 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	14275 2025 14175 2025
$Comp
L Device:C C?
U 1 1 5FF185CC
P 13925 1775
F 0 "C?" H 14040 1821 50  0000 L CNN
F 1 "10uF" H 14040 1730 50  0000 L CNN
F 2 "" H 13963 1625 50  0001 C CNN
F 3 "~" H 13925 1775 50  0001 C CNN
	1    13925 1775
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5FF1A3ED
P 13575 1625
F 0 "#PWR?" H 13575 1475 50  0001 C CNN
F 1 "+3V3" H 13590 1798 50  0000 C CNN
F 2 "" H 13575 1625 50  0001 C CNN
F 3 "" H 13575 1625 50  0001 C CNN
	1    13575 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	14275 1525 14150 1525
Wire Wire Line
	14150 1525 14150 1425
Wire Wire Line
	14150 1425 14275 1425
Wire Wire Line
	14275 1625 13925 1625
$Comp
L power:GND #PWR?
U 1 1 5FF1F0BC
P 13925 2025
F 0 "#PWR?" H 13925 1775 50  0001 C CNN
F 1 "GND" H 13930 1852 50  0000 C CNN
F 2 "" H 13925 2025 50  0001 C CNN
F 3 "" H 13925 2025 50  0001 C CNN
	1    13925 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	13925 1925 13925 2025
Wire Wire Line
	13900 1625 13575 1625
$Comp
L power:GND #PWR?
U 1 1 5FF247F2
P 13600 2925
F 0 "#PWR?" H 13600 2675 50  0001 C CNN
F 1 "GND" H 13605 2752 50  0000 C CNN
F 2 "" H 13600 2925 50  0001 C CNN
F 3 "" H 13600 2925 50  0001 C CNN
	1    13600 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	13425 2825 13600 2825
Wire Wire Line
	13600 2825 13600 2925
Wire Wire Line
	13425 2625 14275 2625
Wire Wire Line
	13425 2525 14275 2525
Wire Wire Line
	13425 2425 13600 2425
Text GLabel 13600 2150 1    50   Input ~ 0
VBUS
Wire Wire Line
	13600 2150 13600 2425
Connection ~ 13600 2425
Wire Wire Line
	13600 2425 14275 2425
Text GLabel 12750 675  0    50   Input ~ 0
TXD0
Text Notes 12625 25   0    79   ~ 0
FTDI 'PLUS'
Text Notes 14625 925  0    79   ~ 0
USB-SERIAL
$EndSCHEMATC
