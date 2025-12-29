// 9. Palindrome Number
// https://leetcode.com/problems/palindrome-number/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x < 0) || (x != 0 && x % 10 == 0) { return false }
        if x < 10 { return true }
        var originalX: Int = x
        var reversedX: Int = 0

        while originalX > reversedX {
            reversedX *= 10
            reversedX += originalX % 10
            originalX /= 10
        }
        //print(originalX, reversedX)
        return (originalX == reversedX / 10) || (originalX == reversedX)
    }
}
