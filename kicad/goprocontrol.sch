EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sensors
LIBS:ESP8266
LIBS:dc-dc
LIBS:switches
LIBS:synfinatic
LIBS:goprocontrol-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "GoProControl with Adjustable Delay Timer"
Date "2018-03-21"
Rev "v2.5"
Comp "Aaron Turner <synfinatic@gmail.com>"
Comment1 "https://synfin.net/goprocontrol"
Comment2 "Advanced GoProControl"
Comment3 "GoProControl with Power Control"
Comment4 ""
$EndDescr
Text GLabel 4900 5300 2    60   Input ~ 0
SwitchedGnd
$Comp
L GND #PWR01
U 1 1 58A885CE
P 3950 5600
F 0 "#PWR01" H 3950 5350 50  0001 C CNN
F 1 "GND" H 3950 5450 50  0000 C CNN
F 2 "" H 3950 5600 50  0000 C CNN
F 3 "" H 3950 5600 50  0000 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 58A88A5B
P 4900 4700
F 0 "#PWR02" H 4900 4550 50  0001 C CNN
F 1 "+12V" H 4900 4840 50  0000 C CNN
F 2 "" H 4900 4700 50  0000 C CNN
F 3 "" H 4900 4700 50  0000 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 58AFCDEF
P 3600 5150
F 0 "P2" H 3600 5500 50  0000 C CNN
F 1 "CONN_01X06" V 3700 5150 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBA-G_06x5.08mm_Angled" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0000 C CNN
	1    3600 5150
	-1   0    0    -1  
$EndComp
Text GLabel 4900 5400 2    60   Input ~ 0
LoggerTrigger
$Comp
L D24V5Fx U3
U 1 1 58B11469
P 7150 4650
F 0 "U3" H 7150 4650 60  0000 C CNN
F 1 "D24V5F3" H 7150 4850 60  0000 C CNN
F 2 "synfinatic:D24V5Fx" H 7150 4650 60  0001 C CNN
F 3 "" H 7150 4650 60  0001 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 58B11593
P 7550 5100
F 0 "#PWR03" H 7550 4950 50  0001 C CNN
F 1 "+3.3V" H 7550 5240 50  0000 C CNN
F 2 "" H 7550 5100 50  0000 C CNN
F 3 "" H 7550 5100 50  0000 C CNN
	1    7550 5100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58B11822
P 9650 4550
F 0 "R7" V 9730 4550 50  0000 C CNN
F 1 "1k" V 9650 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9580 4550 50  0001 C CNN
F 3 "" H 9650 4550 50  0000 C CNN
	1    9650 4550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 58B118CE
P 9650 4200
F 0 "#PWR04" H 9650 4050 50  0001 C CNN
F 1 "+3.3V" H 9650 4340 50  0000 C CNN
F 2 "" H 9650 4200 50  0000 C CNN
F 3 "" H 9650 4200 50  0000 C CNN
	1    9650 4200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58B11935
P 9250 5100
F 0 "C3" H 9275 5200 50  0000 L CNN
F 1 ".01uf" H 9275 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9288 4950 50  0001 C CNN
F 3 "" H 9250 5100 50  0000 C CNN
	1    9250 5100
	1    0    0    -1  
$EndComp
Text GLabel 8850 5900 0    60   Input ~ 0
LoggerTrigger
Text GLabel 8900 4950 0    60   Input ~ 0
GPIO4
$Comp
L Q_NMOS_GSD Q1
U 1 1 58B125CE
P 3650 2400
F 0 "Q1" H 3850 2450 50  0000 L CNN
F 1 "IRLML6344" H 3850 2350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3850 2500 50  0001 C CNN
F 3 "" H 3650 2400 50  0000 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
Text GLabel 3750 1950 2    60   Input ~ 0
SwitchedGnd
NoConn ~ 7000 5250
NoConn ~ 2450 5600
Text GLabel 2150 5400 0    60   Input ~ 0
RXD
Text GLabel 2150 5300 0    60   Input ~ 0
TXD
NoConn ~ 2450 5200
$Comp
L PWR_FLAG #FLG05
U 1 1 58B1756A
P 3750 1650
F 0 "#FLG05" H 3750 1745 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 1830 50  0000 C CNN
F 2 "" H 3750 1650 50  0000 C CNN
F 3 "" H 3750 1650 50  0000 C CNN
	1    3750 1650
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 58B1E2F2
P 9150 5900
F 0 "D2" H 9150 6000 50  0000 C CNN
F 1 "B5817WS" H 9150 5800 50  0000 C CNN
F 2 "Diodes_SMD:SOD-323_HandSoldering" H 9150 5900 50  0001 C CNN
F 3 "" H 9150 5900 50  0000 C CNN
	1    9150 5900
	1    0    0    -1  
