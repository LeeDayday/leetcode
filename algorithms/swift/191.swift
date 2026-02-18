// 191. Number of 1 Bits
// https://leetcode.com/problems/number-of-1-bits/description/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var n = n
        var answer: Int = 0
        while n != 0 {
            answer += n & 1
            n >>= 1
        }
        return answer
    }
}
