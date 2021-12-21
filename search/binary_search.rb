# frozen_string_literal: true

module Search
  class BinarySearch < ::Search::Base
    def call
      search
    end

    private

    def search(start_index = nil, end_index = nil)
      @iteration_count += 1

      start_index ||= 0
      end_index ||= @array.length

      middle_index = ((start_index + end_index) / 2).floor
      return middle_index if @array[middle_index] == @search_item

      @search_item < @array[middle_index] ? search(start_index, middle_index - 1) : search(middle_index + 1, end_index)
    end
  end
end
