# frozen_string_literal: true

module Sort
  class BubbleSort < ::Sort::Base
    def call
      out = @array
      n = out.length - 1

      n.times do |_i|
        n.times do |j|
          @iteration_count += 1
          current_value = out[j]
          next_value = out[j + 1]

          out = swap(out, j, j + 1) if next_value < current_value
        end
      end

      out
    end
  end
end
