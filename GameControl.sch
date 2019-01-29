EESchema Schematic File Version 4
LIBS:GameControl-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Game Controller Interface for RC2014"
Date "2018-10-25"
Rev "REV2"
Comp "J.B. Langston"
Comment1 "https://github.com/jblang/GameController"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x39 J1
U 1 1 5A772849
P 850 4500
F 0 "J1" H 850 6500 50  0000 C CNN
F 1 "Conn_01x39" H 850 2500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x39_P2.54mm_Vertical" H 850 4500 50  0001 C CNN
F 3 "" H 850 4500 50  0001 C CNN
	1    850  4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5A799B12
P 3950 7200
F 0 "C7" H 3975 7300 50  0000 L CNN
F 1 "0.1uf" H 3975 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3988 7050 50  0001 C CNN
F 3 "" H 3950 7200 50  0001 C CNN
	1    3950 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A79A0FD
P 3950 7400
F 0 "#PWR08" H 3950 7150 50  0001 C CNN
F 1 "GND" H 3950 7250 50  0000 C CNN
F 2 "" H 3950 7400 50  0001 C CNN
F 3 "" H 3950 7400 50  0001 C CNN
	1    3950 7400
	1    0    0    -1  
$EndComp
NoConn ~ 1050 2600
NoConn ~ 1050 2700
NoConn ~ 1050 2800
NoConn ~ 1050 2900
NoConn ~ 1050 3000
NoConn ~ 1050 4200
NoConn ~ 1050 6400
NoConn ~ 1050 6300
NoConn ~ 1050 6200
NoConn ~ 1050 6100
NoConn ~ 1050 6000
Text Label 1150 5400 2    60   ~ 0
A5
Text Label 1150 5500 2    60   ~ 0
A6
Text Label 1150 5600 2    60   ~ 0
A7
Text Label 1250 3900 2    60   ~ 0
~IORQ~
NoConn ~ 1050 5900
NoConn ~ 1050 5800
NoConn ~ 1050 5700
Text Label 1250 4100 2    60   ~ 0
~WR~
Text Label 1150 5000 2    60   ~ 0
A1
Wire Wire Line
	3950 7050 3950 7000
Wire Wire Line
	3950 7350 3950 7400
Text Label 1600 1750 0    60   ~ 0
A7
Text Label 1600 1450 0    60   ~ 0
A6
Text Label 1600 1350 0    60   ~ 0
A5
$Comp
L 74xx:74LS138 U2
U 1 1 5B25AE81
P 2300 1550
F 0 "U2" H 2400 2050 50  0000 C CNN
F 1 "74HCT138" H 2450 1001 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2300 1550 50  0001 C CNN
F 3 "" H 2300 1550 50  0001 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
Text Label 1600 1850 0    60   ~ 0
~IORQ~
$Comp
L 74xx:74HCT541 U5
U 1 1 5BC4C54E
P 10100 5050
F 0 "U5" H 9850 5700 50  0000 C CNN
F 1 "74HCT541" H 10350 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10100 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 10100 5050 50  0001 C CNN
	1    10100 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT541 U4
U 1 1 5BC4C58E
P 10100 2550
F 0 "U4" H 9850 3200 50  0000 C CNN
F 1 "74HCT541" H 10300 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 10100 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 10100 2550 50  0001 C CNN
	1    10100 2550
	1    0    0    -1  
$EndComp
Text Label 1600 1250 0    60   ~ 0
~WR~
Wire Wire Line
	1800 1850 1600 1850
Text Label 3250 1250 2    50   ~ 0
~CTRL_EN_2~
Text Label 3250 1950 2    50   ~ 0
~CTRL_R~
Text Label 3250 1650 2    50   ~ 0
~CTRL_EN_1~
Text Label 9300 2950 0    50   ~ 0
~CTRL_R~
Text Label 9300 5450 0    50   ~ 0
~CTRL_R~
Text Label 9300 3050 0    60   ~ 0
A1
Text Label 8300 5550 0    60   ~ 0
A1
$Comp
L 74xx:74HCT00 U3
U 1 1 5BC5D3A7
P 1150 1950
F 0 "U3" H 1150 2275 50  0000 C CNN
F 1 "74HCT00" H 1150 2184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1150 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 1150 1950 50  0001 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U3
U 2 1 5BC5D3D7
P 8850 5550
F 0 "U3" H 8850 5875 50  0000 C CNN
F 1 "74HCT00" H 8850 5784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8850 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 8850 5550 50  0001 C CNN
	2    8850 5550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT00 U3
U 3 1 5BC5D475
P 2650 7100
F 0 "U3" H 2650 7425 50  0000 C CNN
F 1 "74HCT00" H 2650 7334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2650 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 2650 7100 50  0001 C CNN
	3    2650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5450 8500 5450
Wire Wire Line
	8500 5450 8500 5550
Wire Wire Line
	8500 5650 8550 5650
Connection ~ 8500 5550
Wire Wire Line
	8500 5550 8500 5650
