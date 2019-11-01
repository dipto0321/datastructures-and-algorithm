def coins_sum(index, coins, sum)
  if  index == coins.length
    sum == 0
  else
    left = coins_sum(index + 1, coins, sum - coins[index])
    right = coins_sum(index + 1, coins, sum)
    left || right
  end
end

def do_stuff(ar, k)
  puts coins_sum(0, ar, k)
end

testfiles = [
  [12, 1, 2, 3, 4, 5],
  [11, 1, 5, 9, 13],
  [50, 1, 3, 5, 37, 18, 5],
  [42, 3, 16, 11, 5, 11, 5],
  [51, 8, 12, 15, 7, 11, 14],
  [201, 37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51]
]

testfiles.each { |items| do_stuff(items[1..-1], items[0]) }
