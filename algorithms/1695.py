# Maximum Erasure Value
# https://leetcode.com/problems/maximum-erasure-value/description/?envType=daily-question&envId=2025-07-22

class Solution(object):
    def maximumUniqueSubarray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        answer = 0
        start, end = 0, 0
        result = set()
        while end < len(nums) and start <= end:
            #print(start, end)
            while end < len(nums) and nums[end] not in result:
                result.add(nums[end])
                end += 1
            answer = max(answer, sum(result))
            result.remove(nums[start])
            start += 1
        return answer
            

            
        
