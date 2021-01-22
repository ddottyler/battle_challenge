require 'player'

describe Player do

  subject(:p1) { Player.new("P1") }
  subject(:p2) { Player.new("P2") }

  it 'should return a players name' do
    expect(p1.name).to eq "P1"
  end

  it 'should return a players hp' do
    expect(p1.hp).to eq 60
  end

  it 'attacking should reduce hitpoints' do
    expect{ p1.reduce_hp }.to change{ p1.hp }.by -10
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(p1).to receive(:reduce_hp)
  #     p2.attack(p1)
  #   end
  # end

end
