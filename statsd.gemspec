# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require File.expand_path("../lib/statsd/server", __FILE__) # for version info
Gem::Specification.new do |s|
  s.name        = "statsd"
  s.version     = Statsd::Server::Version
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Andrew Coldham', 'Ben VandenBos']
  s.email       = ['quasor@me.com']
  s.homepage    = "http://github.com/quasor/statsd"
  s.summary     = "Ruby version of statsd."
  s.description = "A network daemon for aggregating statistics (counters and timers), rolling them up, then sending them to graphite or mongo."
  
  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_runtime_dependency "eventmachine",  ">= 0.12.10"
  #s.add_dependency "mongo",         ">= 1.2.4"
  #s.add_dependency "erubis",        ">= 2.6.6"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

