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
for i in 1..t do
		n=gets
    ar = gets.strip.split.map{|i| i.to_i if i.scan(/^\d+$/).any? }
    ar.delete(nil)
    do_stuff(ar)
end