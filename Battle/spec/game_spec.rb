require './lib/game'

describe Game do
  subject(:game) { Game.new(p1, p2) }
  subject(:finished_game) { described_class.new(dead_player, p2) }
  let(:p1) { double :player, hp: 60 }
  let(:p2) { double :player, hp: 60 }
  let(:dead_player) { double :player, hp: 0 }
  
  it 'should accept two player instances on initialize' do 
    expect(game.player_1).to eq(p1)
  end

  it 'should accept two player instances on initialize' do 
    expect(game.player_2).to eq(p2)
  end

  describe '#current_turn' do 
    it 'starts as player 1' do 
      expect(game.current_turn).to eq p1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do 
      game.switch_turns 
      expect(game.current_turn).to eq p2
    end
  end

  describe '#opponent_of' do 
    it 'finds the opponent of a player' do 
      expect(game.opponent_of(p1)).to eq p2
      expect(game.opponent_of(p2)).to eq p1
    end
  end

  describe '#game_over?' do 
    it 'returns false if no-one is at 0HP' do 
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 0HP' do 
      expect(finished_game.game_over?).to be true 
    end 
  end

  describe '#loser' do 
    it 'returns a player on less than 0HP' do 
      expect(finished_game.loser).to eq dead_player
    end
  end

end 

