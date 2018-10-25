EESchema Schematic File Version 4
EELAYER 26 0
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
L Connector_Generic:Conn_01x39 J1
U 1 1 5A772849
P 900 4250
F 0 "J1" H 900 6250 50  0000 C CNN
F 1 "Conn_01x39" H 900 2250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x39_P2.54mm_Vertical" H 900 4250 50  0001 C CNN
F 3 "" H 900 4250 50  0001 C CNN
	1    900  4250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5A799B12
P 4350 7200
F 0 "C7" H 4375 7300 50  0000 L CNN
F 1 "0.1uf" H 4375 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4388 7050 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A79A0FD
P 4350 7400
F 0 "#PWR08" H 4350 7150 50  0001 C CNN
F 1 "GND" H 4350 7250 50  0000 C CNN
F 2 "" H 4350 7400 50  0001 C CNN
F 3 "" H 4350 7400 50  0001 C CNN
	1    4350 7400
	1    0    0    -1  
$EndComp
NoConn ~ 1100 2350
NoConn ~ 1100 2450
NoConn ~ 1100 2550
NoConn ~ 1100 2650
NoConn ~ 1100 2750
NoConn ~ 1100 3950
NoConn ~ 1100 6150
NoConn ~ 1100 6050
NoConn ~ 1100 5950
NoConn ~ 1100 5850
NoConn ~ 1100 5750
Text Label 1200 5150 2    60   ~ 0
A5
Text Label 1200 5250 2    60   ~ 0
A6
Text Label 1200 5350 2    60   ~ 0
A7
Text Label 1300 3650 2    60   ~ 0
~IORQ~
NoConn ~ 1100 5650
NoConn ~ 1100 5550
NoConn ~ 1100 5450
Text Label 1300 3850 2    60   ~ 0
~WR~
Text Label 1200 4750 2    60   ~ 0
A1
Wire Wire Line
	4350 7050 4350 7000
Wire Wire Line
	4350 7350 4350 7400
Text Label 1950 1750 0    60   ~ 0
A7
Text Label 1950 1450 0    60   ~ 0
A6
Text Label 1950 1350 0    60   ~ 0
A5
$Comp
L 74xx:74LS138 U2
U 1 1 5B25AE81
P 2550 1550
F 0 "U2" H 2650 2050 50  0000 C CNN
F 1 "74HCT138" H 2700 1001 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2550 1550 50  0001 C CNN
F 3 "" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
Text Label 1850 1850 0    60   ~ 0
~IORQ~
$Comp
L 74xx:74HCT541 U5
U 1 1 5BC4C54E
P 10100 5050
F 0 "U5" H 9850 5850 50  0000 C CNN
F 1 "74HCT541" H 9800 5750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10100 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 10100 5050 50  0001 C CNN
	1    10100 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT541 U4
U 1 1 5BC4C58E
P 10100 2550
F 0 "U4" H 9800 3350 50  0000 C CNN
F 1 "74HCT541" H 9800 3250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10100 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 10100 2550 50  0001 C CNN
	1    10100 2550
	1    0    0    -1  
$EndComp
Text Label 1950 1250 0    60   ~ 0
~WR~
Wire Wire Line
	2050 1750 1950 1750
Wire Wire Line
	2050 1850 1850 1850
Wire Wire Line
	2050 1450 1950 1450
Wire Wire Line
	2050 1350 1950 1350
Wire Wire Line
	2050 1250 1950 1250
Text Label 3450 1250 2    50   ~ 0
CTRL_EN_2
Text Label 3300 1950 2    50   ~ 0
CTRL_R
Text Label 3450 1650 2    50   ~ 0
CTRL_EN_1
Wire Wire Line
	3050 1250 3450 1250
Wire Wire Line
	3050 1650 3450 1650
Wire Wire Line
	3050 1950 3300 1950
Text Label 9600 2950 2    50   ~ 0
CTRL_R
Text Label 9600 5450 2    50   ~ 0
CTRL_R
Text Label 9600 5550 2    60   ~ 0
A1
Text Label 8400 3050 2    60   ~ 0
A1
$Comp
L 74xx:74HCT00 U3
U 1 1 5BC5D3A7
P 1700 7000
F 0 "U3" H 1700 7325 50  0000 C CNN
F 1 "74HCT00" H 1700 7234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1700 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 1700 7000 50  0001 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U3
U 2 1 5BC5D3D7
P 2650 7100
F 0 "U3" H 2650 7425 50  0000 C CNN
F 1 "74HCT00" H 2650 7334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2650 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 2650 7100 50  0001 C CNN
	2    2650 7100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U3
U 3 1 5BC5D475
P 8850 3050
F 0 "U3" H 8850 3375 50  0000 C CNN
F 1 "74HCT00" H 8850 3284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8850 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 8850 3050 50  0001 C CNN
	3    8850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2950 8500 2950
Wire Wire Line
	8500 2950 8500 3050
Wire Wire Line
	8500 3150 8550 3150
Wire Wire Line
	8400 3050 8500 3050
Connection ~ 8500 3050
Wire Wire Line
	8500 3050 8500 3150
