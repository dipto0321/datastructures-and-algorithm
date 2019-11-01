def do_stuff(ar)
  puts ar.inject(0, :+)
end

inputs = [[1, 3], [2, 7, 13], [5, 8, 22, 11]]

inputs.each { |ar| do_stuff(ar) }
