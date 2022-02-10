require 'sinatra/base'
require 'sinatra/reloader'
# require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here
  get '/' do
    # 'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    p params
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
