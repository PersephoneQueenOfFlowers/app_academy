require "byebug"

def select_even_nums (arr)
  arr.select{|n| n % 2 == 0}
end

def reject_puppies(dogs)
  return dogs.reject do |dog|
    dog["age"] <= 2
  end
end

def count_positive_subarrays(two_d_array)
  pos_nums = two_d_array.count do |sub|  
    debugger
    sum = sub.inject{|acc,ele| acc + ele }  
    sum > 0
  end
  pos_nums
end

count_positive_subarrays( [[1,2,-3],[3,-5,4],[4,-10,-8]] )

def aba_translate(str)
  # should transform the word by putting a 'b' after every vowel and adding that same vowel
  vowels = "aeiou"
  aba_str_arr = []
  str.split("").each_with_index do |c, idx|
    if vowels.include?(c)
      aba_str_arr << c + "b" + c
    else
      aba_str_arr << c
    end
  end
  aba_str_arr.join("")
end

def aba_array(arr)
  arr.map do |word|
    aba_translate(word)
  end
end