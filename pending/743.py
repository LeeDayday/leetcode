# 743. Network Delay Time
# https://leetcode.com/problems/network-delay-time/

from heapq import heappush, heappop
class Solution:
    def networkDelayTime(self, times: List[List[int]], n: int, k: int) -> int:
        data = [[] for _ in range(n + 1)]
        dist = [float('inf')] * (n + 1)
        
        for (x, y, w) in times:
            data[x].append((y, w))
        
        minHeap = []
        heappush(minHeap, (0, k)) # 첫번째 원소를 기준으로 힙정렬이 이루어지므로, (w, node) 순으로 저장하기
        dist[k] = 0
        while minHeap:
            curr_cost, curr_node = heappop(minHeap)

            if dist[curr_node] < curr_cost:
                continue

            for (new_node, new_cost) in data[curr_node]:
                if curr_cost + new_cost < dist[new_node]:
                    heappush(minHeap, (curr_cost + new_cost, new_node))
                    dist[new_node] = curr_cost + new_cost
        answer = max(dist[1:])
        return -1 if answer == float('inf') else answer
