/*
 * Teensy Serial Application for Teensy 3.x => ESP8266
 *
 * Uses HWSerial Port 0 on Teensy 3.x to talk
 * to ESP8266.  Everything you read/write on the /dev/tty.usb*
 * port the Teensy exposes will be read/write to the ESP8266-
 * basically, it's an programmable $18 FTDI cable. :)
 *
 * Be sure to enable "Both NL and CR" in the Arduino
 * terminal if you're going to talk AT commands to the ESP8266!
 */

#include <Arduino.h>
// ESP8266 serial port speed.  Try: 115200, 9600, 57600
#define ESPSERIAL_SPEED 115200
#define LED 13

void setup() {
    Serial.begin(9600);
    Serial1.begin(ESPSERIAL_SPEED);
    pinMode(LED, OUTPUT);
}

uint32_t last = 0; 
bool led_mode;

void loop() {
    char byte;
    uint32_t now;

    if (Serial.available()) {
        byte = Serial.read();
        Serial1.write(byte); 
    } else if (Serial1.available()) {
        byte = Serial1.read();
        Serial.write(byte);
    }
    now = millis();
    if (now > (last + 1000)) {
        led_mode = !led_mode;
        digitalWrite(LED, led_mode);
        last = now;
    }

}
