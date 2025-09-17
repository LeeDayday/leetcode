# 7. Reverse Integer
# https://leetcode.com/problems/reverse-integer/

class Solution:
    def reverse(self, x: int) -> int:
        minus = False
        if x < 0:
            minus = True
            x *= -1

        answer = 0
        while x > 0:
            answer *= 10
            answer += x % 10
            x //= 10
        
        if answer >= 2 ** 31:
            return 0
        
        if minus:
            return answer * -1
        return answer
