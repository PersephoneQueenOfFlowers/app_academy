require 'byebug'

# # Write a method some? that accepts an array and a block as arguments. The method should return a boolean indicating whether or not at least one of the elements of the array returns true when given to the block. Solve this using

# # def some?(arr, &prc)
# #   arr.each{|ele| return true if prc.call(ele) == true }
# #   false
# # end

# # p some?([3, 1, 11, 5]) { |n| n.even? }                                # false
# # p some?([3, 4, 11, 5]) { |n| n.even? }                                # true
# # p some?([8, 2]) { |n| n.even? }                                       # true
# # p some?(['squash', 'corn', 'kale', 'carrot']) { |str| str[0] == 'p' } # false
# # p some?(['squash', 'corn', 'kale', 'potato']) { |str| str[0] == 'p' } # true
# # p some?(['parsnip', 'lettuce', 'pea']) { |str| str[0] == 'p' }        # true


# # Write a method exactly? that accepts an array, a number (n), and a block as arguments. The method should return a boolean indicating whether or not there are exactly n elements that return true when given to the block. Solve this using Array#each.
# # def exactly?(arr, n, &prc)
# #   true_returns = []
  
# #   arr.each do |ele|
# #     prc.call(ele) == true ? (true_returns << ele ) : ()
# #   end

# #   true_returns.length == n 
# # end

# # p exactly?(['A', 'b', 'C'], 2) { |el| el == el.upcase }         # true
# # p exactly?(['A', 'B', 'C'], 2) { |el| el == el.upcase }         # false
# # p exactly?(['A', 'B', 'C'], 3) { |el| el == el.upcase }         # true
# # p exactly?(['cat', 'DOG', 'bird'], 1) { |el| el == el.upcase }  # true
# # p exactly?(['cat', 'DOG', 'bird'], 0) { |el| el == el.upcase }  # false
# # p exactly?(['cat', 'dog', 'bird'], 0) { |el| el == el.upcase }  # true
# # p exactly?([4, 5], 3) { |n| n > 0 }                             # false
# # p exactly?([4, 5, 2], 3) { |n| n > 0 }                          # true
# # p exactly?([42, -9, 7, -3, -6], 2) { |n| n > 0 }                # true

# # Write a method filter_out that accepts an array and a block as arguments. The method should return a new array where elements of the original array are removed if they return true when given to the block. Solve this using Array#each.

# # def filter_out(arr, &prc)
# #   true_returns = []
# #   arr.each_with_index do |ele, idx|
# #     prc.call(ele) == true ? () : (true_returns << ele)
# #   end
# #   true_returns
# # end

# # p filter_out([10, 6, 3, 2, 5 ]) { |x| x.odd? }      # [10, 6, 2]
# # p filter_out([1, 7, 3, 5 ]) { |x| x.odd? }          # []
# # p filter_out([10, 6, 3, 2, 5 ]) { |x| x.even? }     # [3, 5]
# # p filter_out([1, 7, 3, 5 ]) { |x| x.even? }         # [1, 7, 3, 5]


# # at_least?
# # Write a method at_least? that accepts an array, a number (n), and a block as an arguments. The method should return a boolean indicating whether or not at least n elements of the array return true when given to the block. Solve this using Array#each.

# # def at_least?(arr, n, &prc)
# #   counter = 0
# #   arr.each { |ele| counter += 1 if prc.call(ele)}
# #   counter >= n
# # end

# # p at_least?(['sad', 'quick', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# # # false
# # p at_least?(['sad', 'quickly', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# # # false
# # p at_least?(['sad', 'quickly', 'timidly', 'final'], 2) { |s| s.end_with?('ly') }
# # # true
# # p at_least?(['sad', 'quickly', 'timidly', 'finally'], 2) { |s| s.end_with?('
# # ly') }
# # # true
# # p at_least?(['sad', 'quickly', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# # # true
# # p at_least?(['sad', 'quick', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# # # false
# # p at_least?([false, false, false], 3) { |bool| bool }
# # # false
# # p at_least?([false, true, true], 3) { |bool| bool }
# # # false
# # p at_least?([true, true, true], 3) { |bool| bool }
# # # true
# # p at_least?([true, true, true, true], 3) { |bool| bool }
# # # true


# # Write a method every? that accepts an array and a block as arguments. The method should return a boolean indicating whether or not all elements of the array return true when given to the block. Solve this using Array#each.

# # def every?(arr, &prc)
# #   arr.all?{|ele| prc.call(ele)  }
# # end


# # p every?([3, 1, 11, 5]) { |n| n.even? }                                 # false
# # p every?([2, 4, 4, 8]) { |n| n.even? }                                  # true
# # p every?([8, 2]) { |n| n.even? }                                        # true
# # p every?(['squash', 'corn', 'kale', 'carrot']) { |str| str[0] == 'p' }  # false
# # p every?(['squash', 'pea', 'kale', 'potato']) { |str| str[0] == 'p' }   # false
# # p every?(['parsnip', 'potato', 'pea']) { |str| str[0] == 'p' }         

