def tower(disk_numbers, source = 1, auxilary = 2, destination = 3)
  if disk_numbers == 1
    print "#{source}->#{destination} "
    return
  end
  tower(disk_numbers - 1, source, destination, auxilary)
  print "#{source}->#{destination} "
  tower(disk_numbers - 1, auxilary, source, destination)
end

def do_stuff(num)
  tower(num)
  puts ''
end

input_test = [3, 4, 5, 6, 7, 8, 9]

input_test.each { |i| do_stuff(i) }
