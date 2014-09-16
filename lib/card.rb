class Card
  attr_accessor :number, :suit

  @@suits = ['hearts', 'spades', 'diamonds', 'clubs']

  def initialize(number, suit)
    suit.downcase!
    if number.between?(1,13) && @@suits.include?(suit)
      @number = number
      @suit = suit
    else
      raise InvalidCardError, "Cards must have a number between 1 and 13,
        and suits must be legitimate card suits"
    end
  end

  def to_s
    "#{@number} of #{@suit}"

  end
end

class InvalidCardError < StandardError
end
