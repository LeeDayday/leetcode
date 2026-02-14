// 169. Majority Element
// https://leetcode.com/problems/majority-element/description/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var cnt = 0
        var candidate = -1

        for num in nums {
            if cnt == 0 {
                candidate = num // 후보 update
            }
            if candidate == num {
                cnt += 1
            }
            else {
                cnt -= 1
            }
        }

        return candidate
    
    }
}
