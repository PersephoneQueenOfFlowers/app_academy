class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word 
    @secret_word = DICTIONARY.sample 
  end

  attr_accessor :secret_word, :guess_word, :attempted_chars, :remaining_incorrect_guesses 
  def initialize 
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5  
  end 

  def already_attempted? char 
    return true if @attempted_chars.include?(char)
    false
  end

  def get_matching_indices char 
    index_array = [] 
    @secret_word.each_char.with_index do |ele,i|
      index_array << i if char == ele  
    end
    index_array
  end

  def fill_indices char, arr 
    arr.each do |idx| 
      @guess_word[idx] = char
    end
  end
end

