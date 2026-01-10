// 67. Add Binary
// https://leetcode.com/problems/add-binary/description/

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var i: Int = a.count - 1
        var j: Int = b.count - 1
        var a = Array(a)
        var b = Array(b)
        var answer: String = ""
        var carry: Int = 0

        // 뒤에서부터 이진수 더하기
        while i >= 0 || j >= 0 || carry != 0 {
            let x: Int = (i >= 0) ? Int(String(a[i]))! : 0
            let y: Int = (j >= 0) ? Int(String(b[j]))! : 0

            let sum: Int = x + y + carry
            answer.append(String(sum % 2))
            carry = sum / 2

            i -= 1
            j -= 1
        }

        
        return String(answer.reversed())
    }
}
