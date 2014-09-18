require 'spec_helper'

require 'deck'

describe Deck do

  let(:unshuffled_deck) { Deck.new }
  let(:shuffled_deck) { Deck.new(true) }

  it 'a new deck should have 52 cards' do
    unshuffled_deck.size.must_equal 52
  end

  it 'should have an ordered deck' do
    card_one = unshuffled_deck.cards[0]
    card_twenty_eight = unshuffled_deck.cards[27]

    card_one.suit.must_equal 'hearts'
    card_one.number.must_equal 1

    card_twenty_eight.suit.must_equal 'diamonds'
    card_twenty_eight.number.must_equal 2
  end

  it 'should give a random order of cards after shuffling' do
    shuffled_deck.to_s.wont_equal unshuffled_deck.to_s
    shuffled_deck.size.must_equal 52
  end
end
