def do_stuff(ar, k)
  pair = []
  0.upto(ar.size - 1) do |i|
    (i + 1).upto(ar.size - 1) do |j|
      pair.push(ar[i], ar[j]) if ar[i] + ar[j] == k
    end
  end
  puts pair.join(' ')
end

inputs = [[14, 1, 3, 5, 11],
          [12, 1, 9, 11, 13, 2, 3, 7],
          [21, 8, 17, 5, 11, 9, 6, 3, 2, 15],
          [0, -8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4],
          [40, 17, -20, 21, -3, 33, 10, 6, -11, 19, 40, 11, 17, 56, 33, 72, 5, 1, 36, 51]]

inputs.each { |ar| do_stuff(ar[1..-1], ar[0]) }
