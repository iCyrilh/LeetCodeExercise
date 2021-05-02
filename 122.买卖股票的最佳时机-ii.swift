/*
 * @lc app=leetcode.cn id=122 lang=swift
 *
 * [122] 买卖股票的最佳时机 II
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var res = 0
        for (index, price) in prices.enumerated() {
            if index < 1 {
                continue
            }
            
            res += max(0, price - prices[index - 1])
        }
        return res

    }
}
// @lc code=end

