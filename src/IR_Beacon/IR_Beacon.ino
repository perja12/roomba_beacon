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

const int IRledPin = 0;
const int ledPin = 1;
const int dipPin1 = 4;
const int dipPin2 = 3;

uint32_t start_time;
uint8_t timer_config;

const uint32_t on_duration_ms[4] = {
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

    // Turn off ADC to save power.
    ADCSRA &= ~ bit(ADEN);
    power_adc_disable();

    toggle_power();
    if (power == 0) {
        blink(2);
        go_to_sleep();
    } else {
        blink(1);
    }

    start_time = millis();
}

void loop() {
    send_ir_code();
    delay(132);

    // Turn everything off after the configured duration. This will
    // put the MCU in sleep mode and the reset button must be pushed
    // to turn it on again.
    if (millis() - start_time > on_duration_ms[timer_config]) {
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
    // Set the dip pins to INPUT to save power.
    pinMode(dipPin1, INPUT);
    pinMode(dipPin2, INPUT);

    // Power off ADC, Timer 0 and 1, serial interface.
    power_all_disable();
    sleep_enable();
    sleep_cpu();

    // Power everything back on.
    sleep_disable();
    power_all_enable();
}

void ir(long microsecs) {
  while (microsecs > 0) {
    digitalWrite(IRledPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(IRledPin, LOW);
    delayMicroseconds(10);
    microsecs -= 26;
  }
}

void send_ir_code() {
  for (int i = 0; i < BURST_COUNT; i++) {
    ir(BURST_ON);
    delayMicroseconds(BURST_OFF);
  }
}