# # Write a method at_most? that accepts an array, a number (n), and a block as arguments. The method should return a boolean indicating whether no more than n elements of the array return true when given to the block. Solve this using Array#each.

# # def at_most?(arr,num,&prc)
# #   counter = 0

# #   arr.each{|ele| prc.call(ele) ? (counter += 1) : () }

# #   counter <= num
# # end

# # p at_most?([-4, 100, -3], 1) { |el| el > 0 }                         # true
# # p at_most?([-4, -100, -3], 1) { |el| el > 0 }                        # true
# # p at_most?([4, 100, -3], 1) { |el| el > 0 }                          # false
# # p at_most?([4, 100, 3], 1) { |el| el > 0 }                           # false
# # p at_most?(['r', 'q', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
# # p at_most?(['r', 'i', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
# # p at_most?(['r', 'i', 'e', 'o'], 2) { |el| 'aeiou'.include?(el) } 

# # Write a method first_index that accepts an array and a block as arguments. The method should return the index of the first element of the array that returns true when giben to the block. If no element of returns true, then the method should return nil. Solve this using Array#each.

# # def first_index(arr, &prc)

# #   arr.each_with_index{|ele,idx| prc.call(ele) ? (return idx) : ()  }
# #   nil
# # end


# # p first_index(['bit', 'cat', 'byte', 'below']) { |el| el.length > 3 }           # 2
# # p first_index(['bitten', 'bit', 'cat', 'byte', 'below']) { |el| el.length > 3 } # 0
# # p first_index(['bitten', 'bit', 'cat', 'byte', 'below']) { |el| el.length > 6 } # nil
# # p first_index(['bit', 'cat', 'byte', 'below']) { |el| el[0] == 'b' }            # 0
# # p first_index(['bit', 'cat', 'byte', 'below']) { |el| el.include?('a') }        # 1
# # p first_index(['bit', 'cat', 'byte', 'below']) { |el| el[0] == 't' }



# # def xnor_select(arr, prc1, prc2)
# #   xnors = []
# #   arr.each do |ele|
# #     if (prc1.call(ele) && prc2.call(ele)) || (!prc1.call(ele) && !prc2.call(ele))
# #       xnors << ele
# #     end
# #   end
# #   xnors
# # end

# # is_even = Proc.new { |n| n % 2 == 0 }
# # is_odd = Proc.new { |n| n % 2 != 0 }
# # is_positive = Proc.new { |n| n > 0 }
# # p xnor_select([8, 3, -4, -5], is_even, is_positive)         # [8, -5]
# # p xnor_select([-7, -13, 12, 5, -10], is_even, is_positive)  # [-7, -13, 12]
# # p xnor_select([-7, -13, 12, 5, -10], is_odd, is_positive)   # [5, -10]

# # Rewrite your previous filter_out method to mutate the input array instead of returning a new array. That is, write a method filter_out! that accepts an array and a block as args. The method should remove elements of the input array that return true when given to the block. Solve this without using Array.reject!

# # def filter_out!(arr, &prc)
# #   reduced = true
# #   i = 0
# #     while reduced do 
# #       reduced = false
# #       arr.each do |ele|
# #         if prc.call(ele) == true
# #           arr.delete(ele)
# #           reduced = true
# #         end
# #       end
# #       i += 1
# #     end
# #   arr
# # end

# # arr_1 = [10, 6, 3, 2, 5 ]
# # filter_out!(arr_1) { |x| x.odd? }
# # p arr_1     # [10, 6, 2]

# # arr_2 = [1, 7, 3, 5 ]
# # filter_out!(arr_2) { |x| x.odd? }
# # p arr_2     # []

# # arr_3 = [10, 6, 3, 2, 5 ]
# # filter_out!(arr_3) { |x| x.even? }
# # p arr_3     # [3, 5]

# # arr_4 = [1, 7, 3, 5 ]
# # filter_out!([1, 7, 3, 5 ]) { |x| x.even? }
# # p arr_4 # [1, 7, 3, 5]

# # Write a method multi_map that accepts an array, an optional number (n), and a block as arguments. The method should return a new array where each element of the original array is repeatedly run through the block n times. If the number argument is not passed in, then the the elements should be run through the block once.

# # def multi_map(arr, n=nil, &prc  )
# #   n == nil if n = 1 
# #   repeated_runs = []
# #   arr.each do |ele|
# #     n.times {|num| ele = prc.call(ele) } 
# #     repeated_runs << ele  
# #   end
# #   repeated_runs 
# # end

