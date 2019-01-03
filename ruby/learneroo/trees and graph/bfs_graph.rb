# BFS graph list
class Node
  attr_accessor :value, :adjacents
  def initialize(value)
    @value = value
    @adjacents = []
  end
end

def create_node(arr, id)
  node = Node.new(id)
  arr.each { |el| node.adjacents.push(el) }
  node
end

def bfs(graphs, node, queue = [], visited = [])
  unless visited.include?(node.value)
    node.adjacents.each { |item| queue.push(item) unless queue.include?(item) }
    visited.push(node.value)
    until queue.empty?
      shifted = queue.shift
      bfs(graphs, graphs[shifted], queue, visited)
    end
    visited
  end
end

def do_stuff(grid)
  graphs = []
  grid.each_with_index { |item, index| graphs.push(create_node(item, index)) }
  puts bfs(graphs, graphs[0]).join(' ')
end
grid = [[2], [4], [5, 0, 3], [5, 2], [1, 5], [4, 2, 3]]

do_stuff(grid)
