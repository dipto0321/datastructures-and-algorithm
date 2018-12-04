def tower(disk_numbers, source = 1, auxilary = 2, destination = 3)
  if disk_numbers == 1
    print "#{source}->#{destination} "
    return
  end
  tower(disk_numbers - 1, source, destination, auxilary)
  print "#{source}->#{destination} "
  tower(disk_numbers - 1, auxilary, source, destination)
end

def do_stuff(a, b)
  i = ([1, 2, 3] - [a, b]).join
  tower(2, a, i, b)
  puts('')
end



input_test = [[1, 3], [1, 2], [2, 3], [2, 1], [3, 2]]

input_test.each { |i| do_stuff(i[0], i[1]) }
