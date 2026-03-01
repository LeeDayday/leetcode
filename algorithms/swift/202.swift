// 202. Happy Number
// https://leetcode.com/problems/happy-number/

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var visited: Set<Int> = []
        
        func getNextNumber(_ num: Int) -> Int {
            var num = num
            var result: Int = 0
            while num != 0 {
                result += Int(pow(Double(num % 10), 2.0))
                num = num / 10
            }
            return result
        }

        while !visited.contains(num) {
            visited.insert(num)
            num = getNextNumber(num)
            if num == 1 { return true }
        }
        return false
    }
}
