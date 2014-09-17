require 'spec_helper'

require 'deck'

describe Deck do

  let(:unshuffled_deck) { Deck.new }
  let(:shuffled_deck) { Deck.new(shuffle: true) }

  it 'a new deck should have 52 cards' do
    assert_equal(52, unshuffled_deck.size)
  end

  it 'should have an ordered deck' do
    card_one = unshuffled_deck.cards[0]
    card_twenty_eight = unshuffled_deck.cards[27]

    assert_equal('hearts', card_one.suit)
    assert_equal(1, card_one.number)

    assert_equal('diamonds', card_twenty_eight.suit)
    assert_equal(2, card_twenty_eight.number)
  end

  it 'should give a random order of cards after shuffling' do

    refute_equal(unshuffled_deck.to_s, shuffled_deck.to_s)
    assert_equal(52, shuffled_deck.size)
  end
end

