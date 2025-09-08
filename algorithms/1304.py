# 1304. Find N Unique Integers Sum up to Zero
# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/?envType=daily-question&envId=2025-09-07

class Solution:
    def sumZero(self, n: int) -> List[int]:
        answer = []
        for i in range(1, n // 2 + 1):
            answer.append(-i)
            answer.append(i)
        if n % 2:
            answer.append(0)
        return answer
