# 2787. Ways to Express an Integer as Sum of Powers
# https://leetcode.com/problems/ways-to-express-an-integer-as-sum-of-powers/description/?envType=daily-question&envId=2025-07-27

from math import log
from itertools import combinations

class Solution:
    def numberOfWays(self, n: int, x: int) -> int:
        MOD = 10 ** 9 + 7
        dp = [0]*(n+1)
        dp[0] = 1
        num = 1
        while num ** x <= n:
            tmp = num ** x
            for i in range(n, tmp - 1, -1):
                dp[i] = (dp[i] + dp[i - tmp]) % MOD
            num += 1
        return dp[-1]
