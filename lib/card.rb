class Card
  attr_accessor :number, :suit

  SUITS = %w(hearts spades diamonds clubs)

  def initialize(number, suit)
    fail 'Must be a number between 1 and 13' unless number.between?(1, 13)

    suit.downcase!
    fail 'Suits must be legitimate card suits' unless SUITS.include?(suit)

    @number = number
    @suit = suit
  end

  def to_s
    number = case @number
             when 1 then 'Ace'
             when 11 then 'Jack'
             when 12 then 'Queen'
             when 13 then 'King'
             else @number
             end

    "#{number} of #{@suit}"
  end
end
