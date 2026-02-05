// 136. Single Number
// https://leetcode.com/problems/single-number/description/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0, ^)
    }
}
