class Node
  attr_accessor :left, :right
  attr_reader   :value
  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end
end
def binary_tree_insertion(root, node)
  if node.value < root.value
    root.left.nil? ? root.left = node : binary_tree_insertion(root.left, node)
  elsif node.value > root.value
    root.right.nil? ? root.right = node : binary_tree_insertion(root.right, node)
  end
end

def array_to_node(arr)
  node = Node.new(arr[0])
  arr[1..-1].each { |el| binary_tree_insertion(node, Node.new(el)) }
  node
end

def pre_order(node)
  if node
    print "#{node.value} "
    pre_order(node.left)
    pre_order(node.right)
  end
end

def do_stuff(ar)
  tree = array_to_node(ar)
  pre_order(tree)
  puts ''
end

inputs = [
  [8, 3, 10, 1, 6, 14, 4, 7, 13],

  [5, 3, 7, 1, 2, 6, 8],

  [10, 12, 15, 7, 2, 23, 9, 14, 21],

  [50, 25, 75, 15, 21, 62, 91]
]

inputs.each { |ar| do_stuff(ar) }

# Outputs
# 8 3 1 6 4 7 10 14 13
# 5 3 1 2 7 6 8
# 10 7 2 9 12 15 14 23 21
# 50 25 15 21 75 62 91
