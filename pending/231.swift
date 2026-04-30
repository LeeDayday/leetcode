// 231. Power of Two
// https://leetcode.com/problems/power-of-two/

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        // n의 가장 마지막 비트 제거 (2의 거듭제곱은 딱 하나의 1비트만 가지기 때문)
        return (n & (n - 1)) == 0
    }
}
