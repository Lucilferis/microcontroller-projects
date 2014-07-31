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
LIBS:special
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
LIBS:lib
EELAYER 24 0
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
L ZXCT1009 U?
U 1 1 53DA525A
P 4050 2700
F 0 "U?" H 4050 2800 60  0000 C CNN
F 1 "ZXCT1009" H 4050 2700 60  0000 C CNN
F 2 "" H 4050 2700 60  0000 C CNN
F 3 "" H 4050 2700 60  0000 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53DA5B8B
P 4050 2000
F 0 "R?" V 4130 2000 40  0000 C CNN
F 1 "0.1" V 4057 2001 40  0000 C CNN
F 2 "" V 3980 2000 30  0000 C CNN
F 3 "" H 4050 2000 30  0000 C CNN
F 4 "10" V 4050 2000 60  0001 C CNN "Power"
	1    4050 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2200 3900 2200
Wire Wire Line
	4300 2200 4200 2200
Wire Wire Line
	4300 1800 4300 2200
$Comp
L R R?
U 1 1 53DA5BAC
P 4300 3400
F 0 "R?" V 4380 3400 40  0000 C CNN
F 1 "440" V 4307 3401 40  0000 C CNN
F 2 "" V 4230 3400 30  0000 C CNN
F 3 "" H 4300 3400 30  0000 C CNN
	1    4300 3400
	0    -1   -1   0   
$EndComp
$Comp
L TL082 U?
U 1 1 53DA5F38
P 5700 2900
F 0 "U?" H 5650 3100 60  0000 L CNN
F 1 "TL082" H 5650 2650 60  0000 L CNN
F 2 "" H 5700 2900 60  0000 C CNN
F 3 "" H 5700 2900 60  0000 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L TL082 U?
U 2 1 53DA5F4C
P 7500 3000
F 0 "U?" H 7450 3200 60  0000 L CNN
F 1 "TL082" H 7450 2750 60  0000 L CNN
F 2 "" H 7500 3000 60  0000 C CNN
F 3 "" H 7500 3000 60  0000 C CNN
	2    7500 3000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53DA5F74
P 6550 2900
F 0 "R?" V 6630 2900 40  0000 C CNN
F 1 "39k2" V 6557 2901 40  0000 C CNN
F 2 "" V 6480 2900 30  0000 C CNN
F 3 "" H 6550 2900 30  0000 C CNN
	1    6550 2900
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 53DA601E
P 6500 3100
F 0 "C?" H 6500 3200 40  0000 L CNN
F 1 "1u" H 6506 3015 40  0000 L CNN
F 2 "" H 6538 2950 30  0000 C CNN
F 3 "" H 6500 3100 60  0000 C CNN
	1    6500 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 2900 6800 3100
Wire Wire Line
	6800 2900 7000 2900
Wire Wire Line
	6200 2900 6300 2900
Wire Wire Line
	6200 2900 6200 3600
Wire Wire Line
	5200 3000 5200 3600
$Comp
L R R?
U 1 1 53DA60A9
P 4950 2800
F 0 "R?" V 5030 2800 40  0000 C CNN
F 1 "39k2" V 4957 2801 40  0000 C CNN
F 2 "" V 4880 2800 30  0000 C CNN
F 3 "" H 4950 2800 30  0000 C CNN
	1    4950 2800
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 53DA611A
P 6500 2200
F 0 "C?" H 6500 2300 40  0000 L CNN
F 1 "1u" H 6506 2115 40  0000 L CNN
F 2 "" H 6538 2050 30  0000 C CNN
F 3 "" H 6500 2200 60  0000 C CNN
	1    6500 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2200 8000 3600
Wire Wire Line
	8000 2200 6700 2200
Wire Wire Line
	6300 2200 5200 2200
Wire Wire Line
	7000 3100 7000 3600
Wire Wire Line
	7000 3600 8000 3600
Connection ~ 8000 3000
Wire Wire Line
	5200 3600 6200 3600
Wire Wire Line
	7400 2500 7400 2600
Connection ~ 7400 2500
Connection ~ 5200 2200
Wire Wire Line
	5600 2500 8200 2500
Wire Wire Line
	6800 3100 6700 3100
Wire Wire Line
	5600 3400 5600 3300
Text Label 8400 3000 0    60   ~ 0
CURR
Text Label 8400 1800 0    60   ~ 0
Vbatt
Connection ~ 7400 3400
Wire Wire Line
	3800 1700 3800 2200
Text Label 8400 1700 0    60   ~ 0
Vrect
Connection ~ 4300 2000
Connection ~ 3800 2000
Wire Wire Line
	6300 3400 6300 3100
Connection ~ 6300 3400
Wire Wire Line
	4050 3100 4700 3100
Wire Wire Line
	4700 3100 4700 2800
Wire Wire Line
	5200 2200 5200 2800
Wire Notes Line
	4650 3700 8300 3700
Wire Notes Line
	8300 3700 8300 2000
Wire Notes Line
	8300 2000 4650 2000
Wire Notes Line
	4650 2000 4650 3700
Text Notes 4700 2100 0    60   ~ 0
Low Pass Filter
Wire Notes Line
	4600 3700 4600 1600
Wire Notes Line
	3700 3700 4600 3700
Text Notes 3800 3650 0    60   ~ 0
Current Monitor
Wire Wire Line
	4550 3400 8200 3400
Wire Notes Line
	3700 3700 3700 1600
Wire Notes Line
	3700 1600 4600 1600
Wire Wire Line
	4050 3100 4050 3400
