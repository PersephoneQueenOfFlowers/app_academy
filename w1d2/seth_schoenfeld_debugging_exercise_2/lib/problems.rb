# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require 'prime'

def largest_prime_factor(num)
  factors = (2..num).filter{|n| num % n == 0}
  prime_factors = factors.select do |factor|
    Prime.prime?(factor)
  end
  return prime_factors.sort[-1]
end

def unique_chars?(string)
  string.split("") == string.split("").uniq
end

def dupe_indices(array)
#  TODO return an hash where keys are the elements that were repeated in the array 
#  and values are the indices where that element appears
end

def ana_array(arr1,arr2)
  arr1.each do |ele|
    return false if !(arr2.include?(ele)) 
  end

  arr2.each do |ele|
    return false if !(arr1.include?(ele)) 
  end

  true
end

