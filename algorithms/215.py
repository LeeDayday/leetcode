# 215. Kth Largest Element in an Array
# https://leetcode.com/problems/kth-largest-element-in-an-array/description/

from heapq import heappush, heappop
class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        minheap = []
        for num in nums:
            heappush(minheap, num)
            if len(minheap) > k:
                heappop(minheap)
        return minheap[0]
