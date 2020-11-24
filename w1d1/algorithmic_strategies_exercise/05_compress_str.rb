# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def formatted_repeats_from_left(arr)
    repeated_count = 0
    repeated_ele = arr[0]
    arr.each_with_index do |ele,idx|
      ele == repeated_ele ? (repeated_count += 1) : break
    end
    
    arr[0,repeated_count] = repeated_count.to_s + repeated_ele
    return arr
end

def compress_str(str)

  compressed = false
  return_array = []
  str_arr = str.split("")
  while !compressed do 
    compressed = true
    str_arr.each_with_index do |char, idx|     
      if char == str_arr[idx+1]
        str_arr = formatted_repeats_from_left(str_arr[idx..-1])
        return_array << str_arr[0]
        str_arr.shift
        compressed = false
        break
      else
        return_array << char
      end
    end
  end

  return return_array.join

end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"


