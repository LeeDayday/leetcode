# 3838. Weighted Word Mapping
# https://leetcode.com/problems/weighted-word-mapping/?envType=daily-question&envId=2026-06-13

class Solution:
    def mapWordWeights(self, words: List[str], weights: List[int]) -> str:
        answer = ""
        for word in words:
            result = 0
            for ch in word:
                idx = ord(ch) - ord("a")
                result += weights[idx]
            result = result % 26
            answer_idx = ord("a") + (25 - result)
            answer += chr(answer_idx)

        return answer
