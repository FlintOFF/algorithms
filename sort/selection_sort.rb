# frozen_string_literal: true

module Sort
  class SelectionSort < ::Sort::Base
    def call
      out = @array
      n = out.length - 1

      n.times do |index|
        sub_array = out[index+1..-1]

        min_value = find_min_value(sub_array)
        next if out[index] < min_value

        min_index = out.index(min_value)
        out = swap(out, index, min_index)
      end

      out
    end

    private

    def find_min_value(array)
      min_value = array.first

      array.each do |value|
        @iteration_count += 1
        min_value = value if value < min_value
      end

      min_value
    end
  end
end
