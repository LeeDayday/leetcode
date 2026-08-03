# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/description/

class Solution:
    def maxArea(self, height: List[int]) -> int:
        answer = 0
        n = len(height)
        l = 0
        r = n - 1
        while l < r:
            answer = max(answer, min(height[l], height[r]) * (r - l))
            if height[l] < height[r]:
                l += 1
            else:
                r -= 1
        return answer
