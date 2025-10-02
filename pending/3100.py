# 3100. Water Bottles II
# https://leetcode.com/problems/water-bottles-ii/?envType=daily-question&envId=2025-10-02

class Solution:
    def maxBottlesDrunk(self, numBottles: int, numExchange: int) -> int:
        # numBottles: 초기에 가지고 있는 full bottles 개수
        # 행동 1: full bottles 중 한 병 다 마시기
        # 행동 2: numExchange 개의 빈 물병을 1개의 full bottle 로 교환 & numExchange ++
        fullBottles = numBottles
        emptyBottles = 0
        drunkBottles = 0

        while True:
)
            if fullBottles > 0:
                fullBottles -= 1
                drunkBottles += 1
                emptyBottles += 1
            else:
                is_changable = False
                while emptyBottles >= numExchange:
                    is_changable = True
                    emptyBottles -= numExchange
                    fullBottles += 1
                    numExchange += 1
                if not is_changable:
                    break
        
        print(drunkBottles)
        return drunkBottles
    
