# DFS adjacency list
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

def dfs(graphs, node, visited = [])
  unless visited.include?(node.value)
    visited.push(node.value)
    node.adjacents.each { |nd| dfs(graphs, graphs[nd], visited) }
  end
  visited
end

def is_connected?(grid)
  graphs = []
  grid.each_with_index { |item, index| graphs.push(create_node(item, index)) }
  visit = dfs(graphs, graphs[0])
  puts visit.length == grid.length
end


inputs = [
  "2
  4
  0 5 3
  5 2
  5 1
  4 2 3",
  "1 2
  0 2
  0 1 3 4 5
  2 4
  3 2
  2",
  "1
  0 3 4
  5 6
  1
  1
  2
  2",
  "1 2
  0 3 4
  0 5 6
  1
  1
  2
  2",
  "2
  4
  0
  5
  5 1
  4 3",
  "1 2
  0 4
  0 4
  5 6
  1 2 7
  3
  3
  4"
]
grids = [[[2],[4],[0, 5, 3],[5, 2],[5, 1],[4, 2, 3]]]

is_connected?(grids)