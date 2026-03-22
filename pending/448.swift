// 448. Find All Numbers Disappeared in an Array
// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/description/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let n: Int = nums.count
        var nums = nums
        for i in 0..<n {
            let idx: Int = abs(nums[i]) - 1
            nums[idx] = abs(nums[idx]) * (-1)
        }
        return nums.enumerated()
            .filter { $0.element > 0 }
            .map{ $0.offset + 1 }
    }
}