$Comp
L Connector:DB9_Male J3
U 1 1 5BC5E190
P 7800 4300
F 0 "J3" H 7980 4346 50  0000 L CNN
F 1 "DB9_Male" H 7980 4255 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 7800 4300 50  0001 C CNN
F 3 " ~" H 7800 4300 50  0001 C CNN
	1    7800 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male J4
U 1 1 5BC5E1F9
P 7800 5750
F 0 "J4" H 7980 5796 50  0000 L CNN
F 1 "DB9_Male" H 7980 5705 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 7800 5750 50  0001 C CNN
F 3 " ~" H 7800 5750 50  0001 C CNN
	1    7800 5750
	1    0    0    -1  
$EndComp
Text Label 1400 6900 2    50   ~ 0
CTRL_EN_1
Text Label 2350 7200 2    50   ~ 0
CTRL_EN_2
Text Label 10600 2050 0    60   ~ 0
D0
Text Label 10600 2150 0    60   ~ 0
D1
Text Label 10600 2250 0    60   ~ 0
D2
Text Label 10600 2350 0    60   ~ 0
D3
Text Label 10600 2450 0    60   ~ 0
D4
Text Label 10600 2550 0    60   ~ 0
D5
Text Label 10600 2650 0    60   ~ 0
D6
Text Label 10600 2750 0    60   ~ 0
D7
Text Label 10600 4550 0    60   ~ 0
D0
Text Label 10600 4650 0    60   ~ 0
D1
Text Label 10600 4750 0    60   ~ 0
D2
Text Label 10600 4850 0    60   ~ 0
D3
Text Label 10600 4950 0    60   ~ 0
D4
Text Label 10600 5050 0    60   ~ 0
D5
Text Label 10600 5150 0    60   ~ 0
D6
Text Label 10600 5250 0    60   ~ 0
D7
Wire Wire Line
	2000 7000 2350 7000
Wire Wire Line
	1400 7100 1400 7350
Wire Wire Line
	1400 7350 2950 7350
Wire Wire Line
	2950 7350 2950 7100
Wire Wire Line
	2950 7100 3100 7100
Connection ~ 2950 7100
Text Label 7500 4700 2    50   ~ 0
~UP1~
Text Label 7500 4500 2    50   ~ 0
~DOWN1~
Text Label 7500 4300 2    50   ~ 0
~LEFT1~
Text Label 7500 4100 2    50   ~ 0
~RIGHT1~
Text Label 7500 4600 2    50   ~ 0
~FIRE1~
$Comp
L power:GND #PWR0104
U 1 1 5BC61AD8
P 7000 4200
F 0 "#PWR0104" H 7000 3950 50  0001 C CNN
F 1 "GND" H 7000 4050 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4200 7500 4200
$Comp
L power:VCC #PWR0105
U 1 1 5BC62A3E
P 7000 3900
F 0 "#PWR0105" H 7000 3750 50  0001 C CNN
F 1 "VCC" H 7000 4050 50  0000 C CNN
F 2 "" H 7000 3900 50  0001 C CNN
F 3 "" H 7000 3900 50  0001 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3900 7500 3900
Text Label 7500 4000 2    50   ~ 0
~ALT1~
Text Label 7500 4400 2    50   ~ 0
SELECT
Text Label 7500 6150 2    50   ~ 0
~UP2~
Text Label 7500 5950 2    50   ~ 0
~DOWN2~
Text Label 7500 5750 2    50   ~ 0
~LEFT2~
Text Label 7500 5550 2    50   ~ 0
~RIGHT2~
Text Label 7500 6050 2    50   ~ 0
~FIRE2~
$Comp
L power:GND #PWR0106
U 1 1 5BC63078
P 7000 5650
F 0 "#PWR0106" H 7000 5400 50  0001 C CNN
F 1 "GND" H 7000 5500 50  0000 C CNN
F 2 "" H 7000 5650 50  0001 C CNN
F 3 "" H 7000 5650 50  0001 C CNN
	1    7000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5650 7500 5650
$Comp
L power:VCC #PWR0107
U 1 1 5BC6307F
P 7000 5350
F 0 "#PWR0107" H 7000 5200 50  0001 C CNN
F 1 "VCC" H 7000 5500 50  0000 C CNN
F 2 "" H 7000 5350 50  0001 C CNN
F 3 "" H 7000 5350 50  0001 C CNN
	1    7000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5350 7500 5350
