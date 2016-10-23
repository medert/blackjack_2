require 'spec_helper'

RSpec.describe Hand do
  deck = Deck.new()
  hand = Hand.new(deck.deal(1))
  # binding.pry

  describe "#.new" do
    it 'creates a hand of cards' do
      expect(hand.arr_cards.size).to eq(1)
    end
  end

  describe '#add_card' do
    it 'add anoter card to hand' do
      expect(hand.add_card.size).to eq(2)
    end
  end

  describe '#score' do
    deck = Deck.new()
    hand = Hand.new(deck.deal(1))
    it 'calculates the hand' do
      expect(hand.size).to eq(1)
    end
  end
end
