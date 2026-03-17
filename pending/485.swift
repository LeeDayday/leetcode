// 485. Max Consecutive Ones
// https://leetcode.com/problems/max-consecutive-ones/description/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        var tmpSum: Int = 0
        var result: Int = 0

        for i in 0..<n {
            if nums[i] != 0 {
                tmpSum += nums[i]
            }
            else {
                result = max(tmpSum, result)
                tmpSum = 0
            }
        }
    return max(tmpSum, result)
    }
}
