
class Player
    attr_accessor :name
    attr_accessor :hp
  
    def initialize(name, hp = 60)
      @name = name
      @hp = hp
    end  

    def attack(player)
      player.hp -= 10
      return player
    end  
    
end  
