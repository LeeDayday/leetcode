# 560. Subarray Sum Eqauls K
# https://leetcode.com/problems/subarray-sum-equals-k/description/

from collections import Counter
class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        prefix = Counter()
        prefix[0] = 1

        curr = 0
        answer = 0
        for num in nums:
            curr += num
            answer += prefix[curr - k]
            
            prefix[curr] += 1
        return answer
