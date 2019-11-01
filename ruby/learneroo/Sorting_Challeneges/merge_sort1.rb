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

input = [38, 27, 43, 3, 9, 82, 10]
mergesort(input, 0, input.size - 1)
puts input.join(' ')
