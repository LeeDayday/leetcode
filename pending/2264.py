# 2264. Largest 3-Same-Digit Number in String
# https://leetcode.com/problems/largest-3-same-digit-number-in-string/description/?envType=daily-question&envId=2025-07-27

class Solution:
    def largestGoodInteger(self, num: str) -> str:
        n = len(num)
        answer = ''
        for i in range(n - 2):
            if answer == '999':
                break
            if num[i] == num[i + 1] == num[i + 2]:
                if answer == '':
                    answer = num[i:i+3]
                elif int(answer) < int(num[i:i+3]):
                    answer = num[i:i+3]
        return answer
