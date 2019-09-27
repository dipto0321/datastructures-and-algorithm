class Solution:
    # @param n, an integer
    # @return an integer
    def reverseBits(self, n):
        num_str = list('{0:032b}'.format(n))
        num_str.reverse()
        return int(''.join(num_str), 2)


sol = Solution()
input = 43261596
print(sol.reverseBits(input))
