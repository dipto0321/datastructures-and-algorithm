class Node
  attr_accessor :left, :right
  attr_reader   :value
  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end
end

def array_to_node(arr, index = 0)
  return nil if index >= arr.length || arr[index].zero?

  root_node = Node.new(arr[index])
  root_node.left = array_to_node(arr, 2 * index + 1)
  root_node.right = array_to_node(arr, 2 * index + 2)
  root_node
end

arr1 = [10, 1, 2, 3, 4, 5, 6]

new_node = array_to_node(arr1)
inorder_node = array_to_node([8, 3, 10, 1, 6, 14, 4, 7, 13])

def in_order(node)
  if node
    in_order(node.left)
    print "#{node.value} "
    in_order(node.right)
  end
end

def pre_order(node)
  if node
    print "#{node.value} "
    pre_order(node.left)
    pre_order(node.right)
  end
end

def post_order(node)
  if node
    post_order(node.left)
    post_order(node.right)
    print "#{node.value} "
  end
end

in_order(new_node)
puts ''
pre_order(new_node)
puts ''
post_order(new_node)
