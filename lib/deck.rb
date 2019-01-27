class Deck
  attr_reader :cards
  def initialize(cards)
  @cards = cards
  end

def count
  return cards.count
end


def cards_in_category(category)
  cards.select {|card| card.category == category}

end
end
