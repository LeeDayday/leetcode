// 58. Length of Last Word
// https://leetcode.com/problems/length-of-last-word/description/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let data = s.split(whereSeparator: { $0.isWhitespace })
        return data.last!.count
    }
}
