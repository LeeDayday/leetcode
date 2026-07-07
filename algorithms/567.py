# 567. Permutation in String
# https://leetcode.com/problems/permutation-in-string/

from collections import Counter
class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        n = len(s1)
        m = len(s2)
        s1_counter = Counter(s1)
        tmp_counter = Counter(s2[:n])
        if s1_counter == tmp_counter:
            return True

        for i in range(n, m):
            left = s2[i - n]
            right = s2[i]
            tmp_counter[left] -= 1
            if tmp_counter[left] == 0:
                del tmp_counter[left]
            tmp_counter[right] += 1
            if s1_counter == tmp_counter:
                return True
            
        return False
