require 'spec_helper'

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face?
    %w(K Q J).include?(rank)
  end

  def ace?
    %w(A).include?(rank)
  end
end
