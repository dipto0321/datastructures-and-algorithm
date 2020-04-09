from typing import List


class Solution:
    def countElements(self, arr: List[int]) -> int:
        counter = 0
        for index, num in enumerate(arr):
            if (num + 1) in arr:
                counter += 1
        return counter


sol = Solution()
arr = [1, 1, 2, 2]
print(sol.countElements(arr))
