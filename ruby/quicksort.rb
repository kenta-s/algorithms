require 'minitest/autorun'

class TestQuicksort < Minitest::Test
  def test_quicksort_with_integers_returns_sorted_array
    array = (1..10).to_a.shuffle
    expected_array = [1,2,3,4,5,6,7,8,9,10]
    assert_equal expected_array, quicksort(array)

    array = (32..150).to_a.shuffle
    expected_array = (32..150).to_a
    assert_equal expected_array, quicksort(array)
  end

  def test_quicksort_with_alphabets_returns_sorted_array
    array = ('a'..'z').to_a.shuffle
    expected_array = ('a'..'z').to_a

    assert_equal expected_array, quicksort(array)
  end
end

def quicksort(array)
  left = []
  right = []
  pibot = array.shift

  array.each do |n|
    if n < pibot
      left << n
    else
      right << n
    end
  end

  if left.size > 1
    left = quicksort(left)
  end
  if right.size > 1
    right = quicksort(right)
  end

  left + [pibot] + right
end
