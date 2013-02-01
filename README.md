#siriproxy-arduino
A SiriProxy plugin to interface with an Arduino. Basic examples are provided for controlling the onboard LED, or alternatively, an RGB LED.

###Video
[Initial proof-of-concept](http://www.youtube.com/watch?v=l1QvFahhBUU)

###Commands

`Light(s) on`

Turns the LED on

`Light(s) off`

Turns the LED off

`Light(s) red`

Turns an RGB LED red

`Light(s) blue`

Turns an RGB LED blue

`Light(s) green`

Turns an RGB LED green

###SiriProxy Installation

Unfortunately, [SiriProxy](https://github.com/plamoni/SiriProxy) is poorly maintained, and will not work correctly with an iOS 6 device.

**Until SiriProxy is more regularly updated, please install SiriProxy using my fork.** 

In a terminal, $ git clone http://github.com/nicoritschel/SiriProxy.git

Follow the included README.

###siriproxy-arduino Installation

Add this into your ~/.siriproxy/config.yml file:

```yml
- name: 'Git'
  git: 'git://github.com/nicoritschel/siriproxy-arduino.git'
```

In a terminal, $ siriproxy bundle

Don't forget to upload the arduino bootstrapper to your device.

###Upload the dino Bootstrapper

 * Open [the normal Arduino IDE](http://arduino.cc/en/Main/Software)
 * Download the bootstrapper [src/du.ino](https://raw.github.com/austinbv/dino/master/src/du.ino)
 * Open the file in the Arduino IDE
 * Plug in your Arduino via USB
 * Click the upload button (an arrow)

###Credits

A big thanks goes out to @austinbv for austinbv/dino, which I rely on heavily for communicating with an Arduino
