# 118. Pascal's Triangle
# https://leetcode.com/problems/pascals-triangle/description/?envType=daily-question&envId=2025-07-27

class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        answer = [[1] * (i + 1) for i in range(numRows)]
        for i in range(2, numRows):
            for j in range(1, i):
                answer[i][j] = answer[i - 1][j - 1] + answer[i - 1][j]
        return answer
