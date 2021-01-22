require './lib/game'

describe Game do
  subject(:game) { Game.new(p1, p2) }
  let(:p1) { double :player }
  let(:p2) { double :player }
  
  it 'should accept two player instances on initialize' do 
    expect(subject.player_1).to eq(p1)
  end

  it 'should accept two player instances on initialize' do 
    expect(subject.player_2).to eq(p2)
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(p2).to receive(:reduce_hp)
      game.attack(p2)
    end
  end

end
