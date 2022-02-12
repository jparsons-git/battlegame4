require_relative './player.rb'

class Game

  # attr_accessor :player1, :player2

  #def initialize(player1, player2)
    # My initial attempt here
    # @player1 = player1
    # @player2 = player2
    # Walkthrough
  #  @players = [player1, player2]
  #end  
  def initialize(player1, player2)
    @players = [player1, player2]
  end
  
  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.hp -= 10
    #@player1.attack(@player2)
    #return player
  end  
end
