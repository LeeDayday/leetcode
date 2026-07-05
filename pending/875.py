# 875. Koko Eating Bananas
# https://leetcode.com/problems/koko-eating-bananas/description/

class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        n = len(piles)
        start = 1
        end = max(piles)

        while start <= end:
            mid = (start + end) // 2
            result = 0
            for banana in piles:
                result += banana // (mid)
                if banana % (mid):
                    result += 1
            if result <= h:
                end = mid - 1
            else:
                start = mid + 1

        return start
