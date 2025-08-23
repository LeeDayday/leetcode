# 3487. Maximum Unique Subarray Sum After Deletion
# https://leetcode.com/problems/maximum-unique-subarray-sum-after-deletion/description/?envType=daily-question&envId=2025-07-25

class Solution:
    def maxSum(self, nums: List[int]) -> int:
        nums = sorted(list(set(nums)), reverse=True)

        answer = nums[0]
        for i in range(1, len(nums)):
            if nums[i] < 0:
                break
            answer += nums[i]
            
        return answer