Text Label 1950 7200 0    50   ~ 0
~CTRL_EN_1~
Text Label 1000 6900 0    50   ~ 0
~CTRL_EN_2~
Text Label 10750 2050 2    60   ~ 0
D0
Text Label 10750 2150 2    60   ~ 0
D1
Text Label 10750 2250 2    60   ~ 0
D2
Text Label 10750 2350 2    60   ~ 0
D3
Text Label 10750 2450 2    60   ~ 0
D4
Text Label 10750 2550 2    60   ~ 0
D5
Text Label 10750 2650 2    60   ~ 0
D6
Text Label 10750 2750 2    60   ~ 0
D7
Text Label 10750 4550 2    60   ~ 0
D0
Text Label 10750 4650 2    60   ~ 0
D1
Text Label 10750 4750 2    60   ~ 0
D2
Text Label 10750 4850 2    60   ~ 0
D3
Text Label 10750 4950 2    60   ~ 0
D4
Text Label 10750 5050 2    60   ~ 0
D5
Text Label 10750 5150 2    60   ~ 0
D6
Text Label 10750 5250 2    60   ~ 0
D7
Wire Wire Line
	1400 7100 1400 7350
Wire Wire Line
	1400 7350 2950 7350
Wire Wire Line
	2950 7350 2950 7100
Connection ~ 2950 7100
Text Label 7350 3950 0    50   ~ 0
~UP1~
Text Label 7350 4150 0    50   ~ 0
~DOWN1~
Text Label 7350 4350 0    50   ~ 0
~LEFT1~
Text Label 7350 4550 0    50   ~ 0
~RIGHT1~
Text Label 7350 4050 0    50   ~ 0
~FIRE1~
Text Label 7350 4650 0    50   ~ 0
~ALT1~
Text Label 7350 4250 0    50   ~ 0
SELECT
Text Label 7350 5250 0    50   ~ 0
~UP2~
Text Label 7350 5450 0    50   ~ 0
~DOWN2~
Text Label 7350 5650 0    50   ~ 0
~LEFT2~
Text Label 7350 5850 0    50   ~ 0
~RIGHT2~
Text Label 7350 5350 0    50   ~ 0
~FIRE2~
Text Label 7350 5950 0    50   ~ 0
~ALT2~
Text Label 7350 5550 0    50   ~ 0
SELECT
Text Label 6850 1600 0    50   ~ 0
~UP1~
Text Label 6850 2200 0    50   ~ 0
~DOWN1~
Text Label 6850 2500 0    50   ~ 0
~LEFT1~
Text Label 6850 1900 0    50   ~ 0
~RIGHT1~
Text Label 9300 2450 0    50   ~ 0
~ALT1~
Text Label 9300 2650 0    50   ~ 0
~FIRE1~
Text Label 9300 2550 0    50   ~ 0
~QUADA1~
Text Label 9600 2750 2    50   ~ 0
~QUADB1~
Text Label 9300 4550 0    50   ~ 0
~UP2~
Text Label 9300 4750 0    50   ~ 0
~DOWN2~
Text Label 9300 4850 0    50   ~ 0
~LEFT2~
Text Label 9300 4650 0    50   ~ 0
~RIGHT2~
Text Label 9300 4950 0    50   ~ 0
~ALT2~
Text Label 9300 5150 0    50   ~ 0
~FIRE2~
Text Label 9300 5050 0    50   ~ 0
~QUADA2~
Text Label 9600 5250 2    50   ~ 0
~QUADB2~
Connection ~ 3950 7350
Connection ~ 3950 7050
$Comp
L Device:C C2
U 1 1 5BC8AB20
P 4200 7200
F 0 "C2" H 4225 7300 50  0000 L CNN
F 1 "0.1uf" H 4225 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4238 7050 50  0001 C CNN
F 3 "" H 4200 7200 50  0001 C CNN
	1    4200 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BC8C9C6
P 4450 7200
F 0 "C3" H 4475 7300 50  0000 L CNN
F 1 "0.1uf" H 4475 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4488 7050 50  0001 C CNN
F 3 "" H 4450 7200 50  0001 C CNN
	1    4450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7050 4450 7050
Wire Wire Line
	4200 7350 4450 7350
Connection ~ 4200 7050
Connection ~ 4200 7350
$Comp
L Switch:SW_Push_Open SW1
U 1 1 5BC98E90
P 3800 1350
F 0 "SW1" H 3800 1565 50  0000 C CNN
F 1 "1" H 3800 1474 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 1550 50  0001 C CNN
F 3 "" H 3800 1550 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5BC98F88
P 3800 1750
F 0 "SW2" H 3800 1965 50  0000 C CNN
F 1 "2" H 3800 1874 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 1950 50  0001 C CNN
F 3 "" H 3800 1950 50  0001 C CNN
	1    3800 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW4
U 1 1 5BC99038
P 3800 2550
F 0 "SW4" H 3800 2765 50  0000 C CNN
F 1 "4" H 3800 2674 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW5
U 1 1 5BC990D8
P 3800 2950
F 0 "SW5" H 3800 3165 50  0000 C CNN
F 1 "5" H 3800 3074 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 3150 50  0001 C CNN
F 3 "" H 3800 3150 50  0001 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW6
U 1 1 5BC99134
P 3800 3400
F 0 "SW6" H 3800 3615 50  0000 C CNN
F 1 "6" H 3800 3524 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 3600 50  0001 C CNN
F 3 "" H 3800 3600 50  0001 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW7
U 1 1 5BC9919C
P 3800 3900
F 0 "SW7" H 3800 4115 50  0000 C CNN
F 1 "7" H 3800 4024 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 4100 50  0001 C CNN
F 3 "" H 3800 4100 50  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW8
U 1 1 5BC99204
P 3800 4350
F 0 "SW8" H 3800 4565 50  0000 C CNN
F 1 "8" H 3800 4474 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 4550 50  0001 C CNN
F 3 "" H 3800 4550 50  0001 C CNN
	1    3800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1350 3500 1350
