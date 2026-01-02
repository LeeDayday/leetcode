// 20. Valid Parentheses
// https://leetcode.com/problems/valid-parentheses/description/

class Solution {
    func isValid(_ s: String) -> Bool {
        let openBrackets: Set<Character> = ["(", "[", "{"]
        let data: [Character:Character] = [
            ")": "(", 
            "]": "[",
            "}": "{"
        ]

        var stack: [Character] = []

        for ch in s {
            if openBrackets.contains(ch) {
                stack.append(ch)
            }
            else if let need = data[ch] {
                if stack.last != need { return false }
                stack.removeLast()
            }
            else {
                return false
            }
        }
        return stack.isEmpty
    }
}
