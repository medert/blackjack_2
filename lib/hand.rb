require 'spec_helper'
require 'deck'
require 'card'

class Hand

  attr_accessor :arr_cards

  def initialize(cards)
    @arr_cards = cards
    @score = 0
  end

  def add_card(cards)
    @arr_cards << cards
  end

  def cal_score
    num_aces = 0
    @arr_cards.each do |card|
      # binding.pry
      if card.rank.to_i != 0
        @score += card.rank.to_i
      elsif card.face?
        @score += 10
      elsif card.ace?
        num_aces += 1
        if score <= 10 && num_aces == 1
          @score += 11
        else
          @score += 1
        end
      else
      end
    end
    return @score
  end
end
