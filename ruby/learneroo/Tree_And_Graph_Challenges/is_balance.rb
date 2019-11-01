def find_height_rec(tree, index = 0)
  return 0 if tree[index].nil? || tree[index] == 0

  left_height = find_height_rec(tree, 2 * index + 1)
  right_height = find_height_rec(tree, 2 * index + 2)
  1 + [left_height, right_height].max
end

def is_balanced?(tree, index = 0)
  return true if tree[index].nil? || tree[index] == 0

  (find_height_rec(tree, 2 * index + 1) - find_height_rec(tree, 2 * index + 2)).abs <= 1 ? is_balanced?(tree, 2 * index + 1) && is_balanced?(tree, 2 * index + 2) : false
end

def do_stuff(ar)
  puts is_balanced?(ar)
end

inputs = [
  [1, 2, 0, 3, 4, 0, 0],
  [1, 2, 3, 4, 5, 6, 7],
  [1, 2, 3, 4, 0, 0, 5, 6, 0, 0, 0, 0, 0, 0, 7],
  [1, 2, 3, 0, 0, 4, 5, 0, 0, 0, 0, 6, 0, 7, 8],
  [1, 2, 3, 4, 5, 0, 0],
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 10, 0, 0],
  [1, 2, 3],
  [1, 0, 2],
  [1, 2, 0, 3, 0, 0, 0]
]

inputs.each { |el| do_stuff(el) }
