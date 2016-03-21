class Player

  def initialize
    @health = 30
    @slots = 0
    @deck = [0, 0, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7, 8]
  end

  def alive?
    true
  end

  def health
    @health
  end

  def damage(amount)
    @health = @health - amount
  end
  def slots
    @slots
  end
  def deck
    @deck
  end
end
