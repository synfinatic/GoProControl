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
#define SERIAL_SPEED 115200        // Set this to match your ESP8266 serial speed
#define GOPRO_DEBUG_WIFI 0         // Enable (1) or disable (0) debugging
#define SSID_NAME "ADTGoProBlack"  // SSID of your GoPro
#define WIFI_PASSWORD "falcon123"  // WiFi Password


#include <Arduino.h>

#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <ESP8266HTTPClient.h>
#include "goprocontrol.h"

#define USE_SERIAL Serial

ESP8266WiFiMulti WiFiMulti;
char request_str[45];

typedef enum {
    START,
    STOP,
    NO_CHANGE,
    NONE
} Recording;

Recording recording = NO_CHANGE;
Recording last_mode = NONE;

/*
 * Send a HTTP request up to <retries> times with a <delay_ms> delay.
 * If retries < 0, then we will retry forever.  We'll only print an error 
 * every 10 times
 */
bool
send_request(const char *request_fmt, int retries = 5, int delay_ms = 100) {
    int httpCode, status;
    unsigned int times = 0;
    HTTPClient http;

    snprintf(request_str, 44, request_fmt, WIFI_PASSWORD);
    USE_SERIAL.printf("Sending: %s\n", request_str);

    while (((times < retries) && retries > 0) || (retries < 0)) {
        USE_SERIAL.printf("Trying run()\n");
        USE_SERIAL.flush();
        status = WiFiMulti.run();
        if ((status == WL_CONNECTED)) {
            USE_SERIAL.printf("Trying begin()\n");
            USE_SERIAL.flush();
            http.begin(GOPRO_HOST, GOPRO_PORT, request_str);
            USE_SERIAL.printf("Trying GET()\n");
            USE_SERIAL.flush();
            httpCode = http.GET();
            if (httpCode == HTTP_CODE_OK) {
                http.end();
                USE_SERIAL.printf("OK\n");
                USE_SERIAL.flush();
                return true;
            } else if (times % 10 == 0) {
                USE_SERIAL.printf("[%u] HTTP GET failed with: %d\n", times, httpCode);
                USE_SERIAL.flush();
            }
        } else if (times % 10 == 0) {
            USE_SERIAL.printf("Not connected to GoPro WiFi: %d\n", status);
            USE_SERIAL.flush();
        }
        times ++;
        delay(delay_ms);
    }

    http.end();
    USE_SERIAL.printf("Failed %d times to send request: %s", retries, request_fmt);
    USE_SERIAL.flush();
    return false;
}

void 
setup() {
    int status;

    pinMode(GPIO, INPUT);

    USE_SERIAL.begin(SERIAL_SPEED);
#ifdef GOPRO_DEBUG_WIFI
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

    USE_SERIAL.printf("Connecting to %s\n", SSID_NAME);
    WiFiMulti.addAP(SSID_NAME, WIFI_PASSWORD);
    status = WiFiMulti.run();
    if (status == WL_CONNECTED) {
        USE_SERIAL.printf("Connected!\n");
    } else {
        USE_SERIAL.printf("Not connected: %d\n", status);
    }
    WiFiMulti.run();
    send_request(GOPRO_ON, -1, 1000);  // Blocks until we turn on the GoPro
}


/*
 * Loop forever looking to see if we should start/stop recording
 */
void
loop() {
    if (digitalRead(GPIO) == HIGH) {
        recording = STOP;
    } else {
        // we record when it goes low!
        recording = START;
    }

    if (recording != last_mode) {
        USE_SERIAL.printf("Changing modes %u -> %u\n", last_mode, recording);
        last_mode = recording;

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
}
