class Deck

  attr_accessor :cards

  @@suits = ['hearts', 'spades', 'diamonds', 'clubs']

  def initialize
    @cards = Array.new
    @@suits.each do |suit|
      (1..13).each do |number|
        @cards << Card.new(number, suit)
      end
    end
  end

end
