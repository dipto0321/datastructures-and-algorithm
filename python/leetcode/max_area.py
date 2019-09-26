class Solution:
    def maxArea(self, height: List[int]) -> int:
        max_container = 0
        for i in range(len(height)):
            for j in range(len(height)):
                diff = abs(i - j)
                area = diff * min(height[i], height[j])
                if max_container < area:
                    max_container = area
        return max_container
