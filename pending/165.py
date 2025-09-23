# 165. Compare Version Numbers
# https://leetcode.com/problems/compare-version-numbers/?envType=daily-question&envId=2025-09-23

class Solution:
    def compareVersion(self, version1: str, version2: str) -> int:
        data1 = list(map(int, version1.split('.')))
        data2 = list(map(int, version2.split('.')))

        for num1, num2 in zip(data1, data2):
            print(num1, num2)
            if int(num1) < int(num2):
                return -1
            if int(num1) > int(num2):
                return 1

        smaller = min(len(data1), len(data2))
        for i in range(smaller, len(data2)):
            if data2[i] > 0:
                return -1
        for i in range(smaller, len(data1)):
            if data1[i] > 0:
                return 1

        return 0
