// 1356. Sort Integers by The Number of 1 Bits
// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/?envType=daily-question&envId=2026-02-25

class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        return arr.sorted {
            let c1 = $0.nonzeroBitCount
            let c2 = $1.nonzeroBitCount
            
            if c1 == c2 {
                return $0 < $1     // 2번 기준: 숫자 오름차순
            }
            return c1 < c2         // 1번 기준: 비트 개수
        }
    }
}
