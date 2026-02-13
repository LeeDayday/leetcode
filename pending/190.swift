// 190. Reverse Bits
// https://leetcode.com/problems/reverse-bits/description/

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var answer = 0
        
        for i in 0...31 {
            let bit = (n >> i) & 1 // i 번째 비트 꺼내기
            answer += (bit << (31 - i)) // 비트 위치 거꾸로
        }

        return answer
    }
}
