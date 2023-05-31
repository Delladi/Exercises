#This is the main file of the applicatioin and contain application class
require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  get '/hello' do
    name = params[:name]

    return "Hello #{name}"
  end

  # This allows the app code to refresh
  # without having to restart the server.
configure :development do
    register Sinatra::Reloader
  end
end