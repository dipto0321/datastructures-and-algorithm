from typing import List


class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        nums[:] = nums[len(nums) - k:] + nums[:len(nums) - k]


obj = Solution()
nums: List[int] = [1, 2, 3, 4, 5, 6, 7]
k: int = 3
obj.rotate(nums, k)

print(nums)
