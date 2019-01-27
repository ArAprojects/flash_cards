class Round
  attr_reader :deck, :turns, :card
  def initialize(deck)
  @deck = deck
  @turns = []
  @card = card
  end
  # when you call the attr reader method turns
  # its going to call the instance variable @turns
  # which will return an empty array which looks like []

def current_card
  return deck.cards[0]
end

def take_turn(guess)
  turn = Turn.new(guess, current_card)
    @turns << turn
    @deck.cards.shift
    return turn
end
end
