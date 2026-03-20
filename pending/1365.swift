// 1365. How Many Numbers Are Smaller Than the Current Number
// https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/?envType=problem-list-v2&envId=dsa-linear-shoal-array-ii

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortedNums = nums.sorted()
        var map: [Int: Int] = [:]
        
        for (i, num) in sortedNums.enumerated() {
            if map[num] == nil {
                map[num] = i
            }
        }
        
        return nums.map { map[$0]! }
    }
}
