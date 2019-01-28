def find_heigh(ar)
  # S0: declare heights array
  heights = []
  # S1: iterate through the input array starting from the last
  (ar.size - 1).downto(0) do |index|
    initial_height = ar[index] == 0 ? 0 : 1
    left_height_index = ar[(2 * index) + 1].nil? ? nil : heights.length - index - 1
    right_height_index = ar[(2 * index) + 2].nil? ? nil : left_height_index - 1
    left_height = left_height_index.nil? ? 0 : heights[left_height_index]
    right_height = right_height_index.nil? ? 0 : heights[right_height_index]
    heights.push(initial_height + [left_height, right_height].max)
  end

  puts heights[-1]
end

def find_height_rec(tree, index = 0)
  return 0 if tree[index].nil? || tree[index] == 0

  left_height = find_height_rec(tree, 2 * index + 1)
  right_height = find_height_rec(tree, 2 * index + 2)
  1 + [left_height, right_height].max
end

inputs = [
  [2, 7, 5, 2, 6, 0, 9],
  [1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0],
  [5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0],
  [1, 2, 3, 4, 0, 5, 6, 7, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0]
]

inputs.each { |ar| puts find_height_rec(ar) }
