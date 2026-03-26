// 150. Evaluate Reverse Polish Notation
// https://leetcode.com/problems/evaluate-reverse-polish-notation/?envType=problem-list-v2&envId=dsa-linear-shoal-stack

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var numbers: [Int] = []
        let ops: Set<String> = ["+", "-", "*", "/"]
        for token in tokens {
            if ops.contains(token) {
                let b = numbers.popLast()!
                let a = numbers.popLast()!

                switch token {
                    case "+":
                        numbers.append(a + b)
                    case "-":
                        numbers.append(a - b)
                    case "*":
                        numbers.append(a * b)
                    case "/":
                        numbers.append(a / b)
                    default:
                        break
                }
            }
            else {
                numbers.append(Int(token)!)
            }
        }
        return numbers.popLast()!
    }
}
