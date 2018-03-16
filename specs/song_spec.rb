require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Starman", "David Bowie")
end

def test_song_name
  assert_equal("Starman", @song.title)
end

def test_song_artist
  assert_equal("David Bowie", @song.artist)
end

end
