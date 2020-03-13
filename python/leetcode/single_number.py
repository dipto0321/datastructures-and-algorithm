from typing import List


class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        single_nums = []
        for num in nums:
            if len(single_nums) == 0 or num not in single_nums:
                single_nums.append(num)
            else:
                single_nums.remove(num)
        return single_nums[0]


sol = Solution()
print(sol.singleNumber([2, 2, 1]))
print(sol.singleNumber([4, 1, 2, 1, 2]))

