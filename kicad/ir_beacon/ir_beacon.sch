EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IR beacon for vacuum cleaner"
Date "2019-11-12"
Rev "1.0"
Comp "Per Thomas Jahr"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED:CQY99 D2
U 1 1 5DC9D49D
P 9800 2150
F 0 "D2" V 9796 2302 50  0000 L CNN
F 1 "CQY99" V 9705 2302 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 9800 2325 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 9750 2150 50  0001 C CNN
	1    9800 2150
	0    1    -1   0   
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5DC9DCA4
P 1150 3600
F 0 "BT1" H 1258 3646 50  0000 L CNN
F 1 "Battery" H 1258 3555 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2468_2xAAA" V 1150 3660 50  0001 C CNN
F 3 "~" V 1150 3660 50  0001 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5DC9F86A
P 9800 1750
F 0 "R3" H 9868 1796 50  0000 L CNN
F 1 "15" H 9868 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9840 1740 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5DCA6F12
P 7100 1650
F 0 "R1" V 7250 1600 50  0000 L CNN
F 1 "220" V 6950 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7140 1640 50  0001 C CNN
F 3 "~" H 7100 1650 50  0001 C CNN
	1    7100 1650
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW2
U 1 1 5DCA770A
P 6950 5000
F 0 "SW2" H 6950 5367 50  0000 C CNN
F 1 "Timer config" H 6950 5276 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx02_Slide_9.78x7.26mm_W7.62mm_P2.54mm" H 6950 5000 50  0001 C CNN
F 3 "~" H 6950 5000 50  0001 C CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5DCAABF6
P 1800 3600
F 0 "C1" H 1915 3646 50  0000 L CNN
F 1 "10uF" H 1915 3555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-12_Kemet-T_Pad1.50x2.35mm_HandSolder" H 1800 3600 50  0001 C CNN
F 3 "~" H 1800 3600 50  0001 C CNN
	1    1800 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5DCAB680
P 7550 1650
F 0 "D1" H 7600 1500 50  0000 R CNN
F 1 "LED" H 7600 1800 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7550 1650 50  0001 C CNN
F 3 "~" H 7550 1650 50  0001 C CNN
	1    7550 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 1900 9800 2050
$Comp
L power:+3.3V #PWR015
U 1 1 5DCBE668
P 9800 1450
F 0 "#PWR015" H 9800 1300 50  0001 C CNN
F 1 "+3.3V" H 9815 1623 50  0000 C CNN
F 2 "" H 9800 1450 50  0001 C CNN
F 3 "" H 9800 1450 50  0001 C CNN
	1    9800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1450 9800 1600
Wire Wire Line
	9800 2350 9800 2550
Text Label 9000 2750 2    50   ~ 0
IR_PIN
Text Label 5800 4600 0    50   ~ 0
IR_PIN
Text Label 6850 1650 2    50   ~ 0
LED_PIN
Text Label 5800 4700 0    50   ~ 0
LED_PIN
Wire Wire Line
	6850 1650 6950 1650
Wire Wire Line
	7250 1650 7400 1650
$Comp
L power:GND #PWR014
U 1 1 5DCE9F7E
P 7850 1650
F 0 "#PWR014" H 7850 1400 50  0001 C CNN
F 1 "GND" H 7850 1400 50  0000 C CNN
F 2 "" H 7850 1650 50  0001 C CNN
F 3 "" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1650 7850 1650
$Comp
L power:GND #PWR08
U 1 1 5DCEE507
P 2600 1800
F 0 "#PWR08" H 2600 1550 50  0001 C CNN
F 1 "GND" H 2605 1627 50  0000 C CNN
F 2 "" H 2600 1800 50  0001 C CNN
F 3 "" H 2600 1800 50  0001 C CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1750 2600 1750
Wire Wire Line
	2600 1750 2600 1800
Text Label 5800 5100 0    50   ~ 0
RESET_PIN
$Comp
L Device:C C2
U 1 1 5DCFF710
P 2250 3600
F 0 "C2" H 2365 3646 50  0000 L CNN
F 1 "1uF" H 2365 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 3450 50  0001 C CNN
F 3 "~" H 2250 3600 50  0001 C CNN
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5DD183C4
P 9800 3150
F 0 "#PWR016" H 9800 2900 50  0001 C CNN
F 1 "GND" H 9805 2977 50  0000 C CNN
F 2 "" H 9800 3150 50  0001 C CNN
F 3 "" H 9800 3150 50  0001 C CNN
	1    9800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2950 9800 3150
