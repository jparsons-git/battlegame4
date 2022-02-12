require_relative '../lib/player'
  
describe Game do
  player1 = Player.new('Lucas')
  player2 = Player.new('Jane') 
  subject(:game) { described_class.new(player1, player2) }

  describe '#instantiation of game' do
    it 'make sure that Game accepts two players on set up' do
      # player1 = Player.new('Lucas')
      # player2 = Player.new('Jane') 
      game = Game.new(player1,player2)
      expect {game.attack(player2)}.to change{player2.hp}.by(-10)
    end
  end
 
  describe '#attack' do
    it 'player1 attacks and damages the player2' do
      player2 = Player.new('Jane') 
      expect {game.attack(player2)}.to change{player2.hp}.by(-10)
    end
  end
  
end
