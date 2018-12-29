class Node
  attr_accessor :left, :right
  attr_reader   :value
  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def to_s
    "#{value} #{left} #{right}".strip
  end
end

def array_to_node(arr, index = 0)
  return nil if index >= arr.length || arr[index].zero?

  root_node = Node.new(arr[index])
  root_node.left = array_to_node(arr, 2 * index + 1)
  root_node.right = array_to_node(arr, 2 * index + 2)
  root_node
end

def BST_helper(node, mini = - 999, maxi = 999)
  return true if node.nil?

  return false if node.value < mini || node.value > maxi

  BST_helper(node.left, mini, node.value - 1) && BST_helper(node.right, node.value + 1, maxi)
end

def is_BST?(node)
  BST_helper(node)
end

def do_stuff(ar)
  tree = array_to_node(ar)
  puts is_BST?(tree)
end

inputs = [
  [10, 4, 12],
  [10, 5, 7],
  [20, 10, 27, 12, 14, 23, 30],
  [19, 9, 26, 4, 13, 17, 29],
  [20, 10, 27, 5, 14, 23, 30],
  [20, 10, 27, 5, 14, 23, 30, 0, 12, 0, 0, 0, 0, 0, 0],
  [21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0]
]

inputs.each { |el| do_stuff(el) }
