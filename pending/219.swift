// 219. Contains Duplicate II
// https://leetcode.com/problems/contains-duplicate-ii/

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        let n: Int = nums.count
        var counter: [Int:Int] = [:]

        for i in 0..<n {
            if let idx = counter[nums[i]] {
                if i - idx <= k { return true }
            }
            counter[nums[i]] = i
        }
        return false
    }
}
