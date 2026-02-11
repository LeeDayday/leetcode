// 3719. Longest Balanced Subarray I
// https://leetcode.com/problems/longest-balanced-subarray-i/?envType=daily-question&envId=2026-02-10

class Solution {
    func longestBalanced(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        var answer: Int = 0
        for i in 0..<n {
            var even: Set<Int> = []
            var odd: Set<Int> = []

            for j in i..<n {
                if nums[j] % 2 == 0 {
                    even.insert(nums[j])
                }
                else {
                    odd.insert(nums[j])
                }

                if even.count == odd.count {
                    answer = max(answer, j - i + 1)
                }
            }
        }

        return answer
    }
}
