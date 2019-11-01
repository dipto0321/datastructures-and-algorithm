def do_stuff(ar, k)
  i = 0
  output = ''
  while i < ar.length - (k - 1)
    output += ar[i..i + (k - 1)].max.to_s + ' '
    i += 1
  end
  puts output
end

arr = [3, 1, 3, 5, 7, 9, 2]

do_stuff(arr[1..-1], arr[0])
