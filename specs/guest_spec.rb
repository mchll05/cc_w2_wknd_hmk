require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup
@guest = Guest.new("Jack Skellington", 20)
end

def test_guest_name
  assert_equal("Jack Skellington", @guest.name)
end

def test_customer_money_total
  assert_equal(20, @guest.money)
end

end
