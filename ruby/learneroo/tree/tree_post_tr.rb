class Node
  attr_accessor :left, :right
  attr_reader   :value
  def initialize(value)
    @value = value
    @left  = nil
    @right  = nil
  end
end

def array_to_node(arr, index = 0)
  return nil if index >= arr.length || arr[index].zero?
  root_node = Node.new(arr[index])
  root_node.left = array_to_node(arr, 2 * index + 1)
  root_node.right = array_to_node(arr, 2 * index + 2)
  root_node
end

def post_order(node)
  if node
    post_order(node.left)
    post_order(node.right)
    print "#{node.value} "
  end
end

def do_stuff(ar)
  converted_node = array_to_node(ar)
  post_order(converted_node)
  puts ''
end

inputs = [
[10, 1, 2, 3, 4, 5, 6],

[2, 7, 5, 2, 6, 0, 9],

[1, 2, 3, 4, 5, 6, 7, 8, 9],

[1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0],

[2, 10, 20, 30, 4, 5, 60]
]

inputs.each { |el| do_stuff(el) }