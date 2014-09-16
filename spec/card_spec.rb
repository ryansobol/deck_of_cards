require 'spec_helper'

require 'card'

describe Card do
  it "should have suit and number equal to initialized values" do
    card = Card.new(1, 'hearts')
    assert_equal(card.suit, 'hearts')
    assert_equal(card.number, 1)
  end

  it "should reject invalid numbers from 1-13" do
    assert_raises(InvalidCardError) do
      Card.new(0, 'spades')
    end
    assert_raises(InvalidCardError) do
      Card.new(14, 'hearts')
    end
  end

  it "should reject invalid suits" do
    assert_raises(InvalidCardError) do
      Card.new(4, 'not_valid')
    end
  end

  it "should not be case-sensitive" do
    card = Card.new(1, 'Hearts')
    card_2 = Card.new(2, "SPaDes")
    assert_equal(card.suit, 'hearts')
    assert_equal(card_2.suit, 'spades')
  end
end
