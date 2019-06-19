require 'rspec'
require "deck"

describe Deck do
  subject(:deck) {Deck.new}

  describe ("#initialize") do
    it "should return an empty array" do
      expect(deck.deck).to eq([])
    end
  end


  describe ("#populate") do
    it "should return an array of card objects" do
      deck.populate 
      expect(deck.deck[0]).to be_an_instance_of(Card)
    end

    it "should return an array with length 52" do
      deck.populate 
      expect(deck.deck.length).to eq(52)
    end

    # it "calls #suits 4 times" do
    #   expect(deck).to receive(:suits).exactly(4).times
    # end

    # it "calls #symbols 4 times" do
    #   expect(deck).to receive(:symbols).exactly(4).times
    # end

  end

  describe ("#full_deck?") do 
    it "should return true if the deck has 52 unique cards" do
      deck.populate
      expect(deck.full_deck?).to eq(true)
    end
  end

  describe "#shuffle_deck" do
    it "should randomize the deck order" do
      deck.populate
      old_deck = deck.deck.dup
      deck.shuffle_deck
      expect(deck.deck).to_not eq(old_deck)
    end
  end

  describe ("#ready_the_deck") do
    it "should call #populate" do
      expect(deck).to receive(:populate)
    end

    it "should call #full_deck?" do
      expect(deck).to receive(:full_deck?)
    end      

    it "should call #shuffle_deck" do
      expect(deck).to receive(:shuffle_deck)
    end
  end


end

