# Brute force solution
# Runtime: 3524 ms
# Memory Usage: 9.6 MB

# def two_sum(arr, target)
#   (0...arr.size).each do |_i|
#     (_i+1...arr.size).each do |_j|
#       return [_i, _j] if arr[_i] + arr[_j] == target
#     end
#   end
# end

# Runtime: 36 ms
# Memory Usage: 10 MB

def two_sum(nums, target)
  nums_hash = {}
  nums.each_with_index do |val, i|
    complement = target - nums[i]
    return [nums_hash[complement], i] if nums_hash.key?(complement)

    nums_hash[val] = i
  end
end

inputs = [2, 7, 11, 15]
target = 9

print two_sum(inputs, target)
