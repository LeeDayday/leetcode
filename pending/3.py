# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        window = set() # 항상 s[left:right]에 포함된 중복 없는 문자 집합
        left = 0
        answer = 0

        for right in range(len(s)):
            # 중복이 있는 경우 중복이 제거될 때까지 left를 옮긴다
            while s[right] in window:
                window.remove(s[left])
                left += 1
            window.add(s[right])
            answer = max(answer, right - left + 1)
        return answer
        
