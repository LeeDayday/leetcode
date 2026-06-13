// 3838. Weighted Word Mapping
// https://leetcode.com/problems/weighted-word-mapping/description/?envType=daily-question&envId=2026-06-13

class Solution {
    func mapWordWeights(_ words: [String], _ weights: [Int]) -> String {
        var answer = ""

        for word in words {
            var sum = 0

            for ch in word {
                let idx = Int(ch.asciiValue!) - Int(Character("a").asciiValue!)
                sum += weights[idx]
            }

            sum %= 26

            let reversedChar = Character(
                UnicodeScalar(
                    Int(Character("a").asciiValue!) + (25 - sum)
                )!
            )

            answer.append(reversedChar)
        }

        return answer
    }
}
