require_relative "board"
require_relative "player"
class Battleship
  attr_accessor :player, :board

    def initialize n
      @player = Player.new()
      @board = Board.new(n)
      @remaining_misses = @board.size / 2
    end

    def start_game
        p @board.place_random_ships
        p @board.print
    end

    def lose?
        if @remaining_misses <= 0 
            p 'you lose'
            return true
        else 
            return false
        end
    end

    def win? 
      if @board.num_ships == 0 
        p "you win"
        return true
      else  
        return false
      end
    end 

    def game_over? 
      lose? || win? 
    end

    def turn 
      if @board.attack @player.get_move 
        @board.print  
        puts "you sunk my battleship!"
      else  
        @remaining_misses -= 1 
        puts @remaining_misses
        @board.print 
      end
    end

end

