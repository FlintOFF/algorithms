# frozen_string_literal: true

require_relative 'search/base'
require_relative 'search/linear_search'
require_relative 'search/binary_search'

require_relative 'sort/base'
require_relative 'sort/selection_sort'
require_relative 'sort/bubble_sort'
require_relative 'sort/quick_sort'

require_relative 'graph/breadth_first_search'

array = [99, 1, 6, 0, -1, 4, 11, -5, 22, 9]
search_item = 9
expected_index = array.index(search_item)

puts 'Linear search'
linear_search = Search::LinearSearch.new(array, search_item)
puts linear_search.call == expected_index
puts linear_search.iteration_count
puts ''

puts 'Binary search'
binary_search = Search::BinarySearch.new(array.sort, search_item)
puts binary_search.call == array.sort.index(search_item)
puts binary_search.iteration_count
puts ''

puts 'Selection sort'
selection_sort = Sort::SelectionSort.new(array)
puts selection_sort.call == array.sort
puts selection_sort.iteration_count
puts ''

puts 'Bubble sort'
bubble_sort = Sort::BubbleSort.new(array)
puts bubble_sort.call == array.sort
puts bubble_sort.iteration_count
puts ''

puts 'Quick sort'
quick_sort = Sort::QuickSort.new(array)
puts quick_sort.call == array.sort
puts quick_sort.iteration_count
puts ''

puts 'Breadth-first search'
graph = {
  a: [:b, :c],
  b: [:f],
  c: [:d, :e],
  d: [:f],
  e: [:f],
  f: [:g],
  h: [:i, :j]
}
puts "When the path is exist returns true => #{Graph::BreadthFirstSearch.new(graph, :a, :g).call}"
puts "When the path is not exist returns false => #{Graph::BreadthFirstSearch.new(graph, :a, :h).call}"
puts ''