# frozen_string_literal: true

module Sort
  class Base
    attr_reader :iteration_count

    def initialize(array)
      @array = array
      @iteration_count = 0
    end

    private

    def swap(array, from, to)
      from_value = array[from]
      to_value = array[to]
      array[from] = to_value
      array[to] = from_value
      array
    end
  end
end
