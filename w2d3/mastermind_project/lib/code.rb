class Code
  attr_reader :pegs 

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs? array 
    return array.all?{ | el | POSSIBLE_PEGS.has_key?(el.upcase) }
  end

  def initialize array 
    (Code.valid_pegs?(array) == false) ? (raise) : (
        @pegs = []
        array.each { |el| @pegs << el.upcase })   
  end

  def self.random length 
    Code.new(  Array.new(length) { POSSIBLE_PEGS.keys.sample })     
  end

  def self.from_string str 
    str_arr = str.split("") 
    Code.new(str_arr)
  end

  def [] idx
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches code
    code.pegs.each_with_index.count{ |el,i| el == @pegs[i] }
  end
 
  def num_near_matches code
    code.pegs.each_with_index.count{ |el,i| @pegs.include?(el) && @pegs[i] != el }
  end

  def == code 
    self.length == code.length && @pegs == code.pegs
  end
end


