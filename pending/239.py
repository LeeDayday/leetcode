# 239. Sliding Window Maximum
# https://leetcode.com/problems/sliding-window-maximum/description/

from collections import deque
class Solution:
    def maxSlidingWindow(self, nums: List[int], k: int) -> List[int]:
        queue = deque()
        answer = []
        for i in range(len(nums)):
            while queue and queue[0] <= i - k: # 범위 검사
                queue.popleft()
            while queue and nums[queue[-1]] <= nums[i]:
                queue.pop()
            queue.append(i)

            if i >= k - 1:
                answer.append(nums[queue[0]])
        return answer
