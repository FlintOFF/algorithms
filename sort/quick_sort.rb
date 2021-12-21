# frozen_string_literal: true

module Sort
  class QuickSort < ::Sort::Base
    def call
      sort(@array)
    end

    private

    def sort(array)
      return array if array.length <= 1

      middle_index = (array.length / 2).floor
      middle_value = array[middle_index]
      less = []
      greater = []

      array.each_with_index do |value, index|
        @iteration_count += 1
        next if index == middle_index

        value > middle_value ? greater << value : less << value
      end

      sort(less) + [middle_value] + sort(greater)
    end
  end
end
