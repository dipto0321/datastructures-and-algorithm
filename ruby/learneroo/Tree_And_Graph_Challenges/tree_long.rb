def tree_height(arr, index = 0)
  return 0 if arr[index].nil? || arr[index].zero?

  left_height = tree_height(arr, 2 * index + 1)
  right_height = tree_height(arr, 2 * index + 2)
  1 + [left_height, right_height].max
end

def do_stuff(ar)
  puts tree_height(ar)
end
inputs = [
  [2, 7, 5, 2, 6, 0, 9],
  [1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0],
  [5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0]
]

inputs.each { |el| do_stuff(el) }
