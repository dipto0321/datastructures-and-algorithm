def time_shedule(ar, low, high, res = [])
  if low < high
    mid = (low + high) / 2
    left = ar[low..mid]
    right = ar[mid + 1..high]
    time_shedule(left, 0, left.size - 1, res)
    time_shedule(right, 0, right.size - 1, res)
    i = 0
    j = 0
    while i < left.size && j < right.size
      if left[i][-1] <= right[j][-1]
        res.push(left[i]) if res.empty? || res[-1][-1] < left[i][0]
        i += 1
      else
        j += 1
      end
    end

    while j < right.size
      res.push(right[j]) if res.empty? || res[-1][-1] < right[j][0]
      j += 1
    end
  end
  res
end

def do_stuff(ar)
  pairs = []
  str = ''
  ar.each_slice(2) { |a| pairs.push(a) }
  pairs.sort_by! { |a| a[1] }
  final = time_shedule(pairs, 0, pairs.size - 1)
  final.each { |el| str += "#{el} " }
  puts str
end

do_stuff([4, 8, 1, 3, 7, 9, 5, 6])
do_stuff([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])
