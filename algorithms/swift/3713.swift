// Longest Balanced Substring I
// https://leetcode.com/problems/longest-balanced-substring-i/description/?envType=daily-question&envId=2026-02-12

class Solution {
    func longestBalanced(_ s: String) -> Int {
        let chars: [Character] = Array(s)
        let n: Int = chars.count
        var answer: Int = 0
        
        for i in 0..<n {
            var cnt = Array(repeating: 0, count: 26) // a ~ z
            for j in i..<n {
                cnt[Int(chars[j].asciiValue! - Character("a").asciiValue!)] += 1
                let countedChars = cnt.filter { $0 > 0 }
                if let minCnt = countedChars.min(), let maxCnt = countedChars.max(), minCnt == maxCnt {
                    answer = max(answer, j - i + 1)
                }
            }
        }
        return answer
    }
}