Text Label 7500 5450 2    50   ~ 0
~ALT2~
Text Label 7500 5850 2    50   ~ 0
SELECT
Text Label 7100 1600 2    50   ~ 0
~UP1~
Text Label 7100 2200 2    50   ~ 0
~DOWN1~
Text Label 7100 2500 2    50   ~ 0
~LEFT1~
Text Label 7100 1900 2    50   ~ 0
~RIGHT1~
Text Label 9600 2450 2    50   ~ 0
~ALT1~
Text Label 9600 2650 2    50   ~ 0
~FIRE1~
Text Label 9600 2550 2    50   ~ 0
~QUADA1~
Text Label 9600 2750 2    50   ~ 0
~QUADB1~
Text Label 9600 4550 2    50   ~ 0
~UP2~
Text Label 9600 4750 2    50   ~ 0
~DOWN2~
Text Label 9600 4850 2    50   ~ 0
~LEFT2~
Text Label 9600 4650 2    50   ~ 0
~RIGHT2~
Text Label 9600 4950 2    50   ~ 0
~ALT2~
Text Label 9600 5150 2    50   ~ 0
~FIRE2~
Text Label 9600 5050 2    50   ~ 0
~QUADA2~
Text Label 9600 5250 2    50   ~ 0
~QUADB2~
Connection ~ 4350 7350
Connection ~ 4350 7050
$Comp
L Device:C C2
U 1 1 5BC8AB20
P 4600 7200
F 0 "C2" H 4625 7300 50  0000 L CNN
F 1 "0.1uf" H 4625 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4638 7050 50  0001 C CNN
F 3 "" H 4600 7200 50  0001 C CNN
	1    4600 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BC8C9C6
P 4850 7200
F 0 "C3" H 4875 7300 50  0000 L CNN
F 1 "0.1uf" H 4875 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4888 7050 50  0001 C CNN
F 3 "" H 4850 7200 50  0001 C CNN
	1    4850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7050 4850 7050
Wire Wire Line
	4600 7350 4850 7350
Connection ~ 4600 7050
Connection ~ 4600 7350
$Comp
L Switch:SW_Push_Open SW1
U 1 1 5BC98E90
P 4200 1350
F 0 "SW1" H 4200 1565 50  0000 C CNN
F 1 "1" H 4200 1474 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 1550 50  0001 C CNN
F 3 "" H 4200 1550 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5BC98F88
P 4200 1750
F 0 "SW2" H 4200 1965 50  0000 C CNN
F 1 "2" H 4200 1874 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW4
U 1 1 5BC99038
P 4200 2550
F 0 "SW4" H 4200 2765 50  0000 C CNN
F 1 "4" H 4200 2674 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 2750 50  0001 C CNN
F 3 "" H 4200 2750 50  0001 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW5
U 1 1 5BC990D8
P 4200 2950
F 0 "SW5" H 4200 3165 50  0000 C CNN
F 1 "5" H 4200 3074 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 3150 50  0001 C CNN
F 3 "" H 4200 3150 50  0001 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW6
U 1 1 5BC99134
P 4200 3400
F 0 "SW6" H 4200 3615 50  0000 C CNN
F 1 "6" H 4200 3524 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 3600 50  0001 C CNN
F 3 "" H 4200 3600 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW7
U 1 1 5BC9919C
P 4200 3900
F 0 "SW7" H 4200 4115 50  0000 C CNN
F 1 "7" H 4200 4024 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 4100 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW8
U 1 1 5BC99204
P 4200 4350
F 0 "SW8" H 4200 4565 50  0000 C CNN
F 1 "8" H 4200 4474 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 4550 50  0001 C CNN
F 3 "" H 4200 4550 50  0001 C CNN
	1    4200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1350 3900 1350
$Comp
L power:GND #PWR0111
U 1 1 5BCBE37F
P 3900 6200
F 0 "#PWR0111" H 3900 5950 50  0001 C CNN
F 1 "GND" H 3900 6050 50  0000 C CNN
F 2 "" H 3900 6200 50  0001 C CNN
F 3 "" H 3900 6200 50  0001 C CNN
	1    3900 6200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5BCCD78D
P 4750 2150
F 0 "D3" H 4750 2366 50  0000 C CNN
F 1 "1N4148" H 4750 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 1975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 2150 50  0001 C CNN
	1    4750 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5BCCD801
P 4750 2550
F 0 "D4" H 4750 2766 50  0000 C CNN
F 1 "1N4148" H 4750 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 2550 50  0001 C CNN
	1    4750 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D13
U 1 1 5BCCD87B
P 5400 2150
F 0 "D13" H 5400 2366 50  0000 C CNN
F 1 "1N4148" H 5400 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 1975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 2150 50  0001 C CNN
	1    5400 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 5BCCD907
P 5400 2550
F 0 "D14" H 5400 2766 50  0000 C CNN
F 1 "1N4148" H 5400 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 2550 50  0001 C CNN
	1    5400 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 5BCCD987
P 6050 2550
F 0 "D21" H 6050 2766 50  0000 C CNN
F 1 "1N4148" H 6050 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6050 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 6050 2550 50  0001 C CNN
	1    6050 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5BCCDA57
P 4750 2950
F 0 "D5" H 4750 3166 50  0000 C CNN
F 1 "1N4148" H 4750 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 2775 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 2950 50  0001 C CNN
	1    4750 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D15
U 1 1 5BCCDADB
P 5400 2950
F 0 "D15" H 5400 3166 50  0000 C CNN
F 1 "1N4148" H 5400 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 2775 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 5BCCDB63
P 4750 4350
F 0 "D8" H 4750 4566 50  0000 C CNN
F 1 "1N4148" H 4750 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 4350 50  0001 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D17
U 1 1 5BCCDBEB
P 5400 4350
F 0 "D17" H 5400 4566 50  0000 C CNN
F 1 "1N4148" H 5400 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D22
U 1 1 5BCCDC73
P 6050 4350
F 0 "D22" H 6050 4566 50  0000 C CNN
F 1 "1N4148" H 6050 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6050 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 6050 4350 50  0001 C CNN
	1    6050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2150 4600 2150
