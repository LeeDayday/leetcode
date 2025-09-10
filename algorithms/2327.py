# 2327. Number of People Aware of a Secret
# https://leetcode.com/problems/number-of-people-aware-of-a-secret/?envType=daily-question&envId=2025-09-09

from collections import deque
class Solution:
    def peopleAwareOfSecret(self, n: int, delay: int, forget: int) -> int:
        # know: 비밀을 알지만 공유 불가능한 queue (day, 조건을 만족하는 사람 수)
        # share: 비밀을 알고, 공유 가능한 queue (day, 조건을 만족하는 사람 수)
        know, share = deque(), deque()
        know.append((1, 1)) # day 1: 1명

        known_cnt, shared_cnt = 1, 0
        # day n일 때 비밀을 안 사람(누적값) 구하기
        for i in range(2, n + 1):
            if know:
                # start to share the secret
                if know[0][0] == i - delay:
                        known_cnt -= know[0][1]
                        shared_cnt += know[0][1]
                        share.append(know[0])
                        know.popleft()
                
                if share:
                    # forget the secret
                    if share[0][0] == i - forget:
                        shared_cnt -= share[0][1]
                        share.popleft()
                if share:
                    # share the secret
                    known_cnt += shared_cnt
                    know.append((i, shared_cnt))
        
        return (known_cnt + shared_cnt) % (10 ** 9 + 7)


