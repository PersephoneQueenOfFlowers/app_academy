require "byebug"

def all_words_capitalized?(word_arr)
  p "hello"
  debugger
   p "hello after debugger start"
  #when all words are properly capitalized (first letter of word uppercase, other letters lowercase)
  word_arr.all?{|word| word == word.capitalize() }
end

all_words_capitalized?(["after","Forever","will","be","Never"])