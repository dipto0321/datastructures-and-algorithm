def do_stuff(ar)
  pivot = ar[0]
  pivot_location = 0
  i = 1
  while i < ar.size
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
  puts ar.join(' ')
end

inputs = [[4, 5, 3, 9, 1], [2, 10, 3, 7, 9, 4, 6, 12, 8], [45, 25, 46, 48, 28, 6, 13, 5, 36, 44, 7, 4, 11, 30, 24, 34, 15, 31, 38, 49]]
inputs.each { |ar| do_stuff(ar) }
