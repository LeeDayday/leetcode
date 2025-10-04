# 1518. Water Bottles
# https://leetcode.com/problems/water-bottles/?envType=daily-question&envId=2025-10-02

class Solution:
    def numWaterBottles(self, numBottles: int, numExchange: int) -> int:
        emptyBottles = 0
        answer = 0
        while True:
            emptyBottles += numBottles
            answer += numBottles
            numBottles -= numBottles
            
            flag = False
            while emptyBottles >= numExchange:
                flag = True
                emptyBottles -= numExchange
                numBottles += 1
            if not flag:
                break
        return answer