Wire Wire Line
	4600 2150 4600 2250
Connection ~ 4600 2150
$Comp
L Switch:SW_Push_Open SW3
U 1 1 5BCF29A6
P 4200 2150
F 0 "SW3" H 4200 2365 50  0000 C CNN
F 1 "3" H 4200 2274 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 2350 50  0001 C CNN
F 3 "" H 4200 2350 50  0001 C CNN
	1    4200 2150
	1    0    0    -1  
$EndComp
Text Label 5100 1350 2    50   ~ 0
~KPR~
Wire Wire Line
	4800 1350 5100 1350
Text Label 5100 1750 2    50   ~ 0
~KPL~
Wire Wire Line
	4800 1750 5100 1750
Text Label 5200 2150 2    50   ~ 0
~KPU~
Wire Wire Line
	5250 2250 5250 2150
Wire Wire Line
	4600 2250 5250 2250
Wire Wire Line
	4900 2150 5200 2150
Text Label 5850 2150 2    50   ~ 0
~KPR~
Wire Wire Line
	5550 2150 5850 2150
Text Label 5200 2550 2    50   ~ 0
~KPL~
Text Label 5850 2550 2    50   ~ 0
~KPD~
Text Label 6400 2550 2    50   ~ 0
~KPU~
Wire Wire Line
	4400 2550 4600 2550
Wire Wire Line
	5250 2650 5250 2550
Wire Wire Line
	4900 2550 5200 2550
Wire Wire Line
	5250 2650 4600 2650
Wire Wire Line
	4600 2650 4600 2550
Connection ~ 4600 2550
Wire Wire Line
	4400 2950 4600 2950
Wire Wire Line
	4600 3050 5250 3050
Wire Wire Line
	5250 3050 5250 2950
Wire Wire Line
	4600 2950 4600 3050
Connection ~ 4600 2950
Wire Wire Line
	3900 2950 4000 2950
Wire Wire Line
	3900 1350 3900 1750
Wire Wire Line
	4000 2550 3900 2550
Wire Wire Line
	4000 2150 3900 2150
Wire Wire Line
	4000 1750 3900 1750
Wire Wire Line
	5250 2650 5900 2650
Wire Wire Line
	5900 2650 5900 2550
Connection ~ 5250 2650
Wire Wire Line
	5550 2550 5850 2550
Wire Wire Line
	6200 2550 6400 2550
Wire Wire Line
	4000 3400 3900 3400
Wire Wire Line
	4000 3900 3900 3900
Wire Wire Line
	4000 4350 3900 4350
Wire Wire Line
	4400 4350 4600 4350
Text Label 5200 2950 2    50   ~ 0
~KPD~
Text Label 5850 2950 2    50   ~ 0
~KPL~
Wire Wire Line
	4900 2950 5200 2950
Wire Wire Line
	5550 2950 5850 2950
Wire Wire Line
	4600 4350 4600 4450
Wire Wire Line
	4600 4450 5250 4450
Wire Wire Line
	5250 4450 5250 4350
Connection ~ 4600 4350
Wire Wire Line
	5250 4450 5900 4450
Wire Wire Line
	5900 4450 5900 4350
Connection ~ 5250 4450
Connection ~ 3900 1750
Connection ~ 3900 2150
Wire Wire Line
	3900 2150 3900 2550
Wire Wire Line
	3900 1750 3900 2150
Connection ~ 3900 2550
Connection ~ 3900 2950
Connection ~ 3900 3400
Wire Wire Line
	3900 2550 3900 2950
Wire Wire Line
	3900 2950 3900 3400
Wire Wire Line
	3900 3400 3900 3900
Connection ~ 3900 3900
Wire Wire Line
	3900 3900 3900 4350
Text Label 5200 4350 2    50   ~ 0
~KPR~
Text Label 5850 4350 2    50   ~ 0
~KPL~
Text Label 6500 4350 2    50   ~ 0
~KPD~
Wire Wire Line
	4900 4350 5200 4350
Wire Wire Line
	5550 4350 5850 4350
Wire Wire Line
	6200 4350 6500 4350
$Comp
L Diode:1N4148 D7
U 1 1 5BE5FD44
P 4750 3900
F 0 "D7" H 4750 4116 50  0000 C CNN
F 1 "1N4148" H 4750 4025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 3725 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D16
U 1 1 5BE5FE94
P 5400 3900
F 0 "D16" H 5400 4116 50  0000 C CNN
F 1 "1N4148" H 5400 4025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 3725 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 3900 50  0001 C CNN
	1    5400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4600 3900
Wire Wire Line
	4600 3900 4600 4000
Wire Wire Line
	4600 4000 5250 4000
Wire Wire Line
	5250 4000 5250 3900
Connection ~ 4600 3900
Text Label 5200 3900 2    50   ~ 0
~KPR~
Text Label 5850 3900 2    50   ~ 0
~KPL~
Wire Wire Line
	4900 3900 5200 3900
