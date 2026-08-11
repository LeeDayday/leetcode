# 547. Number of Provinces
# https://leetcode.com/problems/number-of-provinces/description/

class Solution:
    def findCircleNum(self, isConnected: List[List[int]]) -> int:
        n = len(isConnected)
        parent = [i for i in range(n)]

        def find(x):
            if parent[x] != x:
                parent[x] = find(parent[x])
            return parent[x]

        for i in range(n):
            for j in range(i + 1, n):
                if i != j and isConnected[i][j]:
                    a = find(i)
                    b = find(j)
                    parent[a] = parent[b]
        answer = 0
        for i in range(n):
            if parent[i] == i:
                answer += 1
        return answer
