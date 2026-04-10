// 1700. Number of Students Unable to Eat Lunch
// https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/description/?envType=problem-list-v2&envId=dsa-sequence-valley-queue

class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var counter: [Int:Int] = Dictionary(grouping: students, by: { $0 })
            .mapValues { $0.count }    
        for sandwich in sandwiches {
            if (counter[sandwich] ?? 0) == 0 { 
                return counter[sandwich ^ 1]!
            }
            counter[sandwich]! -= 1
        }
        return 0
    }
}

