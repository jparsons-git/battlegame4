
require './lib/player.rb'

describe Player do
    it "returns player" do
      player = Player.new('Jane')
      expect(player).to eq player
    end 
    it "returns player" do
      player1 = Player.new('Trushna')
      expect(player1.name).to eq 'Trushna'
    end 
end  