$Comp
L power:GND #PWR0111
U 1 1 5BCBE37F
P 3500 6200
F 0 "#PWR0111" H 3500 5950 50  0001 C CNN
F 1 "GND" H 3500 6050 50  0000 C CNN
F 2 "" H 3500 6200 50  0001 C CNN
F 3 "" H 3500 6200 50  0001 C CNN
	1    3500 6200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5BCCD78D
P 4350 2150
F 0 "D3" H 4350 2366 50  0000 C CNN
F 1 "1N4148" H 4350 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 1975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5BCCD801
P 4350 2550
F 0 "D4" H 4350 2766 50  0000 C CNN
F 1 "1N4148" H 4350 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 2550 50  0001 C CNN
	1    4350 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D13
U 1 1 5BCCD87B
P 5000 2150
F 0 "D13" H 5000 2366 50  0000 C CNN
F 1 "1N4148" H 5000 2275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 1975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 2150 50  0001 C CNN
	1    5000 2150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D14
U 1 1 5BCCD907
P 5000 2550
F 0 "D14" H 5000 2766 50  0000 C CNN
F 1 "1N4148" H 5000 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 2550 50  0001 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D21
U 1 1 5BCCD987
P 5650 2550
F 0 "D21" H 5650 2766 50  0000 C CNN
F 1 "1N4148" H 5650 2675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 2375 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5650 2550 50  0001 C CNN
	1    5650 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 5BCCDA57
P 4350 2950
F 0 "D5" H 4350 3166 50  0000 C CNN
F 1 "1N4148" H 4350 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 2775 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 2950 50  0001 C CNN
	1    4350 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D15
U 1 1 5BCCDADB
P 5000 2950
F 0 "D15" H 5000 3166 50  0000 C CNN
F 1 "1N4148" H 5000 3075 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 2775 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 5BCCDB63
P 4350 4350
F 0 "D8" H 4350 4566 50  0000 C CNN
F 1 "1N4148" H 4350 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 4350 50  0001 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D17
U 1 1 5BCCDBEB
P 5000 4350
F 0 "D17" H 5000 4566 50  0000 C CNN
F 1 "1N4148" H 5000 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D22
U 1 1 5BCCDC73
P 5650 4350
F 0 "D22" H 5650 4566 50  0000 C CNN
F 1 "1N4148" H 5650 4475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 4175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5650 4350 50  0001 C CNN
	1    5650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2150 4200 2150
Wire Wire Line
	4200 2150 4200 2250
Connection ~ 4200 2150
$Comp
L Switch:SW_Push_Open SW3
U 1 1 5BCF29A6
P 3800 2150
F 0 "SW3" H 3800 2365 50  0000 C CNN
F 1 "3" H 3800 2274 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 2350 50  0001 C CNN
F 3 "" H 3800 2350 50  0001 C CNN
	1    3800 2150
	1    0    0    -1  
$EndComp
Text Label 4800 1350 2    50   ~ 0
~KPR~
Wire Wire Line
	4500 1350 4800 1350
Text Label 4800 1750 2    50   ~ 0
~KPL~
Wire Wire Line
	4500 1750 4800 1750
Text Label 4800 2150 2    50   ~ 0
~KPU~
Wire Wire Line
	4850 2250 4850 2150
Wire Wire Line
	4200 2250 4850 2250
Wire Wire Line
	4500 2150 4800 2150
Text Label 5450 2150 2    50   ~ 0
~KPR~
Wire Wire Line
	5150 2150 5450 2150
Text Label 4800 2550 2    50   ~ 0
~KPL~
Text Label 5450 2550 2    50   ~ 0
~KPD~
Text Label 6000 2550 2    50   ~ 0
~KPU~
Wire Wire Line
	4000 2550 4200 2550
Wire Wire Line
	4850 2650 4850 2550
Wire Wire Line
	4500 2550 4800 2550
Wire Wire Line
	4850 2650 4200 2650
Wire Wire Line
	4200 2650 4200 2550
Connection ~ 4200 2550
Wire Wire Line
	4000 2950 4200 2950
Wire Wire Line
	4200 3050 4850 3050
Wire Wire Line
	4850 3050 4850 2950
Wire Wire Line
	4200 2950 4200 3050
Connection ~ 4200 2950
Wire Wire Line
	3500 2950 3600 2950
Wire Wire Line
	3500 1350 3500 1750
Wire Wire Line
	3600 2550 3500 2550
Wire Wire Line
	3600 2150 3500 2150
Wire Wire Line
	3600 1750 3500 1750
Wire Wire Line
	4850 2650 5500 2650
Wire Wire Line
	5500 2650 5500 2550
Connection ~ 4850 2650
Wire Wire Line
	5150 2550 5450 2550
Wire Wire Line
	5800 2550 6000 2550
Wire Wire Line
	3600 3400 3500 3400
Wire Wire Line
	3600 3900 3500 3900
Wire Wire Line
	3600 4350 3500 4350
Wire Wire Line
	4000 4350 4200 4350
Text Label 4800 2950 2    50   ~ 0
~KPD~
Text Label 5450 2950 2    50   ~ 0
~KPL~
Wire Wire Line
	4500 2950 4800 2950
Wire Wire Line
	5150 2950 5450 2950
Wire Wire Line
	4200 4350 4200 4450
Wire Wire Line
	4200 4450 4850 4450
Wire Wire Line
	4850 4450 4850 4350
Connection ~ 4200 4350
Wire Wire Line
	4850 4450 5500 4450
Wire Wire Line
	5500 4450 5500 4350
