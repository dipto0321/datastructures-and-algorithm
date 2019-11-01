def insertion(ar)
  counter = 0
  1.upto(ar.size - 1) do |i|
    element = ar[i]
    j = i
    while j > 0 && ar[j - 1] > element
      ar[j] = ar[j - 1]
      j -= 1
      counter += 1
    end
    ar[j] = element
  end
  puts counter
end

insertion([1, 4, 3, 6, 9, 2])
insertion([2, 1, 3, 1, 2])
insertion([1, 1, 2, 2, 3, 3, 5, 5, 7])
