class Board
  attr_accessor :size, :grid

    def initialize n
        @grid = Array.new(n) { Array.new(n, :N) }
        @size = n * n 
    end

    def [] array
        @grid[array[0]][array[1]]
    end

    def []= pos, val
      @grid[pos[0]][pos[1]] = val 
    end

    def num_ships
        @grid.flatten.count { |el| el == :S } 
    end

    def attack pos 
      move = self[pos] # =>:S || :N
      if move == :S 
        p self[pos]=  :H
        p "you sunk my battleship!"
        return true
      else      
        self[pos]= :X
        return false
      end
    end

    def place_random_ships 
      flat_grid = @grid.flatten
      grid_length = @grid.flatten.length 
      num_ships = grid_length / 4 
      max = @grid.length
      i = 0
      while i < num_ships 
        random_1 = rand(0...max)
        random_2 = rand(0...max)
        pos = [random_1,random_2]
        if self[pos] == :S 
          next
        else 
          self[pos]= :S
          i += 1
        end
      end
      num_ships
    end

    def hidden_ships_grid
      return_grid = @grid.map do |arr|
        arr.map { |ele| ele == :S ? (:N) : (ele) }
      end
      
      return_grid
    end

    def self.print_grid two_d
      two_d.each do |arr|
        puts arr.join(" ")
      end        
    end

    def cheat 
      Board.print_grid @grid
    end

    def print  
      Board.print_grid hidden_ships_grid
    end
end
