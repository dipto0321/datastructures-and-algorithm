# Graph adjacency list
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

def print_node_list(nodes)
  nodes.each do |node|
    print "Node - #{node.value} => Adjacents #{node.adjacents}"
    puts ''
  end
end

def visit(graphs, node, target, visited = [])
  if node.value == target
    visited.push(node.value)
    visited
  else
    unless visited.include?(node.value)
      visited.push(node.value)
      visit(graphs, graphs[node.adjacents[0]], target, visited)
    end
  end
end

def do_stuff(grid)
  graphs = []
  grid.each_with_index { |item, index| graphs.push(create_node(item, index)) }
  puts visit(graphs, graphs[0], 4).join(' ')
end
grid = [[2], [4], [5, 0, 3], [5, 2], [1, 5], [4, 2, 3]]

do_stuff(grid)

# boilerplate code
# t = gets.to_i
# for c in 1..t do
#   m = gets.to_i
#   grid = []
#   (0...m).each do |r|
#     grid[r] = gets.strip.split.map {|i| i.to_i}
#   end
#   print grid
#   puts ''
# end
