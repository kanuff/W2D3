require 'rspec'
require "deck"

describe Deck do
  subject(:deck) {Deck.new}

  describe ("#initialize") do
    it "should return an empty array" do
      expect(deck.deck).to eq([])
    end
  end

  describe ("#ready_the_deck") do
    after(:each) do
      deck.ready_the_deck
    end

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

  context "when preparing decks" do
    before(:each) do 
      deck.populate
    end

    describe ("#populate") do
      it "should return an array of card objects" do
        expect(deck.deck[0]).to be_an_instance_of(Card)
      end

      it "should return an array with length 52" do
        expect(deck.deck.length).to eq(52)
      end
    end

    describe ("#full_deck?") do 
      it "should return true if the deck has 52 unique cards" do
        expect(deck.full_deck?).to eq(true)
      end
    end

    describe "#shuffle_deck" do
      it "should randomize the deck order" do
        old_deck = deck.deck.dup
        deck.shuffle_deck
        expect(deck.deck).to_not eq(old_deck)
      end
    end
  end


end