$Comp
L Device:R_US R2
U 1 1 5DD1A493
P 9250 2750
F 0 "R2" V 9455 2750 50  0000 C CNN
F 1 "10K" V 9364 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9290 2740 50  0001 C CNN
F 3 "~" H 9250 2750 50  0001 C CNN
	1    9250 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 2750 9400 2750
Wire Wire Line
	9100 2750 9000 2750
Wire Wire Line
	5200 5500 5200 5550
$Comp
L power:GND #PWR010
U 1 1 5DCF8B60
P 5200 5600
F 0 "#PWR010" H 5200 5350 50  0001 C CNN
F 1 "GND" H 5205 5427 50  0000 C CNN
F 2 "" H 5200 5600 50  0001 C CNN
F 3 "" H 5200 5600 50  0001 C CNN
	1    5200 5600
	1    0    0    -1  
$EndComp
$Comp
L ir_beacon-rescue:ATtiny85V-10SU-MCU_Microchip_ATtiny U1
U 1 1 5DCA85E8
P 5200 4900
F 0 "U1" H 4950 4350 50  0000 R CNN
F 1 "ATtiny85V-10SU" H 5350 5050 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 5200 4900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5200 4900 50  0001 C CNN
	1    5200 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5DD1D39C
P 4700 2650
F 0 "#PWR011" H 4700 2500 50  0001 C CNN
F 1 "+3.3V" H 4715 2823 50  0000 C CNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5DD1DA98
P 4700 3550
F 0 "#PWR012" H 4700 3300 50  0001 C CNN
F 1 "GND" H 4705 3377 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Text Label 5200 2950 0    50   ~ 0
LED_PIN
Text Label 5200 3050 0    50   ~ 0
IR_PIN
Text Label 5200 3250 0    50   ~ 0
RESET_PIN
Text Notes 6800 4450 0    50   ~ 0
Note that PB2 must not be connected to GND when programming.
Wire Wire Line
	7250 4900 7500 4900
Wire Wire Line
	7250 5000 7500 5000
$Comp
L power:GND #PWR013
U 1 1 5DD6D67A
P 7500 5150
F 0 "#PWR013" H 7500 4900 50  0001 C CNN
F 1 "GND" H 7505 4977 50  0000 C CNN
F 2 "" H 7500 5150 50  0001 C CNN
F 3 "" H 7500 5150 50  0001 C CNN
	1    7500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4900 7500 5000
Wire Wire Line
	7500 5150 7500 5000
Connection ~ 7500 5000
Text Notes 1050 2950 0    50   ~ 0
Supply: 2 1.5V AAA batteries
Text Notes 5550 5800 0    50   ~ 0
Low battery detection by using the MCU and no IO pins. Measure battery voltage by setting the ADC reference to VCC:\nhttp://ww1.microchip.com/downloads/en/Appnotes/00002447A.pdf
Text Notes 2100 850  0    50   ~ 0
Toggle power on/off by using the reset line to toggle the MCU between running and sleep: \nhttp://www.technoblogy.com/show?VOO
Text Label 5200 3150 0    50   ~ 0
SCK_PIN
Text Notes 6550 1300 0    50   ~ 0
Green LED status indicator. Number of blinks:\n1 - device has turned on\n2 - device is about to be turned off\n5 - device has low battery
Text Notes 8800 1100 0    50   ~ 0
IR LED for sending pulses to the \nIR receiver on the vaccum cleaner.
Text Notes 6800 4350 0    50   ~ 0
DIP switch to configure how many \nminutes the device should be active \nbeforing going back to sleep:\n0: always on\n1: 60\n2: 120\n3: 180
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DE0442B
P 1150 3350
F 0 "#FLG0101" H 1150 3425 50  0001 C CNN
F 1 "PWR_FLAG" V 1150 3477 50  0000 L CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "~" H 1150 3350 50  0001 C CNN
	1    1150 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DE0498B
P 1150 3850
F 0 "#FLG0102" H 1150 3925 50  0001 C CNN
F 1 "PWR_FLAG" V 1150 3977 50  0000 L CNN
F 2 "" H 1150 3850 50  0001 C CNN
F 3 "~" H 1150 3850 50  0001 C CNN
	1    1150 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 3400 1150 3350
Wire Wire Line
	1150 3250 1800 3250
Wire Wire Line
	2500 3250 2500 3150
Wire Wire Line
	1150 3800 1150 3850
