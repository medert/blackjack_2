require 'spec_helper'
require 'deck'

class Game
  attr_accessor :player, :computer, :player_bust
  def initialize
    @deck = Deck.new
    @player = Hand.new(@deck.deal(1))
    @computer = Hand.new(@deck.deal(1))
    @player_bust = false
    @computer_bust = false
  end

  def play
  end

  def determine_winner(player.cal_score, computer.cal_score)
  end

end

game = Game.new
game.play
