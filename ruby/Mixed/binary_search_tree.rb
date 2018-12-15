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
