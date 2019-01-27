class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @card = card
    @guess = guess
  end

  def correct?
  @guess == card.answer
  end

  def feedback
    if correct?
      #correct is a method we created earlier
      return "Correct!"
    else
      return "Incorrect!"
    end
  end
end
