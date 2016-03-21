require './game'

describe Game do

  let(:game) { Game.new }

  it 'exists' do
    expect(game).not_to be_nil
  end

  it 'has 2 players' do
    expect(game.players.count).to eq 2
  end

  it 'allows the game to be started' do
    expect(game.start).to eq "Etienne"
  end

  it 'allows the next player to play' do
  puts game
  puts  game.start
    expect(game.next_turn).to eq "Eleftheria"
  end

  describe '#current_player' do
    context 'changes when the turn changes' do
      it 'returns the other player' do
        game.start
        # game.current = Etienne
        expect(game.current_player).to eq "Etienne"
        # next turn
        expect(game.next_turn).to eq "Eleftheria"
        # game.current = "Eleftheria"
        expect(game.current_player).to eq "Eleftheria"
      end
    end
  end


end