Wire Wire Line
	1150 3900 1800 3900
Wire Wire Line
	2500 3900 2500 4000
Connection ~ 1150 3350
Wire Wire Line
	1150 3350 1150 3250
Connection ~ 1150 3850
Wire Wire Line
	1150 3850 1150 3900
$Comp
L power:+3.3V #PWR01
U 1 1 5DE24664
P 2500 3150
F 0 "#PWR01" H 2500 3000 50  0001 C CNN
F 1 "+3.3V" H 2515 3323 50  0000 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DE24C43
P 2500 4000
F 0 "#PWR02" H 2500 3750 50  0001 C CNN
F 1 "GND" H 2505 3827 50  0000 C CNN
F 2 "" H 2500 4000 50  0001 C CNN
F 3 "" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3450 1800 3250
Connection ~ 1800 3250
Wire Wire Line
	1800 3250 2250 3250
Wire Wire Line
	2250 3450 2250 3250
Connection ~ 2250 3250
Wire Wire Line
	2250 3250 2500 3250
Wire Wire Line
	1800 3750 1800 3900
Connection ~ 1800 3900
Wire Wire Line
	1800 3900 2250 3900
Wire Wire Line
	2250 3750 2250 3900
Connection ~ 2250 3900
Wire Wire Line
	2250 3900 2500 3900
$Comp
L power:+3.3V #PWR0101
U 1 1 5DE28B2F
P 5200 4150
F 0 "#PWR0101" H 5200 4000 50  0001 C CNN
F 1 "+3.3V" H 5215 4323 50  0000 C CNN
F 2 "" H 5200 4150 50  0001 C CNN
F 3 "" H 5200 4150 50  0001 C CNN
	1    5200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4300 5200 4250
Text Label 5800 4800 0    50   ~ 0
SCK_PIN
Text Notes 4700 2450 0    50   ~ 0
ISP (In System Programming) header
$Comp
L ir_beacon-rescue:AVR-ISP-6-Connector J1
U 1 1 5DE603CF
P 4800 3150
F 0 "J1" H 4521 3246 50  0000 R CNN
F 1 "AVR-ISP-6" H 4521 3155 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 4550 3200 50  0001 C CNN
F 3 " ~" H 3525 2600 50  0001 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4900 6650 4900
Wire Wire Line
	5800 5000 6650 5000
$Comp
L Device:C_Small C3
U 1 1 5DE78FC9
P 4250 4900
F 0 "C3" H 4342 4946 50  0000 L CNN
F 1 "0.1uF" H 4342 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4250 4900 50  0001 C CNN
F 3 "~" H 4250 4900 50  0001 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4250 4250 4250
Wire Wire Line
	4250 4250 4250 4800
Connection ~ 5200 4250
Wire Wire Line
	5200 4250 5200 4150
Wire Wire Line
	4250 5000 4250 5550
Wire Wire Line
	4250 5550 5200 5550
Connection ~ 5200 5550
Wire Wire Line
	5200 5550 5200 5600
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 5DEA495B
P 9700 2750
F 0 "Q1" H 9891 2796 50  0000 L CNN
F 1 "MMBT3904" H 9891 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9900 2675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9700 2750 50  0001 L CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1750 3550 1750
Connection ~ 3300 1750
Wire Wire Line
	3300 1700 3300 1750
Wire Wire Line
	3300 1300 3300 1400
$Comp
L power:+3.3V #PWR03
U 1 1 5DEC6C10
P 3300 1300
F 0 "#PWR03" H 3300 1150 50  0001 C CNN
F 1 "+3.3V" H 3315 1473 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5DEC2B89
P 3300 1550
F 0 "R4" H 3400 1550 50  0000 L CNN
F 1 "10K" H 3100 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3340 1540 50  0001 C CNN
F 3 "~" H 3300 1550 50  0001 C CNN
	1    3300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1750 3300 1750
Text Label 3550 1750 0    50   ~ 0
RESET_PIN
$Comp
L Switch:SW_Push SW1
U 1 1 5DC9F195
P 2900 1750
F 0 "SW1" H 2900 2035 50  0000 C CNN
F 1 "On/off" H 2900 1944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1750
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5DD7C3F3
P 6600 7450
F 0 "#LOGO1" H 6600 7725 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 6600 7225 50  0001 C CNN
F 2 "" H 6600 7450 50  0001 C CNN
F 3 "~" H 6600 7450 50  0001 C CNN
	1    6600 7450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
