ExUnit.start

defmodule AssertionTest do
  use ExUnit.Case, async: true

  test "quicksort with numbers returns sorted list" do
    list = [3,7,1,10,2,4,5,9,6,8]
    assert [1,2,3,4,5,6,7,8,9,10] == Algorithm.quicksort(list)
  end

  test "quicksort with characters returns sorted list" do
    list = ["b", "i", "c", "d", "h", "e", "f", "a", "g"]
    assert ["a", "b", "c", "d", "e", "f", "g", "h", "i"] == Algorithm.quicksort(list)
  end
end

defmodule Algorithm do
  def quicksort([]), do: []
  def quicksort([pivot | list]) do
    { left, right } = Enum.partition(list, &(&1 < pivot))
    quicksort(left) ++ [pivot | quicksort(right)]
  end
end
