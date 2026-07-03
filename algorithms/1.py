# 1. Two Sum
# https://leetcode.com/problems/two-sum/submissions/2053727344/

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        seen = {}
        for i in range(len(nums)):
            if target - nums[i] in seen:
                return [i, seen[target - nums[i]]]
            seen[nums[i]] = i
        return []
