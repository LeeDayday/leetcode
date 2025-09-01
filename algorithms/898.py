# 898. Bitwise ORs of Subarrays
# https://leetcode.com/problems/bitwise-ors-of-subarrays/?envType=daily-question&envId=2025-07-27

class Solution:
    def subarrayBitwiseORs(self, arr: List[int]) -> int:
        answer = set(arr)
        curr = {0}
        for num in arr:
            curr = {num | y for y in curr} | {num}
            answer |= curr

        return len(answer)
            
