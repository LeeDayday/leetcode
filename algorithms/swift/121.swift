// 121. Best Time to Buy and Sell Stock
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n: Int = prices.count
        var buy: Int = prices[0]
        var answer: Int = 0

        for i in 1..<n {
            let p = prices[i]
            if buy > p {
                buy = p
            }
            answer = max(answer, p - buy)
        }
        return answer
    }
}