Wire Wire Line
	5550 3900 5850 3900
Text Label 5050 3400 2    50   ~ 0
~KPU~
Text Label 3100 7100 0    50   ~ 0
SELECT
Wire Wire Line
	4800 3400 5050 3400
Connection ~ 3900 4350
$Comp
L 74xx:74HCT00 U3
U 4 1 5BF5A10D
P 1400 1950
F 0 "U3" H 1400 2275 50  0000 C CNN
F 1 "74HCT00" H 1400 2184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1400 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 1400 1950 50  0001 C CNN
	4    1400 1950
	1    0    0    -1  
$EndComp
Text Label 1250 4350 2    60   ~ 0
~M1~
$Comp
L power:GND #PWR0103
U 1 1 5BF5A8A9
P 1350 4550
F 0 "#PWR0103" H 1350 4300 50  0001 C CNN
F 1 "GND" H 1350 4400 50  0000 C CNN
F 2 "" H 1350 4550 50  0001 C CNN
F 3 "" H 1350 4550 50  0001 C CNN
	1    1350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BF5AC14
P 1350 4450
F 0 "#PWR0112" H 1350 4300 50  0001 C CNN
F 1 "VCC" H 1350 4600 50  0000 C CNN
F 2 "" H 1350 4450 50  0001 C CNN
F 3 "" H 1350 4450 50  0001 C CNN
	1    1350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4450 1350 4450
Wire Wire Line
	1100 4550 1350 4550
Text Label 950  2050 0    60   ~ 0
~M1~
Wire Wire Line
	1700 1950 2050 1950
Wire Wire Line
	1100 1850 1100 2050
Connection ~ 1100 2050
Wire Wire Line
	950  2050 1100 2050
$Comp
L 74xx:74HCT00 U3
U 5 1 5BF98CAE
P 2450 4450
F 0 "U3" H 2450 4775 50  0000 C CNN
F 1 "74HCT00" H 2450 4684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2450 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 2450 4450 50  0001 C CNN
	5    2450 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5BF98F53
P 2450 3900
F 0 "#PWR0113" H 2450 3750 50  0001 C CNN
F 1 "VCC" H 2450 4050 50  0000 C CNN
F 2 "" H 2450 3900 50  0001 C CNN
F 3 "" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5BF99045
P 2450 5000
F 0 "#PWR0114" H 2450 4750 50  0001 C CNN
F 1 "GND" H 2450 4850 50  0000 C CNN
F 2 "" H 2450 5000 50  0001 C CNN
F 3 "" H 2450 5000 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2450 3900
Wire Wire Line
	2450 5000 2450 4950
$Comp
L power:GND #PWR0115
U 1 1 5C016D77
P 10100 3400
F 0 "#PWR0115" H 10100 3150 50  0001 C CNN
F 1 "GND" H 10100 3250 50  0000 C CNN
F 2 "" H 10100 3400 50  0001 C CNN
F 3 "" H 10100 3400 50  0001 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5C01E38D
P 10100 5900
F 0 "#PWR0116" H 10100 5650 50  0001 C CNN
F 1 "GND" H 10100 5750 50  0000 C CNN
F 2 "" H 10100 5900 50  0001 C CNN
F 3 "" H 10100 5900 50  0001 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 5C0258F9
P 10100 1700
F 0 "#PWR0117" H 10100 1550 50  0001 C CNN
F 1 "VCC" H 10100 1850 50  0000 C CNN
F 2 "" H 10100 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0001 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1750 10100 1700
$Comp
L power:VCC #PWR0118
U 1 1 5C02D3CD
P 10100 4200
F 0 "#PWR0118" H 10100 4050 50  0001 C CNN
F 1 "VCC" H 10100 4350 50  0000 C CNN
F 2 "" H 10100 4200 50  0001 C CNN
F 3 "" H 10100 4200 50  0001 C CNN
	1    10100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4250 10100 4200
Wire Wire Line
	10100 5900 10100 5850
$Comp
L Device:R_Network06_US RN2
U 1 1 5BCDA826
P 10600 1150
F 0 "RN2" H 10880 1196 50  0000 L CNN
F 1 "10K" H 10880 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP7" V 10975 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10600 1150 50  0001 C CNN
	1    10600 1150
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5BCDAA92
P 8700 3850
F 0 "#PWR0109" H 8700 3700 50  0001 C CNN
F 1 "VCC" H 8700 4000 50  0000 C CNN
F 2 "" H 8700 3850 50  0001 C CNN
F 3 "" H 8700 3850 50  0001 C CNN
	1    8700 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 3850 8700 3850
Wire Wire Line
	9600 5050 9250 5050
Wire Wire Line
	9250 5050 9250 5250
Wire Wire Line
	9250 5250 9600 5250
Connection ~ 9250 5250
Wire Wire Line
	9250 5900 10100 5900
Wire Wire Line
	9250 5250 9250 5900
Connection ~ 10100 5900
$Comp
L Device:R_Network06_US RN1
U 1 1 5BD3F985
P 9600 1150
F 0 "RN1" H 9880 1196 50  0000 L CNN
F 1 "10K" H 9880 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP7" V 9975 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9600 1150 50  0001 C CNN
	1    9600 1150
	0    -1   1    0   
