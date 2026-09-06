# 787. Cheapest Flights Within K Stops
# https://leetcode.com/problems/cheapest-flights-within-k-stops/

from heapq import heappush, heappop
class Solution:
    def findCheapestPrice(self, n: int, flights: List[List[int]], src: int, dst: int, k: int) -> int:
        data = [[] for _ in range(n)]
        for s, e, w in flights:
            data[s].append((e, w))
        
        
        dist = [[float('inf')] * n for _ in range(k + 2)]
        dist[0][src] = 0
        heap = []
        heappush(heap, (0, src, 0)) # (비용, 시작 노드, hop 횟수)

        while heap:
            curr_cost, curr_node, curr_edges = heappop(heap)

            if curr_cost > dist[curr_edges][curr_node]:
                continue

            if curr_node == dst:
                return curr_cost

            if curr_edges == k + 1:
                continue

            for (next_node, next_cost) in data[curr_node]:
                new_cost = curr_cost + next_cost
                new_edges = curr_edges + 1
                if new_cost < dist[new_edges][next_node]:
                    heappush(heap, (new_cost, next_node, new_edges))
                    dist[new_edges][next_node] = new_cost
        return -1