Connection ~ 4850 4450
Connection ~ 3500 1750
Connection ~ 3500 2150
Wire Wire Line
	3500 2150 3500 2550
Wire Wire Line
	3500 1750 3500 2150
Connection ~ 3500 2550
Connection ~ 3500 2950
Connection ~ 3500 3400
Wire Wire Line
	3500 2550 3500 2950
Wire Wire Line
	3500 2950 3500 3400
Wire Wire Line
	3500 3400 3500 3900
Connection ~ 3500 3900
Wire Wire Line
	3500 3900 3500 4350
Text Label 4800 4350 2    50   ~ 0
~KPR~
Text Label 5450 4350 2    50   ~ 0
~KPL~
Text Label 6100 4350 2    50   ~ 0
~KPD~
Wire Wire Line
	4500 4350 4800 4350
Wire Wire Line
	5150 4350 5450 4350
Wire Wire Line
	5800 4350 6100 4350
$Comp
L Diode:1N4148 D7
U 1 1 5BE5FD44
P 4350 3900
F 0 "D7" H 4350 4116 50  0000 C CNN
F 1 "1N4148" H 4350 4025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 3725 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 3900 50  0001 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D16
U 1 1 5BE5FE94
P 5000 3900
F 0 "D16" H 5000 4116 50  0000 C CNN
F 1 "1N4148" H 5000 4025 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 3725 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 3900 50  0001 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3900 4200 3900
Wire Wire Line
	4200 3900 4200 4000
Wire Wire Line
	4200 4000 4850 4000
Wire Wire Line
	4850 4000 4850 3900
Connection ~ 4200 3900
Text Label 4800 3900 2    50   ~ 0
~KPR~
Text Label 5450 3900 2    50   ~ 0
~KPL~
Wire Wire Line
	4500 3900 4800 3900
Wire Wire Line
	5150 3900 5450 3900
Text Label 4800 3400 2    50   ~ 0
~KPU~
Text Label 3350 7100 2    50   ~ 0
SELECT
Connection ~ 3500 4350
$Comp
L 74xx:74HCT00 U3
U 4 1 5BF5A10D
P 1700 7000
F 0 "U3" H 1700 7325 50  0000 C CNN
F 1 "74HCT00" H 1700 7234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1700 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 1700 7000 50  0001 C CNN
	4    1700 7000
	1    0    0    -1  
$EndComp
Text Label 1200 4600 2    60   ~ 0
~M1~
$Comp
L power:GND #PWR0103
U 1 1 5BF5A8A9
P 1300 4800
F 0 "#PWR0103" H 1300 4550 50  0001 C CNN
F 1 "GND" H 1300 4650 50  0000 C CNN
F 2 "" H 1300 4800 50  0001 C CNN
F 3 "" H 1300 4800 50  0001 C CNN
	1    1300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BF5AC14
P 1300 4700
F 0 "#PWR0112" H 1300 4550 50  0001 C CNN
F 1 "VCC" H 1300 4850 50  0000 C CNN
F 2 "" H 1300 4700 50  0001 C CNN
F 3 "" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4700 1300 4700
Wire Wire Line
	1050 4800 1300 4800
Text Label 700  1950 0    60   ~ 0
~M1~
Wire Wire Line
	1450 1950 1800 1950
Wire Wire Line
	850  1850 850  1950
Wire Wire Line
	700  1950 850  1950
$Comp
L 74xx:74HCT00 U3
U 5 1 5BF98CAE
P 2050 4400
F 0 "U3" H 2050 4725 50  0000 C CNN
F 1 "74HCT00" H 2050 4634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2050 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct00" H 2050 4400 50  0001 C CNN
	5    2050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5BF98F53
P 2050 3850
F 0 "#PWR0113" H 2050 3700 50  0001 C CNN
F 1 "VCC" H 2050 4000 50  0000 C CNN
F 2 "" H 2050 3850 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5BF99045
P 2050 4950
F 0 "#PWR0114" H 2050 4700 50  0001 C CNN
F 1 "GND" H 2050 4800 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3900 2050 3850
Wire Wire Line
	2050 4950 2050 4900
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
Wire Wire Line
	9600 5050 9250 5050
Wire Wire Line
	9250 5250 9600 5250
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
	9250 2750 9600 2750
Wire Wire Line
	9150 5550 9600 5550
Wire Wire Line
	9250 2750 9250 3350
Wire Wire Line
	9250 3350 10100 3350
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
L 74xx:74LS257 U6
U 1 1 5C039CEA
P 7600 2100
F 0 "U6" H 7300 3100 50  0000 C CNN
F 1 "74HCT257" H 7300 3000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7600 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS258" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Text Label 10100 1250 2    50   ~ 0
~ALT1~
Text Label 10100 1350 2    50   ~ 0
~FIRE1~
Text Label 10100 850  2    50   ~ 0
~UP1~
Text Label 10100 950  2    50   ~ 0
~RIGHT1~
Text Label 10100 1050 2    50   ~ 0
~DOWN1~
Text Label 10100 1150 2    50   ~ 0
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
Text Label 11100 850  2    50   ~ 0
~UP2~
Text Label 11100 1050 2    50   ~ 0
~DOWN2~
Text Label 11100 1150 2    50   ~ 0
~LEFT2~
Text Label 11100 950  2    50   ~ 0
~RIGHT2~
Text Label 11100 1250 2    50   ~ 0
~ALT2~
Text Label 11100 1350 2    50   ~ 0
~FIRE2~
Text Label 6850 1500 0    50   ~ 0
~KPU~
Text Label 6850 1800 0    50   ~ 0
~KPR~
Text Label 6850 2100 0    50   ~ 0
~KPD~
Text Label 6850 2400 0    50   ~ 0
~KPL~
$Comp
L Device:R_Network06_US RN3
U 1 1 5C075B06
P 8750 1150
F 0 "RN3" H 9030 1196 50  0000 L CNN
F 1 "10K" H 9030 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP7" V 9125 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8750 1150 50  0001 C CNN
	1    8750 1150
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR0120
U 1 1 5C075B0C
P 8550 800
F 0 "#PWR0120" H 8550 650 50  0001 C CNN
F 1 "VCC" H 8550 950 50  0000 C CNN
F 2 "" H 8550 800 50  0001 C CNN
F 3 "" H 8550 800 50  0001 C CNN
	1    8550 800 
	1    0    0    -1  