$EndComp
Wire Wire Line
	9600 2550 9250 2550
Wire Wire Line
	9250 2550 9250 2750
Wire Wire Line
	9250 2750 9600 2750
Wire Wire Line
	9150 3050 9600 3050
Wire Wire Line
	9250 2750 9250 3350
Wire Wire Line
	9250 3350 10100 3350
Connection ~ 9250 2750
Wire Wire Line
	10100 3350 10100 3400
Connection ~ 10100 3350
$Comp
L power:VCC #PWR0119
U 1 1 5BD95728
P 9400 800
F 0 "#PWR0119" H 9400 650 50  0001 C CNN
F 1 "VCC" H 9400 950 50  0000 C CNN
F 2 "" H 9400 800 50  0001 C CNN
F 3 "" H 9400 800 50  0001 C CNN
	1    9400 800 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS258 U6
U 1 1 5C039CEA
P 7600 2100
F 0 "U6" H 7300 3100 50  0000 C CNN
F 1 "74HCT258" H 7300 3000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7600 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS258" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Text Label 9800 1250 0    50   ~ 0
~ALT1~
Text Label 9800 1350 0    50   ~ 0
~FIRE1~
Text Label 9800 850  0    50   ~ 0
~UP1~
Text Label 9800 950  0    50   ~ 0
~RIGHT1~
Text Label 9800 1050 0    50   ~ 0
~DOWN1~
Text Label 9800 1150 0    50   ~ 0
~LEFT1~
Wire Wire Line
	9400 800  9400 850 
$Comp
L power:VCC #PWR0108
U 1 1 5C0554BB
P 10400 800
F 0 "#PWR0108" H 10400 650 50  0001 C CNN
F 1 "VCC" H 10400 950 50  0000 C CNN
F 2 "" H 10400 800 50  0001 C CNN
F 3 "" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 850  10400 800 
Text Label 10800 850  0    50   ~ 0
~UP2~
Text Label 10800 1050 0    50   ~ 0
~DOWN2~
Text Label 10800 1150 0    50   ~ 0
~LEFT2~
Text Label 10800 950  0    50   ~ 0
~RIGHT2~
Text Label 10800 1250 0    50   ~ 0
~ALT2~
Text Label 10800 1350 0    50   ~ 0
~FIRE2~
Text Label 7100 1500 2    50   ~ 0
~KPU~
Text Label 7100 1800 2    50   ~ 0
~KPR~
Text Label 7100 2100 2    50   ~ 0
~KPD~
Text Label 7100 2400 2    50   ~ 0
~KPL~
$Comp
L Device:R_Network06_US RN3
U 1 1 5C075B06
P 8600 1150
F 0 "RN3" H 8880 1196 50  0000 L CNN
F 1 "10K" H 8880 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP7" V 8975 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8600 1150 50  0001 C CNN
	1    8600 1150
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR0120
U 1 1 5C075B0C
P 8400 800
F 0 "#PWR0120" H 8400 650 50  0001 C CNN
F 1 "VCC" H 8400 950 50  0000 C CNN
F 2 "" H 8400 800 50  0001 C CNN
F 3 "" H 8400 800 50  0001 C CNN
	1    8400 800 
	1    0    0    -1  
$EndComp
Text Label 8800 850  0    50   ~ 0
~KPU~
Text Label 8800 950  0    50   ~ 0
~KPR~
Text Label 8800 1050 0    50   ~ 0
~KPD~
Text Label 8800 1150 0    50   ~ 0
~KPL~
Wire Wire Line
	8400 800  8400 850 
NoConn ~ 8800 1250
NoConn ~ 8800 1350
Text Label 8100 1500 0    50   ~ 0
~MUX1U~
Text Label 8100 1800 0    50   ~ 0
~MUX1R~
Text Label 8100 2100 0    50   ~ 0
~MUX1D~
Text Label 8100 2400 0    50   ~ 0
~MUX1L~
Text Label 9600 2050 2    50   ~ 0
~MUX1U~
Text Label 9600 2150 2    50   ~ 0
~MUX1R~
Text Label 9600 2250 2    50   ~ 0
~MUX1D~
Text Label 9600 2350 2    50   ~ 0
~MUX1L~
$Comp
L power:VCC #PWR0121
U 1 1 5C095BB1
P 7600 1150
F 0 "#PWR0121" H 7600 1000 50  0001 C CNN
F 1 "VCC" H 7600 1300 50  0000 C CNN
F 2 "" H 7600 1150 50  0001 C CNN
F 3 "" H 7600 1150 50  0001 C CNN
	1    7600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1200 7600 1150
$Comp
L power:GND #PWR0122
U 1 1 5C09A420
P 7600 3150
F 0 "#PWR0122" H 7600 2900 50  0001 C CNN
F 1 "GND" H 7600 3000 50  0000 C CNN
F 2 "" H 7600 3150 50  0001 C CNN
F 3 "" H 7600 3150 50  0001 C CNN
	1    7600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3100 7600 3150
Wire Wire Line
	7100 2800 7100 3100
