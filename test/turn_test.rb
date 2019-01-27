require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'


class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_instance_of Turn, turn
  end

  def test_it_has_a_card
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal card, turn.card
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal "Juneau", turn.guess
  end

  def test_it_is_correct?
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
  assert turn.correct?
end

  def test_it_is_incorrect?
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Fargo", card)
    refute turn.correct?
end

def test_does_it_have_correct_feedback
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Juneau", card)
  assert_equal "Correct!", turn.feedback
end

def test_does_it_have_incorrect_feedback
  card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  turn = Turn.new("Fargo", card)
  assert_equal "Incorrect!", turn.feedback

end
end
