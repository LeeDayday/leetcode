# Longest Consecutive Sequence
# https://leetcode.com/problems/longest-consecutive-sequence/description/

class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        nums_set = set(nums)
        answer = 0
        result = 0
        for num in nums_set:
            if num - 1 not in nums_set:
                result = 1
                while num + result in nums_set:
                    result += 1
            answer = max(answer, result)
        return answer