$EndComp
Text Label 9100 850  2    50   ~ 0
~KPU~
Text Label 9100 950  2    50   ~ 0
~KPR~
Text Label 9100 1050 2    50   ~ 0
~KPD~
Text Label 9100 1150 2    50   ~ 0
~KPL~
Wire Wire Line
	8550 800  8550 850 
NoConn ~ 8950 1250
NoConn ~ 8950 1350
Text Label 8350 1500 2    50   ~ 0
~MUX1U~
Text Label 8350 1800 2    50   ~ 0
~MUX1R~
Text Label 8350 2100 2    50   ~ 0
~MUX1D~
Text Label 8350 2400 2    50   ~ 0
~MUX1L~
Text Label 9300 2050 0    50   ~ 0
~MUX1U~
Text Label 9300 2150 0    50   ~ 0
~MUX1R~
Text Label 9300 2250 0    50   ~ 0
~MUX1D~
Text Label 9300 2350 0    50   ~ 0
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
Text Label 7000 2800 2    50   ~ 0
SELECT
$Comp
L Switch:SW_Push_Open SW9
U 1 1 5C0C0967
P 3800 4750
F 0 "SW9" H 3800 4965 50  0000 C CNN
F 1 "9" H 3800 4874 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 4950 50  0001 C CNN
F 3 "" H 3800 4950 50  0001 C CNN
	1    3800 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW10
U 1 1 5C0C096D
P 3800 5200
F 0 "SW10" H 3800 5415 50  0000 C CNN
F 1 "0" H 3800 5324 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 5400 50  0001 C CNN
F 3 "" H 3800 5400 50  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW11
U 1 1 5C0C0973
P 3800 5700
F 0 "SW11" H 3800 5915 50  0000 C CNN
F 1 "*" H 3800 5824 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 5900 50  0001 C CNN
F 3 "" H 3800 5900 50  0001 C CNN
	1    3800 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Open SW12
U 1 1 5C0C0979
P 3800 6150
F 0 "SW12" H 3800 6365 50  0000 C CNN
F 1 "#" H 3800 6274 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 3800 6350 50  0001 C CNN
F 3 "" H 3800 6350 50  0001 C CNN
	1    3800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4750 3600 4750
Wire Wire Line
	3600 5200 3500 5200
Wire Wire Line
	3600 5700 3500 5700
Wire Wire Line
	3600 6150 3500 6150
Connection ~ 3500 4750
Connection ~ 3500 5200
Wire Wire Line
	3500 4350 3500 4750
Wire Wire Line
	3500 4750 3500 5200
Wire Wire Line
	3500 5200 3500 5700
Connection ~ 3500 5700
Wire Wire Line
	3500 5700 3500 6150
Wire Wire Line
	3500 6200 3500 6150
Connection ~ 3500 6150
Text Label 4800 4750 2    50   ~ 0
~KPD~
$Comp
L Diode:1N4148 D1
U 1 1 5C0F0C63
P 4350 5200
F 0 "D1" H 4350 5416 50  0000 C CNN
F 1 "1N4148" H 4350 5325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 5025 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 5200 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D9
U 1 1 5C0F0C69
P 5000 5200
F 0 "D9" H 5000 5416 50  0000 C CNN
F 1 "1N4148" H 5000 5325 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 5025 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 5200 50  0001 C CNN
	1    5000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5200 4200 5200
Wire Wire Line
	4200 5300 4850 5300
Wire Wire Line
	4850 5300 4850 5200
Wire Wire Line
	4200 5200 4200 5300
Connection ~ 4200 5200
Text Label 4800 5200 2    50   ~ 0
~KPU~
Text Label 5450 5200 2    50   ~ 0
~KPD~
Wire Wire Line
	4500 5200 4800 5200
Wire Wire Line
	5150 5200 5450 5200
$Comp
L Diode:1N4148 D2
U 1 1 5C0F6B04
P 4350 5700
F 0 "D2" H 4350 5916 50  0000 C CNN
F 1 "1N4148" H 4350 5825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 5525 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 5700 50  0001 C CNN
	1    4350 5700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 5C0F6B0A
P 5000 5700
F 0 "D10" H 5000 5916 50  0000 C CNN
F 1 "1N4148" H 5000 5825 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 5525 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 5700 50  0001 C CNN
	1    5000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5700 4200 5700
Wire Wire Line
	4200 5800 4850 5800
Wire Wire Line
	4850 5800 4850 5700
Wire Wire Line
	4200 5700 4200 5800
Connection ~ 4200 5700
Text Label 4800 5700 2    50   ~ 0
~KPD~
Text Label 5450 5700 2    50   ~ 0
~KPR~
Wire Wire Line
	4500 5700 4800 5700
