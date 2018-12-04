def do_stuff(a)
  num_to_arr = (1..a).to_a
  puts square_root(num_to_arr, a)
end

def square_root(arr, target, min = 0, max = arr.size - 1)
  return nil if min > max

  mid_point = ((min + max) / 2).to_i
  product = arr[mid_point]
  if (product * product) > target
    return square_root(arr, target, min, mid_point - 1)
  elsif (product * product) < target
    return square_root(arr, target, mid_point + 1, max)
  elsif (product * product) == target
    return product
  end
end

sample = [25, 81, 225, 841, 1024, 7056, 36, 144]

sample.each { |num| do_stuff(num) }
