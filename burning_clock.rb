require 'sinatra'
require 'haml'

class BurningClock < Sinatra::Application
  set :server, %w[ unicorn thin mongrel ]

  get '/' do
    @days = -1
    haml :index
  end

  get '/main.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass :main
  end

  protected
  def days_until_the_burn
    (Time.gm(2011,9,5) - Time.now).to_i/60/60/24
  end
end
