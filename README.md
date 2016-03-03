# GoProControl

## About

I wanted an easy way to syncronize my GoPro videos with the data generated from
my data logger.  In the past, I've done this manually with
[DashWare](http://www.dashware.net), but it is a tedious manual process to get
them syncronized.  There had to be a better way!

I realized that many GoPro's (GoPro3 Silver/Black, GoPro4, etc) have built in
WiFi and we all know about the iPhone and Android apps.  So clearly there was a
way to controll them via WiFi.

GoProControl is a simple box you can plug into your car or motorcycle and
connect to your datalogger's digital output or input sensor.  I use the
inexpensive [ESP8266](http://www.esp8266.com/) to control the a GoPro.  In the
future, I hope to be able to control multiple GoPro's like the [GoPro
Remote](http://shop.gopro.com/accessories/smart-remote/ARMTE-002.html) can.

## How it works

GoProControl has 4 pins:

 1. +5-12V
 2. GND
 3. Digital Input 
 4. Digital Ouput
 
When GoProControl is turned on, it will send a signal to the GoPro to also turn
on- which may take a few seconds.  When the Digital Input is connected to
ground (GND) it will tell the GoPro to start recording. 

When the Digital Input is disconnected from ground (floating or +3.3-12V) it
will tell the GoPro to stop recording.  You should configure your GoPro to
auto-off after 60seconds to save battery.

Note, when the Digital Input is connected to ground, the Digital Output will be
driven to 3.3V.  This is so if your data logger does not have an output channel
you can control, you can use a simple toggle switch to both turn on the GoPro
and mark the time when recording started in your data logger using an input
channel on your data logger.

**Note:** If you have the option of powering this by 5 or 12V, use 5V.  If
using your vehicle's battery, be sure it is switched with the ignition to
prevent draining your battery as this circuit uses ~330mA.

## Programming

The GoProControl board has an onboard connector for programming via a FTDI
cable.  This cable should provide 5V of power and can use either 3.3V or 
5V for signalling.

Configure your GoPro WiFi for "App Mode" and define a SSID and WiFi Password.

Before programming your GoProController, you first need to edit 
**src/goprocontrol/goprocontrol.ino** and edit the SSID and WIFI_PASSWORD
to match your GoPro's settings.

In order to program your GoProController, you will need to start the Arduino
application and figure out what serial speed (baud) your ESP8266 communicates
at.  Older boards run at 9600, while newer boards seem to run at 115200.  

Once you have figured out the serial speed, configure Arduino for a 
"Generic ESP8266 Module" and the upload speed to the same speed.  Then, 
with the board powered up:

 1. Press and hold the PROG button
 2. Press and release the RST button
 3. Release the PROG button
 4. Uplaod the sketch via the Arduino application

## Links Links to projects or information that was critical to me creating this
project.  Thank you!

 * [GoProWiFiHack](https://github.com/KonradIT/goprowifihack)
 * [GoProController](https://github.com/joshvillbrandt/GoProController)
 * [GoProHero](https://github.com/joshvillbrandt/goprohero)
 * [GoProControllerUI](https://github.com/joshvillbrandt/GoProControllerUI)

## License

GoProControl is GPLv3

## Trademarks

GoPro, GoPro3 and GoPro4 are trademark [GoPro](http://www.gopro.com).

GoProControl is not affiliated with GoPro in any way.
