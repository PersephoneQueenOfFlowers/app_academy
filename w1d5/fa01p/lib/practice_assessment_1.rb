# Define your methods here. 


def first_letter_vowel_count(sentence)
  vowel_starts = 0
  vowels = "aeiou"
    sentence.split.each do |word|
      vowels.include?(word[0].downcase) ? ( vowel_starts += 1) : ()
    end
  vowel_starts
end

def count_true(arr, prc)
  count = 0
  arr.each{|ele| prc.call(ele) == true ? (count += 1) : ()}
  count
end

def procformation(arr, prc1, prc2, prc3)
  results = []
  arr.each do |ele|
    prc1.call(ele) == true ? (results << prc2.call(ele)) : (results << prc3.call(ele))
  end
    results
end

def array_of_array_sum(two_d_arr)
  total = 0
  two_d_arr.each do |subarray|
    total += subarray.inject{|acc,ele| acc + ele }
  end
  total
end

def selective_reverse(sent)
  return_sent_arr = []
  vowels = "aeiou"

  sent.split.each do |word|
    if vowels.include?(word[0].downcase) || vowels.include?(word[-1].downcase) 
      return_sent_arr << word
    else
      return_sent_arr << word.reverse
    end
  end

  return_sent_arr.join(" ")
end

def hash_missing_keys(hash, *args)
  non_keys = []
    args.each{|arg| !hash.has_key?(arg) ? (non_keys << arg) : () }
  non_keys
end






