# 713. Subarray Product Less Than K
# https://leetcode.com/problems/subarray-product-less-than-k/description/

class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        answer = 0
        l = 0
        total = 1
        for i in range(len(nums)):
            total *= nums[i]
            while total >= k and l < len(nums):
                total //= nums[l]
                l += 1
            if total < k:
                answer += i - l + 1

        return answer
