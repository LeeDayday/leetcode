# 5. Longest Palindromic Substring
# https://leetcode.com/problems/longest-palindromic-substring/

class Solution:
    def longestPalindrome(self, s: str) -> str:
        if len(s) <= 1:
            return s
        
        answer = s[0]

        # s[i:j+1] 이 palindrome인지 검사
        for i in range(len(s) - 1): # 시작 index
            for j in range(i + 1, len(s)): # 끝 index
                if j - i + 1 > len(answer) and s[i:j+1] == s[i:j+1][::-1]:
                    answer = s[i:j+1]
        
        return answer
