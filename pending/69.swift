// 69. Sqrt(x)
// https://leetcode.com/problems/sqrtx/description/

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 1 { return 1 }
        var s: Int = 1
        var e: Int = x / 2
        while s <= e {
            let m: Int = (s + e) / 2
            if m * m == x {
                return m
            }
            else if m * m < x {
                s = m + 1
            }
            else {
                e = m - 1
            }
        }
        return e
    }
}
