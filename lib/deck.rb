class Deck
  attr_accessor :cards

  def initialize(shuffle = false)
    @cards = []
    Card::SUITS.each do |suit|
      (1..13).each do |number|
        @cards << Card.new(number, suit)
      end
    end
    self.shuffle! if shuffle
  end

  def shuffle!
    @cards.shuffle!
    self
  end

  def to_s
    @cards.map(&:to_s).join(', ')
  end

  def size
    @cards.size
  end
end
