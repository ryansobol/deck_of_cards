require 'spec_helper'

require 'deck'

describe Deck do
  it 'a new deck should have 52 cards' do
    deck = Deck.new
    assert_equal(52, deck.cards.size)
  end

  it 'should have an ordered deck' do
    deck = Deck.new

    card_one = deck.cards[0]
    card_twenty_eight = deck.cards[27]

    assert_equal('hearts', card_one.suit)
    assert_equal(1, card_one.number)

    assert_equal('diamonds', card_twenty_eight.suit)
    assert_equal(2, card_twenty_eight.number)
  end

  it 'should give a random order of cards after shuffling' do
    pre_shuffled_deck = Deck.new
    shuffled_deck = pre_shuffled_deck.shuffle
    refute_equal(pre_shuffled_deck, shuffled_deck)
    assert_equal(52, shuffled_deck.size)
  end
end
