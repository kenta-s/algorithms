# refer to:
#   https://ja.wikipedia.org/wiki/%E3%83%A6%E3%83%BC%E3%82%AF%E3%83%AA%E3%83%83%E3%83%89%E3%81%AE%E4%BA%92%E9%99%A4%E6%B3%95
#
# execute:
#   $ ruby euclidean_algorithm.rb

def euclidean_algorithm(a, b)
  return a if b == 0
  while (c = a % b) && c != 0
    a = b
    b = c
  end
  b
end

puts euclidean_algorithm(138, 3)
