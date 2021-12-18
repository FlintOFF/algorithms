require_relative 'search/base'
require_relative 'search/linear_search'
require_relative 'search/binary_search'

array = [99, 1, 6, 0, -1, 4, 11, -5, 22, 9]
search_item = 9
expected_index = array.index(search_item)

puts "Linear search"
linear_search = Search::LinearSearch.new(array, search_item)
puts linear_search.call == expected_index
puts linear_search.iteration_count

puts "Binary search"
binary_search = Search::BinarySearch.new(array.sort, search_item)
puts binary_search.call == array.sort.index(search_item)
puts binary_search.iteration_count

