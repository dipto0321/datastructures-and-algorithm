def insertion(ar)
  1.upto(ar.size - 1) do |i|
    element = ar[i]
    j = i
    while j > 0 && ar[j - 1] > element
      ar[j] = ar[j - 1]
      puts ar.join(' ')
      j -= 1
    end
    ar[j] = element
  end
  puts ar.join(' ')
end

insertion([1, 3, 2])
insertion([1, 4, 6, 9, 3])
