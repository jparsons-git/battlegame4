require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
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
    # Jane and Trushna's way
    # $player1 = params[:player1]
    # $player2 = params[:player2]
    # The walkthrough way
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    # Jane and Trushna's way
    # @player1 = $player1
    # @player2 = $player2
    # The walkthrough way
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  post '/attack' do 
    # Jane and Trushna's way
    # @player1 = $player1
    # @player2 = $player2
    # The walkthrough way
    @player1 = $player1.name
    @player2 = $player2.name
    erb :attack
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
