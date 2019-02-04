def array_to_hash_set(ar)
  converted_hash_set = {}
  ar.each { |el| converted_hash_set[el] = 0 }
  converted_hash_set
end

def do_stuff(ar)
  ar_element_index = array_to_hash_set((0..99).to_a)
  ar.each do |el|
    ar_element_index[el] += 1
  end
  puts ar_element_index.values.join(' ')
end

# do_stuff([1, 1, 2, 2, 3, 3, 5, 5, 7])

sample = '63 25 73 1 98 73 56 84 86 57 16 83 8 25 81 56 9 53 98 67 99 12 83 89 80 91 39 86 76 85 74 39 25 90 59 10 94 32 44 3 89 30 27 79 46 96 27 32 18 21 92 69 81 40 40 34 68 78 24 87 42 69 23 41 78 22 6 90 99 89 50 30 20 1 43 3 70 95 33 46 44 9 69 48 33 60 65 16 82 67 61 32 21 79 75 75 13 87 70 33'

sample_ar = sample.split(' ').map(&:to_i)

do_stuff(sample_ar)
