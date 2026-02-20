// Q2. Shuffle the Array
// https://leetcode.com/problems/shuffle-the-array/?envType=problem-list-v2&envId=dsa-linear-shoal-array-i

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var answer: [Int] = []
        for i in 0..<n {
            answer.append(nums[i])
            answer.append(nums[i+n])
        }
        return answer
    }
}
