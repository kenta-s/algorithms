require 'minitest/autorun'

def mergesort(array)
  return array if array.size == 1

  half_point = array.size / 2

  array_a = array.first(half_point)
  array_b = array - array_a

  array_a = mergesort(array_a)
  array_b = mergesort(array_b)

  new_array = []

  until array_a.empty? && array_b.empty?
    if array_a.empty?
      new_array << array_b.shift
    elsif array_b.empty?
      new_array << array_a.shift
    elsif array_a.first > array_b.first
      new_array << array_b.shift
    else
      new_array << array_a.shift
    end
  end

  new_array
end


class TestMergesort < Minitest::Test
  def test_mergesort_with_integers
    array = (1..10).to_a.shuffle
    expected_array = [1,2,3,4,5,6,7,8,9,10]
    assert_equal expected_array, mergesort(array)
  end

  def test_mergesort_with_alphabets
    array = ("a".."z").to_a.shuffle
    expected_array = ("a".."z").to_a
    assert_equal expected_array, mergesort(array)
  end
end

