EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "V-USB with external clock"
Date "2020-10-14"
Rev "v10"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0"
Comment3 "License: CC BY 4.0"
Comment4 "Author: Johan Berdat"
$EndDescr
$Comp
L Device:C C?
U 1 1 5F870184
P 1800 2950
F 0 "C?" H 1915 2996 50  0000 L CNN
F 1 "4u7" H 1915 2905 50  0000 L CNN
F 2 "" H 1838 2800 50  0001 C CNN
F 3 "~" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F8707EE
P 2300 2250
F 0 "R?" H 2370 2296 50  0000 L CNN
F 1 "1k5" H 2370 2205 50  0000 L CNN
F 2 "" V 2230 2250 50  0001 C CNN
F 3 "~" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5F870D37
P 2700 2850
F 0 "D?" V 2654 2929 50  0000 L CNN
F 1 "3v6" V 2745 2929 50  0000 L CNN
F 2 "" H 2700 2850 50  0001 C CNN
F 3 "~" H 2700 2850 50  0001 C CNN
	1    2700 2850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F8716E4
P 5500 1700
F 0 "#PWR?" H 5500 1550 50  0001 C CNN
F 1 "+5V" H 5515 1873 50  0000 C CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5F871D67
P 1300 2500
F 0 "J?" H 1357 2967 50  0000 C CNN
F 1 "USB_B_Micro" H 1357 2876 50  0000 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "~" H 1450 2450 50  0001 C CNN
	1    1300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5F87298C
P 1650 4800
F 0 "Y?" V 1604 4931 50  0000 L CNN
F 1 "16M" V 1695 4931 50  0000 L CNN
F 2 "" H 1650 4800 50  0001 C CNN
F 3 "~" H 1650 4800 50  0001 C CNN
	1    1650 4800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F872FF3
P 3350 4950
F 0 "D?" H 3343 4695 50  0000 C CNN
F 1 "LED" H 3343 4786 50  0000 C CNN
F 2 "" H 3350 4950 50  0001 C CNN
F 3 "~" H 3350 4950 50  0001 C CNN
	1    3350 4950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F873962
P 5550 4600
F 0 "SW?" V 5504 4748 50  0000 L CNN
F 1 "SW_Push" V 5595 4748 50  0000 L CNN
F 2 "" H 5550 4800 50  0001 C CNN
F 3 "~" H 5550 4800 50  0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
$Comp
L shared:ATtiny84 U?
U 1 1 5F876C20
P 6800 2850
F 0 "U?" H 6800 3715 50  0000 C CNN
F 1 "ATtiny84" H 6800 3624 50  0000 C CNN
F 2 "" H 6250 2450 50  0001 C CNN
F 3 "" H 6250 2450 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F878DE9
P 3350 2500
F 0 "R?" V 3143 2500 50  0000 C CNN
F 1 "68" V 3234 2500 50  0000 C CNN
F 2 "" V 3280 2500 50  0001 C CNN
F 3 "~" H 3350 2500 50  0001 C CNN
	1    3350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F8790E8
P 2950 2600
F 0 "R?" V 2743 2600 50  0000 C CNN
F 1 "68" V 2834 2600 50  0000 C CNN
F 2 "" V 2880 2600 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5F8792B3
P 2300 2850
F 0 "D?" V 2254 2929 50  0000 L CNN
F 1 "3v6" V 2345 2929 50  0000 L CNN
F 2 "" H 2300 2850 50  0001 C CNN
F 3 "~" H 2300 2850 50  0001 C CNN
	1    2300 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F87952F
P 5250 4850
F 0 "R?" H 5320 4896 50  0000 L CNN
F 1 "10k" H 5320 4805 50  0000 L CNN
F 2 "" V 5180 4850 50  0001 C CNN
F 3 "~" H 5250 4850 50  0001 C CNN
	1    5250 4850
	1    0    0    -1  
$EndComp
NoConn ~ 1700 2700
Wire Wire Line
	1600 2700 1700 2700
$Comp
L shared:JTAG J?
U 1 1 5F87E23C
P 7750 4700
F 0 "J?" H 7750 5073 50  0000 C CNN
F 1 "JTAG" H 7750 4950 50  0001 C CNN
F 2 "" H 7750 4150 50  0001 C CNN
F 3 "" H 7750 4150 50  0001 C CNN
	1    7750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F87EF5A
P 6800 1800
F 0 "C?" V 6548 1800 50  0000 C CNN
F 1 "100n" V 6639 1800 50  0000 C CNN
F 2 "" H 6838 1650 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
	1    6800 1800
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F87133E
P 1300 3350
F 0 "#PWR?" H 1300 3100 50  0001 C CNN
F 1 "GNDREF" H 1305 3177 50  0000 C CNN
F 2 "" H 1300 3350 50  0001 C CNN
F 3 "" H 1300 3350 50  0001 C CNN
	1    1300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F880ADF
