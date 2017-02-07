require 'minitest/autorun'

class TestFibonacci < Minitest::Test
  def test_fib_with_normal_case
    expected = [0,1,2,3,5,8,13,21,34]
    fib = Fibonacci.new(40)
    fib.calc!

    assert_equal expected, fib.fib_nums
  end

  def test_fib_returns_0_if_0_is_given
    expected = [0]
    fib = Fibonacci.new(0)
    fib.calc!

    assert_equal expected, fib.fib_nums
  end

  def test_fib_returns_0_1_if_1_is_given
    expected = [0, 1]
    fib = Fibonacci.new(1)
    fib.calc!

    assert_equal expected, fib.fib_nums
  end

  def test_fib_returns_0_1_2_if_2_is_given
    expected = [0, 1, 2]
    fib = Fibonacci.new(2)
    fib.calc!

    assert_equal expected, fib.fib_nums
  end

  def test_new_raises_an_argument_error_if_given_negative_num
    assert_raises ArgumentError do
      Fibonacci.new(-1)
    end
  end
end

class Fibonacci
  attr_reader :fib_nums
  def initialize(max)
    raise ArgumentError, 'Max number must be a positive number' if max < 0
    @max = max
    @fib_nums = []
  end

  def calc!
    case @max
    when 0
      @fib_nums = [0]
    when 1
      @fib_nums = [0, 1]
    else
      @fib_nums = [0, 1, 2]
      loop do
        fib_num = @fib_nums[-1] + @fib_nums[-2]
        break if fib_num > @max
        @fib_nums << (fib_num)
      end
    end
  end
end
