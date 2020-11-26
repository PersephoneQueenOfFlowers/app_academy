class Room 

    attr_accessor :occupants, :capacity

    def initialize(num)
        @occupants = []
        @capacity = num
    end
   
    def capacity
         @capacity 
    end

    def full?
        return false if @occupants.length < @capacity
        true
    end

    def available_space
        num = (@capacity - @occupants.length)
        num
    end

    def add_occupant name
        full? ? false : (
            @occupants << name
            true
            )
    end
end
