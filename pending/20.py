# 20. Valid Parentheses
# https://leetcode.com/problems/valid-parentheses/

class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        open_ch = ('(', '[', '{')
        pair = {
            '(': ')', 
            '{': '}',
            '[': ']'
            }
        for i in range(len(s)):
            if s[i] in open_ch:
                stack.append(s[i])
            else:
                if stack and pair[stack[-1]] == s[i]:
                    stack.pop()
                else:
                    return False
        if stack:
            return False
        return True
        
