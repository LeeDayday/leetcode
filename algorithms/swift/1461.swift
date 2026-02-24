// 1461. Check If a String Contains All Binary Codes of Size K
// https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/?envType=daily-question&envId=2026-02-23

class Solution {
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        let chars = Array(s)
        let n = chars.count
        if k > n { return false }

        let end = 1 << k                 // 2^k
        if end > (n - k + 1) { return false } // 가지치기

        let mask = end - 1               // 길이가 k인 비트 유지용
        var seen = Array(repeating: false, count: end)

        var value = 0
        var cnt = 0

        for i in 0..<n {
            let bit = (chars[i] == "1") ? 1 : 0
            value = ((value << 1) & mask) | bit
            if i >= k - 1 { // substring 검사
                if !seen[value] {
                    seen[value] = true
                    cnt += 1
                    if cnt == end { return true }
                }
            }
        }
        return false
    }
}
