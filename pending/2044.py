# 2044. Count Number of Maximum Bitwise-OR Subsets
# https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets/description/?envType=daily-question&envId=2025-07-27

from collections import Counter
from itertools import combinations
class Solution:
    def countMaxOrSubsets(self, nums: List[int]) -> int:
        counter = Counter([0])

        for num in nums:
            for key, value in list(counter.items()):
                print(f"{num} | {key} = {num | key}, cnt: {value}")
                counter[num | key] += value
        
        return counter[max(counter.keys())]
