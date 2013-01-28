require 'cora'
require 'siri_objects'
require 'pp'
require 'dino'

#######
# This is a "hello world" style plugin. It simply intercepts the phrase "test siri proxy" and responds
# with a message about the proxy being up and running (along with a couple other core features). This
# is good base code for other plugins.
#
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::Example < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
    board = Dino::Board.new(Dino::TxRx.new)
    @led = Dino::Components::Led.new(pin:13, board: board)
  end

  listen_for /light on/i do
    @led.send :on
    say "Light on"
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end

  listen_for /light off/i do
    @led.send :off
    say "Light off" 
    request_completed #always complete your request! Otherwise the phone will "spin" at the user!
  end
end
