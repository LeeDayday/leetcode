// 125. Valid Palindrome
// https://leetcode.com/problems/valid-palindrome/description/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let result: String = s
            .lowercased()
            .filter { $0.isLetter || $0.isNumber }
        
        return result == String(result.reversed())
    }
}
