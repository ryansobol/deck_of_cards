require 'card'

class Deck
  attr_accessor :cards

  def initialize(options = {})
    @cards = []
    Card::SUITS.each do |suit|
      (1..13).each do |number|
        @cards << Card.new(number, suit)
      end
    end
    self.shuffle! if options[:shuffle]
  end

  def shuffle!
    @cards.shuffle!
    self
  end

  def to_s
    cards_string = []
    @cards.each do |card|
      cards_string << "#{card}"
    end
    cards_string.join(', ')
  end

  def size
    @cards.size
  end
end
