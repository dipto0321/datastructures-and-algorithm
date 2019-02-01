def do_stuff(ar)
  res = []
  0.upto(99) do |i|
    count = 0
    ar.each { |n| count += 1 if n <= i }
    res.push(count)
  end
  puts res.join(' ')
end

t = gets.to_i
(1..t).each do |_i|
  n = gets.to_i
  num_ar = []
  (1..n).each do |_j|
    inputs = gets.strip.split
    num_ar.push(inputs[0].to_i)
  end
  do_stuff(num_ar)
end
