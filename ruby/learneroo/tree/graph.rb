# Graph implementation
class Node
  attr_accessor :value, :adjacents
  def initialize(value)
    @value = value
    @adjacents = []
  end
end

def arraytograph(arr)
  nodes = []
  0.upto(arr.size - 1) do |i|
    node = Node.new(i)
    arr[i].each { |val| node.adjacents.push(val) }
    nodes.push(node)
  end
  nodes
end

def visit(node, target, visited=[])
  if node.data == target
    return visited
  else
    if !visited.include?(node)
      visited.push(node)
      visit(node.adjacents[0], target, visited, node.adjacents)
    end
  end
end

def do_stuff(arr)
  print visit(arraytograph(arr)[0], 4)
end
samples = [[2], [4], [5, 0, 3], [5, 2], [1, 5], [4, 2, 3]]

samples.each{ |el| do_stuff(el) }
