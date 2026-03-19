// 645. Set Mismatch
// https://leetcode.com/problems/set-mismatch/description/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        let n: Int = nums.count
        let total: Int = n * (n + 1) / 2 // 1 ~ n
        let actualSum: Int = nums.reduce(0, +) 
        let uniqueSum: Int = Set(nums).reduce(0, +)

        return [actualSum - uniqueSum, total - uniqueSum]
    }
}
