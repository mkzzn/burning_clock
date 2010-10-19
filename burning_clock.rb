require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/main.css' do
  sass :main
end

protected