$EndComp
$Comp
L FTDI FTDIProg1
U 1 1 58C4C044
P 2650 5350
F 0 "FTDIProg1" H 2750 5700 60  0000 C CNN
F 1 "FTDI" H 2750 5600 60  0000 C CNN
F 2 "synfinatic:FTDIHeader" H 2650 5350 60  0001 C CNN
F 3 "" H 2650 5350 60  0001 C CNN
	1    2650 5350
	0    1    1    0   
$EndComp
$Comp
L CP C1
U 1 1 59D05E9A
P 2250 2750
F 0 "C1" H 2275 2850 50  0000 L CNN
F 1 "100uF" H 2275 2650 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 2288 2600 50  0001 C CNN
F 3 "" H 2250 2750 50  0001 C CNN
	1    2250 2750
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 59D05F15
P 2900 2750
F 0 "RV1" V 2725 2750 50  0000 C CNN
F 1 "POT" V 2800 2750 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Bourns_3296W_3-8Zoll_Inline_ScrewUp" H 2900 2750 50  0001 C CNN
F 3 "" H 2900 2750 50  0001 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59D063DE
P 3200 3300
F 0 "#PWR06" H 3200 3050 50  0001 C CNN
F 1 "GND" H 3200 3150 50  0000 C CNN
F 2 "" H 3200 3300 50  0001 C CNN
F 3 "" H 3200 3300 50  0001 C CNN
	1    3200 3300
	1    0    0    -1  
$EndComp
Text GLabel 4900 5100 2    60   Input ~ 0
Switched12V
Text GLabel 2050 1350 0    60   Input ~ 0
Switched12V
$Comp
L GND #PWR07
U 1 1 59D11961
P 9250 5400
F 0 "#PWR07" H 9250 5150 50  0001 C CNN
F 1 "GND" H 9250 5250 50  0000 C CNN
F 2 "" H 9250 5400 50  0001 C CNN
F 3 "" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 59D11F12
P 6550 5150
F 0 "#PWR08" H 6550 5000 50  0001 C CNN
F 1 "+12V" H 6550 5290 50  0000 C CNN
F 2 "" H 6550 5150 50  0000 C CNN
F 3 "" H 6550 5150 50  0000 C CNN
	1    6550 5150
	1    0    0    -1  
$EndComp
Text GLabel 7200 5650 2    60   Input ~ 0
SwitchedGnd
$Comp
L D_Zener D1
U 1 1 59D17771
P 2250 1850
F 0 "D1" H 2250 1950 50  0000 C CNN
F 1 "10VZener" H 2250 1750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" H 2250 1850 50  0001 C CNN
F 3 "" H 2250 1850 50  0001 C CNN
	1    2250 1850
	0    -1   -1   0   
$EndComp
NoConn ~ 2900 2900
$Comp
L PWR_FLAG #FLG09
U 1 1 59D17FED
P 6700 4950
F 0 "#FLG09" H 6700 5045 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 5130 50  0000 C CNN
F 2 "" H 6700 4950 50  0000 C CNN
F 3 "" H 6700 4950 50  0000 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U2
U 1 1 5A88CF23
P 7100 1850
F 0 "U2" H 7100 1750 50  0000 C CNN
F 1 "ESP-12E" H 7100 1950 50  0000 C CNN
F 2 "synfinatic:ESP-12E-SMD" H 7100 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5A88CFD8
P 5300 800
F 0 "#PWR010" H 5300 650 50  0001 C CNN
F 1 "+3.3V" H 5300 940 50  0000 C CNN
F 2 "" H 5300 800 50  0001 C CNN
F 3 "" H 5300 800 50  0001 C CNN
	1    5300 800 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5A88D00E
