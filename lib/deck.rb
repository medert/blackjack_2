require 'spec_helper'
require 'hand'

class Deck

  RANKS = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']
  SUITS = ['♦', '♣', '♠', '♥']

  attr_reader :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    deck_of_cards = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        deck_of_cards << Card.new(rank, suit)
      end
    end
    deck_of_cards.shuffle!
  end

  def deal(num)
    @cards.pop(num)
  end

end
