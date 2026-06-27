# 752. Open the Lock
# https://leetcode.com/problems/open-the-lock/description/

from collections import deque
from typing import List

class Solution:
    def openLock(self, deadends: List[str], target: str) -> int:
        blocked = set(deadends)

        if "0000" in blocked:
            return -1

        queue = deque([("0000", 0)])
        visited = set(["0000"])

        def rotate(state: str, index: int, diff: int) -> str:
            digits = list(state)
            digits[index] = str((int(digits[index]) + diff) % 10)
            return "".join(digits)

        while queue:
            state, steps = queue.popleft()

            if state == target:
                return steps

            for index in range(4):
                for diff in (1, -1):
                    next_state = rotate(state, index, diff)

                    if next_state in visited or next_state in blocked:
                        continue

                    visited.add(next_state)
                    queue.append((next_state, steps + 1))

        return -1