P 8750 800
F 0 "#PWR011" H 8750 650 50  0001 C CNN
F 1 "+3.3V" H 8750 940 50  0000 C CNN
F 2 "" H 8750 800 50  0001 C CNN
F 3 "" H 8750 800 50  0001 C CNN
	1    8750 800 
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A88D033
P 8750 1100
F 0 "R6" V 8830 1100 50  0000 C CNN
F 1 "1K" V 8750 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8680 1100 50  0001 C CNN
F 3 "" H 8750 1100 50  0001 C CNN
	1    8750 1100
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A88D07D
P 8550 2650
F 0 "R5" V 8630 2650 50  0000 C CNN
F 1 "4.7K" V 8550 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8480 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A88D0C1
P 5500 1200
F 0 "R4" V 5580 1200 50  0000 C CNN
F 1 "1K" V 5500 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 1200 50  0001 C CNN
F 3 "" H 5500 1200 50  0001 C CNN
	1    5500 1200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A88D11D
P 5150 1200
F 0 "R3" V 5230 1200 50  0000 C CNN
F 1 "1K" V 5150 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 1200 50  0001 C CNN
F 3 "" H 5150 1200 50  0001 C CNN
	1    5150 1200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A88D151
P 8900 2650
F 0 "SW2" H 8950 2750 50  0000 L CNN
F 1 "Prog" H 8900 2590 50  0000 C CNN
F 2 "synfinatic:SPST-SMD-6x3.5" H 8900 2850 50  0001 C CNN
F 3 "" H 8900 2850 50  0001 C CNN
	1    8900 2650
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A88D1DF
P 5500 2700
F 0 "SW1" H 5550 2800 50  0000 L CNN
F 1 "Reset" H 5500 2640 50  0000 C CNN
F 2 "synfinatic:SPST-SMD-6x3.5" H 5500 2900 50  0001 C CNN
F 3 "" H 5500 2900 50  0001 C CNN
	1    5500 2700
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5A88D229
P 5950 2600
F 0 "C2" H 5975 2700 50  0000 L CNN
F 1 "1uf" H 5975 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5988 2450 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
Text GLabel 8200 1550 2    60   Input ~ 0
TXD
Text GLabel 8200 1650 2    60   Input ~ 0
RXD
NoConn ~ 7350 2750
NoConn ~ 7250 2750
NoConn ~ 7150 2750
NoConn ~ 7050 2750
NoConn ~ 6950 2750
NoConn ~ 6850 2750
Text GLabel 8900 3300 2    60   Input ~ 0
SwitchedGnd
Text GLabel 8200 1850 2    60   Input ~ 0
GPIO4
Text GLabel 8950 1750 2    60   Input ~ 0
GPIO5
$Comp
L R R1
U 1 1 5A88E074
P 3500 6700
F 0 "R1" V 3580 6700 50  0000 C CNN
F 1 "560" V 3500 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 6700 50  0001 C CNN
F 3 "" H 3500 6700 50  0001 C CNN
	1    3500 6700
	0    1    1    0   
$EndComp
Text GLabel 3100 6700 0    60   Input ~ 0
Switched12V
$Comp
L R R2
U 1 1 5A88E3AD
P 4800 6350
F 0 "R2" V 4880 6350 50  0000 C CNN
F 1 "10K" V 4800 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4730 6350 50  0001 C CNN
F 3 "" H 4800 6350 50  0001 C CNN
	1    4800 6350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 5A88E492
P 4800 6050
F 0 "#PWR012" H 4800 5900 50  0001 C CNN
F 1 "+3.3V" H 4800 6190 50  0000 C CNN
F 2 "" H 4800 6050 50  0001 C CNN
F 3 "" H 4800 6050 50  0001 C CNN
	1    4800 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A88E4DF
P 4800 7050
F 0 "#PWR013" H 4800 6800 50  0001 C CNN
F 1 "GND" H 4800 6900 50  0000 C CNN
F 2 "" H 4800 7050 50  0001 C CNN
F 3 "" H 4800 7050 50  0001 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
Text GLabel 5050 6700 2    60   Input ~ 0
GPIO5
$Comp
L GND #PWR014
U 1 1 5A88E5E0
P 3700 7050
F 0 "#PWR014" H 3700 6800 50  0001 C CNN
F 1 "GND" H 3700 6900 50  0000 C CNN
F 2 "" H 3700 7050 50  0001 C CNN
F 3 "" H 3700 7050 50  0001 C CNN
	1    3700 7050
	1    0    0    -1  
