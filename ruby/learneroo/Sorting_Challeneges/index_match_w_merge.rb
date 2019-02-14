def binary_search(arr, low, high)
  if high >= low
    mid = (low + high) / 2
    return mid if mid == arr[mid]
    if mid > arr[mid]
      return binary_search(arr, mid + 1, high)
    else
      return binary_search(arr, low, mid - 1)
    end
  end
  -1
end

def do_stuff(ar)
  puts binary_search(ar, 0, ar.size - 1)
end

do_stuff([3, 5, 7, 9, 11, 13, 17])