Wire Wire Line
	7100 3100 7600 3100
Connection ~ 7600 3100
Text Label 7100 2700 2    50   ~ 0
SELECT
$Comp
L Switch:SW_Push_Open SW9
U 1 1 5C0C0967
P 4200 4750
F 0 "SW9" H 4200 4965 50  0000 C CNN
F 1 "9" H 4200 4874 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 4950 50  0001 C CNN
F 3 "" H 4200 4950 50  0001 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW10
U 1 1 5C0C096D
P 4200 5200
F 0 "SW10" H 4200 5415 50  0000 C CNN
F 1 "0" H 4200 5324 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 5400 50  0001 C CNN
F 3 "" H 4200 5400 50  0001 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW11
U 1 1 5C0C0973
P 4200 5700
F 0 "SW11" H 4200 5915 50  0000 C CNN
F 1 "*" H 4200 5824 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 5900 50  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
	1    4200 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW12
U 1 1 5C0C0979
P 4200 6150
F 0 "SW12" H 4200 6365 50  0000 C CNN
F 1 "#" H 4200 6274 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4200 6350 50  0001 C CNN
F 3 "" H 4200 6350 50  0001 C CNN
	1    4200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4750 4000 4750
Wire Wire Line
	4000 5200 3900 5200
Wire Wire Line
	4000 5700 3900 5700
Wire Wire Line
	4000 6150 3900 6150
Connection ~ 3900 4750
Connection ~ 3900 5200
Wire Wire Line
	3900 4350 3900 4750
Wire Wire Line
	3900 4750 3900 5200
Wire Wire Line
	3900 5200 3900 5700
Connection ~ 3900 5700
Wire Wire Line
	3900 5700 3900 6150
Wire Wire Line
	3900 6200 3900 6150
Connection ~ 3900 6150
Text Label 5050 4750 2    50   ~ 0
~KPD~
Wire Wire Line
	4800 4750 5050 4750
$Comp
L Diode:1N4148 D1
U 1 1 5C0F0C63
P 4750 5200
F 0 "D1" H 4750 5416 50  0000 C CNN
F 1 "1N4148" H 4750 5325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 5025 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 5200 50  0001 C CNN
	1    4750 5200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D9
U 1 1 5C0F0C69
P 5400 5200
F 0 "D9" H 5400 5416 50  0000 C CNN
F 1 "1N4148" H 5400 5325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 5025 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 5200 50  0001 C CNN
	1    5400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5200 4600 5200
Wire Wire Line
	4600 5300 5250 5300
Wire Wire Line
	5250 5300 5250 5200
Wire Wire Line
	4600 5200 4600 5300
Connection ~ 4600 5200
Text Label 5200 5200 2    50   ~ 0
~KPU~
Text Label 5850 5200 2    50   ~ 0
~KPD~
Wire Wire Line
	4900 5200 5200 5200
Wire Wire Line
	5550 5200 5850 5200
$Comp
L Diode:1N4148 D2
U 1 1 5C0F6B04
P 4750 5700
F 0 "D2" H 4750 5916 50  0000 C CNN
F 1 "1N4148" H 4750 5825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 5525 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 5700 50  0001 C CNN
	1    4750 5700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 5C0F6B0A
P 5400 5700
F 0 "D10" H 5400 5916 50  0000 C CNN
F 1 "1N4148" H 5400 5825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 5525 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 5700 50  0001 C CNN
	1    5400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5700 4600 5700
Wire Wire Line
	4600 5800 5250 5800
Wire Wire Line
	5250 5800 5250 5700
Wire Wire Line
	4600 5700 4600 5800
Connection ~ 4600 5700
Text Label 5200 5700 2    50   ~ 0
~KPD~
Text Label 5850 5700 2    50   ~ 0
~KPR~
Wire Wire Line
	4900 5700 5200 5700
Wire Wire Line
	5550 5700 5850 5700
$Comp
L Diode:1N4148 D6
U 1 1 5C0FD18E
P 4750 6150
F 0 "D6" H 4750 6366 50  0000 C CNN
F 1 "1N4148" H 4750 6275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 5975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4750 6150 50  0001 C CNN
	1    4750 6150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D11
U 1 1 5C0FD194
P 5400 6150
F 0 "D11" H 5400 6366 50  0000 C CNN
F 1 "1N4148" H 5400 6275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 5975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5400 6150 50  0001 C CNN
	1    5400 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6150 4600 6150
Wire Wire Line
	4600 6250 5250 6250
Wire Wire Line
	5250 6250 5250 6150
Wire Wire Line
	4600 6150 4600 6250
Connection ~ 4600 6150
Text Label 5200 6150 2    50   ~ 0
~KPU~
Text Label 5850 6150 2    50   ~ 0
~KPL~
Wire Wire Line
	4900 6150 5200 6150
Wire Wire Line
	5550 6150 5850 6150
Wire Wire Line
	4350 7350 4600 7350
Wire Wire Line
	4350 7050 4600 7050
