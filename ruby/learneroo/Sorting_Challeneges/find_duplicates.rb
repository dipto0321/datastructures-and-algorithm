def do_stuff(ar1, ar2)
  ar1.each do |el|
    ar2.delete_at(ar2.index(el))
  end
  puts ar2.sort.join(" ")
end

t = gets.to_i
inputs = []
(1..t).each do |_i|
  n1 = gets
  ar1 = gets.strip.split.map(&:to_i)
  n2 = gets
  ar2 = gets.strip.split.map(&:to_i)
  do_stuff(ar1, ar2)
end
