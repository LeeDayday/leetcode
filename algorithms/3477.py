# 3477. Fruits Into Baskets II
# https://leetcode.com/problems/fruits-into-baskets-ii/?envType=daily-question&envId=2025-07-27

class Solution:
    def numOfUnplacedFruits(self, fruits: List[int], baskets: List[int]) -> int:
        n = len(fruits)
        answer = 0
        for fruit in fruits:
            for i in range(n):
                if fruit <= baskets[i]:
                    baskets[i] = 0 # 방문 처리
                    flag = True
                    break
            else:
                answer += 1
        return answer
