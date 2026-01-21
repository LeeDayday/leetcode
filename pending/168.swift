// 168. Excel Sheet Column Title
// https://leetcode.com/problems/excel-sheet-column-title/description/

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var n: Int = columnNumber
        var answer: String = ""

        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var data: [Int: Character] = [:]

        for (i, ch) in alphabet.enumerated() {
            data[i] = ch
        }

        while n > 0 {
            n -= 1
            let ch = data[n % 26]!
            answer.append(ch)
            n /= 26
        }
        
        return String(answer.reversed())
    }
}
