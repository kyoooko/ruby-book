# minitest
require "minitest/autorun"
require "./lib/fizz_buzz"

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal "1",fizz_buzz(1)
    assert_equal "2",fizz_buzz(2)
    assert_equal "Fizz",fizz_buzz(3)
    assert_equal "4",fizz_buzz(4)
    assert_equal "Buzz",fizz_buzz(5)
    assert_equal "Fizz",fizz_buzz(6)
    assert_equal "Fizz Buzz",fizz_buzz(15)
  end
end


# RSpec
# require "./lib/fizz_buzz"

# RSpec.describe "Fizz Buzz" do
#   example "fizz_buzz" do
#     expect(fizz_buzz(1)).to eq "1"
#     expect(fizz_buzz(2)).to eq "2"
#     expect(fizz_buzz(3)).to eq "Fizz"
#     expect(fizz_buzz(4)).to eq "4"
#     expect(fizz_buzz(5)).to eq "Buzz"
#     expect(fizz_buzz(6)).to eq "Fizz"
#     expect(fizz_buzz(15)).to eq "Fizz Buzz"
    
#   end
# end