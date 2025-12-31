// 13. Roman to Integer
// https://leetcode.com/problems/roman-to-integer/

class Solution {
    func romanToInt(_ s: String) -> Int {
        let data: [Character: Int] = [
            "I": 1, 
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var answer: Int = 0
        var s = Array(s)
        let n: Int = s.count
        
        for i in 0..<n {
            let value: Int = data[s[i]]!
            if i + 1 < n && value < data[s[i + 1]]! {
                answer -= value
            }
            else {
                answer += value
            }
        }
        return answer
 
    }
}
