def zip(*arrays)
    two_d = []
    length = arrays[0].length
    (0...length).each do |num|
        array = []
        arrays.each do |arr|
            array << arr[num]
        end
        two_d << array
    end
    two_d
end


def prizz_proc(arr, prc1, prc2)
    return_array = []
    arr.each do |ele|
      if prc1.call(ele) && !prc2.call(ele) ||
        prc2.call(ele) && !prc1.call(ele) 
        return_array << ele
      end
    end

    return_array
end

def zany_zip(*arrays)
  max = 0
  two_d_array = []
  arrays.each {|array|max = array.length if array.length > max }

  (0...max).each do |i|
    array = []
    arrays.each{|arr_ele| array << arr_ele[i]  }
    two_d_array << array
  end
  two_d_array
end

def maximum(arr,&prc)
  return nil if arr.length < 1
  values = []

  arr.each{|ele| values << prc.call(ele) }

  max_index = values.rindex(values.max)
  arr[max_index]
end

def my_group_by(array, &prc)
  return_hash = Hash.new(0)
  key_array = []
  array.each do |ele|
    return_hash[prc.call(ele)] = []
  end

  array.each do |ele|
    return_hash[prc.call(ele)] << ele
  end
  return_hash
end

# def max_tie_breaker(arr, prc1, &prc2)
#   return nil if arr.length < 1
#   indices_of_max = []

#   hash = Hash.new(0)

#   arr.each_with_index do |ele,idx| 
#     hash[ele] = prc2.call(ele)
#   end 
#   max = hash.values[-1]
#   if hash.values.sort != hash.values.sort.uniq
#     tie_hash = my_group_by(arr,&prc2) 
#     final_contenders = Hash.new(0)
#     tie_hash[ hash.values[-1] ].each do |ele|
#       final_contenders[ele] = prc1.call(ele)
#     end
#     if final_contenders.values.sort != final_contenders.values.sort.uniq
#       return tie_hash[ hash.values[-1] ][0]
#     else
#       return final_contenders.keys[0]
#     end
#   end
#   hash.values.sort[-1]  
# end

# describe "max_tie_breaker" do
#     let(:array_1) { ['potato', 'swimming', 'cat'] }
#     let(:array_2) { ['cat', 'bootcamp', 'swimming', 'ooooo'] }
#     let(:array_3) { ['photo','bottle', 'bother'] }
#     let(:length) { Proc.new { |s| s.length } }
#     let(:o_count) { Proc.new { |s| s.count('o') } }

#     it "should accept an array, a proc, and a block as args" do
#         expect { max_tie_breaker(array_1, length, &o_count) }.to_not raise_error
#     end

#     it "should return the element that has the largest result when passed into the block" do
#         expect(max_tie_breaker(array_1, o_count, &length)).to eq('swimming')
#         expect(max_tie_breaker(array_2, length, &o_count)).to eq('ooooo')

#     end

#     context "when there is a tie" do
#         it "should use the proc to break the tie" do
#             expect(max_tie_breaker(array_2, o_count, &length)).to eq('bootcamp')
#         end

#         context "when there is still a tie after using the proc" do
#             it "should return the element that comes first in the array" do
#                 expect(max_tie_breaker(array_3, o_count, &length)).to eq('bottle')
#             end
#         end
#     end

#     context "when the array is empty" do
#         it "should return nil" do
#             expect(max_tie_breaker([], o_count, &length)).to eq(nil)
#         end
#     end
# end

def silly_syllables(str)
  str = str.split(" ")
  vowels = "aeiou"

  str.each_with_index do |word, idx|
    count = 0
    word.each_char{|char| count += 1 if vowels.include?(char)}
    if count >= 2 
      while !vowels.include?(word[0])
        word[0] = ""
      end
      while !vowels.include?(word[-1])
        word[-1] = ""
      end
    end 
  end
  str.join(" ")
end

