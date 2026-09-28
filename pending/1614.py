# 1614. Maximum Nesting Depth of the Parentheses
# https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/?envType=daily-question&envId=2026-09-28

class Solution:
    def maxDepth(self, s: str) -> int:
        answer = 0
        result = 0
        for ch in s:
            if ch == '(':
                result += 1
                answer = max(answer, result)
            elif ch == ')':
                result -= 1
        return answer
