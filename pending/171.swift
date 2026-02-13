// 171. Excel Sheet Column Number
// https://leetcode.com/problems/excel-sheet-column-number/

class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var answer: Int = 0
        for char in columnTitle {
            let value = Int(char.asciiValue! - Character("A").asciiValue! + 1)

            answer = answer * 26 + value
        }
        return answer
    }
}
