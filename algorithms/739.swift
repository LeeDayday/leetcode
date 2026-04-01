// 739. Daily Temperatures
// https://leetcode.com/problems/daily-temperatures/description/?envType=problem-list-v2&envId=dsa-linear-shoal-monotonic-stack

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let n: Int = temperatures.count
        var answer: [Int] = Array(repeating:0, count:n)
        var stack: [Int] = [] // index 저장

        for (i, temp) in temperatures.enumerated() {
            while !stack.isEmpty && temperatures[stack.last!] < temp {
                let prev_idx = stack.popLast()!
                answer[prev_idx] = i - prev_idx
            }
            stack.append(i)
        }

        return answer
    }
}
