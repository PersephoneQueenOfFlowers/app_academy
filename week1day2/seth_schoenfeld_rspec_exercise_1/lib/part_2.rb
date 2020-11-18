def hipsterfy (word)
  vowels = "aeiou"
  letters_arr_reversed = word.split("").reverse()

  letters_arr_reversed.each_with_index do |letter,idx|
    if vowels.include?(letter)
      letters_arr_reversed[idx] = ""
      return letters_arr_reversed.reverse().join("")
    end
  end
  word
end

def vowel_counts(str)
  vowels = "aeiou"
  counter_hash = Hash.new(0)

  str.each_char do |char|
    vowels.include?(char.downcase) ? ( counter_hash[char.downcase] += 1 ) : ()
  end
  counter_hash
end

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  ciphered = ""
  str.each_char do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      new_index = index + num
      ciphered << alphabet[new_index % 26]
    else
      ciphered << char
    end
  end
  ciphered
end

