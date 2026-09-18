# 1354. Construct Target Array with Multiple Sums
# https://leetcode.com/problems/construct-target-array-with-multiple-sums/description/?envType=problem-list-v2&envId=dsa-sequence-valley-heap 

from heapq import heappush, heappop

class Solution:
    def isPossible(self, target: list[int]) -> bool:
        total = sum(target)
        maxheap = []

        for num in target:
            heappush(maxheap, -num)

        while maxheap:
            curr_max = -heappop(maxheap)
            rest_sum = total - curr_max
            # 모든 값이 1인 상태까지 돌아온 경우
            if curr_max == 1 or rest_sum == 1:
                return True
            if rest_sum == 0 or curr_max <= rest_sum:
                return False
            prev = curr_max % rest_sum
            if prev == 0:
                return False
            total = rest_sum + prev
            heappush(maxheap, -prev)

        return False