Connection ~ 5600 3400
$Comp
L LM2907 U?
U 1 1 53DA8E9B
P 4850 4850
F 0 "U?" H 4850 5050 60  0000 C CNN
F 1 "LM2907" H 4750 4900 60  0000 C CNN
F 2 "" H 4850 4850 60  0000 C CNN
F 3 "" H 4850 4850 60  0000 C CNN
	1    4850 4850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 53DA8EC8
P 4500 5750
F 0 "C?" H 4500 5850 40  0000 L CNN
F 1 ".33" H 4506 5665 40  0000 L CNN
F 2 "" H 4538 5600 30  0000 C CNN
F 3 "" H 4500 5750 60  0000 C CNN
	1    4500 5750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53DA8EF0
P 4800 5800
F 0 "R?" V 4880 5800 40  0000 C CNN
F 1 "44k2" V 4807 5801 40  0000 C CNN
F 2 "" V 4730 5800 30  0000 C CNN
F 3 "" H 4800 5800 30  0000 C CNN
	1    4800 5800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53DA8F0E
P 5300 5800
F 0 "R?" V 5380 5800 40  0000 C CNN
F 1 "10k" V 5307 5801 40  0000 C CNN
F 2 "" V 5230 5800 30  0000 C CNN
F 3 "" H 5300 5800 30  0000 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5550 5000 5550
Wire Wire Line
	5000 5550 5000 5400
Wire Wire Line
	5100 5400 5100 5550
Wire Wire Line
	5100 5550 5300 5550
Wire Wire Line
	4700 5400 4700 5550
Wire Wire Line
	4700 5550 4500 5550
$Comp
L CP1 C?
U 1 1 53DA909F
P 5000 5750
F 0 "C?" H 5050 5850 50  0000 L CNN
F 1 "10u" H 5050 5650 50  0000 L CNN
F 2 "" H 5000 5750 60  0000 C CNN
F 3 "" H 5000 5750 60  0000 C CNN
	1    5000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3900 5000 4200
Wire Wire Line
	5300 5550 5300 3900
Wire Wire Line
	4700 4200 4700 4100
Wire Wire Line
	4700 4100 5100 4100
Wire Wire Line
	5100 4100 5100 4200
Wire Wire Line
	5000 6050 5000 5950
Connection ~ 5000 6050
Wire Wire Line
	4500 6050 4500 5950
Connection ~ 4800 6050
$Comp
L GND #PWR?
U 1 1 53DA9208
P 8200 3550
F 0 "#PWR?" H 8200 3550 30  0001 C CNN
F 1 "GND" H 8200 3480 30  0001 C CNN
F 2 "" H 8200 3550 60  0000 C CNN
F 3 "" H 8200 3550 60  0000 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3400 8200 3550
$Comp
L VCC #PWR?
U 1 1 53DA92A8
P 8200 2500
F 0 "#PWR?" H 8200 2600 30  0001 C CNN
F 1 "VCC" H 8200 2600 30  0000 C CNN
F 2 "" H 8200 2500 60  0000 C CNN
F 3 "" H 8200 2500 60  0000 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3000 8400 3000
Wire Wire Line
	4300 1800 8400 1800
Wire Wire Line
	8400 1700 3800 1700
$Comp
L VCC #PWR?
U 1 1 53DA942B
P 4700 4100
F 0 "#PWR?" H 4700 4200 30  0001 C CNN
F 1 "VCC" H 4700 4200 30  0000 C CNN
F 2 "" H 4700 4100 60  0000 C CNN
F 3 "" H 4700 4100 60  0000 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
Connection ~ 4500 6050
$Comp
L GND #PWR?
U 1 1 53DA9481
P 4800 6200
F 0 "#PWR?" H 4800 6200 30  0001 C CNN
F 1 "GND" H 4800 6130 30  0001 C CNN
F 2 "" H 4800 6200 60  0000 C CNN
F 3 "" H 4800 6200 60  0000 C CNN
	1    4800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6050 4800 6200
Wire Wire Line
	4600 4200 4600 3900
Wire Wire Line
	4100 6050 5300 6050
$Comp
L ZENER D?
U 1 1 53DA9635
P 4250 5750
F 0 "D?" H 4250 5850 50  0000 C CNN
F 1 "4.7" H 4250 5650 40  0000 C CNN
F 2 "" H 4250 5750 60  0000 C CNN
F 3 "" H 4250 5750 60  0000 C CNN
	1    4250 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 6050 4250 5950
Wire Wire Line
	4600 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5550
$Comp
L R R?
U 1 1 53DA96E7
P 4250 5150
F 0 "R?" V 4330 5150 40  0000 C CNN
F 1 "10k" V 4257 5151 40  0000 C CNN
F 2 "" V 4180 5150 30  0000 C CNN
F 3 "" H 4250 5150 30  0000 C CNN
	1    4250 5150
	-1   0    0    1   
$EndComp
Text Label 3850 4900 0    60   ~ 0
AC
Wire Wire Line
	4100 3900 4100 6050
Connection ~ 4250 6050
Wire Wire Line
	4600 3900 4100 3900
Wire Wire Line
	5300 3900 5000 3900
Text Label 5350 4900 0    60   ~ 0
TACH
Wire Wire Line
	4250 4900 3850 4900
Wire Wire Line
	5300 4900 5550 4900
Connection ~ 5300 4900
Wire Notes Line
	3700 3800 5700 3800
Wire Notes Line
	5700 3800 5700 6400
Wire Notes Line
	5700 6400 3700 6400
Wire Notes Line
	3700 6400 3700 3800
Text Notes 3800 6300 0    60   ~ 0
Tachometer
$EndSCHEMATC
