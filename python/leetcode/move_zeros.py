from typing import List


class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        eff_index = 0
        for i, num in enumerate(nums):
            if num != 0:
                nums[eff_index], nums[i] = nums[i], nums[eff_index]
                eff_index += 1


nums = [0, 1, 0, 3, 12]
sol = Solution()
sol.moveZeroes(nums)
print(nums)
