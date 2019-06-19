require "rspec"
require "card"


describe Card do
  subject(:card) { Card.new(:♥, :two, 2) }
  describe "#intialize" do
    it "sets a suit" do
      expect(card.suit).to eq(:♥)
    end
    it "sets a symbol" do 
      expect(card.symbol).to eq(:two)
    end
    it "sets a point value" do
      expect(card.value).to eq(2)
    end
  end



end