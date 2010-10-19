require 'burning_clock'

use Rack::ShowExceptions
run BurningClock.new
