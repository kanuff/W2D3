class Hanoi

  attr_reader :board

  def initialize
    @board = Array.new(3) { [] }
  end

  def populate
    5.times do |i|
      @board[0] << i + 1
    end
  end

  def take(peg)
    ring = @board[peg].shift
  end

  
end