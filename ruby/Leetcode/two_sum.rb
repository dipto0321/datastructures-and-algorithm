# Brute force solution

# def two_sum(arr, target)
#   (0...arr.size).each do |_i|
#     (_i+1...arr.size).each do |_j|
#       return [_i, _j] if arr[_i] + arr[_j] == target
#     end
#   end
# end

def two_sum(nums, target)
  nums_hash = {}
  nums.each_with_index do |val, i|
    complement = target - nums[i]
    return [i, nums_hash[complement]] if nums_hash.key?(complement)
    nums_hash[val] = i
  end
end

inputs = [2, 7, 11, 15]
target = 9

print two_sum(inputs, target)
