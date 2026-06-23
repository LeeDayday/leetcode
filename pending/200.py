# 200. Number of Islands
# https://leetcode.com/problems/number-of-islands/description/

from collections import deque
from typing import List

class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        rows = len(grid)
        cols = len(grid[0])
        answer = 0
        directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

        def bfs(start_r: int, start_c: int):
            queue = deque()
            queue.append((start_r, start_c))
            grid[start_r][start_c] = "0"

            while queue:
                r, c = queue.popleft()

                for dr, dc in directions:
                    nr = r + dr
                    nc = c + dc

                    if 0 <= nr < rows and 0 <= nc < cols and grid[nr][nc] == "1":
                        grid[nr][nc] = "0"
                        queue.append((nr, nc))

        for r in range(rows):
            for c in range(cols):
                if grid[r][c] == "1":
                    bfs(r, c)
                    answer += 1

        return answer
