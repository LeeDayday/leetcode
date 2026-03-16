// 693. Binary Number with Alternating Bits
// https://leetcode.com/problems/binary-number-with-alternating-bits/description/?envType=daily-question&envId=2026-03-12

class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        let binaryN = Array(String(n, radix: 2))
        for i in 0..<binaryN.count-1 {
            if binaryN[i] == binaryN[i+1] { return false }
        }
        return true
    }
}
