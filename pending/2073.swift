// 2073. Time Needed to Buy Tickets
// https://leetcode.com/problems/time-needed-to-buy-tickets/description/?envType=problem-list-v2&envId=dsa-sequence-valley-queue

class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        let n: Int = tickets.count
        var answer: Int = 0

        for i in 0..<n {
            if i <= k {
                answer += min(tickets[i], tickets[k])
            } else {
                answer += min(tickets[k] - 1, tickets[i])
            }
        }
        return answer
    }
}
