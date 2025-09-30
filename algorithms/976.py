# 976. Largest Perimeter Triangle
# https://leetcode.com/problems/largest-perimeter-triangle/?envType=daily-question&envId=2025-09-29

from itertools import combinations
class Solution:
    # 세 점이 삼각형의 조건을 만족시킬 때
    # 가장 큰 삼각형 둘레 반환
    # 없다면 0 반환
    def largestPerimeter(self, nums: List[int]) -> int:
        nums.sort()
        print(nums)
        for i in range(len(nums) - 3, -1, -1):
            if nums[i] + nums[i + 1] > nums[i + 2]:
                return nums[i] + nums[i + 1] + nums[i + 2]
        return 0

