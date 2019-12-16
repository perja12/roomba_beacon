#include <avr/sleep.h>
#include <avr/power.h>
#include <stdint.h>

#define BURST_ON                        500        // Burst on duration (uSec)
#define BURST_OFF                       7500       // Burst off duration (uSec)
#define BURST_COUNT                     3          // How many IR bursts to send
#define MINUTE_MILLIS                   60000

// Avoid initiating the power variable when resetting the MCU
// Pull reset pin low with push button for toggling power.
volatile uint8_t power __attribute__ ((section (".noinit")));

int IRledPin = 0;
int ledPin = 1;
int dipPin1 = 4;
int dipPin2 = 3;
uint32_t start_time;
uint8_t timer_config;

uint32_t off_time[4] = {
  UINT32_MAX,
  60 * MINUTE_MILLIS,
  120 * MINUTE_MILLIS,
  180 * MINUTE_MILLIS
};

void setup() {
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  
  pinMode(IRledPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(dipPin1, INPUT_PULLUP);
  pinMode(dipPin2, INPUT_PULLUP);
  timer_config = (digitalRead(dipPin1) << 1) | digitalRead(dipPin2);
  pinMode(dipPin1, INPUT);
  pinMode(dipPin2, INPUT);

  // Turn off ADC to save power.
  ADCSRA &= ~ bit(ADEN);

  toggle_power();
  if (power == 0) {
    blink(2);
    go_to_sleep();
  } else {
    blink(1);
  }

  start_time = millis();
}

void loop()
{
  SendIRCode();
  // TODO: use sleep with watchdog timer, but this timer is not accurate enough.
  // Use SLEEP_IDLE to save some power and then use that to find when 132 ms have passed. 
  // Configure WD to sleep for 32 ms (32, 64, 96, 128)
  // Current AVG current is 3.3 mA when IR is blinking.
  delay(132);
  
  if (millis() - start_time > off_time[timer_config]) {
    blink(2);
    toggle_power();
    go_to_sleep();
  }
}

void blink(int blinks) {
  for (int i = 0; i < blinks; i++) {
    digitalWrite(ledPin, HIGH);
    delay(150);
    digitalWrite(ledPin, LOW);
    delay(150);
  }
}

void toggle_power() {
  power = !power;
}

void go_to_sleep() {
    power_all_disable();  // power off ADC, Timer 0 and 1, serial interface
    sleep_enable();
    sleep_cpu();
    sleep_disable();
    power_all_enable();   // power everything back on
}

void IR(long microsecs) {
  //cli();
  while (microsecs > 0) {
    digitalWrite(IRledPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(IRledPin, LOW);
    delayMicroseconds(10);
    microsecs -= 26;
  }
  //sei();
}

void SendIRCode() {
  for (int i = 0; i < BURST_COUNT; i++) {
    IR(BURST_ON);
    delayMicroseconds(BURST_OFF);
  }
}


