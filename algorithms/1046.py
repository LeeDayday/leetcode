# 1046. Last Stone Weight
# https://leetcode.com/problems/last-stone-weight/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap

from heapq import heappush, heappop
class Solution:
    def lastStoneWeight(self, stones: list[int]) -> int:
        heapq = []
        for stone in stones:
            heappush(heapq, -stone)

        while len(heapq) > 1:
            y = -heappop(heapq)
            x = -heappop(heapq)
            if y != x:
                heappush(heapq, -(y - x))

        if heapq:
            return -heapq[0]
        return 0
