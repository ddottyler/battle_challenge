require_relative 'player'

class Game

  attr_reader :p1, :p2, :current_turn

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_turn = self.player_1
  end

  def player_1 
    @players.first
  end

  def player_2 
    @players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    players_who_are_not(player).first 
  end
  
  def game_over?
    losing_players.any?
  end

  def loser 
    losing_players.first
  end

  private
  
  attr_reader :players 

  def losing_players
    players.select { |player| player.hp <= 0 }
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end

end

