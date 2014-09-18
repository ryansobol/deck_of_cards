require 'spec_helper'

require 'card'

describe Card do

  let(:valid_card) { Card.new(1, 'hearts') }

  it 'should have suit and number equal to initialized values' do
    valid_card.suit.must_equal 'hearts'
    valid_card.number.must_equal 1
  end

  it 'should reject invalid numbers from 1-13' do
    err = -> { Card.new(0, 'spades') }.must_raise(RuntimeError)
    err.message.must_match(/Must be a number between 1 and 13/)
    err = -> { Card.new(14, 'hearts') }.must_raise(RuntimeError)
    err.message.must_match(/Must be a number between 1 and 13/)
  end

  it 'should reject invalid suits' do
    err = -> { Card.new(4, 'not_valid') }.must_raise(RuntimeError)
    err.message.must_match(/Suits must be legitimate card suits/)
  end

  it 'should not be case-sensitive' do
    card = Card.new(11, 'Hearts')
    card_2 = Card.new(2, 'SPaDes')
    card.suit.must_equal 'hearts'
    card_2.suit.must_equal 'spades'
  end

  it 'should give a readable string with to_s' do
    valid_card.to_s.must_equal 'Ace of hearts'
  end
end
