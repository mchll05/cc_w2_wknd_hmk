class Room

attr_reader :name, :occupants, :playlist

def initialize(name, occupants, playlist)
  @name = name
  @occupants = occupants
  @playlist = playlist
end


def add_to_room(occupant)
  @occupants.push(occupant)
end

def remove_from_room(occupant)
  @occupants.delete(occupant)
end

def add_song(playlist)
  @playlist.push(playlist)
end

end
