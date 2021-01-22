require_relative 'player'

class Game

  attr_reader :p1, :p2

  def initialize(p1, p2)
    @players = [p1, p2]
  end

  def player_1 
    @players.first
  end

  def player_2 
    @players.last
  end

  def attack(player)
    player.reduce_hp
  end

end
