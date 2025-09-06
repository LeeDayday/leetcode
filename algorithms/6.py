# 6. Zigzag Conversion
# https://leetcode.com/problems/zigzag-conversion/

class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1 or numRows >= len(s):
            return s
        idx = 0
        move = 1
        data = [[] for _ in range(numRows)]

        for char in s:
            data[idx].append(char)
            if idx == 0: # 첫번째 행인 경우
                move = 1 # 아래 행에 추가
            elif idx == numRows - 1: # 마지막 행인 경우
                move = -1 # 위 행에 추가
            idx += move
        
        for i in range(numRows):
            data[i] = ''.join(data[i])

        return ''.join(data)
