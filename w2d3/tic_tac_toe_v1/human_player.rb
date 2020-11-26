class HumanPlayer 
  attr_accessor :mark
  def initialize mark   
    @mark = mark
  end

  def get_position 
    p "player :#@mark please enter two numbers in the format `row col`"
    input = gets.chomp 
    input_arr = input.split(" ")
    if input_arr.length != 2 
      raise "Sorry, you need to enter two numbers" 
    end
    return_arr = []
    input_arr.each do |ele|  
      if ele.count("a-zA-Z") > 0
        raise "Sorry, you need to enter numbers" 
      else   
        return_arr << ele.to_i
      end
    end
    return return_arr
  end
end