#siriproxy-arduino
A SiriProxy plugin to interface with an Arduino and toggle the on-board led

###Video
[Initial proof-of-concept](http://www.youtube.com/watch?v=l1QvFahhBUU)

###Commands

`Light on`

Turns the LED on

`Light off`

Turns the LED off

###SiriProxy Installation
In a terminal, $ git clone http://github.com/nicoritschel/SiriProxy.git

Follow the included README.

###siriproxy-arduino Installation

Add this into your ~/.siriproxy/config.yml file:

```yml
- name: 'Git'
  git: 'git://github.com/nicoritschel/siriproxy-arduino.git'
```

In a terminal, $ siriproxy bundle

###Dino Configuration

####Upload the Bootstrapper

 * Open [the normal Arduino IDE](http://arduino.cc/en/Main/Software)
 * Download the bootstrapper [src/du.ino](https://raw.github.com/austinbv/dino/master/src/du.ino)
 * Open the file in the Arduino IDE
 * Plug in your Arduino via USB
 * Click the upload button (an arrow)

###Credits

A big thanks goes out to @austinbv for austinbv/dino, which I rely on heavily for communicating with an Arduino
