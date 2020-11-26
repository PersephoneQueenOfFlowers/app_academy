require_relative "room"


class Hotel
  attr_accessor :name, :rooms
  def initialize name, hash
    @name = name
    @rooms = Hash.new(0)
    hash.each do |key, value|
        @rooms[key] = Room.new(value)
    end 
  end  

  def name
    parts = []
    @name.split.each do |part|
        word = part
        parts << word.capitalize 
    end
    @name = parts.join(" ")
  end

  def room_exists? room 
    return true if @rooms.include?(room)
    false
  end

  def check_in person, room_name  
    if !room_exists?(room_name)
      p "sorry, room does not exist"  
    else 
    #   Room.room_name
      @rooms[room_name].add_occupant(person) ? (p "check in successful") : ( p "sorry, room is full" )
    end
  end

  def has_vacancy?
    @rooms.each do |k ,v|
        !(@rooms[k].full?) ? (return true) : ()
    end
    false
  end

  # def list_rooms 
  #   @rooms.each do |room_name,room_object|
  #      p room_name + @rooms[room_name].available_space.to_s
  #   end
  # end
    
    
end
