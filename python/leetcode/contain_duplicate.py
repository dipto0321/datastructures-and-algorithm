from typing import List


class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        return len(nums) > len(set(nums))


nums: List[int] = [1, 2, 3]
sol = Solution()
print(sol.containsDuplicate(nums))
