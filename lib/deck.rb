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

  def shuffle
    cards.shuffle
  end

  def to_s
    cards_string = []
    cards.each do |card|
      cards_string << card.to_s
    end
    cards_string
  end

end
