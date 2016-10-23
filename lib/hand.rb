require 'spec_helper'

class Hand

  attr_accessor :arr_cards, :cards

  def initialize(cards)
    @arr_cards = cards
  end

  def add_card
    arr_cards << cards
  end

  def score
    score = 0
    num_aces = 0
    @arr_cards.each do |card|
      # binding.pry
      if card.face? == true
        # binding.pry
        score += 10
      elsif card.ace? == true && score >= 11 && num_aces? == 1
        score += 1
        num_aces += 1
      elsif
        card.ace? == true && score <= 11
        score +=1
        num_aces +=1
      else
        score += card.rank
      end
      score
    end
  end
end
