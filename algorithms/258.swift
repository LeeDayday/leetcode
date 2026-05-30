// 258. Add Digits
// https://leetcode.com/problems/add-digits/description/

class Solution {
    func addDigits(_ num: Int) -> Int {
        var strNum: String = String(num) 
        var answer: Int = num
        while strNum.count != 1 {
            answer = strNum.map { Int(String($0))! }.reduce(0, +)
            strNum = String(answer)
        }
        return answer
    }
}
