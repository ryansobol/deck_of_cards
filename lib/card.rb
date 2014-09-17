class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    suit.downcase!
    if number.between?(1,13) && $SUITS.include?(suit)
      @number = number
      @suit = suit
    else
      raise InvalidCardError, 'Cards must have a number between 1 and 13,
        and suits must be legitimate card suits'
    end
  end

  def to_s

    case @number
    when 1
      @number = 'Ace'
    when 11
      @number = 'Jack'
    when 12
      @number = 'Queen'
    when 13
      @number = 'King'
    else
      @number
    end

    "#{@number} of #{@suit}"

  end
end

class InvalidCardError < StandardError
end