P 1800 1900
F 0 "#PWR?" H 1800 1750 50  0001 C CNN
F 1 "+5V" H 1815 2073 50  0000 C CNN
F 2 "" H 1800 1900 50  0001 C CNN
F 3 "" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F886A55
P 1400 4550
F 0 "C?" V 1148 4550 50  0000 C CNN
F 1 "20p" V 1239 4550 50  0000 C CNN
F 2 "" H 1438 4400 50  0001 C CNN
F 3 "~" H 1400 4550 50  0001 C CNN
	1    1400 4550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F888181
P 1400 5050
F 0 "C?" V 1148 5050 50  0000 C CNN
F 1 "20p" V 1239 5050 50  0000 C CNN
F 2 "" H 1438 4900 50  0001 C CNN
F 3 "~" H 1400 5050 50  0001 C CNN
	1    1400 5050
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F888AC4
P 1150 5150
F 0 "#PWR?" H 1150 4900 50  0001 C CNN
F 1 "GNDREF" H 1155 4977 50  0000 C CNN
F 2 "" H 1150 5150 50  0001 C CNN
F 3 "" H 1150 5150 50  0001 C CNN
	1    1150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5150 1150 5050
Wire Wire Line
	1150 4550 1250 4550
Wire Wire Line
	1250 5050 1150 5050
Connection ~ 1150 5050
Wire Wire Line
	1150 5050 1150 4550
Wire Wire Line
	1550 5050 1650 5050
Wire Wire Line
	1650 5050 1650 4950
Wire Wire Line
	1550 4550 1650 4550
Wire Wire Line
	1650 4550 1650 4650
Wire Wire Line
	1650 4550 1950 4550
Connection ~ 1650 4550
Wire Wire Line
	1650 5050 1950 5050
Connection ~ 1650 5050
Text Label 1950 4550 2    50   ~ 0
XTAL1
Text Label 1950 5050 2    50   ~ 0
XTAL2
Wire Wire Line
	1600 2300 1800 2300
Wire Wire Line
	1800 2300 1800 2800
Connection ~ 1800 2300
Wire Wire Line
	1800 3100 1300 3100
Wire Wire Line
	1200 2900 1200 3100
Wire Wire Line
	1300 2900 1300 3100
Connection ~ 1300 3100
Wire Wire Line
	1300 3100 1200 3100
Wire Wire Line
	1300 3100 1300 3350
Wire Wire Line
	1800 1900 1800 2000
Wire Wire Line
	2300 2100 2300 2000
Wire Wire Line
	2300 2000 1800 2000
Connection ~ 1800 2000
Wire Wire Line
	1800 2000 1800 2300
Wire Wire Line
	1800 3100 2300 3100
Wire Wire Line
	2300 3100 2300 3000
Connection ~ 1800 3100
Wire Wire Line
	2300 3100 2700 3100
Wire Wire Line
	2700 3100 2700 3000
Connection ~ 2300 3100
Text Label 4000 2500 2    50   ~ 0
D+
Text Label 4000 2600 2    50   ~ 0
D-
Wire Wire Line
	1600 2600 2300 2600
Wire Wire Line
	4000 2500 3500 2500
Wire Wire Line
	1600 2500 2700 2500
Wire Wire Line
	3100 2600 4000 2600
Wire Wire Line
	2300 2400 2300 2600
Connection ~ 2300 2600
Wire Wire Line
	2300 2600 2800 2600
Wire Wire Line
	2300 2600 2300 2700
Wire Wire Line
	2700 2700 2700 2500
Connection ~ 2700 2500
Wire Wire Line
	2700 2500 3200 2500
$Comp
L power:+5V #PWR?
U 1 1 5F89F875
P 5850 4500
F 0 "#PWR?" H 5850 4350 50  0001 C CNN
F 1 "+5V" H 5865 4673 50  0000 C CNN
F 2 "" H 5850 4500 50  0001 C CNN
F 3 "" H 5850 4500 50  0001 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F8A225C
P 3350 4550
F 0 "R?" V 3143 4550 50  0000 C CNN
F 1 "68" V 3234 4550 50  0000 C CNN
F 2 "" V 3280 4550 50  0001 C CNN
F 3 "~" H 3350 4550 50  0001 C CNN
	1    3350 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 4100 3350 4400
Wire Wire Line
	3350 4700 3350 4800
Wire Wire Line
	3350 5100 3350 5200
Wire Wire Line
	7550 2650 8050 2650
Wire Wire Line
	7550 2750 8050 2750
Wire Wire Line
	6050 3050 5950 3050
NoConn ~ 5950 3050
Text Label 8050 2650 2    50   ~ 0
LED
Text Label 8050 2750 2    50   ~ 0
SW
$Comp
L power:GNDREF #PWR?
U 1 1 5F8B139C
P 3350 5200
F 0 "#PWR?" H 3350 4950 50  0001 C CNN
F 1 "GNDREF" H 3355 5027 50  0000 C CNN
F 2 "" H 3350 5200 50  0001 C CNN
F 3 "" H 3350 5200 50  0001 C CNN
	1    3350 5200
	1    0    0    -1  
