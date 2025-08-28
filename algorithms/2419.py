# Longest Subarray With Maximum Bitwise AND
# https://leetcode.com/problems/longest-subarray-with-maximum-bitwise-and/description/?envType=daily-question&envId=2025-07-27

class Solution:
    def longestSubarray(self, nums: List[int]) -> int:
        k = max(nums)
        indexes = [idx for idx, value in enumerate(nums) if value == k]
        n = len(indexes)
        answer = 1
        idx = 0
        while idx < n:
            start = idx
            end = idx + 1
            while end < n and indexes[start] + 1 == indexes[end]:
                start += 1
                end += 1
            answer = max(answer, start - idx + 1)
            idx = start + 1
        return answer
