require 'helper'

class TestFibby < Test::Unit::TestCase
  should "calculate the nearest Fibonacci number" do
    assert_equal(144, 156.closest_fibonacci, "closest Fib to 156 should be 144")
    assert_equal(89, 99.closest_fibonacci)
  end

  should "raise an exception if you pass in a number less than one" do
    assert_raise(Fibby::NoFibExistsError) { 0.closest_fibonacci}
  end
end
