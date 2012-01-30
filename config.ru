require 'burning_clock'

require File.dirname(__FILE__) + "/burning_clock.rb"

use Rack::ShowExceptions
run BurningClock.new
