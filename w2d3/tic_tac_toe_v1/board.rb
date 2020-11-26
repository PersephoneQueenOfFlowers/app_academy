class Board 
  attr_accessor :grid
  def initialize 
    @grid = Array.new(3){ Array.new(3, "_") }
  end

  def [] array
      @grid[array[0]][array[1]]
  end

  def []= pos, val
    row, col = pos 
    @grid[row][col] = val 
  end

  def valid? position
   position.all?{|el| el >= 0 && el < @grid.length  }
  end

  def empty? position 
    self[position] != :X && self[position] != :O  
  end

  def place_mark position, mark
    if ((self.empty? position) == true ) && ((self.valid? position) == true )
      self[position]= mark
    else
      raise "invalid mark here"
      
    end
  end 

  def print  
    @grid.each do |arr|
      puts arr.to_s
    end
  end

  def win_row? mark 
    @grid.each do |row|
      return true if row.all?{|ele| ele == mark }
    end
    false
  end

  def win_col? mark
    @grid.transpose.each do |col|
      return true if col.all?{|ele| ele == mark }
    end
    false
  end

  def win_diagonal? mark 
    length = @grid[0].length 
    return true if (0...length).all?{|n1| @grid[n1][n1] == mark }
    return true if (0...length).all?{|n1| @grid[length - 1 - n1][n1] == mark }
  end 

  def win? mark 
    return true if win_row?(mark)
    return true if win_col?(mark)
    return true if win_diagonal?(mark)
  end 

  def empty_positions? 
    return true if @grid.flatten.include?("_")
    return false
  end

end

