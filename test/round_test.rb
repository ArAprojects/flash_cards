require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class  DeckTest < Minitest::Test

  def test_does_it_exist
    round = Round.new("deck")
    assert_instance_of Round, round
  end

  def test_does_it_holds_a_deck
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)
    round = Round.new(deck)

    assert_equal round.deck, deck
  end

def test_it_has_turns
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  turns = []
  assert_equal turns, round.turns
end

def test_it_has_a_current_card
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  assert_equal card_1, round.current_card
end

def test_it_can_take_a_turn
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  new_turn = round.take_turn("Juneau")
  assert_instance_of Turn, new_turn
end

def test_new_turn_has_a_class
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  new_turn = round.take_turn("Juneau")
  assert_equal Turn, new_turn.class
end

def test_new_turn_is_correct?
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  round = Round.new(deck)
  new_turn = round.take_turn("Juneau")
  assert_equal TRUE, new_turn.correct?
end


end
