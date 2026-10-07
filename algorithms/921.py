# 921. Minimum Add to Make Parentheses Valid
# https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/description/?envType=daily-question&envId=2026-10-06

class Solution:
    def minAddToMakeValid(self, s: str) -> int:
        count = 0
        answer = 0
        for ch in s:
            if ch == '(':
                count += 1
            else:
                if count > 0:
                    count -= 1
                    answer += 1
                
        return len(s) - answer * 2
