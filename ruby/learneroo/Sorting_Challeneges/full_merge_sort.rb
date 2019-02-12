def merge(arr, left, right)
  i = 0
  j = 0
  k = 0
  while i < left.size && j < right.size
    if left[i] < right[j]
      arr[k] = left[i]
      i += 1
    else
      arr[k] = right[j]
      j += 1
    end
    k += 1
  end

  while i < left.size
    arr[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.size
    arr[k] = right[j]
    j += 1
    k += 1
  end
end

def mergesort(arr, low, high)
  if low < high
    mid = (low + high) / 2
    left = arr[low..mid]
    right = arr[mid + 1..high]
    mergesort(left, 0, left.size - 1)
    mergesort(right, 0, right.size - 1)
    merge(arr, left, right)
  end
end

def do_stuff(num_ar, str_ar)
  num_str_pair = {}
  res = []
  num_ar.each_with_index do |el, index|
    if num_str_pair.key?(el)
      num_str_pair[el].push(str_ar[index])
    else
      num_str_pair[el] = [str_ar[index]]
    end
  end
  pair_keys = num_str_pair.keys.dup
  mergesort(pair_keys, 0, pair_keys.size - 1)
  pair_keys.each { |key| res.push(num_str_pair[key]) }
  puts res.flatten!.join(' ')
end

t = gets.to_i
(1..t).each do |_i|
  n = gets.to_i
  num_ar = []
  str_ar = []
  (1..n).each do |_j|
    inputs = gets.strip.split
    num_ar.push(inputs[0].to_i)
    str_ar.push(inputs[1])
  end
  do_stuff(num_ar, str_ar)
end