// 35. Search Insert Position
// https://leetcode.com/problems/search-insert-position/description/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var s: Int = 0
        var e: Int = nums.count - 1
        while s <= e {
            let mid: Int = (s + e) / 2
            if nums[mid] == target {
                return mid
            }
            else if nums[mid] > target {
                e = mid - 1
            }
            else {
                s = mid + 1
            }
        }
        return s
    }
}
