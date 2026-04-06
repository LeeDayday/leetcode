// 941. Valid Mountain Array
// https://leetcode.com/quest/data-structures-and-algorithms-quest/quiz/valid-mountain-array/?envType=problem-list-v2&envId=dsa-linear-shoal-assignment-i

class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        let n: Int = arr.count

        if n < 3 {
            return false
        }
        
        var idx: Int = 0

        while idx + 1 < n && arr[idx] < arr[idx + 1] {
            idx += 1
        }

        if idx == 0 || idx == n - 1 {
            return false
        }
        while idx + 1 < n && arr[idx] > arr[idx + 1]{
            idx += 1
        }
        return idx == n - 1
    }
}
