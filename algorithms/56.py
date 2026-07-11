# 56. Merge Intervals
# https://leetcode.com/problems/merge-intervals/description/

from collections import deque
class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        n = len(intervals)
        intervals.sort(key=lambda x: x[0])
        answer = [intervals[0]]

        for start, end in intervals[1:]:
            last_end = answer[-1][1]

            if start <= last_end:
                answer[-1][1] = max(last_end, end)
            else:
                answer.append([start, end])

        
        return answer
