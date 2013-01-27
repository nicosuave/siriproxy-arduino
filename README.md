#siriproxy-arduino
A SiriProxy plugin to interface with an Arduino and toggle the on-board led

##Installation
First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins, e.g:

~/SiriProxy/plugins/

Drop this into your ~/.siriproxy/config.yml file:

```yml
- name: 'Git'
  git: 'git://github.com/nicoritschel/siriproxy-arduino.git'
```

Then rebundle siriproxy and you are off!

##Commands

'Light on'

Turns the LED on

'Light off'

Turns the LED off

##Credits

A big thanks goes out to @austinbv for austinbv/dino, which I rely on heavily for communicating with an Arduino
