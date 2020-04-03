class Solution:
    def isHappy(self, n: int) -> bool:
        total = self.digits_power_sum(n)
        if total == 1 or total == 7:
            return True
        else:
            if total < 10 or total == 0:
                return False
            return self.isHappy(total)

    def digits_power_sum(self, n):
        return sum([pow(int(d), 2) for d in str(n)])
