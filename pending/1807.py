# 1807. Evaluate the Bracket Pairs of a String
# https://leetcode.com/problems/evaluate-the-bracket-pairs-of-a-string/?envType=daily-question&envId=2026-09-26

import re

class Solution:
    def evaluate(self, s: str, knowledge: list[list[str]]) -> str:
        data = {}
        for key, value in knowledge:
            data[key] = value
        
        answer = re.sub(
            r"\(([^)]+)\)",
            lambda m: str(data.get(m.group(1), "?")),
            s
        )

        return answer
