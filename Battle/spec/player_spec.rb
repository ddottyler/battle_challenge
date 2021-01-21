require 'player'

describe Player do 

  it 'should return a players name' do
    player = Player.new("Dan")
    expect(player.name).to eq "Dan"
  end

end