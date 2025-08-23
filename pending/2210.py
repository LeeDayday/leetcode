# 2210. Count Hills and Valleys in an Array
# https://leetcode.com/problems/count-hills-and-valleys-in-an-array/description/?envType=daily-question&envId=2025-07-27

class Solution:
    def countHillValley(self, nums: List[int]) -> int:
        answer = 0
        for i in range(1, len(nums) - 1):
            if nums[i] == nums[i - 1]:
                continue     
            left, right = i - 1, i + 1
            hill, valley = False, False
            # find non-equal neighbor
            while left > 0:
                if nums[i] != nums[left]:
                    break
                left -= 1
            while right < len(nums):
                if nums[i] != nums[right]:
                    break
                right += 1

            # check hill or valley
            if left >= 0 and right < len(nums):
                if nums[i] > nums[left] and nums[i] > nums[right]:
                    hill = True
                if nums[i] < nums[left] and nums[i] < nums[right]:
                    valley = True
            
            if hill or valley:
                answer += 1
        
        return answer
