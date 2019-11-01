# BFS graph list
class Node
  attr_accessor :value, :adjacents, :level
  def initialize(value)
    @value = value
    @adjacents = []
    @level = 0
  end
end

def create_graph(ar)
  nodes = []
  ar.each_index do |index|
    node = Node.new(index)
    nodes.push(node)
  end
  nodes.each_with_index do |node, _i|
    ar[_i].each_with_index { |num, _j| node.adjacents.push(nodes[_j]) unless num.zero? }
  end
  nodes
end

def node_distance(node, visited = [], queue = [node])
  shifted = queue.shift
  output = [shifted]
  visited.push(node)
  node.adjacents.each do |connection|
    if !visited.include?(connection) && !queue.include?(connection)
      connection.level = node.level + 1
      queue.push(connection)
    end
  end
  queue.empty? ? output : output + node_distance(queue[0], visited, queue)
end


def do_stuff(ar)
  graph = create_graph(ar)
  puts node_distance(graph[0]).sort {|a,b| a.value - b.value}.map {|node| node.level}.join(" ")
end

inputs = [
  "
  0 0 1 3 0 0
  0 0 0 5 0 0
  1 0 0 2 1 4
  3 5 2 0 7 0
  0 0 1 7 0 2
  0 0 4 0 2 0
  ",
  "
  0 3 5
  3 0 1
  5 1 0
  ",
  "
  0 3 6 0 0 9 4
  3 0 4 1 0 0 0
  6 4 0 3 5 4 1
  0 1 3 0 2 0 0
  0 0 5 2 0 3 0
  9 0 4 0 3 0 3
  4 0 1 0 0 3 0
  ",
  "
  0 1 1 0 0 0 0 0 0 1
  1 0 0 0 0 0 0 0 0 0
  1 0 0 0 1 1 0 0 0 0
  0 0 0 0 1 0 0 0 0 0
  0 0 1 1 0 0 1 0 0 0
  0 0 1 0 0 0 0 1 0 0
  0 0 0 0 1 0 0 1 1 0
  0 0 0 0 0 1 1 0 0 0
  0 0 0 0 0 0 1 0 0 0
  1 0 0 0 0 0 0 0 0 0
  "
].map do |input|
  input.strip.split("\n").map {|str| str.split.map {|str| str.to_i}}
end

do_stuff(inputs[0])