Wire Wire Line
	5150 5700 5450 5700
$Comp
L Diode:1N4148 D6
U 1 1 5C0FD18E
P 4350 6150
F 0 "D6" H 4350 6366 50  0000 C CNN
F 1 "1N4148" H 4350 6275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 5975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 6150 50  0001 C CNN
	1    4350 6150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D11
U 1 1 5C0FD194
P 5000 6150
F 0 "D11" H 5000 6366 50  0000 C CNN
F 1 "1N4148" H 5000 6275 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 5975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 5000 6150 50  0001 C CNN
	1    5000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6150 4200 6150
Wire Wire Line
	4200 6250 4850 6250
Wire Wire Line
	4850 6250 4850 6150
Wire Wire Line
	4200 6150 4200 6250
Connection ~ 4200 6150
Text Label 4800 6150 2    50   ~ 0
~KPU~
Text Label 5450 6150 2    50   ~ 0
~KPL~
Wire Wire Line
	4500 6150 4800 6150
Wire Wire Line
	5150 6150 5450 6150
Wire Wire Line
	3950 7350 4200 7350
Wire Wire Line
	3950 7050 4200 7050
$Comp
L Diode:1N4148 D12
U 1 1 5BD1BF7A
P 4350 1350
F 0 "D12" H 4350 1566 50  0000 C CNN
F 1 "1N4148" H 4350 1475 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 1175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D19
U 1 1 5BD1C01C
P 4350 3400
F 0 "D19" H 4350 3616 50  0000 C CNN
F 1 "1N4148" H 4350 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 3225 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 3400 50  0001 C CNN
	1    4350 3400
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D20
U 1 1 5BD1C0BA
P 4350 4750
F 0 "D20" H 4350 4966 50  0000 C CNN
F 1 "1N4148" H 4350 4875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 4575 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 4750 50  0001 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 5BD1C17A
P 4350 1750
F 0 "D18" H 4350 1966 50  0000 C CNN
F 1 "1N4148" H 4350 1875 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4350 1575 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 4350 1750 50  0001 C CNN
	1    4350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BD22871
P 4700 7200
F 0 "C1" H 4725 7300 50  0000 L CNN
F 1 "0.1uf" H 4725 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4738 7050 50  0001 C CNN
F 3 "" H 4700 7200 50  0001 C CNN
	1    4700 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7050 4700 7050
Wire Wire Line
	4450 7350 4700 7350
Connection ~ 4450 7050
Connection ~ 4450 7350
$Comp
L Device:C C4
U 1 1 5BD28B54
P 4950 7200
F 0 "C4" H 4975 7300 50  0000 L CNN
F 1 "0.1uf" H 4975 7100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4988 7050 50  0001 C CNN
F 3 "" H 4950 7200 50  0001 C CNN
	1    4950 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7050 4950 7050
Wire Wire Line
	4700 7350 4950 7350
Connection ~ 4700 7050
Connection ~ 4700 7350
$Comp
L power:VCC #PWR0101
U 1 1 5BD674BF
P 3950 7000
F 0 "#PWR0101" H 3950 6850 50  0001 C CNN
F 1 "VCC" H 3950 7150 50  0000 C CNN
F 2 "" H 3950 7000 50  0001 C CNN
F 3 "" H 3950 7000 50  0001 C CNN
	1    3950 7000
	1    0    0    -1  
$EndComp
NoConn ~ 2800 1350
NoConn ~ 2800 1450
NoConn ~ 2800 1550
NoConn ~ 2800 1750
NoConn ~ 2800 1850
NoConn ~ 1050 4300
NoConn ~ 1050 4400
NoConn ~ 1050 4500
NoConn ~ 1050 4000
NoConn ~ 1050 4900
NoConn ~ 1050 5100
NoConn ~ 1050 5200
NoConn ~ 1050 5300
Text Label 1150 3800 2    60   ~ 0
D0
Text Label 1150 3700 2    60   ~ 0
D1
Text Label 1150 3600 2    60   ~ 0
D2
Text Label 1150 3500 2    60   ~ 0
D3
Text Label 1150 3400 2    60   ~ 0
D4
Text Label 1150 3300 2    60   ~ 0
D5
Text Label 1150 3200 2    60   ~ 0
D6
Text Label 1150 3100 2    60   ~ 0
D7
Wire Wire Line
	1050 3100 1150 3100
Wire Wire Line
	1050 3200 1150 3200
Wire Wire Line
	1050 3300 1150 3300
Wire Wire Line
	1050 3400 1150 3400
Wire Wire Line
	1050 3500 1150 3500
Wire Wire Line
	1050 3600 1150 3600
Wire Wire Line
	1050 3700 1150 3700
Wire Wire Line
	1050 3800 1150 3800
Wire Wire Line
	1050 3900 1250 3900
Wire Wire Line
	1050 4100 1250 4100
Wire Wire Line
	1050 4600 1200 4600
Wire Wire Line
	1050 5000 1150 5000
Wire Wire Line
	1050 5400 1150 5400
Wire Wire Line
	1050 5500 1150 5500
Wire Wire Line
	1050 5600 1150 5600
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BE6948C
P 4450 7050
F 0 "#FLG0101" H 4450 7125 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 7224 50  0000 C CNN
F 2 "" H 4450 7050 50  0001 C CNN
F 3 "~" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BE69684
P 4450 7350
F 0 "#FLG0102" H 4450 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 7523 50  0000 C CNN
F 2 "" H 4450 7350 50  0001 C CNN
F 3 "~" H 4450 7350 50  0001 C CNN
	1    4450 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BD31E5C
