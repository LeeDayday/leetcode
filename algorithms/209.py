# 209. Minimum Size Subarray Sum
# https://leetcode.com/problems/minimum-size-subarray-sum/

class Solution:
    def minSubArrayLen(self, target: int, nums: List[int]) -> int:
        left = 0
        right = 0
        total = 0
        n = len(nums)
        answer = float("inf")

        while right < n:
            total += nums[right]
            right += 1

            while total >= target:
                answer = min(answer, right - left)
                total -= nums[left]
                left += 1

        return 0 if answer == float("inf") else answer
