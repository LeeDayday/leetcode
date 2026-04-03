// 84. Largest Rectangle in Histogram
// https://leetcode.com/problems/largest-rectangle-in-histogram/description/?envType=problem-list-v2&envId=dsa-linear-shoal-monotonic-stack

class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n: Int = heights.count
        var stack: [(Int, Int)] = []
        var maxArea: Int = 0

        for i in 0..<n {
            var start: Int = i
            while !stack.isEmpty && stack.last!.1 > heights[i] {
                let (idx, h) = stack.popLast()!
                maxArea = max(maxArea, h * (i - idx))
                start = idx
            }
            stack.append((start, heights[i]))
            }

        while !stack.isEmpty {
            let (i, h) = stack.popLast()!
            maxArea = max(maxArea, (n - i) * h)
        }
        return maxArea
    }
}
