def b_search(arr, target, min = 0, max = arr.size - 1)
  return 'NONE' if min > max

  mid_point = ((min + max) / 2).to_i
  if arr[mid_point] > target
    return b_search(arr, target, min, mid_point - 1)
  elsif arr[mid_point] < target
    return b_search(arr, target, mid_point + 1, max)
  else
    return mid_point
  end
end
