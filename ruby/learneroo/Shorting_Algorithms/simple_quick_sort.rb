def partition(ar, min, max)
  pivot = ar[min]
  pivot_location = min
  i = min
  while i <= max
    cur = ar[i]
    if cur < pivot
      j = i
      while j > pivot_location
        ar[j] = ar[j - 1]
        j -= 1
      end
      ar[pivot_location] = cur
      pivot_location += 1
    end
    i += 1
  end
  partition(ar, min, pivot_location - 1) if pivot_location > min +1
  partition(ar, pivot_location + 1, max) if max - pivot_location > 1

  puts ar[min..max].join(' ')
end

def do_stuff(ar)
  partition(ar, 0, ar.size - 1)
end
inputs = [[5, 8, 1, 3, 7, 10, 2]]

inputs.each { |ar| do_stuff(ar) }