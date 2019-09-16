# frozen_string_literal: true

def climb_stairs(n)
  cache = [nil] * (n + 1)
  cache[1] = 1
  cache[2] = 2
  3.upto(n + 1) { |i| cache[i] = cache[i - 1] + cache[i - 2] }
  cache[n]
end

puts climb_stairs(5)
