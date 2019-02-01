def insertion_sort(ar)
  1.upto(ar.size - 1) do |i|
    element = ar[i]
    j = i
    while j > 0 && ar[j - 1] > element
      ar[j] = ar[j - 1]
      j -= 1
    end
    ar[j] = element
  end
  ar
end

def do_stuff(num_ar, str_ar)
  num_str_pair = {}
  res = []
  num_ar.each_with_index do |el, index|
    if num_str_pair.key?(el)
      num_str_pair[el].push(str_ar[index])
    else
      num_str_pair[el] = [str_ar[index]]
    end
  end
  insertion_sort(num_str_pair.keys).each { |key| res.push(num_str_pair[key]) }
  puts res.flatten!.join(' ')
end

t = gets.to_i
(1..t).each do |_i|
  n = gets.to_i
  num_ar = []
  str_ar = []
  (1..n).each do |_j|
    inputs = gets.strip.split
    num_ar.push(inputs[0].to_i)
    str_ar.push(inputs[1])
  end
  do_stuff(num_ar, str_ar)
end
