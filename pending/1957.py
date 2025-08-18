# Delete Characters to Make Fancy String
# https://leetcode.com/problems/delete-characters-to-make-fancy-string/description/?envType=daily-question&envId=2025-07-21

from collections import deque


class Solution(object):
    def makeFancyString(self, s):
        """
        :type s: str
        :rtype: str
        """
        queue = deque(s)
        answer = []
        cnt = 1
        while queue:
            ch = queue.popleft()
            if answer and answer[-1] == ch:
                cnt += 1
                if cnt < 3:
                    answer.append(ch)
            else:
                answer.append(ch)
                cnt = 1
        return "".join(answer)
        