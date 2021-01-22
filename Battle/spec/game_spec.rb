require './lib/game'

describe Game do
  subject(:game) { Game.new }
  let(:p1) { double :player_with_balls_in_hand }
  let(:p2) { double :player_with_balls_in_hand }

  describe '#attack' do
    it 'damages the player' do
      expect(p2).to receive(:reduce_hp)
      game.attack(p2)
    end
  end
end
