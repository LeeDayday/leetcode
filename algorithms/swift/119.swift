// Pascal's Triangle II
// https://leetcode.com/problems/pascals-triangle-ii/description/

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        }
        let n: Int = rowIndex
        var answer: [Int] = Array(repeating: 1, count: n + 1)

        // nC0 + nC1 + nC2 + ... + nCn
        for i in 1...n {
            answer[i] = answer[i - 1] * (n - i + 1) / i
        }
        return answer
    }
}
