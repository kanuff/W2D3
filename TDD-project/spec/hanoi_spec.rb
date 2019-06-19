require "hanoi"
require "rspec"


describe Hanoi do
  subject(:hanoi) {Hanoi.new}

  describe ("#initialize") do 
    it "initializes a 2D array" do
      expect(hanoi.board).to eq(Array.new(3) { [] })
    end
  end

  describe ("#populate") do 
    it "populated the first subarray with 5 'rings'" do
      hanoi.populate
      expect(hanoi.board).to eq([ [1, 2, 3, 4, 5], [], [] ])
    end
  end

  describe ("#take(peg)") do
    it "return the first value in an array" do
      hanoi.populate
      expect(hanoi.take(0)).to eq(1)
    end

    it "mutate the array it took from" do
      hanoi.populate
      hanoi.take(0)
      expect(hanoi.board).to eq([ [2, 3, 4, 5], [], [] ])
    end
  end

  # should hold a 2D array, each with 3 subarrays



end
