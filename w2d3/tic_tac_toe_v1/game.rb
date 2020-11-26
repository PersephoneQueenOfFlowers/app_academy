require './board.rb' 
require './human_player.rb'
# require 'byebug'
class Game 
  attr_accessor :current_player, :player_1, :player_2
  def initialize mark1, mark2 
    @player_1 = HumanPlayer.new(mark1)
    @player_2 = HumanPlayer.new(mark2)
    @board = Board.new
    @current_player = @player_1
  end

  def switch_turn 
    @current_player == @player_1 ? (@current_player = @player_2 ) : ( @current_player = @player_1 )
    @current_player
  end

  def play 
    while @board.empty_positions? == true 
      @board.print 
      pos = @current_player.get_position 
      mark = @current_player.mark 
      @board.place_mark pos, mark 
      if (@board.win? mark) 
        p "victory! #{mark} won!"
        @board.print
        return true
      else    
        switch_turn  
      end
    end   
    p "draw"
  end
end
