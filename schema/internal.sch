EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "V-USB with internal clock"
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
L Device:LED D?
U 1 1 5F872FF3
P 2050 4800
F 0 "D?" H 2043 4545 50  0000 C CNN
F 1 "LED" H 2043 4636 50  0000 C CNN
F 2 "" H 2050 4800 50  0001 C CNN
F 3 "~" H 2050 4800 50  0001 C CNN
	1    2050 4800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F873962
P 4250 4450
F 0 "SW?" V 4204 4598 50  0000 L CNN
F 1 "SW_Push" V 4295 4598 50  0000 L CNN
F 2 "" H 4250 4650 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4450
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
P 3950 4700
F 0 "R?" H 4020 4746 50  0000 L CNN
F 1 "10k" H 4020 4655 50  0000 L CNN
F 2 "" V 3880 4700 50  0001 C CNN
F 3 "~" H 3950 4700 50  0001 C CNN
	1    3950 4700
	1    0    0    -1  
$EndComp
NoConn ~ 1700 2700
Wire Wire Line
	1600 2700 1700 2700
$Comp
L shared:JTAG J?
U 1 1 5F87E23C
P 6450 4550
F 0 "J?" H 6450 4923 50  0000 C CNN
F 1 "JTAG" H 6450 4800 50  0001 C CNN
F 2 "" H 6450 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F87EF5A
P 8300 2650
F 0 "C?" V 8048 2650 50  0000 C CNN
F 1 "100n" V 8139 2650 50  0000 C CNN
F 2 "" H 8338 2500 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
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
P 4550 4350
F 0 "#PWR?" H 4550 4200 50  0001 C CNN
F 1 "+5V" H 4565 4523 50  0000 C CNN
F 2 "" H 4550 4350 50  0001 C CNN
F 3 "" H 4550 4350 50  0001 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F8A225C
P 2050 4400
F 0 "R?" V 1843 4400 50  0000 C CNN
F 1 "68" V 1934 4400 50  0000 C CNN
F 2 "" V 1980 4400 50  0001 C CNN
F 3 "~" H 2050 4400 50  0001 C CNN
	1    2050 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 3950 2050 4250
Wire Wire Line
	2050 4550 2050 4650
Wire Wire Line
	2050 4950 2050 5050
$Comp
L power:GNDREF #PWR?
U 1 1 5F8B139C
P 2050 5050
F 0 "#PWR?" H 2050 4800 50  0001 C CNN
F 1 "GNDREF" H 2055 4877 50  0000 C CNN
F 2 "" H 2050 5050 50  0001 C CNN
F 3 "" H 2050 5050 50  0001 C CNN
	1    2050 5050
	1    0    0    -1  
$EndComp
Text Label 2050 3950 3    50   ~ 0
LED
$Comp
L power:GNDREF #PWR?
U 1 1 5F8B9A7A
P 3950 4950
F 0 "#PWR?" H 3950 4700 50  0001 C CNN
F 1 "GNDREF" H 3955 4777 50  0000 C CNN
F 2 "" H 3950 4950 50  0001 C CNN
F 3 "" H 3950 4950 50  0001 C CNN
	1    3950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4950 3950 4850
Wire Wire Line
	4050 4450 3950 4450
Wire Wire Line
	3950 4450 3950 4550
Wire Wire Line
	4450 4450 4550 4450
Wire Wire Line
	4550 4450 4550 4350
Wire Wire Line
	3950 4450 3500 4450
Connection ~ 3950 4450
Text Label 3500 4450 0    50   ~ 0
SW
Wire Wire Line
	6800 4550 7200 4550
Wire Wire Line
	6100 4650 5700 4650
Wire Wire Line
	6100 4550 5700 4550
Wire Wire Line
	6100 4450 5700 4450
Wire Wire Line
	6800 4650 6900 4650
Wire Wire Line
	6900 4650 6900 4750
Wire Wire Line
	6800 4450 6900 4450
Wire Wire Line
	6900 4450 6900 4350
