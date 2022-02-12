require_relative './player.rb'

class Game

  
  attr_reader :current_player

  #def initialize(player1, player2)
    # My initial attempt here
    # @player1 = player1
    # @player2 = player2
    # Walkthrough
  #  @players = [player1, player2]
  #end  
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @opponent_player = player2
  end
  
  def player1
    @players.first
  end

  def player2
    @players.last
  end
  
  def current_player
    @current_player
  end

  def opponent_player
    @opponent_player
  end

  def switch_turns
    current = current_player
    @current_player = opponent_player
    @opponent_player = current
    #if @current_player == player1
    #  @current_player == player2
    #else
    #  @current_player == player1
    #end    
    # return @current_player == @players.first ? @players.second : @players.first
  end  

  def attack(player)
    player.hp -= 10
    # switch_turns
    #@player1.attack(@player2)
    #return player
  end 

end
