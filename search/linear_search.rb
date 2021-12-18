module Search
  class LinearSearch < ::Search::Base
    def call
      @array.each_with_index do |el, index|
        @iteration_count += 1

        return index if el == @search_item
      end

      nil
    end
  end
end