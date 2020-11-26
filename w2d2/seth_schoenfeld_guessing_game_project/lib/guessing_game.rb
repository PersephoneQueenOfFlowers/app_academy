class GuessingGame
    attr_accessor :min, :max, :num_attempts, :game_over

    def initialize min, max
        @min = min
        @max = max
        @num_attempts = 0
        @game_over = false
        @secret_num = secret(@min, @max)
    end

    def secret min,max
        @secret_num = rand(min..max)
    end

    def game_over?
       @game_over
    end

    def check_num num 
        num == @secret_num ? (
            @game_over = true
             p "you win"
            ) : (
                p "too big" if num > @secret_num
                p "too small" if num < @secret_num
        )
        @num_attempts += 1
    end

    def ask_user 
        p "enter a number" 
        check_num( gets.chomp.to_i )
    end

end

my_guess = GuessingGame.new(1,100)
# my_guess.secret
