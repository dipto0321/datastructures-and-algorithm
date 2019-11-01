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

def visit(graphs, node, visited = [])
  unless visited.include?(node.value)
    visited.push(node.value)
    node.adjacents.each { |nd| visit(graphs, graphs[nd], visited) }
  end
  visited
end

def do_stuff(grid)
  graphs = []
  grid.each_with_index { |item, index| graphs.push(create_node(item, index)) }
  puts visit(graphs, graphs[0]).join(' ')
end
grid = [[2], [4], [5, 0, 3], [5, 2], [1, 5], [4, 2, 3]]

do_stuff(grid)
