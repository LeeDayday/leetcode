// 636. Exclusive Time of Functions
// https://leetcode.com/problems/exclusive-time-of-functions/description/?envType=problem-list-v2&envId=dsa-linear-shoal-stack

class Solution {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        var stack: [Int] = [] // (id)
        var answer: [Int] = Array(repeating: 0, count: n)
        var lastSwapTime: Int = 0
        for log in logs {
            let parts = log.split(separator: ":")
            let id = Int(parts[0])!
            let ops = parts[1]
            let time = Int(parts[2])!
            if ops == "start" {
                if let top = stack.last {
                    answer[top] += time - lastSwapTime
                }
                stack.append(id)
                lastSwapTime = time
            } else {
                let top = stack.removeLast()
                answer[top] += time - lastSwapTime + 1
                lastSwapTime = time + 1
            }
        }
        return answer
    }
}
