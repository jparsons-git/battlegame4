require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
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
    # Here we're making the global variables of class Player
    # $player1 = Player.new(params[:player1])
    # $player2 = Player.new(params[:player2])
    # And here we're making the global variable of class Game
    # THIS
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    # OR THIS
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # Jane and Trushna's way
    # @player1 = $player1
    # @player2 = $player2
    # Alter the above to pass @game in
    @game = $game
    erb :play
  end

  post '/attack' do 
    # Previous way
    #@player1 = $player1
    #@player2 = $player2
    #$game = Game.new(@player1, @player2) 
    #$game.attack(@player2)
    # code the new Game class way
    @game = $game
    @game.attack(@game.opponent_player) # player2 is always the opponent
    @game.switch_turns
    erb :attack
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
