def divider(ar, low, high, prev = nil, res = [] )
  if low < high
    mid = (low + high) / 2
    left = ar[low..mid]
    right = ar[mid + 1..high]
    divider(left, 0, left.size - 1, prev, res)
    divider(right, 0, right.size - 1, prev, res)
  end
  ar
end

def max_time_range(ar)
  prev = ar.first
  res = []
  ar[1..-1].each do |el|
    if el[0] < prev[1]
      prev = [prev[0], [prev[1], el[1]].max]
    else
      res.push(prev)
      prev = el
    end
  end
  res.push(prev)
  res
end

def do_stuff(ar)
  pairs = []
  str = ''
  ar.each_slice(2) { |a| pairs.push(a) }
  pairs.sort_by! { |a| a[0] }
  final = max_time_range(divider(pairs, 0, pairs.size - 1))
  final.each { |el| str += "#{el} " }
  puts str
end

inputs = [
  [10, 18, 4, 6, 14, 16, 5, 8],
  [5, 14, 1, 4, 13, 19, 3, 6, 9, 8],
  [11, 12, 4, 7, 14, 16, 0, 2, 13, 15, 8, 10],
  [0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5]
]

inputs.each{ |el| do_stuff(el)}