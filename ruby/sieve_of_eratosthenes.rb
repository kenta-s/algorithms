# refer to:
#   https://ja.wikipedia.org/wiki/%E3%82%A8%E3%83%A9%E3%83%88%E3%82%B9%E3%83%86%E3%83%8D%E3%82%B9%E3%81%AE%E7%AF%A9
#
# execute:
#   $ ruby sieve_of_eratosthenes.rb

require 'complex'

def sieve_of_eratosthenes(max_num)
  search_list = (2..max_num).to_a
  first_of_search_list = search_list.shift
  prime_numbers = []
  while Math.sqrt(max_num) > first_of_search_list
    prime_numbers << first_of_search_list
    search_list.delete_if{|num| num % first_of_search_list == 0}
    first_of_search_list = search_list.first
  end
  prime_numbers + search_list
end

puts sieve_of_eratosthenes(1000)
