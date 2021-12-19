# frozen_string_literal: true

module Sort
  class Base
    attr_reader :iteration_count

    def initialize(array)
      @array = array
      @iteration_count = 0
    end
  end
end
