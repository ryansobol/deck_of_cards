require 'spec_helper'

require 'card'

describe Card do

  let(:valid_card) { Card.new(1, 'hearts') }

  it 'should have suit and number equal to initialized values' do
    assert_equal('hearts', valid_card.suit)
    assert_equal(1, valid_card.number)
  end

  it 'should reject invalid numbers from 1-13' do
    assert_raises(InvalidCardError) do
      Card.new(0, 'spades')
    end
    assert_raises(InvalidCardError) do
      Card.new(14, 'hearts')
    end
  end

  it 'should reject invalid suits' do
    assert_raises(InvalidCardError) do
      Card.new(4, 'not_valid')
    end
  end

  it 'should not be case-sensitive' do
    card = Card.new(11, 'Hearts')
    card_2 = Card.new(2, 'SPaDes')
    assert_equal('hearts', card.suit)
    assert_equal('spades', card_2.suit)
  end

  it 'should give a readable string with to_s' do
    assert_equal('Ace of hearts', valid_card.to_s)
  end
end
