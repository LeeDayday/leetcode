# 13. Roman to Integer
# https://leetcode.com/problems/roman-to-integer/

class Solution:
    def romanToInt(self, s: str) -> int:
        data = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }
        answer = 0
        for x, y in zip(s, s[1:]):
            if data[x] < data[y]:
                answer -= data[x]
            else:
                answer += data[x]
        return answer + data[s[-1]]
            