P 2300 2300
F 0 "#PWR0102" H 2300 2050 50  0001 C CNN
F 1 "GND" H 2300 2150 50  0000 C CNN
F 2 "" H 2300 2300 50  0001 C CNN
F 3 "" H 2300 2300 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 5BD31ED3
P 2300 900
F 0 "#PWR0110" H 2300 750 50  0001 C CNN
F 1 "VCC" H 2300 1050 50  0000 C CNN
F 2 "" H 2300 900 50  0001 C CNN
F 3 "" H 2300 900 50  0001 C CNN
	1    2300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 950  2300 900 
Wire Wire Line
	2300 2300 2300 2250
Wire Wire Line
	4000 1350 4200 1350
Wire Wire Line
	4000 1750 4200 1750
Wire Wire Line
	4000 3400 4200 3400
Wire Wire Line
	4000 4750 4200 4750
Wire Wire Line
	4500 3400 4800 3400
Wire Wire Line
	4500 4750 4800 4750
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5BD52D83
P 6500 2700
F 0 "J2" H 6420 3017 50  0000 C CNN
F 1 "BTN/CTRL" V 6650 2650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 2700 50  0001 C CNN
F 3 "~" H 6500 2700 50  0001 C CNN
	1    6500 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5BD530EB
P 6750 2600
F 0 "#PWR0104" H 6750 2450 50  0001 C CNN
F 1 "VCC" H 6750 2750 50  0000 C CNN
F 2 "" H 6750 2600 50  0001 C CNN
F 3 "" H 6750 2600 50  0001 C CNN
	1    6750 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 2600 6700 2600
Wire Wire Line
	6700 2700 7100 2700
Wire Wire Line
	2950 7100 3350 7100
Wire Wire Line
	1400 6900 1000 6900
Wire Wire Line
	1950 7200 2350 7200
Wire Wire Line
	2800 1650 3250 1650
Wire Wire Line
	2800 1250 3250 1250
Wire Wire Line
	8300 5550 8500 5550
$Comp
L power:GND #PWR0107
U 1 1 5C90ED22
P 6800 4600
F 0 "#PWR0107" H 6800 4350 50  0001 C CNN
F 1 "GND" H 6950 4500 50  0000 C CNN
F 2 "" H 6800 4600 50  0001 C CNN
F 3 "" H 6800 4600 50  0001 C CNN
	1    6800 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5C9298EA
P 6850 5950
F 0 "#PWR0109" H 6850 5800 50  0001 C CNN
F 1 "VCC" H 6850 6100 50  0000 C CNN
F 2 "" H 6850 5950 50  0001 C CNN
F 3 "" H 6850 5950 50  0001 C CNN
	1    6850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4650 7600 4650
Wire Wire Line
	7350 4550 7600 4550
Wire Wire Line
	7350 4350 7600 4350
Wire Wire Line
	7350 4150 7600 4150
Wire Wire Line
	7350 4050 7600 4050
Wire Wire Line
	7350 3950 7600 3950
Wire Wire Line
	7350 5850 7600 5850
Wire Wire Line
	7350 5450 7600 5450
Wire Wire Line
	7350 5350 7600 5350
Wire Wire Line
	7350 5250 7600 5250
Wire Wire Line
	7350 5650 7600 5650
Wire Wire Line
	10600 4550 10750 4550
Wire Wire Line
	10600 4650 10750 4650
Wire Wire Line
	10600 4750 10750 4750
Wire Wire Line
	10600 4850 10750 4850
Wire Wire Line
	10600 4950 10750 4950
Wire Wire Line
	10600 5050 10750 5050
Wire Wire Line
	10600 5150 10750 5150
Wire Wire Line
	10600 5250 10750 5250
Wire Wire Line
	10600 2050 10750 2050
Wire Wire Line
	10600 2150 10750 2150
Wire Wire Line
	10600 2250 10750 2250
Wire Wire Line
	10600 2350 10750 2350
Wire Wire Line
	10600 2450 10750 2450
Wire Wire Line
	10600 2550 10750 2550
Wire Wire Line
	10600 2650 10750 2650
Wire Wire Line
	10600 2750 10750 2750
Wire Wire Line
	9300 4550 9600 4550
Wire Wire Line
	9300 4650 9600 4650
Wire Wire Line
	9300 4750 9600 4750
Wire Wire Line
	9300 4850 9600 4850
Wire Wire Line
	9300 4950 9600 4950
Wire Wire Line
	9300 5150 9600 5150
Wire Wire Line
	9300 5450 9600 5450
Wire Wire Line
	9300 3050 9600 3050
Wire Wire Line
	9300 2050 9600 2050
Wire Wire Line
	9300 2150 9600 2150
Wire Wire Line
	9300 2250 9600 2250
Wire Wire Line
	9300 2350 9600 2350
Wire Wire Line
	9300 2450 9600 2450
Wire Wire Line
	9300 2650 9600 2650
Wire Wire Line
	9300 2950 9600 2950
Wire Wire Line
	10800 850  11100 850 
Wire Wire Line
	10800 950  11100 950 
Wire Wire Line
	10800 1050 11100 1050
Wire Wire Line
	10800 1150 11100 1150
Wire Wire Line
	10800 1250 11100 1250
Wire Wire Line
	10800 1350 11100 1350
Wire Wire Line
	9800 850  10100 850 
Wire Wire Line
	9800 950  10100 950 
