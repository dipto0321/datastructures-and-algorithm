# 2*i+1 < arr

def left_sum(arr, index = 0)
  return arr[index] if arr[2 * index + 1].nil?

  arr[index] + left_sum(arr, (2 * index + 1))
end

inputs = [
  [2, 7, 5, 2, 6, 0, 9],
  [1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0],
  [5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0],
  [1, 2, 3, 4, 5, 6, 7]
]

inputs.each { |el| puts left_sum(el) }
