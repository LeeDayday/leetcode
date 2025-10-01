# 1039. Minimum Score Triangulation of Polygon
# https://leetcode.com/problems/minimum-score-triangulation-of-polygon/?envType=daily-question&envId=2025-09-29

from itertools import combinations
class Solution:
    def minScoreTriangulation(self, values: List[int]) -> int:
        def dp(i, j):
            if i + 2 > j:
                return 0
            if i + 2 == j:
                return values[i] * values[i + 1] * values[j]
            min_result = float('inf')
            for k in range(i + 1, j):
                cost = dp(i, k) + dp(k, j) + values[i] * values[k] * values[j]
                if cost < min_result:
                    min_result = cost
            return min_result
        
        return dp(0, len(values) - 1)
