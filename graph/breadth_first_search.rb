# frozen_string_literal: true

module Graph
  class BreadthFirstSearch
    attr_reader :iteration_count

    def initialize(graph, start_point, end_point)
      @graph = graph
      @start_point = start_point
      @end_point = end_point
      @iteration_count = 0
    end

    def call
      queue = []
      queue << @start_point

      while queue.length > 0
        @iteration_count += 1

        current_point = queue.shift
        linked_points = @graph[current_point] || []

        return true if linked_points.include?(@end_point)

        queue += linked_points
      end

      false
    end
  end
end