$EndComp
NoConn ~ 6200 2150
NoConn ~ 6200 1950
NoConn ~ 6200 1850
NoConn ~ 6200 1650
$Comp
L PWR_FLAG #FLG015
U 1 1 5A88EF3E
P 3500 2950
F 0 "#FLG015" H 3500 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 3100 50  0000 C CNN
F 2 "" H 3500 2950 50  0001 C CNN
F 3 "" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
Text GLabel 2300 5700 0    60   Input ~ 0
SwitchedGnd
NoConn ~ 2450 5500
$Comp
L LED D3
U 1 1 5AA4724E
P 1600 4450
F 0 "D3" H 1600 4550 50  0000 C CNN
F 1 "Red" H 1600 4350 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1600 4450 50  0001 C CNN
F 3 "" H 1600 4450 50  0001 C CNN
	1    1600 4450
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5AA472B6
P 1600 3950
F 0 "R8" V 1680 3950 50  0000 C CNN
F 1 "56" V 1600 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1530 3950 50  0001 C CNN
F 3 "" H 1600 3950 50  0001 C CNN
	1    1600 3950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 5AA4735E
P 1600 3500
F 0 "#PWR016" H 1600 3350 50  0001 C CNN
F 1 "+3.3V" H 1600 3640 50  0000 C CNN
F 2 "" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
Text GLabel 1600 4850 0    60   Input ~ 0
SwitchedGnd
Wire Wire Line
	4900 4900 3800 4900
Wire Wire Line
	3800 5000 4900 5000
Wire Wire Line
	3800 5100 4900 5100
Wire Wire Line
	3950 5200 3800 5200
Wire Wire Line
	7300 5250 7300 5450
Wire Wire Line
	7300 5450 7550 5450
Wire Wire Line
	7200 5250 7200 5650
Wire Wire Line
	7100 5450 7100 5250
Wire Wire Line
	6550 5450 7100 5450
Wire Wire Line
	9650 4700 9650 5900
Wire Wire Line
	9650 4400 9650 4200
Wire Wire Line
	8900 4950 9650 4950
Wire Wire Line
	9650 5900 9300 5900
Wire Wire Line
	9250 5250 9250 5400
Connection ~ 9250 4950
Wire Wire Line
	9000 5900 8850 5900
Wire Wire Line
	3750 2200 3750 1650
Wire Wire Line
	3750 3050 3750 2600
Wire Wire Line
	2450 5300 2150 5300
Wire Wire Line
	4900 4700 4900 4900
Wire Wire Line
	7550 5450 7550 5100
Wire Wire Line
	2450 5400 2150 5400
Wire Wire Line
	2250 3050 3750 3050
Wire Wire Line
	2250 3050 2250 2900
Wire Wire Line
	2250 2400 3450 2400
Wire Wire Line
	2250 2000 2250 2600
Wire Wire Line
	2900 2400 2900 2600
Connection ~ 2900 2400
Wire Wire Line
	3200 2750 3200 3300
Connection ~ 3200 3050
Connection ~ 2250 2400
Wire Wire Line
	2250 1700 2250 1350
Wire Wire Line
	2250 1350 2050 1350
Wire Wire Line
	6550 5450 6550 5150
Wire Wire Line
	3200 2750 3050 2750
Wire Wire Line
	6700 4950 6700 5450
Connection ~ 6700 5450
Wire Wire Line
	5500 3300 8900 3300
Wire Wire Line
	8300 3300 8300 2250
Wire Wire Line
	8300 2250 8000 2250
Wire Wire Line
	5950 2750 5950 3300
Connection ~ 5950 3300
Wire Wire Line
	5950 1050 5950 2450
Wire Wire Line
	5950 2250 6200 2250
Wire Wire Line
	5500 3300 5500 2900
Wire Wire Line
	5500 1350 5500 2500
Connection ~ 5500 1550
Wire Wire Line
	5150 1350 5150 1750
Wire Wire Line
	5500 1550 6200 1550
Wire Wire Line
	5150 1750 6200 1750
Wire Wire Line
	5150 1050 5950 1050
Wire Wire Line
	5300 800  5300 1050
Connection ~ 5300 1050
Connection ~ 5500 1050
Connection ~ 5950 2250
Wire Wire Line
	8000 1550 8200 1550
Wire Wire Line
	8000 2150 8550 2150
