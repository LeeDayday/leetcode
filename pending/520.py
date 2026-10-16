# 520. Detect Capital
# https://leetcode.com/problems/detect-capital/description/?envType=problem-list-v2&envId=dsa-sequence-valley-string

class Solution:
    def detectCapitalUse(self, word: str) -> bool:
        capital_cnt = 0
        for ch in word:
            if 'A' <= ch <= 'Z':
                capital_cnt += 1
        
        if capital_cnt == 0:
            return True
        elif capital_cnt == 1:
            if 'A' <= word[0] <= 'Z':
                return True
            else:
                return False
        elif capital_cnt == len(word):
            return True
        return False
