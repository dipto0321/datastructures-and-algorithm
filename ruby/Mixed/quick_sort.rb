def partition(arr, low, high)
  pivot = arr[low]
  i, j = low + 1, high
  while i < j
    i += 1 while arr[i] <= pivot
    j -= 1 while arr[j] > pivot
    arr[i], arr[j] = arr[j], arr[i] if i < j
  end
  arr[low], arr[j] = arr[j], arr[low]
  j
end

def quicksort(arr, low, high)
  if low < high
    pi = partition(arr, low, high)
    quicksort(arr, low, pi - 1)
    quicksort(arr, pi + 1, high)
  end
end

inputs = [[4, 5, 3, 9, 1], [2, 10, 3, 7, 9, 4, 6, 12, 8], [45, 25, 46, 48, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 49 ]]
inputs.each do |ar| 
  quicksort(ar,0, ar.size-1)
  puts ar.join(' ')
end
# partition(inputs,0, inputs.size-1 )