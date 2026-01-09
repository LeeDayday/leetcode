// 66. Plus One
// https://leetcode.com/problems/plus-one/description/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let n: Int = digits.count
        var extra: Int = 1
        var digits = digits

        for i in stride(from:n-1, through:0, by: -1) {
            let num = digits[i] + extra
            digits[i] = num % 10
            extra = num / 10
            if extra == 0 {
                break
            }
        }
        if extra > 0 {
            digits = [1] + digits
        }
        return digits
    }
}
