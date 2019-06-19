require_relative "card"

class Deck

  attr_reader :deck

  SUITS = [
    :♤,
    :♡,
    :♢,
    :♧
  ]

  SYMBOLS = [
    :two,
    :three,
    :four,
    :five,
    :six,
    :seven,
    :eight,
    :nine,
    :ten,
    :jack,
    :queen,
    :king,
    :ace
  ]

  def initialize
    @deck = []
  end

  def ready_the_deck
    self.populate
    self.shuffle_deck
    self.full_deck?
  end

  def populate
    i = 0

    suits.each do |suit|
      symbols.each do |symbol|
        @deck << Card.new(suit, symbol, (i % 13) + 1)
        i += 1
      end
    end
  end


  def full_deck?
    full_deck = true
    hearts = Hash.new(0)
    spades = Hash.new(0)
    clubs = Hash.new(0)
    diamonds = Hash.new(0)

    @deck.each do |card|
      case card.suit
      when :♤
        spades[card.symbol] += 1
      when :♡
        hearts[card.symbol] += 1
      when :♢
        diamonds[card.symbol] += 1
      when :♧
        clubs[card.symbol] += 1
      end
    end

    full_deck = false unless hearts.length == 13 && hearts.values.all? {|v| v==1}
    full_deck = false unless spades.length == 13 && spades.values.all? {|v| v==1}
    full_deck = false unless diamonds.length == 13 && diamonds.values.all? {|v| v==1}
    full_deck = false unless clubs.length == 13 && clubs.values.all? {|v| v==1}

    full_deck
  end

  def shuffle_deck
    @deck.shuffle!
  end

  private

  def suits
    SUITS
  end

  def symbols 
    SYMBOLS 
  end

end