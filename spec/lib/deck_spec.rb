require 'spec_helper'

RSpec.describe Deck do
  let(:deck) {Deck.new}
  describe '.new' do
    it 'creates a deck' do
      expect(deck.cards.size).to eq(52)
    end
  end

  describe '#build_the_deck' do
    it 'creates a deck_of_cards' do
      expect(deck.build_deck.size).to eq(52)
    end
  end

  describe '#deal' do
    it 'deals the card from the deck' do
      expect(deck.deal(1).size).to eq(1)
    end
  end
end
