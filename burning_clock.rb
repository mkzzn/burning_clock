require 'rubygems'
require 'sinatra'
require 'haml'

class BurningClock < Sinatra::Application
  set :server, %w[ unicorn thin mongrel ]

  get '/' do
    haml :index
  end
end
