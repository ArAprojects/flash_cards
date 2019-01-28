class Round
  attr_reader :deck, :turns, :card
  def initialize(deck)
  @deck = deck
  @turns = []
  @number_correct = 0
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
def number_correct
  @turns.map do |turn|
    turn.correct?
    @number_correct += 1
  end
    return @number_correct
end

def number_correct_by_category(category)
  cat = []
  @turns.each do |turn|
    # |turn| is a single instance of the turns collect 
    #require "pry" ;binding.pry
    if turn.card.category == category
      cat << turn
    end

end
return cat.count
end
end
