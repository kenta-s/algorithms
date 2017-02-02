require 'minitest/autorun'
require 'complex'

class TestErat < Minitest::Test
  def test_sieves_of_eratosthenes
    assert_equal [2,3,5,7], sieves_of_eratosthenes(9)
    assert_equal [2,3,5,7], sieves_of_eratosthenes(10)
    assert_equal [2,3,5,7,11], sieves_of_eratosthenes(11)
    assert_equal [2,3,5,7,11,13,17,19], sieves_of_eratosthenes(20)
  end

  def test_sieves_of_eratosthenes_raises_an_error
    assert_raises ArgumentError do
      sieves_of_eratosthenes(3)
    end
  end
end

def sieves_of_eratosthenes(n)
  raise ArgumentError, "parameter must be more than 3" if n <= 3
  array = (2..n).to_a
  prime_numbers = []
  first_elem = array.shift
  while  Math.sqrt(n) >= first_elem
    prime_numbers << first_elem
    array.delete_if {|elem| elem % first_elem == 0}
    first_elem = array.first
  end
  prime_numbers + array
end
