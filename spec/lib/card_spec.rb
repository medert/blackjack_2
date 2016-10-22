require "spec_helper"

RSpec.describe Card do
  let(:card) {Card.new('A', '♣')}
  describe '.new' do
    it "creates new rank" do
      expect(card.rank).to eq('A')
    end

    it "creates new suit" do
      expect(card.suit).to eq('♣')
    end
  end

  describe '#face?' do
    it "creates a face card" do
      expect(card.face?).to eq(false)
    end
  end

  describe '#ace?' do
    it "creates a ace card" do
      expect(card.ace?).to eq(true)
    end
  end
end
