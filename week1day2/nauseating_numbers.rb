def strange_sums(num_arr)
  count = 0
  num_arr.each_with_index do |n1,idx1|
    num_arr.each_with_index do |n2,idx2|
      if idx2 > idx1
        n1 + n2 == 0 ? ( count += 1 ) : ()
      end
    end
  end
  count
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

def pair_product(numbers, product)
  numbers.each_with_index do |n1,idx1|
    numbers.each_with_index do |n2,idx2|
      if idx2 > idx1
        n1 * n2 == product ? ( return true ) : ()
      end
    end
  end
  false
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(str, hash  )
  repeated = ""
  str.each_char do |char|
    if hash.has_key?(char)
      repeated_times = hash[char]
      repeated_times.times{ |i| repeated << char  }
    else
      repeated << char
    end
    
  end
  repeated
end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square(num)
  factors = (1..num).filter{|n| num % n == 0 }
  factors.any?{|factor| factor * factor == num  }

end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

def get_divisors_length(num)
    (1..num).filter{|n| num % n == 0 }.length
end

def anti_prime?(num)
  #The method should return true if the given number has more divisors than all positive numbers less than the given number.
  divisors_of_num = get_divisors_length(num) #array of divisors of the numbber
  divisors_of_smaller = []
  (1...num).each do |n|
    divisors_of_smaller << get_divisors_length(n)
  end
  divisors_of_num > divisors_of_smaller.sort[-1]
end


# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false


def matrix_addition(matrix_a, matrix_b) 
  new_matrix = []
  matrix_a.each_with_index do |arr,idx|
    inner_array = []
    arr.each_with_index do |num,idx_inner|
      inner_array << num + matrix_b[idx][idx_inner]
    end
    new_matrix << inner_array
  end
  new_matrix
end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

def get_divisors(num)
    (1..num).filter{|n| num % n == 0 }
end


def mutual_factors(*nums)
  factors_hash = Hash.new(0)
  nums.each do |num|
    factors_hash[num] = get_divisors(num)
  end

  all_factors = factors_hash.values
  mutuals = []
  alls = all_factors.flatten.sort
  p alls
  # dupes_hash = Hash.new(0)
  # alls.each do |num|
  #   dupes_hash[num] += 1
  # end

  # p dupes_hash
  # dupes_hash.each do |k,v|  
  #   p k 
  #   p v
  # end
  # mutuals << num if num == alls[idx + 1]
  # mutuals
end




 p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
 p mutual_factors(8, 4)              # [1, 2, 4]
 p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]