$Comp
L power:+5V #PWR?
U 1 1 5F8C8F5C
P 6900 4350
F 0 "#PWR?" H 6900 4200 50  0001 C CNN
F 1 "+5V" H 6915 4523 50  0000 C CNN
F 2 "" H 6900 4350 50  0001 C CNN
F 3 "" H 6900 4350 50  0001 C CNN
	1    6900 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F8C93C6
P 6900 4750
F 0 "#PWR?" H 6900 4500 50  0001 C CNN
F 1 "GNDREF" H 6905 4577 50  0000 C CNN
F 2 "" H 6900 4750 50  0001 C CNN
F 3 "" H 6900 4750 50  0001 C CNN
	1    6900 4750
	1    0    0    -1  
$EndComp
Text Label 5700 4450 0    50   ~ 0
MISO
Text Label 5700 4550 0    50   ~ 0
SCK
Text Label 5700 4650 0    50   ~ 0
~RESET~
Text Label 7200 4550 2    50   ~ 0
MOSI
Text Label 5550 2650 0    50   ~ 0
~RESET~
$Comp
L Device:R R?
U 1 1 5F8D41B1
P 5950 2400
F 0 "R?" V 5743 2400 50  0000 C CNN
F 1 "10k" V 5834 2400 50  0000 C CNN
F 2 "" V 5880 2400 50  0001 C CNN
F 3 "~" H 5950 2400 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5F8CC19B
P 5950 3050
F 0 "#PWR?" H 5950 2800 50  0001 C CNN
F 1 "GNDREF" H 5955 2877 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2750 8050 2750
$Comp
L power:+5V #PWR?
U 1 1 5F8716E4
P 5950 2150
F 0 "#PWR?" H 5950 2000 50  0001 C CNN
F 1 "+5V" H 5965 2323 50  0000 C CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Text Label 5550 2750 0    50   ~ 0
SW
Wire Wire Line
	6050 2750 5550 2750
$Comp
L shared:ATtiny85 U?
U 1 1 5F8B76EC
P 6800 2800
F 0 "U?" H 6800 3515 50  0000 C CNN
F 1 "ATtiny85" H 6800 3424 50  0000 C CNN
F 2 "" H 6450 2500 50  0001 C CNN
F 3 "" H 6450 2500 50  0001 C CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2650 5950 2650
Wire Wire Line
	5950 2550 5950 2650
Connection ~ 5950 2650
Wire Wire Line
	5950 2650 5550 2650
Wire Wire Line
	5950 2150 5950 2250
Wire Wire Line
	6050 2850 5550 2850
Text Label 5550 2850 0    50   ~ 0
LED
Wire Wire Line
	6050 2950 5950 2950
Wire Wire Line
	5950 2950 5950 3050
Text Label 8050 3050 2    50   ~ 0
MOSI
Text Label 8050 2950 2    50   ~ 0
MISO
Text Label 8050 2850 2    50   ~ 0
D-
Text Label 8050 2750 2    50   ~ 0
D+
Wire Wire Line
	7550 2950 7650 2950
Wire Wire Line
	7650 2950 7650 3050
Wire Wire Line
	7650 3050 8050 3050
Wire Wire Line
	7550 2850 7750 2850
Wire Wire Line
	7750 2850 7750 2950
Wire Wire Line
	7750 2950 8050 2950
Wire Wire Line
	7750 2850 8050 2850
Connection ~ 7750 2850
$Comp
L power:GNDREF #PWR?
U 1 1 5F8E375C
P 8550 2750
F 0 "#PWR?" H 8550 2500 50  0001 C CNN
F 1 "GNDREF" H 8555 2577 50  0000 C CNN
F 2 "" H 8550 2750 50  0001 C CNN
F 3 "" H 8550 2750 50  0001 C CNN
	1    8550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2650 7650 2650
Wire Wire Line
	8450 2650 8550 2650
Wire Wire Line
	8550 2650 8550 2750
Wire Wire Line
	7650 2650 7650 2550
Connection ~ 7650 2650
Wire Wire Line
	7650 2650 8150 2650
$Comp
L power:+5V #PWR?
U 1 1 5F8E7CC8
P 7650 2550
F 0 "#PWR?" H 7650 2400 50  0001 C CNN
F 1 "+5V" H 7665 2723 50  0000 C CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "" H 7650 2550 50  0001 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC