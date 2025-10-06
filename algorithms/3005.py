# 3005. Count Elements With Maximum Frequency
# https://leetcode.com/problems/count-elements-with-maximum-frequency/?envType=daily-question&envId=2025-10-03

class Solution:
    from collections import Counter
    def maxFrequencyElements(self, nums: List[int]) -> int:
        counter = Counter(nums)
        maximum = counter.most_common(1)[0][1]
        answer = 0
        for _, value in counter.items():
            if value == maximum:
                answer += value
        return answer
