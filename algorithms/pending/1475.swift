// Final Prices With a Special Discount in a Shop
// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/?envType=problem-list-v2&envId=dsa-linear-shoal-monotonic-stack

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        let n: Int = prices.count
        var prices = prices
        for i in 0..<n {
            var j = i+1
            while j < n && prices[i] < prices[j] {
                j += 1
            }
            if j < n {
                prices[i] -= prices[j]
            }
        }
        return prices
    }
}
