// 1009. Complement of Base 10 Integer
// https://leetcode.com/problems/complement-of-base-10-integer/?envType=daily-question&envId=2026-03-11

class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
        let nBinary = String(n, radix: 2)
        return Int(String(nBinary.map { $0 == "0" ? "1": "0"}), radix: 2)!
    }
}
