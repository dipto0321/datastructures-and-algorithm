from typing import List
from functools import lru_cache
from math import ceil
from sys import maxsize


def lastStoneWeightII(stones: List[int]) -> int:
    target = ceil(sum(stones) / 2)

    @lru_cache
    def dp(i: int, s: int) -> bool:
        if s < 0:
            return False
        if s == 0:
            return True
        if i == 0:
            return s == stones[0]
        return dp(i - 1, s) or dp(i - 1, s - stones[i])

    max_sum = maxsize
    for s in range(target, -1, -1):
        if dp(len(stones) - 1, s):
            max_sum = s
            break
    res = sum(stones) - 2 * max_sum
    return abs(res)


print(lastStoneWeightII([31, 26, 33, 21, 40]))
print(lastStoneWeightII([2, 7, 4, 1, 8, 1]))
print(lastStoneWeightII([1, 2]))
print(lastStoneWeightII([1, 2, 3, 6, 7, 7]))
