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

def is_cycle?(graphs, node, queue = [node.value], visited = [])
  shifted = queue.shift
  return true if visited.include?(shifted)

  visited.push(shifted)
  node.adjacents.each { |el| queue.push(el) unless visited.include?(el) } unless node.nil?
  return false if queue.empty?

  is_cycle?(graphs, graphs[queue[0]], queue, visited)
end

def do_stuff(grid)
  graphs = []
  grid.each_with_index { |item, index| graphs.push(create_node(item, index)) }
  puts is_cycle?(graphs, graphs[0])
end
grid = [[2], [4], [5, 0, 3], [5, 2], [1, 5], [4, 2, 3]]
grid1 = [[2], [2], [0, 1, 3, 4, 5], [2], [2], [2]]

do_stuff(grid)
do_stuff(grid1)