# # p multi_map(['pretty', 'cool', 'huh?']) { |s| s + '!'}      # ["pretty!", "cool!", "huh?!"]
# # p multi_map(['pretty', 'cool', 'huh?'], 1) { |s| s + '!'}   # ["pretty!", "cool!", "huh?!"]
# # p multi_map(['pretty', 'cool', 'huh?'], 3) { |s| s + '!'}   # ["pretty!!!", "cool!!!", "huh?!!!"]
# # p multi_map([4, 3, 2, 7], 1) { |num| num * 10 }             # [40, 30, 20, 70]
# # p multi_map([4, 3, 2, 7], 2) { |num| num * 10 }             # [400, 300, 200, 700]
# # p multi_map([4, 3, 2, 7], 4) { |num| num * 10 }             # [40000, 30000, 20000, 70000]

# # Write a method proctition that accepts an array and a block as arguments. The method should return a new array where the elements that return true when given to the block come before all of the elements that return false when given to the block. This means that the new array has two partitions; the order among elements in the same partition should be the same as their relative order in the input array.

# # def proctition(arr,&prc)
# #   trues = []
# #   falses = []
# #   true_befores = []

# #   arr.each_with_index do |ele,idx|
# #     prc.call(ele) ? (trues << ele) : (falses << ele)
# #   end

# #   true_befores << trues
# #   true_befores << falses
# #   true_befores.flatten
# # end

# # p proctition([4, -5, 7, -10, -2, 1, 3]) { |el| el > 0 }
# # # [4, 7, 1, 3, -5, -10, -2]

# # p proctition([7, 8, 3, 6, 10]) { |el| el.even? }
# # # [8, 6, 10, 7, 3]

# # p proctition(['cat','boot', 'dog', 'bug', 'boat']) { |s| s[0] == 'b' }
# # # ["boot", "bug", "boat", "cat", "dog"]

# # Write a method selected_map! that accepts an array and two procs as arguments. The method should replace the elements that return true when passed into the first proc with their return values when they are passed into the second proc. This method should mutate the input array and return nil.

def selected_map!(arr, prc1, prc2 )
  arr.each_with_index do |ele,idx|
    if prc1.call(ele) == true
      arr[idx] = prc2.call(ele) 
    end
  end
  p arr
  nil
end

# is_even = Proc.new { |n| n.even? }
# is_positive = Proc.new { |n| n > 0 }
# square = Proc.new { |n| n * n }
# flip_sign = Proc.new { |n| -n }

# arr_1 = [8, 5, 10, 4]
# p selected_map!(arr_1, is_even, square)     # nil
# p arr_1                                     # [64, 5, 100, 16]

# arr_2 = [-10, 4, 7, 6, -2, -9]
# p selected_map!(arr_2, is_even, flip_sign)  # nil
# p arr_2                                     # [10, -4, 7, -6, 2, -9]

# arr_3 = [-10, 4, 7, 6, -2, -9]
# p selected_map!(arr_3, is_positive, square) # nil
# p arr_3                                     # [-10, 16, 49, 36, -2, -9]

# Write a method that accepts any value and an array of procs as an argument. The method should return the final result of feeding the value through all of the procs. For example, if the array contains three procs, then:

# the value is given to the first proc
# the result of the first proc is given to the second proc
# the result of the second proc is given to the third proc
# the result of third proc is the final result

def chain_map(val, arr)
  arr.each do |proc|
    val = proc.call(val)
  end
  val
end

add_5 = Proc.new { |n| n + 5 }
half = Proc.new { |n| n / 2.0 }
square = Proc.new { |n| n * n }

# p chain_map(25, [add_5, half])          # 15.0
# p chain_map(25, [half, add_5])          # 17.5
# p chain_map(25, [add_5, half, square])  # 225
# p chain_map(4, [square, half])          # 8
# p chain_map(4, [half, square])          # 4

# Write a method proc_suffix that accepts a sentence and a hash as arguments. The hash contains procs as keys and suffix strings as values. The method should return a new sentence where each word of the original sentence is appended with a suffix if the original word returns true when given to the corresponding proc key. If an original word returns true for multiple procs, then the suffixes should be appended in the order that they appear in the input hash.

def proc_suffix(sent, hash)
  words = sent.split(" ")
  new_sent = []
  words.each do |word|
    # debugger
    new_word = word
    hash.each do |k,v|
      if k.call(word) == true
        new_word += + v 
      else
       new_word = word
      end
    end
    new_sent << new_word
  end
  new_sent.join(" ")
end

contains_a = Proc.new { |w| w.include?('a') }
three_letters = Proc.new { |w| w.length == 3 }
four_letters = Proc.new { |w| w.length == 4 }

p proc_suffix('dog cat',
    contains_a => 'ly',
    three_letters => 'o'
)   # "dogo catlyo"

p proc_suffix('dog cat',
    three_letters => 'o',
    contains_a => 'ly'
)   # "dogo catoly"

p proc_suffix('wrong glad cat',
    contains_a => 'ly',
    three_letters => 'o',
    four_letters => 'ing'
)   # "wrong gladlying catlyo"

p proc_suffix('food glad rant dog cat',
    four_letters => 'ing',
    contains_a => 'ly',
    three_letters => 'o'
)   # "fooding gladingly rantingly dogo catlyo"