Wire Wire Line
	9800 1050 10100 1050
Wire Wire Line
	9800 1150 10100 1150
Wire Wire Line
	9800 1250 10100 1250
Wire Wire Line
	9800 1350 10100 1350
Wire Wire Line
	8950 850  9100 850 
Wire Wire Line
	8950 950  9100 950 
Wire Wire Line
	8950 1050 9100 1050
Wire Wire Line
	8950 1150 9100 1150
Wire Wire Line
	8100 1500 8350 1500
Wire Wire Line
	8100 1800 8350 1800
Wire Wire Line
	8100 2100 8350 2100
Wire Wire Line
	6850 1500 7100 1500
Wire Wire Line
	6850 1600 7100 1600
Wire Wire Line
	6850 1800 7100 1800
Wire Wire Line
	6850 1900 7100 1900
Wire Wire Line
	6850 2100 7100 2100
Wire Wire Line
	6850 2200 7100 2200
Wire Wire Line
	6850 2400 7100 2400
Wire Wire Line
	6850 2500 7100 2500
Wire Wire Line
	6700 2800 7000 2800
Wire Wire Line
	8100 2400 8350 2400
Wire Wire Line
	2800 1950 3250 1950
Wire Wire Line
	7350 5950 7600 5950
Text Label 1600 1950 0    50   ~ 0
M1
Wire Wire Line
	1600 1750 1800 1750
Wire Wire Line
	1600 1450 1800 1450
Wire Wire Line
	1600 1350 1800 1350
Wire Wire Line
	1600 1250 1800 1250
Text Label 9300 5550 0    50   ~ 0
~A1~
Connection ~ 850  1950
Wire Wire Line
	850  1950 850  2050
Text Label 2350 7000 2    50   ~ 0
~SELECT~
Wire Wire Line
	2000 7000 2350 7000
$Comp
L Connector:DB9_Male J3
U 1 1 5BE76971
P 7900 4350
F 0 "J3" H 7770 4304 50  0000 R CNN
F 1 "PLAYER 1" H 8100 4950 50  0000 R CNN
F 2 "182-009-213R561:NORCOMP_182-009-113R561" H 7900 4350 50  0001 L BNN
F 3 "Unavailable" H 7900 4350 50  0001 L BNN
F 4 "None" H 7900 4350 50  0001 L BNN "Field4"
F 5 "NorComp Inc." H 7900 4350 50  0001 L BNN "Field5"
F 6 "182 Series 9 Position Right Angle Socket Board Mount D-Sub Connector" H 7900 4350 50  0001 L BNN "Field6"
F 7 "182-009-213R561" H 7900 4350 50  0001 L BNN "Field7"
F 8 "None" H 7900 4350 50  0001 L BNN "Field8"
	1    7900 4350
	1    0    0    1   
$EndComp
$Comp
L Connector:DB9_Male J4
U 1 1 5BF7D4B7
P 7900 5650
F 0 "J4" H 7770 5604 50  0000 R CNN
F 1 "PLAYER 2" H 8100 6250 50  0000 R CNN
F 2 "182-009-213R561:NORCOMP_182-009-113R561" H 7900 5650 50  0001 L BNN
F 3 "Unavailable" H 7900 5650 50  0001 L BNN
F 4 "None" H 7900 5650 50  0001 L BNN "Field4"
F 5 "NorComp Inc." H 7900 5650 50  0001 L BNN "Field5"
F 6 "182 Series 9 Position Right Angle Socket Board Mount D-Sub Connector" H 7900 5650 50  0001 L BNN "Field6"
F 7 "182-009-213R561" H 7900 5650 50  0001 L BNN "Field7"
F 8 "None" H 7900 5650 50  0001 L BNN "Field8"
	1    7900 5650
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5BE33EA3
P 6600 4450
F 0 "J5" H 6520 4767 50  0000 C CNN
F 1 "SEGA/COLECO" V 6750 4400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 4450 50  0001 C CNN
F 3 "~" H 6600 4450 50  0001 C CNN
	1    6600 4450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5BE33F39
P 6600 6050
F 0 "J6" H 6520 6367 50  0000 C CNN
F 1 "SEGA/COLECO" V 6750 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 6050 50  0001 C CNN
F 3 "~" H 6600 6050 50  0001 C CNN
	1    6600 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 4600 6800 4550
Wire Wire Line
	6800 4350 7050 4350
Wire Wire Line
	6800 5950 6850 5950
Wire Wire Line
	7350 4250 7600 4250
Text Label 7050 4350 2    50   ~ 0
~SELECT~
Wire Wire Line
	9250 5050 9250 4250
Wire Wire Line
	9250 4250 10100 4250
Connection ~ 10100 4250
Wire Wire Line
	9250 2550 9250 1750
Wire Wire Line
	9250 1750 10100 1750
Connection ~ 10100 1750
Wire Wire Line
	7350 5550 7600 5550
Text Label 7050 6150 2    50   ~ 0
SELECT
Wire Wire Line
	7050 6150 6800 6150
Wire Wire Line
	6800 4450 7150 4450
Wire Wire Line
	6800 6050 7300 6050
Wire Wire Line
	7300 6050 7300 4750
Wire Wire Line
	7300 4750 7600 4750
Connection ~ 7300 6050
Wire Wire Line
	7300 6050 7600 6050
Wire Wire Line
	7150 4450 7150 5750
Wire Wire Line
	7150 5750 7600 5750
Connection ~ 7150 4450
Wire Wire Line
	7150 4450 7600 4450
$EndSCHEMATC
