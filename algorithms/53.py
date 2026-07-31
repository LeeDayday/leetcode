# 53. Maximum Subarray
# https://leetcode.com/problems/maximum-subarray/description/

class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        result = nums[0]
        answer = nums[0]
        for num in nums[1:]:
            result = max(num, result + num)
            answer = max(answer, result)
        return answer
