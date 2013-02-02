# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-arduino"
  s.version     = "0.0.2" 
  s.authors     = ["nicoritschel"]
  s.email       = ["ritschel@gmail.com"]
  s.homepage    = "http://nicoritschel.com"
  s.summary     = %q{An Arduino plugin}
  s.description = %q{This plugin provides an interface to an Aruduino through the gem 'dino', by @austinbv. Consider this a base for other Ardino projects. I provided an interface to control the onboard led (on pin 13).}

  #s.rubyforge_project = ""

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "dino"
end
