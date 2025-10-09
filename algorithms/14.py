# 14. Longest Common Prefix
# https://leetcode.com/problems/longest-common-prefix/

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        strs.sort()
        answer = []
        for i in range(len(strs[0])):
            tmp = strs[0][i]
            print(tmp)
            for word in strs:
                #print(word, word[i])
                if word[i] != tmp:
                    return ''.join(answer)
            else:
                answer.append(tmp)
        return ''.join(answer)
