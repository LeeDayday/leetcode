# 812. Largest Triangle Area
# https://leetcode.com/problems/largest-triangle-area/?envType=daily-question&envId=2025-09-27

from itertools import combinations
class Solution:
    def largestTriangleArea(self, points: List[List[int]]) -> float:
        answer = 0
        for a, b, c in combinations(points, 3):
            result = abs(a[0] * (b[1] - c[1]) + b[0] * (c[1] - a[1]) + c[0] * (a[1] - b[1])) / 2
            answer = max(result, answer)
        
        return answer
