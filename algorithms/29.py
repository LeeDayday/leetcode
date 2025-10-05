# 29. Divide Two Integers
# https://leetcode.com/problems/divide-two-integers/

class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
        INT_MAX = 2 ** 31 - 1
        INT_MIN = -2 ** 31
        if dividend == INT_MIN and divisor == -1:
            return INT_MAX
        
        minus = True if (dividend < 0) ^ (divisor < 0) else False
        dividend = abs(dividend)
        divisor = abs(divisor)
        answer = 0
        while dividend >= divisor:
            tmp_divisor, tmp_q = divisor, 1
            # 배수 키우기 (2배씩)
            while dividend >= (tmp_divisor << 1):
                tmp_divisor <<= 1
                tmp_q <<= 1
            dividend -= tmp_divisor
            answer += tmp_q
        
        return -answer if minus else answer
