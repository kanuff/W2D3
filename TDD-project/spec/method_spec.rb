require "rspec"
require "method"

# pass in an array
# output should not include dupes
# test whether result array is a different object ID from original array

describe "#uniq" do

  it "removes duplicates" do
    expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
  end

  it "returns a new array" do
    arr = [1,2,3]
    expect(arr.my_uniq).to_not be(arr)
  end
end

describe "#two_sum" do
  it "returns indices of paired elements that sum to zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "returns indices in the order in which they appear in original array" do
    expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[3, 2], [4, 0]])
  end
end

describe "#my_transpose" do 
  it "should convert between row and column orientation" do
    expect([
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ].my_transpose).to eq(
        [[0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]]
      )
  end

  it "should work on any square array" do
    expect([
        [0, 1, 2, 3],
        [4, 5, 6, 7],
        [8, 9, 10, 11],
        [12, 13, 14, 15]
      ].my_transpose).to eq(
        [[0, 4, 8, 12],
        [1, 5, 9, 13],
        [2, 6, 10, 14],
        [3, 7, 11, 15]]
      )
  end

  describe "#stock_picker" do 
    
    # it "returns an array" do

    # end
  
    it "returns an array of length 2" do
      expect([0.01, 0.02, 1.00, 0.05, 3.00].stock_picker).to eq([0, 4])
    end

    it "returns a result where the day number at index 1 is greater than the day number at index 0" do
      result = [0.01, 0.02, 1.00, 0.05, 3.00].stock_picker
      day_1, day_2 = result
      expect(day_1).to be < day_2
    end


  end

end

