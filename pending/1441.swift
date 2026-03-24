// 1441. Build an Array With Stack Operations
// https://leetcode.com/problems/build-an-array-with-stack-operations/description/?envType=problem-list-v2&envId=dsa-linear-shoal-stack

class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var stack: [Int] = []
        var answer: [String] = []
        for i in 1...n {
            answer.append("Push")
            if !target.contains(i) {
                answer.append("Pop")
            }
            if i == target.last { break }
        }
        return answer
    }
}
