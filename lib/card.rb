class Card
  attr_accessor :number, :suit

  def initialize(number, suit)
    suit.downcase!
    if number.between?(1, 13) && $SUITS.include?(suit)
      @number = number
      @suit = suit
    else
      fail InvalidCardError, 'Cards must have a number between 1 and 13,
        and suits must be legitimate card suits'
    end
  end

  def to_s
    @number = case @number
      when 1 then 'Ace'
      when 11 then 'Jack'
      when 12 then 'Queen'
      when 13 then 'King'
      else @number
      end

    "#{@number} of #{@suit}"
  end
end

class InvalidCardError < StandardError
end
