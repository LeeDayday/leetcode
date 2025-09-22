# 8.String to Integer (atoi)
# https://leetcode.com/problems/string-to-integer-atoi/

class Solution:
    def myAtoi(self, s: str) -> int:
        idx = 0
        n = len(s)
        while idx < n and s[idx] == ' ':
            idx += 1
        
        sign = 1
        if idx < n and (s[idx] == '+' or s[idx] == '-'):
            if s[idx] == '-':
                sign = -1
            idx += 1
        
        answer = 0
        MAX = 2 ** 31 - 1
        MIN = -2 ** 31
        while idx < n and '0' <= s[idx] <= '9':
            answer *= 10
            answer += int(s[idx])
            if answer * sign > MAX:
                return MAX
            if answer * sign < MIN:
                return MIN
            idx += 1
        return answer * sign
