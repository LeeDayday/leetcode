# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

from collections import Counter
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        counter = Counter()
        start, end = 0, 0
        answer = 0
        while start < len(s):
            while end < len(s):
                if counter[s[end]] < 1:
                    counter[s[end]] += 1
                    end += 1
                else:
                    break
            answer = max(answer, end - start)
            counter[s[start]] -= 1
            start += 1
        return answer

                
