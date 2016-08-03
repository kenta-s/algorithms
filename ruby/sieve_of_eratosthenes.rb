# refer to:
#   https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9
#
# execute:
#   $ ruby sieve_of_eratosthenes.rb

require 'complex'

MAX_NUM = 1000

search_list = (2..MAX_NUM).to_a
first_of_search_list = search_list.shift
prime_numbers = []

while Math.sqrt(MAX_NUM) > first_of_search_list
  prime_numbers << first_of_search_list
  search_list.delete_if{|num| num % first_of_search_list == 0}
  first_of_search_list = search_list.first
end

prime_numbers = prime_numbers + search_list

puts prime_numbers
