# 2411. Smallest Subarrays With Maximum Bitwise OR
# https://leetcode.com/problems/smallest-subarrays-with-maximum-bitwise-or/description/?envType=daily-question&envId=2025-07-27

class Solution:
    def smallestSubarrays(self, nums: List[int]) -> List[int]:
        answer = [0] * len(nums)
        bits = [-1] * 31

        for i in range(len(nums) - 1, -1, -1):
            msb = i
            for step in range(31):
                # nums[i] 가 step번째 bit를 가지고 있는지
                if (nums[i] & (1 << step)) == 0:
                    # 이전 숫자에서 해당 bit를 가지고 있는 경우
                    if bits[step] != -1:
                        msb = max(msb, bits[step])
                else:
                    # i번째 숫자가 step번째 bit를 가지고 있다
                    bits[step] = i
            answer[i] = msb - i + 1
        return answer


