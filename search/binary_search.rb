module Search
  class BinarySearch < ::Search::Base
    def call
      start_index = 0
      end_index = @array.length

      while start_index <= end_index do
        @iteration_count += 1

        middle_index = ((start_index + end_index) / 2).floor

        return middle_index if @array[middle_index] == @search_item

        if @search_item < @array[middle_index]
          end_index = middle_index - 1
        else
          start_index = middle_index + 1
        end
      end

      nil
    end
  end
end
