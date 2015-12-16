/*
 * GoProControl
 *
 * Software for ESP8266 (ESP-01) to control a GoPro camera via
 * WiFi.  Tested with GoPro 3+ Silver/Black
 *
 * Make sure you've installed:
 *  - Arduino IDE v1.6.5+ (http://www.arduino.cc)
 *  - ESP8266 for Arduino (https://github.com/esp8266/Arduino) 
 */
#include <Arduino.h>
#include "goprocontrol.h"

#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>

#include <ESP8266HTTPClient.h>

#define USE_SERIAL Serial

ESP8266WiFiMulti WiFiMulti;

#define GPIO D2 // GPIO2
#define SERIAL_SPEED 115200
#define DEBUG_WIFI 1
#define SSID "GoPro-SSID" // SSID of your GoPro
#define WIFI_PASSWORD "happyclam"

enum {
    START,
    STOP,
    NO_CHANGE
} Recording;

Recording recording = NO_CHANGE;
HTTPClient http;

/*
 * Send a HTTP request up to <retries> times with a <delay_ms> delay.
 * If retries < 0, then we will retry forever.  We'll only print an error 
 * every 10 times
 */
bool
send_request(char *request_fmt, int retries = 5, int delay_ms = 100) {
    int httpCode;
    char request_str[100];
    int times = 0;

    request_str = snprintf(request_fmt, GOPRO_IP, WIFI_PASSWORD);

    while (((times < retries) && retries > 0) || (retries < 0)) {
        if ((WiFiMulti.run() == WL_CONNECTED)) {
            http.begin(request_str);
            httpCode = http.GET();
            if (httpCode == HTTP_CODE_OK) {
                http.end();
                return true;
            } else if (times % 10 == 0) {
                USE_SERIAL.printf("HTTP GET failed with: %s", http.errorToString(httpCode).c_str());
            }
        } else if (times % 10 == 0) {
            USE_SERIAL.printf("Not connected to GoPro WiFi\n")
        }
        if (retries > 0)
            times ++;
        delay(delay_ms);
    }

    http.end();
    USE_SERIAL.printf("Failed %d times to send request: %s", retries, request_fmt);
    return false;
}

void
start_stop_recording() {
    if (digitalRead(GPIO) == HIGH) {
        recording = STOP;
    } else {
        // we record when it goes low!
        recording = START;
    }
}

void 
setup() {
    pinMode(GPIO, INPUT);
    USE_SERIAL.begin(115200);
#ifdef DEBUG_WIFI
    USE_SERIAL.setDebugOutput(true);
#endif

    USE_SERIAL.println();
    USE_SERIAL.println();
    USE_SERIAL.println();

    for(uint8_t t = 4; t > 0; t--) {
        USE_SERIAL.printf("[SETUP] WAIT %d...\n", t);
        USE_SERIAL.flush();
        delay(1000);
    }

    USE_SERIAL.printf("Connecting to %s\n", SSID);
    WiFiMulti.addAP(SSID, WIFI_PASSWORD);
    USE_SERIAL.printf("Connected!\n");
    http.setReuse(true);         // Reuse HTTPClient if possible
    send_request(GOPRO_ON, -1);  // Blocks until we turn on the GoPro
    attachInterrupt(GPIO, start_stop_recording, CHANGE);
}


/*
 * Loop forever looking to see if we should start/stop recording
 */
void
loop() {
    if (recording == START) {
        USE_SERIAL.printf("Starting recording...\n");
        if (send_request(GOPRO_RECORD)) {
            recording = NO_CHANGE;
        }
    } else if (recording == STOP) {
        USE_SERIAL.printf("Stopping recording...\n");
        if (send_request(GOPRO_STOP)) {
            recording = NO_CHANGE;
        }
    }
}
