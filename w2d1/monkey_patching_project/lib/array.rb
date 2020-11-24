# Monkey-Patch Ruby's existing Array class to add your own custom methods

class Array
  def span 
    return nil if self.length == 0
    return 0 if self.length == 1
    sorted = self.sort
    return sorted[-1] - sorted[0]
  end

  def average 
    return nil if self.length == 0
    sum = self.inject{|acc,ele| acc + ele } 
    (sum.to_f / self.length)

  end

  def median
    return nil if self.length == 0 
    sorted = self.sort
    if self.length % 2 != 0 
      return sorted[ self.length / 2 ]
    else
      greater = sorted[self.length / 2] 
      lesser = sorted[(self.length / 2) - 1]
      return [greater,lesser].average
    end
  end

  def counts 
    counts_hash = Hash.new(0)
    self.each{|ele| counts_hash[ele] += 1}
    counts_hash
  end

  def my_count val 
    hash = Hash.new(0)
    self.each{|ele| hash[ele] += 1 }
    hash[val]
  end

  def my_index val 
    first_index = 0 
    i = 0 
    while i < self.length  
      if self[i] == val 
        return i 
      end
      i += 1
    end
    return nil
  end

  def my_uniq 
    uniques = []
    self.each{|ele| uniques << ele unless uniques.include?(ele)}
    uniques
  end

  def my_transpose 
    new_two_d = []
    (0...self[0].length).each do |i1|
      temp_arr = []
      (0...self[0].length).each do |i2|
        temp_num = self[i2][i1]
        temp_arr << temp_num 
      end
      new_two_d << temp_arr
    end 
    new_two_d 
  end
end


