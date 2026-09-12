# 1094. Car Pooling
# https://leetcode.com/problems/car-pooling/description/

class Solution:
    def carPooling(self, trips: List[List[int]], capacity: int) -> bool:
        data = []
        for (p, s, e) in trips:
            data.append((s, p))
            data.append((e, -p))
        data.sort(key=lambda x: (x[0], x[1]))
        current = 0
        for (_, change) in data:
            current += change
            if current > capacity:
                return False
        return True