Wire Wire Line
	8550 2150 8550 2500
Wire Wire Line
	8550 3300 8550 2800
Connection ~ 8300 3300
Wire Wire Line
	8000 1950 8900 1950
Wire Wire Line
	8900 1950 8900 2450
Wire Wire Line
	8900 3300 8900 2850
Connection ~ 8550 3300
Wire Wire Line
	8750 2050 8000 2050
Wire Wire Line
	8750 1250 8750 2050
Wire Wire Line
	8750 950  8750 800 
Wire Wire Line
	8000 1650 8200 1650
Wire Wire Line
	8000 1850 8200 1850
Wire Wire Line
	8000 1750 8950 1750
Wire Wire Line
	4000 6700 3650 6700
Wire Wire Line
	3350 6700 3100 6700
Wire Wire Line
	4600 6900 4800 6900
Wire Wire Line
	4800 6900 4800 7050
Wire Wire Line
	4600 6700 5050 6700
Wire Wire Line
	4800 6700 4800 6500
Wire Wire Line
	4800 6200 4800 6050
Connection ~ 4800 6700
Wire Wire Line
	2300 5700 2450 5700
Wire Wire Line
	4000 6900 3700 6900
Wire Wire Line
	3700 6900 3700 7050
Wire Wire Line
	3500 2950 3500 3050
Connection ~ 3500 3050
Wire Wire Line
	1600 3500 1600 3800
Wire Wire Line
	1600 4100 1600 4300
Wire Wire Line
	1600 4600 1600 4850
$Comp
L LTV-814 U1
U 1 1 5A88DF6E
P 4300 6800
F 0 "U1" H 4100 7000 50  0000 L CNN
F 1 "LTV-814" H 4300 7000 50  0000 L CNN
F 2 "Opto-Devices:Optocoupler_SMD_LTV-817S" H 4100 6600 50  0001 L CIN
F 3 "" H 4325 6800 50  0001 L CNN
	1    4300 6800
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q2
U 1 1 5AAEF698
P 4400 3850
F 0 "Q2" H 4600 3900 50  0000 L CNN
F 1 "IRLML6344" H 4600 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4600 3950 50  0001 C CNN
F 3 "" H 4400 3850 50  0000 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5AAEF6F7
P 3900 4500
F 0 "#PWR017" H 3900 4250 50  0001 C CNN
F 1 "GND" H 3900 4350 50  0000 C CNN
F 2 "" H 3900 4500 50  0001 C CNN
F 3 "" H 3900 4500 50  0001 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AAEF74A
P 4500 3100
F 0 "R10" V 4580 3100 50  0000 C CNN
F 1 "10K" V 4500 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR018
U 1 1 5AAEF7B6
P 4500 2750
F 0 "#PWR018" H 4500 2600 50  0001 C CNN
F 1 "+12V" H 4500 2890 50  0000 C CNN
F 2 "" H 4500 2750 50  0000 C CNN
F 3 "" H 4500 2750 50  0000 C CNN
	1    4500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3250 4500 3650
Wire Wire Line
	4500 2950 4500 2750
$Comp
L R R9
U 1 1 5AAEF8F5
P 3900 4150
F 0 "R9" V 3980 4150 50  0000 C CNN
F 1 "10K" V 3900 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3830 4150 50  0001 C CNN
F 3 "" H 3900 4150 50  0001 C CNN
	1    3900 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3850 4200 3850
Wire Wire Line
	3900 3850 3900 4000
Wire Wire Line
	3900 4300 3900 4500
Wire Wire Line
	4500 4050 4500 4350
Wire Wire Line
	4500 3450 4750 3450
Connection ~ 4500 3450
Connection ~ 3900 3850
Wire Wire Line
	6200 2050 5300 2050
Text GLabel 5300 2050 0    60   Input ~ 0
GPIO12
Text GLabel 3550 3850 0    60   Input ~ 0
GPIO12
Text GLabel 4750 3450 2    60   Input ~ 0
GPIO12-OUT
Text GLabel 4900 5000 2    60   Input ~ 0
GPIO12-OUT
Wire Wire Line
	4500 4350 3900 4350
Connection ~ 3900 4350
Wire Wire Line
	3800 5400 4900 5400
Wire Wire Line
	3800 5300 4900 5300
Wire Wire Line
	3950 5200 3950 5600
$EndSCHEMATC
