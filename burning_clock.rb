require 'sinatra'
require 'haml'

require File.dirname(__FILE__) + "/burning_clock.rb"

class BurningClock < Sinatra::Application
  set :server, %w[ unicorn thin mongrel ]

  get '/' do
    @days = days_until_the_burn
    haml :index
  end

  get '/main.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass :main
  end

  private
  def days_until_the_burn
    seconds_until_the_burn/60/60/24
  end

  def seconds_until_the_burn
    (burn_day - Time.now).to_i
  end

  def burn_day
    Time.gm(2012,9,2)
  end
end
