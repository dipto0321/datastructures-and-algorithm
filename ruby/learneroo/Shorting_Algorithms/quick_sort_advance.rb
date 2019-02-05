def partition(ar, low, high)
  pivot = ar[high]

  i = low - 1
  j = low
  while j <= high - 1
    if ar[j] <= pivot
      i += 1
      ar[i], ar[j] = ar[j], ar[i]
    end
    j += 1
  end
  ar[i + 1], ar[high] = ar[high], ar[i + 1]
  puts ar.join(' ')
  i + 1
end

def quicksort(ar, low, high)
  if low < high
    pi = partition(ar, low, high)
    quicksort(ar, low, pi-1)
    quicksort(ar, pi+1, high)
  end
end

def do_stuff(ar)
  quicksort(ar, 0, ar.size - 1)
end

inputs = [[1, 3, 9, 8, 2, 7, 5]]

inputs.each { |ar| do_stuff(ar) }