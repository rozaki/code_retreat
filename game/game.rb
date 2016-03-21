class Game
  attr_accessor :current_player

  def players
    ["Etienne", "Eleftheria"]
  end

  def start
    self.current_player = players[0]
  end

  def next_turn
    if self.current_player == players[0]
      self.current_player = players[1]
    else
      self.current_player = players[0]
    end
  end
end
