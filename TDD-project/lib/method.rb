
class Array
  
  def my_uniq
    result = []
    self.each do |ele|
      if !result.include?(ele)
        result << ele
      end
    end
    result
  end

  def two_sum
    result = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        if idx2 > idx1
          result << [idx1, idx2] if el1 + el2 == 0
        end
      end
    end
    result 
  end

  def my_transpose
    result = []
    i = 0

    self.length.times do 
      subresult = []
      
      self.each do |subarr|
        subresult << subarr[i]
      end
      
      i += 1
      result << subresult
    end
    result 
  end


  def stock_picker
    result = []
    lowest = self[0]
    highest = self[0]

    self.each_with_index do |price, idx|
      if self[idx] > highest
        highest = self[idx]
      elsif
        self[idx] < lowest
        lowest = self[idx]
      end
    end
    result << self.index(lowest)
    result << self.index(highest)
    result
  end
end