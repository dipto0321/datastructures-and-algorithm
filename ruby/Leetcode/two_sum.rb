def two_sum(arr, target)
  (0...arr.size).each do |_i|
    (_i+1...arr.size).each do |_j|
      return [_i, _j] if arr[_i] + arr[_j] == target
    end
  end
end

inputs = [3,3]
target = 6

print two_sum(inputs, target)
