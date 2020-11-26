require_relative "code"

class Mastermind
    attr_accessor :secret_code

  def initialize length
    @secret_code = Code.random(length)
  end
  
  def print_matches code
    p @secret_code.num_exact_matches(code)
    p @secret_code.num_near_matches(code)
  end

  def ask_user_for_guess 
    p "Enter a code"
    guess = gets.chomp 
    checker_code = Code.from_string(guess)
    print_matches(checker_code)
    @secret_code == checker_code
  end
end


