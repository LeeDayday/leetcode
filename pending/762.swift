// 762. Prime Number of Set Bits in Binary Representation
// https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/?envType=daily-question&envId=2026-02-21

class Solution {
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        let primes: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19]
        var answer: Int = 0
        for num in left...right {
            let binNum = String(num, radix: 2)
            if primes.contains(binNum.filter{ $0 == "1" }.count) {
                answer += 1
            }
        }
        return answer
    }
}
