# 228. Summary Ranges
# https://leetcode.com/problems/summary-ranges/description/

class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        n = len(nums)
        idx = 0
        answer = []
        while idx < n:
            start_idx = idx
            while idx + 1 < n and nums[idx] + 1 == nums[idx + 1]:
                idx += 1
                
            if start_idx == idx:
                answer.append(str(nums[start_idx]))
            else:
                answer.append(f"{nums[start_idx]}->{nums[idx]}")
            
            idx += 1
        
        return answer
