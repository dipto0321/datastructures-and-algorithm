def do_stuff(ar)
  res = -1
  ar.each_with_index { |el, index| res = el if el == index }
  puts res
end

do_stuff([3, 5, 7, 9, 11, 13, 17])