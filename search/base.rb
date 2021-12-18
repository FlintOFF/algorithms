module Search
  class Base
    attr_reader :iteration_count

    def initialize(array, search_item)
      @array = array
      @search_item = search_item
      @iteration_count = 0
    end
  end
end
