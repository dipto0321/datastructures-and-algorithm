def insertion(ar)
  1.upto(ar.size - 1) do |i|
    element = ar[i]
    j = i
    while j > 0 && ar[j - 1] > element
      ar[j] = ar[j - 1]
      j -= 1
    end
    ar[j] = element
    puts ar.join(' ')
  end
end

insertion([1, 4, 3, 6, 9, 2])
