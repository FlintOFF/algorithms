require_relative 'search/base'
require_relative 'search/linear_search'

array = [99, 1, 6, 0, -1, 4, 11, -5, 22, 9]
search_item = -5
expected_index = 7

puts "Linear search"
linear_search = Search::LinearSearch.new(array, search_item)
puts linear_search.call == expected_index
puts linear_search.iteration_count