$EndComp
Text Label 3350 4100 3    50   ~ 0
LED
$Comp
L power:GNDREF #PWR?
U 1 1 5F8B9A7A
P 5250 5100
F 0 "#PWR?" H 5250 4850 50  0001 C CNN
F 1 "GNDREF" H 5255 4927 50  0000 C CNN
F 2 "" H 5250 5100 50  0001 C CNN
F 3 "" H 5250 5100 50  0001 C CNN
	1    5250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5100 5250 5000
Wire Wire Line
	5350 4600 5250 4600
Wire Wire Line
	5250 4600 5250 4700
Wire Wire Line
	5750 4600 5850 4600
Wire Wire Line
	5850 4600 5850 4500
Wire Wire Line
	5250 4600 4800 4600
Connection ~ 5250 4600
Text Label 4800 4600 0    50   ~ 0
SW
Wire Wire Line
	7550 3050 8050 3050
Wire Wire Line
	7550 3150 8050 3150
Wire Wire Line
	6050 3150 5550 3150
Wire Wire Line
	6050 2950 5550 2950
Text Label 8050 3050 2    50   ~ 0
SCK
Text Label 8050 3150 2    50   ~ 0
MISO
Wire Wire Line
	8100 4700 8500 4700
Wire Wire Line
	7400 4800 7000 4800
Wire Wire Line
	7400 4700 7000 4700
Wire Wire Line
	7400 4600 7000 4600
Wire Wire Line
	8100 4800 8200 4800
Wire Wire Line
	8200 4800 8200 4900
Wire Wire Line
	8100 4600 8200 4600
Wire Wire Line
	8200 4600 8200 4500
$Comp
L power:+5V #PWR?
U 1 1 5F8C8F5C
P 8200 4500
F 0 "#PWR?" H 8200 4350 50  0001 C CNN
F 1 "+5V" H 8215 4673 50  0000 C CNN
F 2 "" H 8200 4500 50  0001 C CNN
F 3 "" H 8200 4500 50  0001 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F8C93C6
P 8200 4900
F 0 "#PWR?" H 8200 4650 50  0001 C CNN
F 1 "GNDREF" H 8205 4727 50  0000 C CNN
F 2 "" H 8200 4900 50  0001 C CNN
F 3 "" H 8200 4900 50  0001 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
Text Label 7000 4600 0    50   ~ 0
MISO
Text Label 7000 4700 0    50   ~ 0
SCK
Text Label 7000 4800 0    50   ~ 0
~RESET~
Text Label 8500 4700 2    50   ~ 0
MOSI
$Comp
L power:GNDREF #PWR?
U 1 1 5F8CC19B
P 8350 2650
F 0 "#PWR?" H 8350 2400 50  0001 C CNN
F 1 "GNDREF" H 8355 2477 50  0000 C CNN
F 2 "" H 8350 2650 50  0001 C CNN
F 3 "" H 8350 2650 50  0001 C CNN
	1    8350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2550 8350 2550
Wire Wire Line
	8350 2550 8350 2650
Text Label 5550 3150 0    50   ~ 0
MOSI
Text Label 5550 2950 0    50   ~ 0
D+
Wire Wire Line
	6050 2750 5550 2750
Wire Wire Line
	6050 2650 5550 2650
Text Label 5550 2750 0    50   ~ 0
XTAL2
Text Label 5550 2650 0    50   ~ 0
XTAL1
$Comp
L Device:R R?
U 1 1 5F8D41B1
P 5300 2550
F 0 "R?" V 5093 2550 50  0000 C CNN
F 1 "10k" V 5184 2550 50  0000 C CNN
F 2 "" V 5230 2550 50  0001 C CNN
F 3 "~" H 5300 2550 50  0001 C CNN
	1    5300 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2850 5050 2850
Text Label 4750 2850 0    50   ~ 0
~RESET~
Wire Wire Line
	5150 2550 5050 2550
Wire Wire Line
	5050 2550 5050 2850
Connection ~ 5050 2850
Wire Wire Line
	5050 2850 6050 2850
Wire Wire Line
	5450 2550 5500 2550
Wire Wire Line
	6650 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1700
Wire Wire Line
	5500 1800 5500 2550
Connection ~ 5500 1800
Connection ~ 5500 2550
Wire Wire Line
	5500 2550 6050 2550
Wire Wire Line
	6950 1800 8350 1800
Wire Wire Line
	8350 1800 8350 2550
Connection ~ 8350 2550
Wire Wire Line
	7550 2850 8050 2850
Wire Wire Line
	7550 2950 8050 2950
Text Label 8050 2850 2    50   ~ 0
D-
Text Label 8050 2950 2    50   ~ 0
D+
$EndSCHEMATC
