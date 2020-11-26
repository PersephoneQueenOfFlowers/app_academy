class Employee
    attr_accessor :name, :title 
    attr_writer :earnings 

    def initialize n, t 
      @name = n 
      @title = t 
      @earnings = 0 

    end

    def pay number 
      @earnings += number
    end
end
