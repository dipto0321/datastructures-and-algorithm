# frozen_string_literal: true

def product_except_self(nums)
  n = nums.size
  outputs = Array.new(n, 1)
  left = right = 1
  (1...n).each do |i|
    outputs[i] *= left *= nums[i - 1]
    outputs[~i] *= right *= nums[-i]
  end
  outputs
end

testCase = [1, 2, 3, 4]

print product_except_self(testCase)
