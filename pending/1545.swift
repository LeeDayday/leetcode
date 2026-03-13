// 1545. Find Kth Bit in Nth Binary String
// https://leetcode.com/problems/find-kth-bit-in-nth-binary-string/description/?envType=daily-question&envId=2026-03-12

class Solution {

    func findKthBit(_ n: Int, _ k: Int) -> Character {
        return ((k ^ ((k / (k & -k)) >> 1)) & 1) != 0 ? "0" : "1"

    }
}