$Comp
L Diode:1N4148 D12
U 1 1 5BD1BF7A
P 4650 1350
F 0 "D12" H 4650 1566 50  0000 C CNN
F 1 "1N4148" H 4650 1475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4650 1175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D19
U 1 1 5BD1C01C
P 4650 3400
F 0 "D19" H 4650 3616 50  0000 C CNN
F 1 "1N4148" H 4650 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4650 3225 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 5BD1C0BA
P 4650 4750
F 0 "D20" H 4650 4966 50  0000 C CNN
F 1 "1N4148" H 4650 4875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4650 4575 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4650 4750 50  0001 C CNN
	1    4650 4750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 5BD1C17A
P 4650 1750
F 0 "D18" H 4650 1966 50  0000 C CNN
F 1 "1N4148" H 4650 1875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4650 1575 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4650 1750 50  0001 C CNN
	1    4650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1350 4500 1350
Wire Wire Line
	4400 3400 4500 3400
Wire Wire Line
	4400 4750 4500 4750
Wire Wire Line
	4400 1750 4500 1750
$Comp
L Device:C C1
U 1 1 5BD22871
P 5100 7200
F 0 "C1" H 5125 7300 50  0000 L CNN
F 1 "0.1uf" H 5125 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5138 7050 50  0001 C CNN
F 3 "" H 5100 7200 50  0001 C CNN
	1    5100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7050 5100 7050
Wire Wire Line
	4850 7350 5100 7350
Connection ~ 4850 7050
Connection ~ 4850 7350
$Comp
L Device:C C4
U 1 1 5BD28B54
P 5350 7200
F 0 "C4" H 5375 7300 50  0000 L CNN
F 1 "0.1uf" H 5375 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5388 7050 50  0001 C CNN
F 3 "" H 5350 7200 50  0001 C CNN
	1    5350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7050 5350 7050
Wire Wire Line
	5100 7350 5350 7350
Connection ~ 5100 7050
Connection ~ 5100 7350
$Comp
L power:VCC #PWR0101
U 1 1 5BD674BF
P 4350 7000
F 0 "#PWR0101" H 4350 6850 50  0001 C CNN
F 1 "VCC" H 4350 7150 50  0000 C CNN
F 2 "" H 4350 7000 50  0001 C CNN
F 3 "" H 4350 7000 50  0001 C CNN
	1    4350 7000
	1    0    0    -1  
$EndComp
NoConn ~ 3050 1350
NoConn ~ 3050 1450
NoConn ~ 3050 1550
NoConn ~ 3050 1750
NoConn ~ 3050 1850
NoConn ~ 1100 4050
NoConn ~ 1100 4150
NoConn ~ 1100 4250
NoConn ~ 1100 3750
NoConn ~ 1100 4650
NoConn ~ 1100 4850
NoConn ~ 1100 4950
NoConn ~ 1100 5050
Text Label 1200 3550 2    60   ~ 0
D0
Text Label 1200 3450 2    60   ~ 0
D1
Text Label 1200 3350 2    60   ~ 0
D2
Text Label 1200 3250 2    60   ~ 0
D3
Text Label 1200 3150 2    60   ~ 0
D4
Text Label 1200 3050 2    60   ~ 0
D5
Text Label 1200 2950 2    60   ~ 0
D6
Text Label 1200 2850 2    60   ~ 0
D7
Wire Wire Line
	1100 2850 1200 2850
Wire Wire Line
	1100 2950 1200 2950
Wire Wire Line
	1100 3050 1200 3050
Wire Wire Line
	1100 3150 1200 3150
Wire Wire Line
	1100 3250 1200 3250
Wire Wire Line
	1100 3350 1200 3350
Wire Wire Line
	1100 3450 1200 3450
Wire Wire Line
	1100 3550 1200 3550
Wire Wire Line
	1100 3650 1300 3650
Wire Wire Line
	1100 3850 1300 3850
Wire Wire Line
	1100 4350 1250 4350
Wire Wire Line
	1100 4750 1200 4750
Wire Wire Line
	1100 5150 1200 5150
Wire Wire Line
	1100 5250 1200 5250
Wire Wire Line
	1100 5350 1200 5350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BE6948C
P 4850 7050
F 0 "#FLG0101" H 4850 7125 50  0001 C CNN
F 1 "PWR_FLAG" H 4850 7224 50  0000 C CNN
F 2 "" H 4850 7050 50  0001 C CNN
F 3 "~" H 4850 7050 50  0001 C CNN
	1    4850 7050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BE69684
P 4850 7350
F 0 "#FLG0102" H 4850 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 4850 7523 50  0000 C CNN
F 2 "" H 4850 7350 50  0001 C CNN
F 3 "~" H 4850 7350 50  0001 C CNN
	1    4850 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BD31E5C
P 2550 2300
F 0 "#PWR0102" H 2550 2050 50  0001 C CNN
F 1 "GND" H 2550 2150 50  0000 C CNN
F 2 "" H 2550 2300 50  0001 C CNN
F 3 "" H 2550 2300 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 5BD31ED3
P 2550 900
F 0 "#PWR0110" H 2550 750 50  0001 C CNN
F 1 "VCC" H 2550 1050 50  0000 C CNN
F 2 "" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 950  2550 900 
Wire Wire Line
	2550 2300 2550 2250
$EndSCHEMATC
