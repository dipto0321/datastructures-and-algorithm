from typing import List


class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        i = 0
        for j in range(len(nums)):
            if nums[i] != nums[j]:
                i += 1
                nums[i] = nums[j]
        return i+1


nums: List[int] = [1, 1, 2, 2, 2, 3, 3, 4, 4, 5, 5]
test_method = Solution()

for t in range(test_method.removeDuplicates(nums)):
    print(nums[t])
