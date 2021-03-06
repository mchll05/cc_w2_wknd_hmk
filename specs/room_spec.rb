require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Sally", 50)
    @guest2 = Guest.new("Mayor", 25)
    @guest3 = Guest.new("Oogie Boogie", 15)

    guests = [@guest1, @guest2, @guest3]

    @song1 = Song.new("This is Halloween", "Halloweentown residents")
    @song2 = Song.new("Wannabe", "Spice Girls")
    @song3 = Song.new("Smells Like Teen Spirit", "Nirvana")

    songs = [@song1, @song2, @song3]

@room = Room.new(1, guests, songs, 5, 10)
  end

def test_room_name
  assert_equal(1, @room.name)
end

def test_room_occupants
  assert_equal(3, @room.occupants.length)
end

def test_room_playlist
  assert_equal(3, @room.playlist.length)
end

def test_room_entry_fee
  assert_equal(10, @room.entry_fee)
end

def test_check_guest_into_room
  @room.add_to_room(@guest4)
  assert_equal(4, @room.occupants.length)
end

def test_check_guest_out_of_room
  @room.remove_from_room(@guest3)
  assert_equal(2, @room.occupants.length)
end

def test_add_song_to_playlist
  @room.add_song(@song4)
  assert_equal(4, @room.playlist.length)
end

def test_can_add_guest?
  result = @room.add_to_room(@guest5)
  assert_equal(4, @room.occupants.length)
end

def test_room_is_full?
  result = @room.add_to_room([@guest6, @guest7])
assert_equal(4, @room.occupants.length)
end


end
