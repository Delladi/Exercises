#This is the main file of the applicatioin and contain application class
require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  get '/names' do
    names = params[:names]
    return "#{names}"
  end
  
  # This allows the app code to refresh
  # without having to restart the server.
configure :development do
    register Sinatra::Reloader
  end
end

# get '/names' do
#   names = params[:names]
#   names = names.split(",")
#   names = names.sort
#   names = names.join(",")
#   return "#{names}"
# end