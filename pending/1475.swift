// Final Prices With a Special Discount in a Shop
// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/?envType=problem-list-v2&envId=dsa-linear-shoal-monotonic-stack

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result = prices
        var stack: [Int] = [] // 아직 할인받을 값을 찾지 못한 index

        for i in 0..<prices.count {
            while !stack.isEmpty && prices[stack.last!] >= prices[i] {
                let idx = stack.removeLast()
                result[idx] -= prices[i]
            }

            stack.append(i)
        }

        return result
    }
}
