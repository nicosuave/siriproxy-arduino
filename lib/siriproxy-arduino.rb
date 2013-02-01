require 'cora'
require 'siri_objects'
require 'pp'
require 'dino'

#######
# siriproxy-arduino is boilerplate code for controlling your Arduino from Siri.
# I hope you find this as useful as I do. Home automation from your iPhone... 
######

class SiriProxy::Plugin::Arduino < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin:13, board: board)
    @rgb_led = Dino::Components::RgbLed.new(pins: {red: 12, green: 11, blue: 10}, board: board)
  end

  listen_for /light(s)? on/i do
    @led.send :on
    say "Light on"
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

  listen_for /light(s)? off/i do
    @led.send :off
    say "Light off" 
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

  listen_for /light(s)? green/i do
    @rgb_led.green
    say "Light is green"
    request_completed
  end

  listen_for /light(s)? blue/i do
    @rgb_led.blue
    say "Light is blue"
    request_completed
  end

  listen_for /light(s)? red/i do
    @rgb_led.red
    say "Light is red"
    request_completed
  end

end
