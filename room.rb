class Room

attr_reader :name, :occupants, :playlist, :capacity, :entry_fee

def initialize(name, occupants, playlist, capacity, entry_fee)
  @name = name
  @occupants = occupants
  @playlist = playlist
  @capacity = capacity
  @entry_fee = entry_fee
end

def add_to_room(occupant)
  @occupants.push(occupant) if !is_full?
  if is_full?
    message = "I'm sorry but we only allow #{capacity} at a time"
  else
    message = "Who's ready to party?"
  end
  print_message(message)
end

def print_message(message)
  puts message
end

def remove_from_room(occupant)
  @occupants.delete(occupant)
end

def add_song(playlist)
  @playlist.push(playlist)
end

def is_full?()
  return @occupants.length >= @capacity
end

def room_capacity(occupant)
  max_number = 5
  for occupant in @occupants
      if @occupants > max_number
        return "I'm sorry but we only allow #{max_number} at a time"
      else
        return "Who's ready to party?"
      end
    end
end

end
