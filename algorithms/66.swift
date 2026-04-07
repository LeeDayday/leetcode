// 66. Plus One
// https://leetcode.com/quest/data-structures-and-algorithms-quest/quiz/plus-one/?envType=problem-list-v2&envId=dsa-linear-shoal-assignment-i

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let n: Int = digits.count
        var digits = digits

        for i in stride(from: n-1, through: 0, by: -1) {
            if digits[i] < 9 {
                digits[i] += 1
                return digits
            }
            digits[i] = 0
        }
        digits.insert(1, at: 0) // 맨 앞에 1 추가
        return digits
    }
}
