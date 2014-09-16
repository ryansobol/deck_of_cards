require 'spec_helper'

require 'deck'

describe Deck do
  it "a new deck should have 52 cards" do
    deck = Deck.new
    assert_equal(deck.cards.size, 52)
  end
end
