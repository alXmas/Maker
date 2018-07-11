$LOAD_PATH.unshift File.dirname(__FILE__)
require 'test/unit'
require 'solution'

class TestFactorial < Test::Unit::TestCase
  def test_simple_numbers
    results = {
      1 => 1,
      2 => 2,
      3 => 6,
      4 => 24,
      5 => 120,
      6 => 720
    }
    results.each do |n, result|
      assert_equal(result, factorial(n))
    end
  end

  def test_zero
    assert_equal(1, factorial(0))
  end

  def test_raises
    [ 1.0, 0.0, -0.7, -0.9124 ].each do |n|
      assert_raise(RuntimeError) { factorial(n) }
    end
  end
end
