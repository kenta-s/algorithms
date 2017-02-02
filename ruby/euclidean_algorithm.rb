# refer to:
#   https://ja.wikipedia.org/wiki/%E3%83%A6%E3%83%BC%E3%82%AF%E3%83%AA%E3%83%83%E3%83%89%E3%81%AE%E4%BA%92%E9%99%A4%E6%B3%95
#
# execute:
#   $ ruby euclidean_algorithm.rb
#

require 'minitest/autorun'

class TestEuclideanAlgorithm < Minitest::Test
  def test_euclidean_algorithm_returns_greatest_common_divisor
    assert_equal 6, euclidean_algorithm(12, 6)
    assert_equal 2, euclidean_algorithm(10, 8)
    assert_equal 7, euclidean_algorithm(21, 14)
  end

  def test_euclidean_algorithm_returns_first_arg_if_second_arg_is_zero
    assert_equal 12, euclidean_algorithm(12, 0)
    assert_equal 10, euclidean_algorithm(10, 0)
    assert_equal 21, euclidean_algorithm(21, 0)
  end
end

def euclidean_algorithm(a, b)
  return a if b == 0
  while (c = a % b) && c != 0
    a = b
    b = c
  end
  b
end
