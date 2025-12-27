// 1. Two Sum
// https://leetcode.com/problems/two-sum/description/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let n: Int = nums.count
        var data: [Int:Int] = [:] // key: nums[i], value: i
        
        for i in 0..<n {
            // nums[i] + diff = target 을 만족하는 경우가 있는지 검사
            let diff: Int = target - nums[i]
            if let j = data[diff] {
                return [i, j]
            }
            data[nums[i]] = i
        }
        return []
    }
    
}
