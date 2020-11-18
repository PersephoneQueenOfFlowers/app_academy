require 'prime'

# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def get_common_factors(arg_one,arg_two)
  max_factor_one, max_factor_two = arg_one / 2, arg_two / 2
  arg_one_factors = (2..max_factor_one).filter{|num| arg_one % num === 0 }
  arg_two_factors = (2..max_factor_two).filter{|num| arg_two % num === 0 }

  return arg_one_factors + arg_two_factors

end


def coprime?(arg1,arg2)

  return true if Prime.prime?(arg1) && Prime.prime?(arg2) && arg1 != arg2
  
  common_arr = []
  common_arr = get_common_factors(arg1,arg2)

  common_arr.each_with_index do |ele1,idx1|  
    common_arr.each_with_index do |ele2,idx2|
        return false if idx2 > idx1 && ele2 === ele1
    end
  end

  true

end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
