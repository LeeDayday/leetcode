# 2221. Find Triangular Sum of an Array
# https://leetcode.com/problems/find-triangular-sum-of-an-array/?envType=daily-question&envId=2025-10-07

class Solution:
    def triangularSum(self, nums: List[int]) -> int:
        while len(nums) != 1:
            result = []
            for i in range(len(nums) - 1):
                num = (nums[i] + nums[i + 1]) % 10
                result.append(num)
            nums = result
        return nums[0]

