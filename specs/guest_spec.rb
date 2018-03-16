require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup
@guest = Guest.new("Jack Skellington")
end

def test_guest_name
  assert_equal("Jack", @guest.name)
end

end
