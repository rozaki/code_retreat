require './player'

describe Player do
  let (:player) {Player.new}

  it 'is alive' do
    expect(player).to be_alive
  end

  it 'has 30 Health' do
    expect(player.health).to eq 30
  end

  it 'gets a damage' do
    player.damage(1)
    expect(player.health).to eq 29
  end

  it 'starts with 0 mana slots' do
    expect(player.slots).to eq 0
  end

  it 'has a deck of 20 damage cards' do
    expect(player.deck.size).to eq 20
  end

end
